unit ComexContratoCambio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, 
  uniDBCheckBox, uniSpeedButton, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniDBEdit, uniBasicGrid, uniGUIBaseClasses, uniMultiItem, 
  uniComboBox, UniGroupBox, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniCheckBox, uniGUIClasses, uniDateTimePicker,
  uniDBComboBox, uniEdit,
  PagarReceber.Dados, PagarReceber.Repository, PagarReceber.Service;
  

type
  TfComexContratoCambio = class(TuniFrame)
    Navega: TUniDBNavigator;
    tFINIMP: TFDQuery;
    tPrevisao: TFDQuery;
    tTemp: TFDQuery;
    Emprestimos: TFDQuery;
    ContratosItens: TFDQuery;
    EmprestimosDuplicatas: TFDQuery;
    CondicaoCambial: TFDQuery;
    Recursos: TFDQuery;
    PlanoContas: TFDQuery;
    CentroCusto: TFDQuery;
    PagarReceberBaixas: TFDQuery;
    PagarReceber: TFDQuery;
    Exportadores: TFDQuery;
    Moedas: TFDQuery;
    Bancos: TFDQuery;
    pBarraNav: TUniPanel;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    Alerta: TUniSweetAlert;
    dsContratos: TDataSource;
    dsBancos: TDataSource;
    dsMoedas: TDataSource;
    dsExportadores: TDataSource;
    dsPagarReceber: TDataSource;
    dsPagarReceberBaixas: TDataSource;
    dsCentroCusto: TDataSource;
    dsPlanoContas: TDataSource;
    dsRecursos: TDataSource;
    dsCondicaoCambial: TDataSource;
    dsEmprestimosDuplicatas: TDataSource;
    dsContratosItens: TDataSource;
    dsEmprestimos: TDataSource;
    Pasta: TUniPageControl;
    pLista: TUniTabSheet;
    pDados: TUniTabSheet;
    Lista: TUniDBGrid;
    Panel2: TUniPanel;
    Panel1: TUniPanel;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    UniPanel1: TUniPanel;
    bExcItem: TUniSpeedButton;
    bAltItem: TUniSpeedButton;
    bAddItem: TUniSpeedButton;
    Ficha: TUniPanel;
    cContrato: TUniDBEdit;
    cConta_Fornecedor: TUniDBEdit;
    cValorME: TUniDBEdit;
    cTaxaCambial: TUniDBEdit;
    cData: TUniDBDateTimePicker;
    cBanco: TUniDBLookupComboBox;
    cExportador: TUniDBLookupComboBox;
    cMoeda: TUniDBLookupComboBox;
    cValorReal: TUniFormattedNumberEdit;
    cDataVencimento: TUniDBDateTimePicker;
    cCentroCusto: TUniDBLookupComboBox;
    cRecursos: TUniDBLookupComboBox;
    cClassificacao: TUniDBLookupComboBox;
    cBeneficiario: TUniDBLookupComboBox;
    cPrevisao: TUniDBCheckBox;
    cSwift_Code: TUniDBEdit;
    cIBAN: TUniDBEdit;
    DBCheckBox1: TUniDBCheckBox;
    cEmpresa: TUniDBLookupComboBox;
    ContratosItensContrato: TStringField;
    ContratosItensData: TSQLTimeStampField;
    ContratosItensProcesso: TStringField;
    ContratosItensFatura: TStringField;
    ContratosItensFinanceiro_Lancamento: TIntegerField;
    ContratosItensEmpresa: TStringField;
    GradeItens: TUniDBGrid;
    ContratosItensValor_ME: TBCDField;
    ContratosItensValor_Fatura: TBCDField;
    ContratosItensTaxa_Cambial: TBCDField;
    Config: TFDQuery;
    Contratos: TFDQuery;
    ContratosRegistro: TIntegerField;
    ContratosNumero: TStringField;
    ContratosData: TSQLTimeStampField;
    ContratosBanco: TSmallintField;
    ContratosConta_Exportador: TStringField;
    ContratosExportador: TIntegerField;
    ContratosMoeda: TIntegerField;
    ContratosTaxa_Cambial: TBCDField;
    ContratosFechado: TBooleanField;
    ContratosData_Vencimento: TSQLTimeStampField;
    ContratosClassificacao: TStringField;
    ContratosFinanceiro_Lancamento: TIntegerField;
    ContratosCentro_Custo: TStringField;
    ContratosRecursos: TSmallintField;
    ContratosGerar_Baixa: TBooleanField;
    ContratosCondicao_Cambio: TSmallintField;
    ContratosBeneficiario: TIntegerField;
    ContratosTotal_ME: TBCDField;
    ContratosTipo: TStringField;
    ContratosFINIMP: TBooleanField;
    ContratosPrevisao: TBooleanField;
    ContratosEmpresa: TStringField;
    ContratosPago_Cliente: TBooleanField;
    Beneficiario: TFDQuery;
    dsBeneficiario: TDataSource;
    PagarReceberBaixasRegistro: TLargeintField;
    PagarReceberBaixasEmpresa: TStringField;
    PagarReceberBaixasTitulo: TLargeintField;
    PagarReceberBaixasData: TDateField;
    PagarReceberBaixasTipo: TStringField;
    PagarReceberBaixasBanco: TSmallintField;
    PagarReceberBaixasValor: TBCDField;
    PagarReceberTitulo: TLargeintField;
    PagarReceberData_Vencimento: TDateField;
    PagarReceberTipo: TStringField;
    PagarReceberValor_Total: TBCDField;
    PagarReceberBanco: TSmallintField;
    PagarReceberForma_Pgto: TSmallintField;
    PagarReceberForma_PgtoDoc: TStringField;
    PagarReceberBaixasForma_Pgto: TSmallintField;
    PagarReceberBaixasForma_PgtoDoc: TStringField;
    PagarReceberBaixasObservacao: TMemoField;
    PagarReceberBaixasBanco_Conta: TStringField;
    UniButton1: TUniButton;
    PagarReceberRegistro: TLargeintField;
    PagarReceberEmpresa: TStringField;
    PagarReceberAdiantamento: TBooleanField;
    PagarReceberDevolucao: TBooleanField;
    PagarReceberTributo: TBooleanField;
    PagarReceberCentro_Custo: TStringField;
    PagarReceberData_Previsao: TDateField;
    PagarReceberValor_Documento: TBCDField;
    PagarReceberValor_Parcela: TBCDField;
    PagarReceberValor_Multa: TBCDField;
    PagarReceberValor_Juros: TBCDField;
    PagarReceberValor_Desconto: TBCDField;
    PagarReceberValor_Operacao: TBCDField;
    PagarReceberBeneficiario: TSmallintField;
    PagarReceberBeneficiario_Banco: TStringField;
    PagarReceberBeneficiario_Agencia: TStringField;
    PagarReceberBeneficiario_Conta: TStringField;
    PagarReceberDocumento_Data: TDateField;
    PagarReceberDocumento_Tipo: TStringField;
    PagarReceberDocumento_Numero: TStringField;
    PagarReceberObservacao: TMemoField;
    PagarReceberProcesso: TStringField;
    PagarReceberProcesso_Tipo: TStringField;
    PagarReceberOrigem: TStringField;
    PagarReceberOrigem_Numero: TStringField;
    PagarReceberModalidade_Pgto: TSmallintField;
    PagarReceberSolicitacao_Pgto: TIntegerField;
    PagarReceberSolicitacao_Numerario: TIntegerField;
    PagarReceberParcela: TStringField;
    PagarReceberTransferencia: TBooleanField;
    PagarReceberValor_Baixado: TBCDField;
    PagarReceberAdiantamento_Numero: TIntegerField;
    PagarReceberTransferencia_Numero: TIntegerField;
    PagarReceberTransferencia_Banco: TSmallintField;
    PagarReceberNumero_Importado: TIntegerField;
    PagarReceberNivel: TSmallintField;
    PagarReceberDesdobramento: TSmallintField;
    PagarReceberProvisorio: TBooleanField;
    PagarReceberBoleto_Numero: TIntegerField;
    PagarReceberDesconto_Liquidacao: TBCDField;
    PagarReceberEmprestimo: TBooleanField;
    PagarReceberRecuperavel: TBooleanField;
    PagarReceberVinculo: TIntegerField;
    PagarReceberPago_Cliente: TBooleanField;
    PagarReceberCusto_Entrada: TBooleanField;
    PagarReceberCusto_Saida: TBooleanField;
    PagarReceberCusto_Seletivo: TBooleanField;
    PagarReceberCusto_Outros: TBooleanField;
    PagarReceberProvisao_ContaD: TStringField;
    PagarReceberProvisao_ContaC: TStringField;
    PagarReceberProvisao_Historico: TSmallintField;
    PagarReceberLiquidacao_ContaD: TStringField;
    PagarReceberLiquidacao_ContaC: TStringField;
    PagarReceberLiquidacao_Historico: TSmallintField;
    PagarReceberEmbarque: TIntegerField;
    PagarReceberCodigo_Barras: TStringField;
    PagarReceberChave_PIX: TStringField;
    PagarReceberLote: TIntegerField;
    PagarReceberPermuta_Recebimento: TBooleanField;
    PagarReceberValor_ME: TBCDField;
    PagarReceberFilial: TSmallintField;
    PagarReceberNumero_FormaTipo: TStringField;
    PagarReceberTaxa_ME: TBCDField;
    PagarReceberForma_Tipo: TStringField;
    PagarReceberClassificacao: TStringField;
    FichaItem: TUniPanel;
    cTaxa_Cambial: TUniDBEdit;
    cValorFatReal: TUniFormattedNumberEdit;
    cFatura: TUniDBEdit;
    cProcesso: TUniDBLookupComboBox;
    cEmbarque: TUniDBLookupComboBox;
    ContratosItensDUIMP: TStringField;
    ContratosItensEmbarque: TIntegerField;
    cTotalFatME: TUniFormattedNumberEdit;
    cSaldoFatME: TUniFormattedNumberEdit;
    NavegaItens: TUniDBNavigator;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    Embarques: TFDQuery;
    dsEmbarques: TDataSource;
    EmbarquesCodigo: TIntegerField;
    EmbarquesNavio: TSmallintField;
    Navios: TFDQuery;
    dsNavios: TDataSource;
    NaviosCodigo: TSmallintField;
    NaviosNome: TStringField;
    EmbarquesNavio_Nome: TStringField;
    Invoice: TFDQuery;
    dsInvoice: TDataSource;
    EmbarquesProcesso: TStringField;
    bCancItem: TUniSpeedButton;
    bSalItem: TUniSpeedButton;
    PagarReceberValor_Pedido: TBCDField;
    cValor_ME: TUniDBFormattedNumberEdit;
    procedure UniFrameCreate(Sender: TObject);
    procedure cDataExit(Sender: TObject);
    procedure cExportadorExit(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure ContratoCambioAfterPost(DataSet: TDataSet);
    procedure ContratoCambioBeforeDelete(DataSet: TDataSet);
    procedure cPesquisarChange(Sender: TObject);
    procedure cFiltroClick(Sender: TObject);
    procedure cPrevisaoClick(Sender: TObject);
    procedure BaixarPrevisao;
    procedure ContratosAfterScroll(DataSet: TDataSet);
    procedure UniButton1Click(Sender: TObject);
    procedure bAddItemClick(Sender: TObject);
    procedure bCancItemClick(Sender: TObject);
    procedure bAltItemClick(Sender: TObject);
    procedure bExcItemClick(Sender: TObject);
    procedure bSalItemClick(Sender: TObject);
    procedure cValor_MEChangeValue(Sender: TObject);
    procedure cValor_MEChange(Sender: TObject);
  private
    procedure SalvaFinanceiro(Tabela: TDataSet);
    procedure LigaBotoesItens(Estado: boolean);
    { Private declarations }
  public
    { Public declarations }
    mContrato: String;
    mPrevisao: Boolean;
    mTaxa: real;
  end;

implementation

uses MainModule, Main;

{$R *.dfm}

procedure TfComexContratoCambio.UniButton1Click(Sender: TObject);
var
  Dados: TPagarReceberDados;
begin
     Dados := TPagarReceberService.GerarCambio(Contratos
                                              ,PlanoContas
                                              ,cValorFatReal.value
                                              ,ContratosTotal_ME.value
                                              ,ContratosTaxa_Cambial.value
                                              ,UniMainModule.mEmpresaAtiva
                                              ,Empresas.FieldByName('Numero_Filial').AsInteger);
     TPagarReceberRepository.Inserir(PagarReceber, Dados);
end;

procedure TfComexContratoCambio.UniFrameCreate(Sender: TObject);
var
  i: integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TUniPanel and (TuniPanel(Components[i]).tag = 0) then begin
            TuniPanel(Components[i]).Top   := 30;
            TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
            TuniPanel(Components[i]).Color := clNone
         end;
     end;
     
     with Contratos do begin
          sql.Clear;
          sql.Add('select * from ContratoCambio order by Data desc, Numero');
          Open;
     end;
     
     ContratosItens.open;
     
     with Empresas do begin
          sql.clear;
          sql.add('select CNPJ');
          sql.add('      ,Razao_Social');
          sql.add('      ,Filial = iif(isnull(Numero_Filial, 0) = 0, ''MATRIZ'', ''FILIAL ''+cast(Numero_Filial as char(2)))');
          sql.add('      ,Estado');
          sql.add('      ,Numero_Filial');
          sql.add('from Empresas');
          sql.add('where substring(CNPJ, 1, 8) = :pEmpresa');
          parambyname('pEmpresa').value := copy(UniMainModule.mEmpresaAtiva, 1, 8);
          open;
     end;
     with Bancos do begin
          sql.Clear;
          sql.Add('select Codigo, Nome, Conta from Bancos WHERE(Desativado <> 1) order by Nome');
          Open;
     end;
     with Recursos do begin
          sql.Clear;
          sql.Add('select * from Recursos order by Descricao');
          Open;
     end;
     with Moedas do begin
          sql.Clear;
          sql.Add('select Codigo, Nome, Simbolo from Moedas order by Nome');
          Open;
     end;
     with Exportadores do begin
          sql.Clear;
          sql.Add('select Codigo, Nome, IBAN, Swift_Code, Banco_Conta from Destinatarios where Pais <> 1058 and Fornecedor = 1 order by Nome');
          Open;
     end;
     with Beneficiario do begin
          sql.Clear;
          sql.Add('select Codigo, Nome, IBAN, Swift_Code, Banco_Conta from Destinatarios where Pais = 1058 and Fornecedor = 1 order by Nome');
          Open;
     end;
     with CentroCusto do begin
          sql.Clear;
          sql.Add('select Codigo, Nome from CentroCusto where Empresa = :pEmpresa order by Codigo');
          parambyname('pEmpresa').value := UniMainModule.mEmpresaAtiva;
          Open;
     end;
     with PlanoContas do begin
          sql.Clear;
          sql.Add('select Codigo');
          sql.add('      ,Baixa_Automatica');
          sql.add('      ,Nome = Nome_Financeiro');
          sql.add('      ,Tipo');
          sql.add('      ,Nivel');
          sql.add('      ,Custo_Entrada');
          sql.add('      ,Custo_Saida');
          sql.add('      ,Custo_Seletivo');
          sql.add('      ,Custo_Outros');
          sql.add('from PlanoContas');
          sql.add('where Tipo = ''P'' ');
          sql.add('and Cambio = 1');
          sql.add('and Desativada <> 1');
          sql.add('order by Nome');
          Open;
     end;
     with Config do begin
          sql.clear;
          sql.add('select Classificacao_ContratoCambio from Config');
          open;
     end;
     with Processos do begin
          sql.clear;
          sql.add('select Processo');
          sql.add('      ,DUIMP');
          sql.add('from ProcessosImp');
          sql.add('where Desativado <> 1');
          sql.add('and Processo not in(select distinct Processo from ProcessosFechamento where Fechamento_Provisorio <> 1)');
          sql.add('and Processo not in(select distinct Processo from ContratoCambioItens where Contrato = :pContrato)');
          parambyname('pContrato').value := ContratosNumero.AsString;
          sql.add('order by Processo');
          //sql.savetofile('c:\temp\ContratoCambio_Itens.sql'); 
          open;     
     end;

     Embarques.open;
     
     with Invoice do begin
          sql.clear;
          sql.add('select Processo');
          sql.add('      ,Numero');
          sql.add('      ,Total_FaturaME');
          sql.add('from Invoice');
          open;
     end;
     
     LigaBotoes(true);
     LigaBotoesItens(true);
end;

{
procedure TfComexContratoCambio.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin

      If (Button = nbPost) then begin
              // Altera o numero do contrato no financeiro caso se alterado o número.
              //If (ContratoCambio.State = dsEdit) and (ContratoCambioNumero.AsString <> mContrato) then begin
                Close;
                with ContratoCambioItens do begin
                     sql.Clear;
                     sql.Add('UPDATE ContratoCambioItens SET Contrato = :pContratoNovo where Contrato = :pContratoAntes');
                     ParamByName('pContratoNovo').AsString  := ContratoCambioNumero.AsString;
                     ParamByName('pContratoAntes').AsString := mContrato;
                     Execute;
                     sql.Clear;
                     sql.Add('select * from ContratoCambioItens where Contrato = :pContrato');
                     ParamByName('pContrato').AsString  := ContratoCambioNumero.AsString;
                     Open;
                end;
                 
                sql.Clear;
                sql.Add('UPDATE PagarReceber SET Numero_Documento = :pContrato,');
                sql.Add('                        Fiscal           = :pContrato,');
                sql.Add('                        Data_Documento   = :pData,');
                sql.Add('                        Data_Vencimento  = :pVencimento,');
                sql.Add('                        Classificacao    = :pClassificacao,');
                sql.Add('                        Centro_Custo     = :pCentro');
                sql.Add('where Numero IN(select Financeiro_Lancamento from ContratoCambioItens where Contrato = :pContrato)');
                ParamByName('pContrato').AsString      := ContratoCambioNumero.AsString;
                ParamByName('pData').AsDate            := ContratoCambioData.AsDateTime;
                ParamByName('pVencimento').AsDate      := ContratoCambioData_Vencimento.AsDateTime;
                ParamByName('pClassificacao').AsString := ContratoCambioClassificacao.AsString;
                ParamByName('pCentro').AsString        := ContratoCambioCentro_Custo.AsString;
                Execute;
                 
                sql.Clear;
                sql.Add('select * from PagarReceber WHERE(Data_Vencimento = :pData)');
                ParamByName('pData').AsDate := Date;
                Open;
              //End;

              // Altera a taxa cambial dos itens.
             Close;
             sql.Clear;
             sql.Add('UPDATE ContratoCambioItens SET Taxa_Cambial = :pTaxa where Contrato = :pContrato');
             ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
             ParamByName('pTaxa').AsFloat      := ContratoCambioTaxa_Cambial.AsFloat;
             Execute;
              
             sql.Clear;
             sql.Add('select * from ContratoCambioItens where Contrato = :pContrato');
             ParamByName('pContrato').AsString  := ContratoCambioNumero.AsString;
             Open;

              // Baixa os lançamentos financeiros de contratos de previsão.
              If (mPrevisao = true) and (ContratoCambioPrevisao.AsBoolean = false) then begin
                 BaixarPrevisao;
              End;
         End;
      End;

      // Deleta o lançamento do financeira caso exista.
      If Button = nbDelete then begin
         If MessageDlg('Isso irá apagar o contrato e o lançamento do financeira caso exista!'+#13+#13+'Deseja realmente excluir este "Contrato de Câmbio"', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
   begin
                 // Verifica se o contrato e referente a empréstimo FINIMP e não deixa deletar.
     with tFINIMP do begin
                sql.Clear;
     with //tFINIMP do begin
                sql.Add('select COUNT(*) as Emprestimos from Emprestimos where Numero_Documento = :pNumero and Liquidado = 1');
                sql.Add('select COUNT(*) as Emprestimos from Emprestimos where Numero_Documento = :pNumero');
                ParamByName('pNumero').AsString := ContratoCambioNumero.AsString;
                Open;
     end;
                 
                 IfFieldByName('Emprestimos').AsInteger > 0 then begin
                    MessageDlg('Erro !'+#13+#13+'Este contrato não pode ser excluído pois teve origem em "Empréstimo FINIMP" já liquídado.', mtError, [mbOK], 0);
                    Abort; 
                 End;

                sql.Clear;
                sql.Add('DELETE from PagarReceberBaixas where Numero IN(select Financeiro_Lancamento from ContratoCambioItens WHERE(Contrato = :pContrato))');
                ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
                Execute;
                sql.Clear;
                sql.Add('select * from PagarReceberBaixas WHERE(Data = :pData)');
                ParamByName('pData').AsDate := Date;
                Open;

                sql.Clear;
                sql.Add('DELETE from PagarReceber where Numero IN(select Financeiro_Lancamento from ContratoCambioItens WHERE(Contrato = :pContrato))');
                ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
                Execute;
                sql.Clear;
                sql.Add('select * from PagarReceber WHERE(Data_Vencimento = :pData)');
                ParamByName('pData').AsDate := Date;
                Open;

                Close;
                sql.Clear;
                sql.Add('DELETE from ContratoCambioItens where Contrato = :pContrato');
                ParamByName('pContrato').AsString := ContratoCambioNumero.AsString;
                Execute;
                sql.Clear;
                sql.Add('select * from ContratoCambioItens where Contrato = :pContrato');
                ParamByName('pContrato').AsString  := ContratoCambioNumero.AsString;
                Open;
            End;
         end else begin
            Abort;
         End;
      End;
end;
}

procedure TfComexContratoCambio.cDataExit(Sender: TObject);
begin
(*
     Dados.ContratoCambioData_Vencimento.Value := Dados.ContratoCambioData.AsDateTime + Dados.ProcessosDOCVencimento_Cambio.AsInteger;
*)
end;

procedure TfComexContratoCambio.cExportadorExit(Sender: TObject);
begin
(*
     If Dados.ContratoCambio.State = dsInsert then
        Dados.ContratoCambioBeneficiario.Value := Dados.ContratoCambioExportador.AsInteger
     else
        If Dados.ContratoCambioBeneficiario.AsInteger = 0 then
           Dados.ContratoCambioBeneficiario.Value := Dados.ContratoCambioExportador.AsInteger;
*)
end;

procedure TfComexContratoCambio.cPesquisarChange(Sender: TObject);
begin
(*
   begin
         sql.Clear;
         sql.Add('select Numero from ContratoCambio where Numero LIKE '+QuotedStr('%'+cPesquisar.Text+'%'));
         Open;

          IfRecordCount > 0 then begin
            Locate('Numero',FieldByName('Numero').AsString, [loCaseInsensitive]);
          end else begin
            sql.Clear;
            sql.Add('select Contrato from ContratoCambioItens where Processo LIKE '+QuotedStr('%'+cPesquisar.Text+'%'));
            Open;
             
             IfRecordCount > 0 then begin
               Locate('Numero',FieldByName('Contrato').AsString, [loCaseInsensitive]);
             End;
          End;
     End;
*)
end;

procedure TfComexContratoCambio.cFiltroClick(Sender: TObject);
//var
//   mProc: string;
begin
(*
   begin
           mProc :=FieldByName('Processo').AsString;
           with ContratoCambio do begin 
                sql.Clear;
                sql.add('select *');
                sql.add('from ContratoCambio');
                if trim(cPesquisar.Text) <> '' then begin
                   if cFiltro.Checked = true then begin
                      sql.Add('where Numero in(select Contrato from ContratoCambioItens where Processo = :pProcesso)');
                      ParamByName('pProcesso').AsString := mProc;
                   end;
                end;
                sql.add('order by Numero');
                open;
           end;
      end;
*)
end;

procedure TfComexContratoCambio.ContratosAfterScroll(DataSet: TDataSet);
begin
    mContrato := ContratosNumero.value;
end;

procedure TfComexContratoCambio.cPrevisaoClick(Sender: TObject);
begin
     if cPrevisao.Checked then begin
        with tTemp do begin
             sql.Clear;
             sql.Add('select cast(isnull(max(cast(substring(Numero, 5, 6) as int)), 0) as int) as Numero from ContratoCambio where Previsao = 1');
             open;
             ContratosNumero.Value := 'PVCB'+ FormatFloat('00000', fieldbyname('Numero').asinteger+1);
        end;
     end;
end;

procedure TfComexContratoCambio.cValor_MEChange(Sender: TObject);
begin
     cValorFatReal.value := ContratosItensValor_ME.value * ContratosItensTaxa_Cambial.value;
end;

procedure TfComexContratoCambio.cValor_MEChangeValue(Sender: TObject);
begin
     cValorFatReal.value := ContratosItensValor_ME.value * ContratosItensTaxa_Cambial.value;
end;

// Rotina de baixa de lançamentos financeiros de contratos de câmbio provisionados.
procedure TfComexContratoCambio.BaixarPrevisao;
begin
{
     with tTemp do begin
          sql.clear;
          sql.add('delete from PagarReceberBaixas where Numero in(select Financeiro_Lancamento from ContratoCambioItens where Contrato = :pContrato)');
          parambyname('pContrato').value := mContrato;
          execute;
          sql.clear;
     end;
}     
     with ContratosItens do begin
          first;
          tTemp.sql.clear;          
          while not eof do begin
                with PagarReceber do begin 
                     sql.clear;
                     sql.add('select Titulo, Data_Vencimento, Tipo, Valor_Total, Banco, Forma_Pgto, Forma_PgtoDoc from PagarReceber where Titulo = :pTitulo');
                     parambyname('pTitulo').asinteger := ContratosItensFinanceiro_Lancamento.asinteger;
                     open;
                     if recordcount > 0 then begin
                        tTemp.sql.add('insert into PagarReceberBaixas (Titulo, Data, Tipo, Valor, Banco, Forma_Pgto, Forma_PgtoDoc, Observacao, Banco_Conta) values');
                        tTemp.sql.add('('+ PagarReceberTitulo.asstring+', '+
                                        quotedstr(PagarReceberData_Vencimento.asstring)+', '+
                                        quotedstr(PagarReceberTipo.AsString)+', '+
                                        PagarReceberValor_Total.asstring +', '+
                                        PagarReceberBanco.asstring +', '+
                                        PagarReceberForma_Pgto.asstring +', '+
                                        quotedstr(PagarReceberForma_PgtoDoc.asstring) +', '+
                                        quotedstr('Baixa referente a Contrato de Câmbio nº '+ ContratosNumero.AsString)+', '+
                                        Bancos.fieldbyname('Conta').asstring+')'
                                      );
                     end;
                end;
                // Grava o numero da baixa no titulo.
                {
                PagarReceber.Edit;
                             PagarReceberBaixa_Numero.Value  := PagarReceberBaixasRegistro.Value;
                             PagarReceberValor_Baixado.Value := PagarReceberBaixasValor.Value;
                             PagarReceberBanco.Value         := PagarReceberBaixasBanco.Value;
                PagarReceber.Post;
                }
                next;
          end;
//          tTemp.sql.text := copy(tTemp.sql.Text, 1, length(tTemp.sql.text)-1);
          ttemp.sql.SaveToFile('c:\temp\insert_PagarReceberBaixas.sql');
     end;
end;

procedure TfComexContratoCambio.bAddItemClick(Sender: TObject);
begin
     with ContratosItens do begin
          try
             Open;
             Append;
                  ContratosItensContrato.Value     := ContratosNumero.Value;
                  ContratosItensData.Value         := ContratosData.Value;
                  ContratosItensProcesso.Value     := cProcesso.Text;
                  ContratosItensValor_ME.Value     := ContratosTotal_ME.Value;
                  ContratosItensValor_Fatura.Value := cTotalFatME.Value;
                  ContratosItensDUIMP.Value        := Processos.fieldbyname('DUIMP').Value;
                  ContratosItensFatura.Value       := cFatura.Text;
                  ContratosItensValor_Fatura.Value := Invoice.fieldbyname('Total_FaturaME').AsCurrency;
                  ContratosItensTaxa_Cambial.Value := ContratosTaxa_Cambial.Value;
                  ContratosItensEmbarque.Value     := iif(cProcesso.text <> '', Embarques.fieldbyname('Codigo').AsInteger, 0);
                  LigaBotoesItens(false);
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexContratoCambio.bAdicionarClick(Sender: TObject);
begin
      with Contratos do begin
           try
               Append;
                    ContratosEmpresa.value       := UniMainModule.mEmpresaAtiva;
                    ContratosClassificacao.Value := Config.fieldbyname('Classificacao_ContratoCambio').value;
                    ContratosGerar_Baixa.Value   := PlanoContas.fieldbyname('Baixa_Automatica').asboolean;
                    ContratosFechado.Value       := false;
                    ContratosPrevisao.Value      := false;
                    ContratosPago_Cliente.Value  := false;
               LigaBotoes(false);
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfComexContratoCambio.bExcItemClick(Sender: TObject);
begin
     with ContratosItens do begin
          if ContratosItens.recordcount > 0 then begin
             MessageDlg('Deseja realmente excluir o processo "'+ContratosItensProcesso.AsString+'"', mtConfirmation,mbYesNo,
                       procedure(Comp:TComponent; ARes: Integer)
                       begin
                            if ARes = mrYes then begin
                               try
                                  // Exclui o lançamentos de baixa.
                                  with PagarReceberBaixas do begin
                                       sql.clear;
                                       sql.Add('delete from PagarReceberBaixas where Titulo = :pTitulo');
                                       ParamByName('pTitulo').AsInteger := ContratosItensFinanceiro_Lancamento.AsInteger;
                                       execute;
                                  end;     
                                  // Exclui os lançamentos do título.
                                  with PagarReceber do begin
                                       sql.Clear;
                                       sql.Add('delete from PagarReceber where Titulo = :pTitulo');
                                       ParamByName('pTitulo').AsInteger := ContratosItensFinanceiro_Lancamento.AsInteger;
                                       execute;
                                  end;
                                  // Atualiza o valor total dos câmbios na tabela principal.
                                  with tTemp do begin
                                       sql.Clear;
                                       sql.Add('update ContratoCambio set Total_ME = (select isnull(sum(Valor_ME), 0) as Total_Cambio from ContratoCambioItens where Contrato = :pContrato)');
                                       ParamByName('pContrato').AsString := ContratosNumero.Value;
                                       open;
                                       Contratos.Refresh;
                                  end;
                                  Delete;
                                  Alerta.Text := 'Registro excluído do banco de dados!';
                                  Alerta.Execute;
                               except on E: Exception do
                                  MessageDlgN('Falha desconhecida, não pode excluir o registro!'+#13+E.Message, mtError, [mbOK]);
                               end;
                            end;
                       end);
          end;
     end;
end;

procedure TfComexContratoCambio.bExcluirClick(Sender: TObject);
begin
     with Contratos do begin
          if Contratos.recordcount > 0 then begin
             MessageDlg('Deseja realmente excluir o contrato "'+ContratosNumero.asstring+'"'+#13+#13+FieldByName('Processo').AsString, mtConfirmation,mbYesNo,
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
end;

procedure TfComexContratoCambio.bSalItemClick(Sender: TObject);
var
  Titulo: TPagarReceberDados;
begin
     if CampoVazio(cProcesso,'') then Abort;
     if ValidaCampo(cValor_ME, ContratosItensValor_ME.AsCurrency, 0, '<=', 'O "Valor (ME)" não pode ser igual a zero!', 'Valor inválido') then Abort;
     try
        ContratosItens.post;
        Titulo := TPagarReceberService.GerarCambio(Contratos
                                                  ,PlanoContas
                                                  ,cValorReal.value
                                                  ,ContratosTotal_ME.value
                                                  ,ContratosTaxa_Cambial.value
                                                  ,UniMainModule.mEmpresaAtiva
                                                  ,Empresas.FieldByName('Numero_Filial').AsInteger
                                                  );
        TPagarReceberRepository.Inserir(PagarReceber, Titulo);
     except on E: Exception do
        MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;

procedure TfComexContratoCambio.bSalvarClick(Sender: TObject);
begin
     if CampoVazio(cEmpresa       ,'') then Abort;
     if CampoVazio(cContrato      ,'') then Abort;
     if CampoVazio(cData          ,'') then Abort;
     if CampoVazio(cDataVencimento,'') then Abort;
     if CampoVazio(cExportador    ,'') then Abort;
     if CampoVazio(cClassificacao ,'') then Abort;
     if CampoVazio(cBeneficiario  ,'') then Abort;
     if CampoVazio(cBanco         ,'') then Abort;
     if CampoVazio(cMoeda         ,'') then Abort;
     if CampoVazio(cTaxaCambial   ,'') then Abort;
     if (Contratos.State = dsInsert) and Existe(Contratos, 'Numero', ContratosNumero.asstring) then begin
        Alerta.AlertType := atInfo;
        Alerta.Title     := 'ERRO';
        Alerta.TitleText := 'Duplicidade de Contrato!';
        Alerta.Text      := 'Número de Contrato de câmbio ja cadastrado!';
        Alerta.Execute;
        abort;
     end;
     with Contratos do begin
          try
              // Gera o registro em caso de inclusão.
              if State = dsInsert then begin
                 ContratosRegistro.value := GeraCodigo('ContratoCambio', 'Registro');
              end;

              // Altera o numero do contrato e a taxa do cambio no financeiro caso se alterado o número.
              if State = dsEdit then begin
                 if ContratosNumero.AsString <> mContrato then begin
                    with tTemp do begin
                         sql.clear;
                         sql.add('update ContratoCambioItens set Taxa_Cambial = :pTaxa where Contrato = :pAntes');
                         parambyname('pAntes').value  := mContrato;
                         ParamByName('pTaxa').AsFloat := ContratosTaxa_Cambial.AsFloat;
                         execute;
                    end;
                 end;
                 if ContratosNumero.AsString <> mContrato then begin
                    with tTemp do begin
                         sql.clear;
                         sql.add('update ContratoCambioItens set Contrato = :pNovo where Contrato = :pAntes');
                         parambyname('pNovo').value   := ContratosNumero.AsString;
                         parambyname('pAntes').value  := mContrato;
                         execute;
               
                         sql.clear;
                         sql.Add('update PagarReceber set Numero_Documento = :pContrato');
                         sql.Add('                       ,Origem           = ''CC''  ');
                         sql.Add('                       ,Origem_Numero    = :pContrato');
                         sql.Add('                       ,Documento_Data   = :pData');
                         sql.Add('                       ,Data_Vencimento  = :pVencimento ');
                         sql.Add('                       ,Conta            = :pConta');
                         sql.Add('                       ,Centro_Custo     = :pCentro');
                         sql.Add('where Titulo in(select Financeiro_Lancamento from ContratoCambioItens where Contrato = :pContrato)');
                         ParamByName('pContrato').value   := ContratosNumero.value;
                         ParamByName('pData').value       := ContratosData.AsDateTime;
                         ParamByName('pVencimento').value := ContratosData_Vencimento.AsDateTime;
                         ParamByName('pConta').value      := ContratosClassificacao.value;
                         ParamByName('pCentro').value     := ContratosCentro_Custo.value;
                         Execute;
                         
                         // Baixa os lançamentos financeiros de contratos de previsão.
                         if mPrevisao and not ContratosPrevisao.asboolean then begin
                            BaixarPrevisao;
                         end;
                    end;
                 end;
                 // Altera a taxa cambial dos itens quando modificada na capa.
                 if ContratosTaxa_Cambial.asfloat <> mTaxa then begin
                    with tTemp do begin 
                         sql.Clear;
                         sql.Add('update ContratoCambioItens set Taxa_Cambial = :pTaxa where Contrato = :pContrato');
                         ParamByName('pContrato').AsString := ContratosNumero.AsString;
                         ParamByName('pTaxa').AsFloat      := ContratosTaxa_Cambial.AsFloat;
                         execute;
                    end;
                 end;
              end;

              Post;
              LigaBotoes(true);
              
              Alerta.Text := 'Registro salvo no banco de dados!'; 
              Alerta.Execute;
          except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexContratoCambio.bAltItemClick(Sender: TObject);
begin
     try
         if ContratosItens.recordcount > 0 then begin
            LigaBotoesItens(false);
            ContratosItens.Edit;
            cProcesso.setfocus;
         end;
     except on E: Exception do
         MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;

procedure TfComexContratoCambio.bCancelarClick(Sender: TObject);
begin
     Contratos.Cancel;
     LigaBotoes(true);
end;

procedure TfComexContratoCambio.bCancItemClick(Sender: TObject);
begin
     ContratosItens.Cancel;
     LigaBotoesItens(true);
end;

procedure TfComexContratoCambio.bEditarClick(Sender: TObject);
begin
     if ContratosFINIMP.AsBoolean then begin
        Alerta.AlertType := atInfo;
        Alerta.Title     := 'ATENÇÃO!';
        Alerta.TitleText := 'Origem do Contrato!';
        Alerta.Text      := 'Este contrato de câmbio teve origem em empréstimo FINIMP não pode ser alterado';
        Alerta.Execute;
        Abort;
     end;
     try
         if Contratos.recordcount > 0 then begin
            LigaBotoes(false);
            mPrevisao := ContratosPrevisao.AsBoolean;
            mTaxa     := ContratosTaxa_Cambial.value;
            Contratos.Edit;
            cEmpresa.setfocus;
         end;
     except on E: Exception do
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;
 
procedure TfComexContratoCambio.UniFrameDestroy(Sender: TObject);
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
 
procedure TfComexContratoCambio.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bSalvar.Enabled    := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
     AtivaPanel(Ficha, Estado);
end;

procedure TfComexContratoCambio.LigaBotoesItens(Estado:boolean);
begin
     NavegaItens.Enabled := Estado;
     bAltItem.Enabled    := Estado;
     bExcItem.Enabled    := Estado;
     bAddItem.Enabled    := Estado;
     bCancItem.Enabled   := not Estado;
     bSalItem.Enabled    := not Estado;
     AtivaPanel(FichaItem, Estado);
end;

procedure TfComexContratoCambio.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfComexContratoCambio.bPesquisaClick(Sender: TObject);
begin
     Contratos.Cancel;
     LigaBotoes(true);
     Filtra(Contratos, 'Numero', cPesquisa.text);
end;
 
procedure TfComexContratoCambio.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;
 
procedure TfComexContratoCambio.ContratoCambioAfterPost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Numero').AsString, EstadoTabela(DataSet));
end;

procedure TfComexContratoCambio.ContratoCambioBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Numero').AsString, 'Delete');
end;

// Salva novo registro na tabela do financeiro.
procedure TfComexContratoCambio.SalvaFinanceiro(Tabela: TDataSet);
begin
     with Tabela do begin 
          open; 
          Append;
                Tabela.fieldbyname('Titulo').Value           := GeraCodigo('PagarReceber', 'Titulo');
                Tabela.fieldbyname('Classificacao').Value    := Contratos.FieldByName('Classificacao').AsString;
                Tabela.fieldbyname('Tipo').Value             := PlanoContas.FieldByName('Tipo').AsString;
                Tabela.fieldbyname('Data_Documento').Value   := Contratos.FieldByName('Data').AsDateTime;
                Tabela.fieldbyname('Data_Previsao').Value    := Contratos.FieldByName('Data_Vencimento').AsDateTime;
                Tabela.fieldbyname('Data_Vencimento').Value  := Contratos.FieldByName('Data_Vencimento').AsDateTime;
                Tabela.fieldbyname('Valor_Documento').Value  := cValorReal.Value;
                Tabela.fieldbyname('Valor_Parcela').Value    := cValorReal.Value;
                Tabela.fieldbyname('Multa').Value            := 0;
                Tabela.fieldbyname('Juros').Value            := 0;
                Tabela.fieldbyname('Desconto').Value         := 0;
                Tabela.fieldbyname('Valor_Total').Value      := cValorReal.Value;
                Tabela.fieldbyname('Valor_Operacao').Value   := cValorReal.Value;
                Tabela.fieldbyname('Fornecedor').Value       := Contratos.FieldByName('Beneficiario').AsInteger;
                Tabela.fieldbyname('Documento').Value        := Config.FieldByName('ContratoCambio_Documento').AsString;
                Tabela.fieldbyname('Numero_Documento').Value := Contratos.FieldByName('Numero').AsString;
                Tabela.fieldbyname('Processo').Value         := ContratosItens.FieldByName('Processo').AsString;
                Tabela.fieldbyname('CustoConta').Value       := PlanoContas.FieldByName('Custo').AsBoolean;
                Tabela.fieldbyname('Custo_Seletivo').Value   := PlanoContas.FieldByName('Custo_Seletivo').AsBoolean;
                Tabela.fieldbyname('Custo_Entrada').Value    := PlanoContas.FieldByName('Custo_Entrada').AsBoolean;
                Tabela.fieldbyname('Valor_Baixado').Value    := 0;
                Tabela.fieldbyname('Centro_Custo').Value     := Contratos.FieldByName('Centro_Custo').AsString;
                Tabela.fieldbyname('Nivel').Value            := PlanoContas.FieldByName('Nivel').AsInteger;
                Tabela.fieldbyname('Fiscal').Value           := Contratos.FieldByName('Numero').AsString;
                Tabela.fieldbyname('Tipo_Nota').Value        := 'CB';
                Tabela.fieldbyname('Pago_Cliente').Value     := Contratos.FieldByName('Pago_Cliente').asboolean;
                Tabela.fieldbyname('Valor_ME').Value         := ContratosTotal_ME.Value;
                Tabela.fieldbyname('Taxa_ME').Value          := ContratosTaxa_Cambial.value;
                Tabela.fieldbyname('Empresa').Value          := UniMainModule.mEmpresaAtiva;
                Tabela.fieldbyname('Filial').Value           := Empresas.FieldByName('Numero_Filial').asinteger;
          post;
          close;
{
      CREATE TABLE [dbo].[PagarReceber](
      [Registro] [bigint] IDENTITY(1,1) NOT NULL,
      [Titulo] [bigint] NULL,
      [Empresa] [varchar](14) NULL,
      [Conta] [varchar](15) NULL,
      [Tipo] [char](1) NULL,
      [Adiantamento] [bit] NULL,
      [Devolucao] [bit] NULL,
      [Tributo] [bit] NULL,
      [Centro_Custo] [varchar](10) NULL,
      [Data_Previsao] [date] NULL,
      [Data_Vencimento] [date] NULL,
      [Valor_Documento] [decimal](18, 4) NULL,
      [Valor_Parcela] [decimal](18, 4) NULL,
      [Valor_Multa] [decimal](18, 4) NULL,
      [Valor_Juros] [decimal](18, 4) NULL,
      [Valor_Desconto] [decimal](18, 4) NULL,
      [Valor_Total] [decimal](18, 4) NULL,
      [Valor_Operacao] [decimal](18, 4) NULL,
      [Codigo_Antigo] [varchar](15) NULL,
      [Beneficiario] [smallint] NULL,
      [Beneficiario_Banco] [varchar](30) NULL,
      [Beneficiario_Agencia] [char](10) NULL,
      [Beneficiario_Conta] [char](10) NULL,
      [Banco] [smallint] NULL,
      [Documento_Data] [date] NULL,
      [Documento_Tipo] [varchar](10) NULL,
      [Documento_Numero] [varchar](15) NULL,
      [Forma_Pgto] [smallint] NULL,
      [Forma_PgtoDoc] [varchar](15) NULL,
      [Observacao] [text] NULL,
      [Processo] [varchar](15) NULL,
      [Processo_Tipo] [char](1) NULL,
      [Origem] [char](2) NULL,
      [Origem_Numero] [varchar](15) NULL,
      [Modalidade_Pgto] [smallint] NULL,
      [Solicitacao_Pgto] [int] NULL,
      [Solicitacao_Numerario] [int] NULL,
      [Parcela] [char](20) NULL,
      [Transferencia] [bit] NULL,
      [Valor_Baixado] [decimal](18, 4) NULL,
      [Adiantamento_Numero] [int] NULL,
      [Transferencia_Numero] [int] NULL,
      [Transferencia_Banco] [smallint] NULL,
      [Numero_Importado] [int] NULL,
      [Nivel] [smallint] NULL,
      [Desdobramento] [smallint] NULL,
      [Provisorio] [bit] NULL,
      [Boleto_Numero] [int] NULL,
      [Desconto_Liquidacao] [decimal](18, 4) NULL,
      [Emprestimo] [bit] NULL,
      [Recuperavel] [bit] NULL,
      [Vinculo] [int] NULL,
      [Pago_Cliente] [bit] NULL,
      [Custo_Entrada] [bit] NULL,
      [Custo_Saida] [bit] NULL,
      [Custo_Seletivo] [bit] NULL,
      [Custo_Outros] [bit] NULL,
      [Provisao_ContaD] [varchar](6) NULL,
      [Provisao_ContaC] [varchar](6) NULL,
      [Provisao_Historico] [smallint] NULL,
      [Liquidacao_ContaD] [varchar](6) NULL,
      [Liquidacao_ContaC] [varchar](6) NULL,
      [Liquidacao_Historico] [smallint] NULL,
      [Embarque] [int] NULL,
      [Codigo_Barras] [varchar](50) NULL,
      [Chave_PIX] [varchar](60) NULL,
      [Lote] [int] NULL,
      [Numero_Documento] [varchar](15) NULL,
      [Permuta_Recebimento] [bit] NULL,
      [Valor_ME] [decimal](18, 4) NULL,
      [Filial] [smallint] NULL,
      [Numero_FormaTipo] [varchar](15) NULL,
      [Taxa_ME] [decimal](18, 4) NULL,
      [Forma_Tipo] [varchar](25) NULL,
      [Navio] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



}

          
{          
[PagarReceberBaixas](
[Registro] [bigint] IDENTITY(1,1) NOT NULL,
[Empresa] [varchar](14) NULL,
[Titulo] [bigint] NULL,
[Data] [date] NULL,
[Tipo] [char](1) NULL,
[Banco] [smallint] NULL,
[Valor] [decimal](18, 4) NULL,
[Valor_Multa] [decimal](18, 4) NULL,
[Valor_Juros] [decimal](18, 4) NULL,
[Valor_Desconto] [decimal](18, 4) NULL,
[Forma_Pgto] [smallint] NULL,
[Forma_PgtoDoc] [varchar](15) NULL,
[Taxa_FechamentoCambio] [decimal](18, 4) NULL,
[Taxa_Data] [datetime] NULL,
[Numero_ContratoCambio] [varchar](15) NULL,
[Origem_Multa] [char](1) NULL,
[Origem_Juros] [char](1) NULL,
[Origem_Desconto] [char](1) NULL,
[Banco_Conta] [varchar](15) NULL,
[Conciliado] [bit] NULL,
[Observacao] [text] NULL,
[Compensacao] [bit] NULL,
[Compensacao_Numero] [smallint] NULL,
[Lote] [int] NULL,
[Bordero] [int] NULL,
[Bordero_Data] [date] NULL
}          
     end;
end;













end.
