unit CadMoedas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, uniSweetAlert;

type
  TfCadMoedas = class(TUniFrame)
    aLista: TUniTabSheet;
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
    pFicha: TUniPanel;
    DBGrid1: TuniDBGrid;
    Moedas: TFDQuery;
    dsMoedas: TDataSource;
    cPais: TUniDBEdit;
    cTipo: TUniDBEdit;
    cSimbolo: TUniDBEdit;
    cNome: TUniDBEdit;
    cCodigo: TUniDBEdit;
    UniScrollBox1: TUniScrollBox;
    Alerta: TUniSweetAlert;
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
    procedure MoedasBeforePost(DataSet: TDataSet);
    procedure MoedasBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadMoedas.bAdicionarClick(Sender: TObject);
begin
      with Moedas do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadMoedas.bExcluirClick(Sender: TObject);
begin
      with Moedas do begin
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

procedure TfCadMoedas.bGravarClick(Sender: TObject);
begin
      with Moedas do begin
           if (State = dsInsert) and (Existe(Moedas, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Codigo" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;

           try
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadMoedas.bCancelarClick(Sender: TObject);
begin
      Moedas.Cancel;
      LigaBotoes(true);
end;

procedure TfCadMoedas.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Moedas.Edit;
         cCodigo.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadMoedas.UniFrameDestroy(Sender: TObject);
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

procedure TfCadMoedas.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadMoedas.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     pFicha.Enabled        := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadMoedas.UniFrameCreate(Sender: TObject);
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

      Moedas.sql.clear;
      Moedas.sql.add('select Codigo');
      Moedas.sql.add('      ,Nome');
      Moedas.sql.add('      ,Simbolo');
      Moedas.sql.add('      ,Pais');
      Moedas.sql.add('      ,Tipo');
      Moedas.sql.add('from Moedas');
      Moedas.sql.add('order by Nome');
      Moedas.open;
end;
procedure TfCadMoedas.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadMoedas.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Moedas, 'Moedas', 'Codigo', 'Nome', cPesquisa.text);
end;

procedure TfCadMoedas.MoedasBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Codigo').AsString, EstadoTabela(DataSet));
end;

procedure TfCadMoedas.MoedasBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;



end.
