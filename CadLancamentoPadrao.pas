unit CadLancamentoPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, 
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, 
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniMemo, uniMultiItem,
  uniComboBox, uniDBComboBox, FireDAC.Comp.DataSet;

type
  TfCadLancamentoPadrao = class(TUniFrame)
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
    tReg: TFDQuery;
    DBGrid1: TuniDBGrid;
    Panel1: TuniPanel;
    LancamentoPadrao: TFDQuery;
    dsLancamentoPadrao: TDataSource;
    cVencimento: TUniDBEdit;
    clBanco: TUniDBLookupComboBox;
    cObservacao: TUniDBMemo;
    cValor: TUniDBEdit;
    clClassificacao: TUniDBLookupComboBox;
    clFornecedor: TUniDBLookupComboBox;
    clDocumento: TUniDBLookupComboBox;
    clModalidade: TUniDBLookupComboBox;
    clCentro_Custo: TUniDBLookupComboBox;
    cDescricao: TUniDBEdit;
    Beneficiario: TFDQuery;
    dsBeneficiario: TDataSource;
    Bancos: TFDQuery;
    dsBancos: TDataSource;
    PlanoFin: TFDQuery;
    dsPlanoFin: TDataSource;
    CentroCusto: TFDQuery;
    dsCentroCusto: TDataSource;
    Modal: TFDQuery;
    dsModal: TDataSource;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    TipoDoc: TFDQuery;
    dsTipoDoc: TDataSource;
    Adiantamentos: TFDQuery;
    dsAdiantamentos: TDataSource;
    FormaPgto: TFDQuery;
    dsFormaPgto: TDataSource;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    tExiste: TFDQuery;
    tDias: TFDQuery;
    LancamentoPadraoRegistro: TSmallintField;
    LancamentoPadraoDescricao: TStringField;
    LancamentoPadraoClassificacao: TStringField;
    LancamentoPadraoCentro_Custo: TStringField;
    LancamentoPadraoDocumento: TStringField;
    LancamentoPadraoValor: TCurrencyField;
    LancamentoPadraoModalidade: TSmallintField;
    LancamentoPadraoVencimento: TSmallintField;
    LancamentoPadraoBanco: TSmallintField;
    LancamentoPadraoObservacao: TMemoField;
    LancamentoPadraoBeneficiario: TSmallintField;
    LancamentoPadraoEmpresa: TStringField;
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
    procedure LancamentoPadraoBeforePost(DataSet: TDataSet);
    procedure LancamentoPadraoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadLancamentoPadrao.bAdicionarClick(Sender: TObject);
begin
      with LancamentoPadrao do begin
           try
               LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfCadLancamentoPadrao.bExcluirClick(Sender: TObject);
begin
     with LancamentoPadrao do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Registro').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadLancamentoPadrao.bGravarClick(Sender: TObject);
begin
      with LancamentoPadrao do begin
           if (State = dsInsert) then begin
              LancamentoPadrao.FieldByName('Registro').Value := GeraCodigo('LancamentoPadrao', 'Registro');
              FieldByName('Empresa').value := uniMainModule.mEmpresaAtiva;
           end;
           if (State = dsInsert) and (Existe(LancamentoPadrao, 'Registro', FieldByName('Registro').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              //cRegistro.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Registro').AsString) = '' then begin
              MessageDlg('O campo "Registro" não pode ficar em branco!', mtError, [mbOK]);
              //cRegistro.SetFocus;
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

procedure TfCadLancamentoPadrao.bCancelarClick(Sender: TObject);
begin
      LancamentoPadrao.Cancel;
      LigaBotoes(true);
end;

procedure TfCadLancamentoPadrao.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         LancamentoPadrao.Edit;
         //cRegistro.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfCadLancamentoPadrao.UniFrameDestroy(Sender: TObject);
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

procedure TfCadLancamentoPadrao.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadLancamentoPadrao.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfCadLancamentoPadrao.UniFrameCreate(Sender: TObject);
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

      with LancamentoPadrao do begin
           sql.clear;
           sql.add('select *');
           sql.add('from LancamentoPadrao');
           sql.add('order by Descricao');
           open;
      end;
      with Beneficiario do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,CNPJ_CPF = ltrim(rtrim(isnull(CNPJ, ''''))) + isnull(CPF, '''')');
           sql.add('      ,Fornecedor');
           sql.add('      ,Cliente');
           sql.add('from Destinatarios');
           sql.add('order by Nome');
           open;
      end;
      with Bancos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,Conta');
           sql.add('from Bancos');
           sql.add('order by Nome');
           open;
      end;
      with PlanoFin do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,Tributo');
           sql.add('      ,Adiantamento');
           sql.add('      ,Tipo');
           sql.add('      ,Processo_Obrigatorio');
           sql.add('      ,Baixa_Automatica');
           sql.add('from PlanoFinanceiro');
           sql.add('order by Nome');
           open;
      end;
      with CentroCusto do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from CentroCusto');
           sql.add('order by Codigo, Nome');
           open;
      end;
      with Modal do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao');
           sql.add('from ModalidadesPagamento');
           sql.add('order by Descricao');
           open;
      end;
      with TipoDoc do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from  TipoDocumento');
           sql.add('order by Nome');
           open;
      end;
      with FormaPgto do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao');
           sql.add('from FormaPagamento');
           sql.add('order by Descricao');
           open;
      end;
end;
procedure TfCadLancamentoPadrao.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadLancamentoPadrao.bPesquisaClick(Sender: TObject);
begin
     LancamentoPadrao.Cancel;
     LigaBotoes(true);
     Pesquisa(LancamentoPadrao,'LancamentoPadrao','Registro', 'Descricao',cPesquisa.text)
end;

procedure TfCadLancamentoPadrao.LancamentoPadraoBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;


procedure TfCadLancamentoPadrao.LancamentoPadraoBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, 'Delete');
end;




end.
