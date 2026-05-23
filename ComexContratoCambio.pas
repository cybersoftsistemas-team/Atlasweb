unit ComexContratoCambio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, 
  uniDBCheckBox, uniSpeedButton, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniDBEdit, uniBasicGrid, uniGUIBaseClasses, uniMultiItem, 
  uniComboBox, UniGroupBox, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniCheckBox, uniGUIClasses, uniDateTimePicker,
  uniDBComboBox, uniEdit, PagarReceber.Dados, PagarReceber.Repository, PagarReceber.Service,  Data.SqlTimSt;

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
    procedure cPrevisaoClick(Sender: TObject);
    procedure BaixarPrevisao;
    procedure bAddItemClick(Sender: TObject);
    procedure bCancItemClick(Sender: TObject);
    procedure bAltItemClick(Sender: TObject);
    procedure bExcItemClick(Sender: TObject);
    procedure bSalItemClick(Sender: TObject);
    procedure cValor_MEChangeValue(Sender: TObject);
    procedure cValor_MEChange(Sender: TObject);
    procedure cDataChange(Sender: TObject);
    procedure cDataChangeValue(Sender: TObject);
    procedure ContratosAfterScroll(DataSet: TDataSet);
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
          sql.Add('select Codigo, Nome, Conta from Bancos where Desativado <> 1 order by Nome');
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
          sql.add('      ,Vencimento_Cambio');
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

procedure TfComexContratoCambio.cDataChange(Sender: TObject);
begin
     if Contratos.State in[dsInsert, dsEdit] then 
        ContratosData_Vencimento.Value := SomaData(ContratosData.Value, Processos.FieldByName('Vencimento_Cambio').AsInteger);
end;

procedure TfComexContratoCambio.cDataChangeValue(Sender: TObject);
begin
     if Contratos.State in[dsInsert, dsEdit] then 
        ContratosData_Vencimento.Value := SomaData(ContratosData.Value, Processos.FieldByName('Vencimento_Cambio').AsInteger);
end;

procedure TfComexContratoCambio.cExportadorExit(Sender: TObject);
begin
     if Contratos.State in[dsInsert, dsEdit] then begin
        if Contratos.State = dsInsert then
           ContratosBeneficiario.Value := ContratosExportador.AsInteger
        else
           if ContratosBeneficiario.AsInteger = 0 then
              ContratosBeneficiario.Value := ContratosExportador.AsInteger;
     end;
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
     ContratosItens.first;
     while not ContratosItens.eof do begin
           with tTemp do begin
                sql.clear;
                sql.add('delete from PagarReceberBaixas where Titulo = :pTitulo');
                paramByName('pTitulo').asinteger := ContratosItensFinanceiro_Lancamento.asinteger;
                execute;
                
                sql.Clear;
                sql.Add('select Data_Vencimento');
                sql.add('      ,Tipo');
                sql.add('      ,Valor_Total');
                sql.add('      ,Forma_Pgto');
                sql.add('      ,Forma_PgtoDoc');
                sql.add('from PagarReceber');
                sql.add('where Titulo = :pTitulo');
                parambyname('pTitulo').value := ContratosItensFinanceiro_Lancamento.AsInteger;
                open;
           end;
           with PagarReceberBaixas do begin
                Append;
                     PagarReceberBaixasTitulo.Value        := ContratosItensFinanceiro_Lancamento.asinteger;
                     PagarReceberBaixasBanco.Value         := ContratosBanco.Value;
                     PagarReceberBaixasBanco_Conta.Value   := Bancos.fieldbyname('Conta').AsString;
                     PagarReceberBaixasData.Value          := tTemp.fieldbyname('Data_Vencimento').Value;
                     PagarReceberBaixasTipo.Value          := tTemp.fieldbyname('Tipo').AsString;
                     PagarReceberBaixasValor.Value         := tTemp.fieldbyname('Valor_Total').AsCurrency;
                     PagarReceberBaixasForma_Pgto.Value    := tTemp.fieldbyname('Forma_Pgto').Value;
                     PagarReceberBaixasForma_PgtoDoc.Value := tTemp.fieldbyname('Forma_PgtoDoc').AsString;
                     PagarReceberBaixasObservacao.Value    := 'Baixa referente a Contrato de Câmbio nº '+ ContratosNumero.AsString;
                post;
           end;
           // Grava o numero da baixa no titulo.
           with tTemp do begin
                sql.clear;
                sql.add('update PagarReceber set Baixa_Numero  = :pReg');
                sql.add('                       ,Valor_Baixado = :pValor');
                sql.add('                       ,Banco         = :pBanco');
                parambyname('pReg').value   := PagarReceberBaixasRegistro.asinteger;
                parambyname('pValor').value := PagarReceberBaixasValor.Value;
                parambyname('pBanco').value := Bancos.fieldbyname('Conta').AsString;
           end;
           ContratosItens.Next;
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
             MessageDlg('Isso irá apagar o contrato e o lançamento do financeira caso exista!'+#13+#13+'Deseja realmente excluir este "Contrato de Câmbio"', mtConfirmation, mbYesNo,
                       procedure(Comp:TComponent; ARes: Integer)
                       begin
                             if aRes = mrYes then begin
                                // Verifica se o contrato e referente a empréstimo FINIMP e não deixa deletar.
                                with tTemp do begin
                                     sql.clear;
                                     sql.Add('select isnull(count(*), 0) as Qtde from Emprestimos where Numero_Documento = :pNumero');
                                     ParamByName('pNumero').AsString := ContratosNumero.AsString;
                                     Open;
                                     if fieldbyname('Qtde').asinteger > 0 then begin
                                        MessageDlg('Atenção!'+#13+#13+'Este contrato não pode ser excluído pois teve origem em "Empréstimo FINIMP".', mtInformation, [mbOK]);
                                        Abort; 
                                     end;

                                     sql.clear;
                                     sql.Add('delete from PagarReceberBaixas where Numero in(select Financeiro_Lancamento from ContratoCambioItens where Contrato = :pContrato)');
                                     sql.Add('delete from PagarReceber       where Numero in(select Financeiro_Lancamento from ContratoCambioItens where Contrato = :pContrato)');
                                     parambyname('pContrato').AsString := ContratosNumero.AsString;
                                     execute;
                                end;
                             
                                delete;
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
                                                  ,cValorFatReal.value
                                                  ,cValor_ME.value
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

procedure TfComexContratoCambio.ContratosAfterScroll(DataSet: TDataSet);
begin
    mContrato := ContratosNumero.value;
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
     end;
end;




end.
