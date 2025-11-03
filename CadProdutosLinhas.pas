unit CadProdutosLinhas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, Dialogs,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, 
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfCadProdutosLinhas = class(TUniFrame)
    aLista: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    pBarraPesq: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    Pasta: TUnipageControl;
    UniTabSheet1: TUniTabSheet;
    Alerta: TUniSweetAlert;
    pFicha: TUniPanel;
    Grade: TuniDBGrid;
    ProdutosLinhas: TFDQuery;
    dsProdutosLinhas: TDataSource;
    cCodigo: TUniDBEdit;
    cDescricao: TUniDBEdit;
    bRelacionar: TUniSpeedButton;
    NCM: TFDQuery;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure ProdutosLinhasBeforePost(DataSet: TDataSet);
    procedure ProdutosLinhasBeforeDelete(DataSet: TDataSet);
    procedure bRelacionarClick(Sender: TObject);

  private
    procedure PromptCallBack(Sender: TComponent; AResult: Integer; AText: string);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadProdutosLinhas.bAdicionarClick(Sender: TObject);
begin
      with ProdutosLinhas do begin
           try
               LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfCadProdutosLinhas.bExcluirClick(Sender: TObject);
begin
     with ProdutosLinhas do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfCadProdutosLinhas.bGravarClick(Sender: TObject);
begin
      with ProdutosLinhas do begin
           if (State = dsInsert) then begin
              ProdutosLinhas.FieldByName('Codigo').Value := GeraCodigo('ProdutosLinhas', 'Codigo');
           end;
           if (State = dsInsert) and (Existe(ProdutosLinhas, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Descricao').AsString) = '' then begin
              MessageDlg('O campo "Descricao" não pode ficar em branco!', mtError, [mbOK]);
              cDescricao.SetFocus;
              Abort;
           end;

           try
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfCadProdutosLinhas.bCancelarClick(Sender: TObject);
begin
      ProdutosLinhas.Cancel;
      LigaBotoes(true);
end;

procedure TfCadProdutosLinhas.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         ProdutosLinhas.Edit;
         cCodigo.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfCadProdutosLinhas.UniFrameDestroy(Sender: TObject);
var
   i:integer;
begin
      // Fecha todas as tabelas do form.
      for i := 0 to pred(ComponentCount) do begin
          if Components[i] is TFDQuery then begin
             TFDQuery(Components[i]).close;
          end;
      end;
end;

procedure TfCadProdutosLinhas.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadProdutosLinhas.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfCadProdutosLinhas.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      ProdutosLinhas.sql.clear;
      ProdutosLinhas.sql.add('select Codigo');
      ProdutosLinhas.sql.add('      ,Descricao');
      ProdutosLinhas.sql.add('from ProdutosLinhas');
      ProdutosLinhas.sql.add('order by Codigo');
      ProdutosLinhas.open;
end;
procedure TfCadProdutosLinhas.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadProdutosLinhas.bPesquisaClick(Sender: TObject);
begin
     ProdutosLinhas.Cancel;
     LigaBotoes(true);
     Pesquisa(ProdutosLinhas, 'ProdutosLinhas', 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadProdutosLinhas.ProdutosLinhasBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadProdutosLinhas.ProdutosLinhasBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadProdutosLinhas.bRelacionarClick(Sender: TObject);
begin
      if MessageDlg('Atenção!'+#13+#13+'Isso irá relacionar a linha atual em todos os produtos com a NCM informada.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo]) = mrYes then begin
         Prompt('Informe a NCM', '', mtConfirmation, mbOKCancel, PromptCallBack);
      end;
end;

procedure TfCadProdutosLinhas.PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
begin
      if AResult = mrOK then begin
         if trim(aText) <> '' then begin
            aText := stringReplace(aText, '.', '', [rfReplaceAll]);
            NCM.sql.Clear;
            NCM.sql.Add('select count(*) as Qtde from Produtos where(NCM = :pNCM)');
            NCM.ParamByName('pNCM').AsString := aText;
            NCM.Open;
            if NCM.FieldByName('Qtde').AsInteger > 0 then begin
               NCM.SQL.Clear;
               NCM.SQL.Add('update Produtos set Linha = :plinha where(NCM = :pNCM)');
               NCM.ParamByName('pLinha').AsInteger := ProdutosLinhas.FieldByName('Codigo').AsInteger;
               NCM.ParamByName('pNCM').AsString    := aText;
               NCM.Execute;
               LogDados(ProdutosLinhas, 'Efetuado relacionamento da NCM ['+aText+']', 'Outros');
            end else begin
               ShowMessage('Nenhum produto encontrado com a NCM informada?');
            end;
         end;
      end;
end;



end.
