unit CadCotacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, uniMultiItem, uniComboBox, uniDBComboBox, uniSweetAlert;

type
  TfCadCotacao = class(TUniFrame)
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
    Cotacao: TFDQuery;
    dsCotacao: TDataSource;
    Moedas: TFDQuery;
    dsMoedas: TDataSource;
    UniPanel1: TUniPanel;
    GradeMoedas: TUniDBGrid;
    GradeCotacao: TUniDBGrid;
    UniScrollBox1: TUniScrollBox;
    CotacaoMoeda: TIntegerField;
    CotacaoData: TSQLTimeStampField;
    CotacaoValor: TFloatField;
    pFicha: TUniPanel;
    cPais: TUniDBEdit;
    cData: TUniDBDateTimePicker;
    cSimbolo: TUniDBEdit;
    cCodigo: TUniDBEdit;
    cValor: TUniDBFormattedNumberEdit;
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
    procedure CotacaoBeforePost(DataSet: TDataSet);
    procedure CotacaoBeforeDelete(DataSet: TDataSet);
    procedure MoedasAfterScroll(DataSet: TDataSet);
    procedure GradeMoedasDblClick(Sender: TObject);
    procedure GradeCotacaoDblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadCotacao.bAdicionarClick(Sender: TObject);
begin
      with Cotacao do begin
           try
               Append;
                    fieldByName('moeda').Value := Moedas.FieldByName('Codigo').Value;
                    fieldByName('valor').Value := 0;
                    fieldByName('data').Value  := date;

               LigaBotoes(false);
               cData.SetFocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadCotacao.bExcluirClick(Sender: TObject);
begin
      with Cotacao do begin
           MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Moeda').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadCotacao.bGravarClick(Sender: TObject);
begin
      with Cotacao do begin
           if Trim(FieldByName('Data').AsString) = '' then begin
              MessageDlg('O campo "Data" não pode ficar em branco!', mtError, [mbOK]);
              cData.SetFocus;
              Abort;
           end;
           if (State = dsInsert) and (ExisteData(Cotacao, 'Data', FieldByName('Data').AsDateTime)) then begin
              MessageDlg('Já existe uma "Cotação" cadastrada nesta data!'+#13+#13, mtError, [mbOK]);
              cData.SetFocus;
              Abort;
           end;
           if FieldByName('Valor').AsFloat = 0 then begin
              MessageDlg('O campo "Valor" não pode ser zero!', mtError, [mbOK]);
              cValor.SetFocus;
              Abort;
           end;
           try
               fieldByName('moeda').Value := Moedas.FieldByName('Codigo').Value;
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadCotacao.bCancelarClick(Sender: TObject);
begin
      Cotacao.Cancel;
      LigaBotoes(true);
end;

procedure TfCadCotacao.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Cotacao.Edit;
         cCodigo.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadCotacao.UniFrameDestroy(Sender: TObject);
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

procedure TfCadCotacao.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadCotacao.LigaBotoes(Estado:boolean);
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

procedure TfCadCotacao.MoedasAfterScroll(DataSet: TDataSet);
begin
     Cotacao.sql.clear;
     Cotacao.sql.add('select Moeda');
     Cotacao.sql.add('      ,Data');
     Cotacao.sql.add('      ,Valor');
     Cotacao.sql.add('from Cotacao');
     Cotacao.sql.add('where Moeda = :pMoeda');
     Cotacao.sql.add('order by Data desc');
     Cotacao.ParamByname('pMoeda').asinteger := Moedas.fieldByName('codigo').asinteger;
     Cotacao.open;
end;

procedure TfCadCotacao.GradeCotacaoDblClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Cotacao.Edit;
         cData.setfocus;
     except
         Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadCotacao.GradeMoedasDblClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Cotacao.Edit;
         cData.setfocus;
     except
         Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadCotacao.UniFrameCreate(Sender: TObject);
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

procedure TfCadCotacao.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadCotacao.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Moedas, 'Moedas', 'Codigo', 'Nome',cPesquisa.text);
end;

procedure TfCadCotacao.CotacaoBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Data').AsString, EstadoTabela(DataSet));
end;

procedure TfCadCotacao.CotacaoBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;


end.
