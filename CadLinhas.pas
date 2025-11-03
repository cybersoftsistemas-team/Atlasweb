unit CadLinhas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniSweetAlert;

type
  TfCadLinhas = class(TUniFrame)
    Alerta: TUniSweetAlert;
    aLista: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    pBarraNav: TUniPanel;
    Grade: TUniDBGrid;
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
    pFicha: TUniPanel;
    tCodigo: TFDQuery;
    tPesquisa: TFDQuery;
    bRelacionar: TuniButton;
    cCodigo: TuniDBEdit;
    cDescricao: TuniDBEdit;
    Grade: TuniDBGrid;
    Panel1: TuniPanel;
    Panel2: TuniPanel;
    Detalhes: TFDQuery;
    dsDetalhes: TDataSource;
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
    procedure DetalhesBeforePost(DataSet: TDataSet);
    procedure DetalhesBeforeDelete(DataSet: TDataSet);
    procedure bRelacionarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadLinhas.bAdicionarClick(Sender: TObject);
begin
      with Detalhes do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadLinhas.bExcluirClick(Sender: TObject);
begin
     with Detalhes do begin
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

procedure TfCadLinhas.bGravarClick(Sender: TObject);
begin
      with Detalhes do begin
          {
           if (State = dsInsert) then begin
              Detalhes.FieldByName('Codigo').Value := GeraCodigo(Detalhes, 'Codigo');
           end;
          }
           if (State = dsInsert) and (Existe(Detalhes, 'Codigo', FieldByName('Codigo').AsString)) then begin
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
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
               LigaBotoes(true);
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadLinhas.bCancelarClick(Sender: TObject);
begin
      Detalhes.Cancel;
      LigaBotoes(true);
end;

procedure TfCadLinhas.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Detalhes.Edit;
         cCodigo.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadLinhas.UniFrameDestroy(Sender: TObject);
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

procedure TfCadLinhas.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadLinhas.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     (*
     *)
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadLinhas.UniFrameCreate(Sender: TObject);
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

      Detalhes.sql.clear;
      Detalhes.sql.add('select Codigo');
      Detalhes.sql.add('      ,Descricao');
      Detalhes.sql.add('from Detalhes');
      Detalhes.sql.add('order by Codigo');
      Detalhes.open;
end;
procedure TfCadLinhas.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadLinhas.bPesquisaClick(Sender: TObject);
begin
     Detalhes.Cancel;
     LigaBotoes(true);
     Pesquisa(Detalhes, 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadLinhas.DetalhesBeforePost(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadLinhas.DetalhesBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;


procedure TfCadLinhas.bRelacionarClick(Sender: TObject);
//Var
//   mNCM: String;
begin
//      If MessageDlg('Atenção!'+#13+#13+'Isso irá relacionar a linha atual em todos os produtos com a NCM informada.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
//         mNCM := InputBox('Relação de Produtos', 'Digite o nº da NCM:', mNCM);
//         mNCM := Trim(RemoveCaracter('.', '', mNCM));
//
//         If mNCM = '' then Abort;
//
//         With Dados do begin
//              tPesquisa.SQL.Clear;
//              tPesquisa.SQL.Add('SELECT COUNT(*) AS QTDE FROM Produtos WHERE(NCM = :pNCM)');
//              tPesquisa.ParamByName('pNCM').AsString := mNCM;
//              tPesquisa.Open;
//              If tPesquisa.FieldByName('QTDE').AsInteger > 0 then begin
//                 tPesquisa.SQL.Clear;
//                 tPesquisa.SQL.Add('UPDATE Produtos SET Linha = :pLinha WHERE(NCM = :pNCM)');
//                 tPesquisa.ParamByName('pLinha').AsInteger := ProdutosLinhasCodigo.AsInteger;
//                 tPesquisa.ParamByName('pNCM').AsString    := mNCM;
//                 tPesquisa.Execute;
//                 tPesquisa.SQL.Clear;
//              end else begin
//                 ShowMessage('Nenhum produto encontrado com a NCM informada?');
//              End; 
//         End;
//      End;
end;


end.
