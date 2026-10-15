unit ComexSimulacaoImp;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMemo, uniBitBtn,
  uniSpeedButton, uniButton, uniDBNavigator, uniBasicGrid, uniDBGrid, uniEdit, uniCheckBox, uniDBCheckBox, uniGroupBox, uniDBComboBox, uniMultiItem, uniComboBox, uniDBLookupComboBox, uniDateTimePicker, uniDBDateTimePicker, uniGUIClasses, uniDBEdit, uniPanel, uniPageControl, Vcl.Controls, Vcl.Forms,
  uniGUIBaseClasses, uniLabel, Math, System.Variants, Vcl.Dialogs, uniGUIFrame;

type
  TfComexSimulacaoImp = class(TUniFrame)
    RxLabel3: TUniLabel;
    RxLabel4: TUniLabel;
    PageControl1: TUniPageControl;
    TabSheet1: TUniTabSheet;
    Panel5: TUniPanel;
    Label3: TUniLabel;
    StaticText44: TUniLabel;
    lData: TUniLabel;
    StaticText3: TUniLabel;
    StaticText5: TUniLabel;
    StaticText8: TUniLabel;
    cNumero: TUniDBEdit;
    DBEdit5: TUniDBEdit;
    DBEdit11: TUniDBEdit;
    DBEdit17: TUniDBEdit;
    StaticText11: TUniLabel;
    StaticText14: TUniLabel;
    StaticText15: TUniLabel;
    DBEdit18: TUniDBEdit;
    DBEdit20: TUniDBEdit;
    cTaxaMoeda: TUniDBEdit;
    DBEdit24: TUniDBEdit;
    DBEdit25: TUniDBEdit;
    StaticText16: TUniLabel;
    StaticText18: TUniLabel;
    StaticText21: TUniLabel;
    StaticText22: TUniLabel;
    StaticText23: TUniLabel;
    DBEdit32: TUniDBEdit;
    StaticText29: TUniLabel;
    cDataRegistro_DI: TUniDBDateTimePicker;
    StaticText31: TUniLabel;
    StaticText32: TUniLabel;
    RxDBLookupCombo1: TUniDBLookupComboBox;
    RxDBLookupCombo2: TUniDBLookupComboBox;
    StaticText39: TUniLabel;
    DBEdit1: TUniDBEdit;
    StaticText40: TUniLabel;
    DBEdit2: TUniDBEdit;
    DBEdit4: TUniDBEdit;
    DBEdit8: TUniDBEdit;
    DBEdit28: TUniDBEdit;
    DBEdit29: TUniDBEdit;
    StaticText43: TUniLabel;
    StaticText45: TUniLabel;
    cVia: TUniDBComboBox;
    RxDBLookupCombo3: TUniDBLookupComboBox;
    StaticText47: TUniLabel;
    RxDBLookupCombo4: TUniDBLookupComboBox;
    StaticText48: TUniLabel;
    StaticText49: TUniLabel;
    DBEdit7: TUniDBEdit;
    DBEdit16: TUniDBEdit;
    StaticText50: TUniLabel;
    DBEdit36: TUniDBEdit;
    StaticText51: TUniLabel;
    RxDBLookupCombo5: TUniDBLookupComboBox;
    StaticText52: TUniLabel;
    DBEdit37: TUniDBEdit;
    DBComboBox1: TUniDBComboBox;
    StaticText10: TUniLabel;
    StaticText27: TUniLabel;
    RxDBLookupCombo7: TUniDBLookupComboBox;
    GroupBox1: TUniGroupBox;
    cNomeClienteImp: TUniDBEdit;
    StaticText1: TUniLabel;
    StaticText28: TUniLabel;
    RxDBLookupCombo8: TUniDBLookupComboBox;
    GroupBox2: TUniGroupBox;
    StaticText34: TUniLabel;
    StaticText35: TUniLabel;
    DBEdit19: TUniDBEdit;
    DBCheckBox1: TUniDBCheckBox;
    DBCheckBox2: TUniDBCheckBox;
    DBCheckBox3: TUniDBCheckBox;
    RxDBLookupCombo9: TUniDBLookupComboBox;
    DBCheckBox4: TUniDBCheckBox;
    DBCheckBox5: TUniDBCheckBox;
    DBCheckBox6: TUniDBCheckBox;
    StaticText36: TUniLabel;
    RxDBLookupCombo10: TUniDBLookupComboBox;
    StaticText37: TUniLabel;
    DBEdit3: TUniDBEdit;
    StaticText38: TUniLabel;
    DBEdit6: TUniDBEdit;
    StaticText54: TUniLabel;
    DBEdit22: TUniDBEdit;
    StaticText58: TUniLabel;
    RxDBLookupCombo11: TUniDBLookupComboBox;
    StaticText60: TUniLabel;
    DBEdit40: TUniDBEdit;
    DBEdit41: TUniDBEdit;
    StaticText61: TUniLabel;
    RxDBLookupCombo12: TUniDBLookupComboBox;
    StaticText67: TUniLabel;
    DBEdit47: TUniDBEdit;
    GroupBox3: TUniGroupBox;
    StaticText69: TUniLabel;
    DBEdit49: TUniDBEdit;
    StaticText70: TUniLabel;
    DBEdit50: TUniDBEdit;
    DBEdit51: TUniDBEdit;
    StaticText71: TUniLabel;
    StaticText72: TUniLabel;
    DBEdit52: TUniDBEdit;
    StaticText73: TUniLabel;
    DBEdit53: TUniDBEdit;
    StaticText68: TUniLabel;
    DBEdit48: TUniDBEdit;
    StaticText124: TUniLabel;
    DBEdit54: TUniDBEdit;
    StaticText53: TUniLabel;
    RxDBLookupCombo6: TUniDBLookupComboBox;
    StaticText19: TUniLabel;
    DBEdit21: TUniDBEdit;
    StaticText9: TUniLabel;
    cSeguro: TUniDBEdit;
    StaticText24: TUniLabel;
    DBEdit26: TUniDBEdit;
    TabSheet2: TUniTabSheet;
    Panel6: TUniPanel;
    StaticText2: TUniLabel;
    cProduto: TUniDBEdit;
    StaticText4: TUniLabel;
    cNCM: TUniDBEdit;
    StaticText7: TUniLabel;
    DBEdit10: TUniDBEdit;
    StaticText17: TUniLabel;
    cUnitario: TUniDBEdit;
    StaticText6: TUniLabel;
    DBEdit9: TUniDBEdit;
    StaticText12: TUniLabel;
    cAliquotaII: TUniDBEdit;
    StaticText13: TUniLabel;
    cAliquotaIPI: TUniDBEdit;
    StaticText25: TUniLabel;
    cAliquotaPIS: TUniDBEdit;
    StaticText26: TUniLabel;
    cAliquotaCOFINS: TUniDBEdit;
    cPesoBruto: TUniDBEdit;
    StaticText41: TUniLabel;
    DBEdit13: TUniDBEdit;
    DBEdit14: TUniDBEdit;
    DBEdit15: TUniDBEdit;
    DBEdit23: TUniDBEdit;
    cUnitarioReal: TUniNumberEdit;
    StaticText42: TUniLabel;
    StaticText46: TUniLabel;
    DBEdit35: TUniDBEdit;
    DBEdit33: TUniDBEdit;
    StaticText55: TUniLabel;
    DBEdit12: TUniDBEdit;
    StaticText56: TUniLabel;
    DBEdit27: TUniDBEdit;
    DBEdit30: TUniDBEdit;
    DBEdit31: TUniDBEdit;
    StaticText57: TUniLabel;
    DBEdit34: TUniDBEdit;
    DBEdit38: TUniDBEdit;
    StaticText63: TUniLabel;
    DBEdit43: TUniDBEdit;
    DBEdit44: TUniDBEdit;
    StaticText64: TUniLabel;
    DBEdit45: TUniDBEdit;
    cTotalII: TUniNumberEdit;
    cTotalIPI: TUniNumberEdit;
    DBEdit46: TUniDBEdit;
    GradeProd: TUniDBGrid;
    Panel4: TUniPanel;
    NavegaProdutos: TUniDBNavigator;
    bDuplicarItem: TUniButton;
    StaticText62: TUniLabel;
    DBEdit42: TUniDBEdit;
    TabSheet3: TUniTabSheet;
    gDespesas: TUniDBGrid;
    Panel3: TUniPanel;
    bRemoveTudo: TUniButton;
    bBuscar: TUniButton;
    bMarinha: TUniButton;
    NavegaDesp: TUniDBNavigator;
    bPISCOFINS: TUniButton;
    StaticText30: TUniLabel;
    cTotalDespesasSai: TUniNumberEdit;
    cTotalDespesas: TUniNumberEdit;
    Panel2: TUniPanel;
    bPesq: TUniSpeedButton;
    StaticText20: TUniLabel;
    StaticText33: TUniLabel;
    cDespNac: TUniNumberEdit;
    StaticText59: TUniLabel;
    cValorME: TUniNumberEdit;
    StaticText65: TUniLabel;
    cTaxa: TUniNumberEdit;
    DBEdit39: TUniDBEdit;
    StaticText66: TUniLabel;
    TabSheet5: TUniTabSheet;
    DBGrid1: TUniDBGrid;
    TabSheet4: TUniTabSheet;
    Memo1: TUniMemo;
    Panel1: TUniPanel;
    bCalcular: TUniSpeedButton;
    bImprimir: TUniButton;
    Navega: TUniDBNavigator;
    bExcel: TUniButton;
    bDuplicar: TUniButton;
    bImpHor: TUniButton;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    ClassificacaoFinanceira: TFDQuery;
    dsClassificacaoFinanceira: TDataSource;
    Moedas: TFDQuery;
    dsMoedas: TDataSource;
    TipoNota: TFDQuery;
    dsTipoNota: TDataSource;
    IncentivosFiscais: TFDQuery;
    dsIncentivosFiscais: TDataSource;
    Paises: TFDQuery;
    dsPaises: TDataSource;
    Estados: TFDQuery;
    dsEstados: TDataSource;
    Incoterms: TFDQuery;
    dsIncoterms: TDataSource;
    Campos: TFDQuery;
    dsCampos: TDataSource;
    Configuracao: TFDQuery;
    dsConfiguracao: TDataSource;
    tNumero: TFDQuery;
    tDespesa: TFDQuery;
    tRegistro: TFDQuery;
    tSomaDespesas: TFDQuery;
    tItens: TFDQuery;
    tSomaProdutos: TFDQuery;
    tSomaImpostos: TFDQuery;
    tProdutos: TFDQuery;
    tSimula: TFDQuery;
    dstSimula: TDataSource;
    dstProdutos: TDataSource;
    dstDespesa: TDataSource;
    tDespesaAdm: TFDQuery;
    dstDespesaAdm: TDataSource;
    tDespesaSai: TFDQuery;
    dstDespesaSai: TDataSource;
    ttmp: TFDQuery;
    tDespesaMar: TFDQuery;
    dstDespesaMar: TDataSource;
    SimulaImportacao: TFDQuery;
    dsSimulaImportacao: TDataSource;
    SimulaProdutos: TFDQuery;
    dsSimulaProdutos: TDataSource;
    SimulaDespesas: TFDQuery;
    dsSimulaDespesas: TDataSource;
    TiposProcesso: TFDQuery;
    dsTiposProcesso: TDataSource;
    SimulaImportacaoNumero: TIntegerField;
    SimulaImportacaoData: TDateTimeField;
    SimulaImportacaoModalidade: TStringField;
    SimulaImportacaoPeso_Bruto: TFloatField;
    SimulaImportacaoFOB: TCurrencyField;
    SimulaImportacaoValor_II: TFloatField;
    SimulaImportacaoValor_IPI: TFloatField;
    SimulaImportacaoModalidade_Frete: TStringField;
    SimulaImportacaoFrete_Internacional: TCurrencyField;
    SimulaImportacaoSeguro_PremioPercentual: TFloatField;
    SimulaImportacaoSeguro_PremioValor: TCurrencyField;
    SimulaImportacaoFOB_Real: TCurrencyField;
    SimulaImportacaoFrete_Real: TCurrencyField;
    SimulaImportacaoSeguro_Real: TCurrencyField;
    SimulaImportacaoAliquota_ICMSEntrada: TFloatField;
    SimulaImportacaoAliquota_ICMSSaida: TFloatField;
    SimulaImportacaoTaxa_Adiministrativa: TFloatField;
    SimulaImportacaoBeneficio: TStringField;
    SimulaImportacaoValor_PIS: TCurrencyField;
    SimulaImportacaoValor_COFINS: TCurrencyField;
    SimulaImportacaoValor_ICMSEntrada: TCurrencyField;
    SimulaImportacaoValor_ICMSSaida: TCurrencyField;
    SimulaImportacaoBCICMS_Entrada: TCurrencyField;
    SimulaImportacaoBCICMS_Saida: TCurrencyField;
    SimulaImportacaoAliquota_IRPJ: TFloatField;
    SimulaImportacaoValor_IRPJ: TCurrencyField;
    SimulaImportacaoAliquota_CSLL: TFloatField;
    SimulaImportacaoValor_CSLL: TCurrencyField;
    SimulaImportacaoPeso_Liquido: TFloatField;
    SimulaImportacaoPorto_Origem: TStringField;
    SimulaImportacaoPorto_Destino: TStringField;
    SimulaImportacaoCidade_Origem: TStringField;
    SimulaImportacaoCidade_Destino: TStringField;
    SimulaImportacaoTipo_Container: TStringField;
    SimulaImportacaoMoeda_Frete: TStringField;
    SimulaImportacaoTaxa_Frete: TFloatField;
    SimulaImportacaoMoeda_Seguro: TStringField;
    SimulaImportacaoTaxa_Seguro: TFloatField;
    SimulaImportacaoTaxa_FOB: TFloatField;
    SimulaImportacaoMoeda_FOB: TStringField;
    SimulaImportacaoTipo_Nota: TSmallintField;
    SimulaImportacaoCliente_ImpNome: TStringField;
    SimulaImportacaoCliente_ImpEstado: TStringField;
    SimulaImportacaoCliente_NotaNome: TStringField;
    SimulaImportacaoCliente_NotaEstado: TStringField;
    SimulaImportacaoCliente_NotaContrib: TBooleanField;
    SimulaImportacaoCliente_NotaSimples: TBooleanField;
    SimulaImportacaoCliente_NotaJuridica: TBooleanField;
    SimulaImportacaoCliente_NotaZonaFranca: TBooleanField;
    SimulaImportacaoCliente_NotaConsumidorFinal: TBooleanField;
    SimulaImportacaoINCOTERM: TStringField;
    SimulaImportacaoProcesso: TStringField;
    SimulaImportacaoDI: TStringField;
    SimulaImportacaoQtde_Container: TIntegerField;
    SimulaImportacaoFornecedor: TStringField;
    SimulaImportacaoTipo_Produto: TStringField;
    SimulaImportacaoFator: TFloatField;
    SimulaImportacaoPais_Origem: TStringField;
    SimulaImportacaoPais_Destino: TStringField;
    SimulaImportacaoTipo_NotaSai: TSmallintField;
    SimulaImportacaoValor_IPISai: TCurrencyField;
    SimulaImportacaoValor_PISSai: TCurrencyField;
    SimulaImportacaoValor_COFINSSai: TCurrencyField;
    SimulaImportacaoTotal_NFSaida: TCurrencyField;
    SimulaImportacaoTotal_Produtos: TCurrencyField;
    SimulaImportacaoValor_Despesas: TCurrencyField;
    SimulaImportacaoBCIPI_Entrada: TCurrencyField;
    SimulaImportacaoBCIPI_Saida: TCurrencyField;
    SimulaImportacaoBCII_Entrada: TCurrencyField;
    SimulaImportacaoBCICMSST: TCurrencyField;
    SimulaImportacaoValor_ICMSST: TCurrencyField;
    SimulaImportacaoTotal_NFEntrada: TCurrencyField;
    SimulaImportacaoValor_DespesasSai: TCurrencyField;
    SimulaImportacaoProduto_Destinado: TStringField;
    SimulaImportacaoTaxa_Servico: TFloatField;
    SimulaImportacaoAliquota_PISServ: TFloatField;
    SimulaImportacaoAliquota_COFINSServ: TFloatField;
    SimulaImportacaoAliquota_IRPJServ: TFloatField;
    SimulaImportacaoAliquota_CSLLServ: TFloatField;
    SimulaImportacaoAliquota_ISSServ: TFloatField;
    SimulaImportacaoDestacar_ImpCred: TBooleanField;
    SimulaImportacaoValor_AFRMM: TCurrencyField;
    SimulaProdutosSimulacao: TIntegerField;
    SimulaProdutosItem: TSmallintField;
    SimulaProdutosProduto: TStringField;
    SimulaProdutosNCM: TStringField;
    SimulaProdutosPeso_Bruto: TFloatField;
    SimulaProdutosQuantidade: TFloatField;
    SimulaProdutosValor_UnitarioME: TFloatField;
    SimulaProdutosAliquota_II: TFloatField;
    SimulaProdutosAliquota_IPI: TFloatField;
    SimulaProdutosAliquota_PIS: TFloatField;
    SimulaProdutosAliquota_COFINS: TFloatField;
    SimulaProdutosPeso_Liquido: TFloatField;
    SimulaProdutosValor_II: TCurrencyField;
    SimulaProdutosValor_IPI: TCurrencyField;
    SimulaProdutosValor_PIS: TCurrencyField;
    SimulaProdutosValor_COFINS: TCurrencyField;
    SimulaProdutosValor_ICMSEntrada: TCurrencyField;
    SimulaProdutosValor_ICMSSaida: TCurrencyField;
    SimulaProdutosAliquota_PISSai: TFloatField;
    SimulaProdutosAliquota_COFINSSai: TFloatField;
    SimulaProdutosValor_PISSai: TCurrencyField;
    SimulaProdutosValor_COFINSSai: TCurrencyField;
    SimulaProdutosValor_UnitarioSaida: TCurrencyField;
    SimulaProdutosValor_BCICMS: TCurrencyField;
    SimulaProdutosValor_BCPISEnt: TCurrencyField;
    SimulaProdutosValor_BCIPI: TCurrencyField;
    SimulaProdutosValor_IPISai: TCurrencyField;
    SimulaProdutosValor_UnitarioReal: TCurrencyField;
    SimulaProdutosValor_CIFReal: TCurrencyField;
    SimulaProdutosBCII_Entrada: TCurrencyField;
    SimulaProdutosValor_BCPISSai: TCurrencyField;
    SimulaProdutosFator: TFloatField;
    SimulaProdutosAliquota_ICMSRed: TFloatField;
    SimulaProdutosAliquota_ICMSST: TFloatField;
    SimulaProdutosBCICMSST: TCurrencyField;
    SimulaProdutosValor_ICMSST: TCurrencyField;
    SimulaProdutosAliquota_ICMS: TFloatField;
    SimulaProdutosValor_Unitario: TFloatField;
    SimulaProdutosAliquota_MVA: TFloatField;
    SimulaProdutosValor_BCMVA: TCurrencyField;
    SimulaProdutosValor_MVA: TCurrencyField;
    SimulaProdutosValor_BCIPISai: TCurrencyField;
    SimulaProdutosValor_UnitarioImpSai: TCurrencyField;
    SimulaProdutosValor_UnitarioimpEnt: TCurrencyField;
    SimulaProdutosValor_BCICMSEnt: TCurrencyField;
    SimulaProdutosAliquota_ICMSRed2: TFloatField;
    SimulaDespesasRegistro: TLargeintField;
    SimulaDespesasDespesa: TStringField;
    SimulaDespesasValor: TCurrencyField;
    SimulaDespesasSimulacao: TIntegerField;
    SimulaDespesasClassificacao: TStringField;
    SimulaDespesasCusto: TBooleanField;
    SimulaDespesasCusto_Saida: TBooleanField;
    SimulaDespesasValor_ME: TCurrencyField;
    SimulaDespesasTaxa: TFloatField;
    TiposProcessoCodigo: TIntegerField;
    TiposProcessoConta_Cliente: TStringField;
    TiposProcessoConta_Despesas: TStringField;
    TiposProcessoConta_Impostos: TStringField;
    TiposProcessoConta_ClienteAdiantamento: TStringField;
    TiposProcessoConta_Fornecedor: TStringField;
    TiposProcessoConta_FornecedorAdiantamento: TStringField;
    TiposProcessoDescricao: TStringField;
    TiposProcessoExige_Cliente: TBooleanField;
    TiposProcessoSISCOMEX_Documento: TStringField;
    TiposProcessoSISCOMEX_CentroCusto: TStringField;
    TiposProcessoSISCOMEX_Orgao: TStringField;
    TiposProcessoSISCOMEX_ClassificacaoII: TStringField;
    TiposProcessoSISCOMEX_ClassificacaoIPI: TStringField;
    TiposProcessoSISCOMEX_ClassificacaoPIS: TStringField;
    TiposProcessoSISCOMEX_ClassificacaoCOFINS: TStringField;
    TiposProcessoSISCOMEX_ClassificacaoTaxaSISCOMEX: TStringField;
    TiposProcessoSISCOMEX_ClassificacaoANTIDUMPING: TStringField;
    TiposProcessoSISCOMEX_ClassificacaoDifPIS: TStringField;
    TiposProcessoSISCOMEX_ClassificacaoDifCOFINS: TStringField;
    TiposProcessoPedido: TStringField;
    TiposProcessoApuracao_PISCOFINS: TBooleanField;
    TiposProcessoClassificacao_AFRMM: TStringField;
    TiposProcessoConta_Adiantamento: TStringField;
    TiposProcessoConta_ClienteDevolucao: TStringField;
    TiposProcessoConta_FornecedorDevolucao: TStringField;
    TiposProcessoExportacao: TBooleanField;
    TiposProcessoProcesso: TBooleanField;
    TiposProcessoConta_FornecedorExt: TStringField;
    TiposProcessoClassificacao_TUP: TStringField;
    TiposProcessoClassificacao_COFINSDifer: TStringField;
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bRemoveTudoClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure cDespesaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure PegaValor;
    procedure NavegaProdutosClick(Sender: TObject; Button: TNavigateBtn);
    procedure cNCMExit(Sender: TObject);
    procedure NavegaProdutosBeforeAction(Sender: TObject;Button: TNavigateBtn);
    procedure cNumeroChange(Sender: TObject);
    procedure cUnitarioExit(Sender: TObject);
    procedure cProdutoChange(Sender: TObject);
    procedure CalculaEntrada;
    procedure bCalcularClick(Sender: TObject);
    procedure lICMSSaiCalc(Sender: TObject; var Value: Variant);
    procedure lIPISaiCalc(Sender: TObject; var Value: Variant);
//    procedure gDespesasCellClick(Column: TColumn);
    procedure bExcelClick(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
    procedure CustodeEntrada1Click(Sender: TObject);
    procedure CustodeSada1Click(Sender: TObject);
    procedure Nenhum1Click(Sender: TObject);
    procedure Ambos1Click(Sender: TObject);
    procedure bMarinhaClick(Sender: TObject);
    procedure cValorMEChange(Sender: TObject);
    procedure DBEdit39Change(Sender: TObject);
    procedure cDespesaCloseUp(Sender: TObject);
    procedure NavegaDespClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaDespBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesqClick(Sender: TObject);
    procedure bPISCOFINSClick(Sender: TObject);
    procedure bDuplicarItemClick(Sender: TObject);
    procedure SomaDespesas;
    procedure CalculoSaida;
    function ConvFormula(Formula, Campo: string): string;
    procedure ExportaEXCEL;
    procedure CarregarDados;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
  public
    mUnitario, mTotal, mBCPIS, mValor, mValorTotal, mPeso, mII,
    mFatorPIS, mFatorCOFINS, mFatorDespesa, mFatorSeguro, mFator,
    mFatorFrete: Real;
  end;

implementation

uses MainModule, Funcoes;

{$R *.dfm}

procedure TfComexSimulacaoImp.UniFrameCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TFDQuery then
      TFDQuery(Components[i]).Connection := UniMainModule.Conecta;
  CarregarDados;
end;

procedure TfComexSimulacaoImp.UniFrameDestroy(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TFDQuery then
      TFDQuery(Components[i]).Close;
end;

procedure TfComexSimulacaoImp.CarregarDados;
begin
     // Cursor VCL não utilizado em uniGUI;
          with Empresas do begin
               sql.clear;
               sql.add('select * from Empresas where Codigo = :pEmp');
               open;
          end;
          with SimulaImportacao do begin
               SQL.Clear;
               SQL.Add('select *,');
               SQL.Add('       Pais_OrigemNome = (select Nome from Cybersoft_Cadastros.dbo.Paises where Codigo = Pais_Origem) ');
               SQL.Add('from   SimulaImportacao order by Numero');
               Open;
          end;
          with SimulaDespesas do begin 
               SQL.Clear;
               SQL.Add('select * from SimulaDespesas where(Simulacao = :pSimulacao) order by Registro');
               ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
          end;
          with SimulaProdutos do begin 
               SQL.Clear;
               SQL.Add('select * from SimulaProdutos where(Simulacao = :pSimulacao)');
               ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
          end;
          with ClassificacaoFinanceira do begin 
               SQL.Clear;
               SQL.Add('select * from ClassificacaoFinanceira where(Desativada <> 1) order by Descricao');
               Open;
          end;
          with Moedas do begin
               SQL.Clear;
               SQL.Add('select * from Moedas order by Nome');
               Open;
          end;
          with TipoNota do begin 
               SQL.Clear;
               SQL.Add('select * from TipoNota order by Descricao');
               Open;
          end;
          with IncentivosFiscais do begin 
               SQL.Clear;
               SQL.Add('select * from IncentivosFiscais order by Nome');
               Open;
          end;
          with Paises do begin 
               SQL.Clear;
               SQL.Add('select * from Paises order by Nome');
               Open;
          end;
          with Estados do begin 
               SQL.Clear;
               SQL.Add('select * from Estados order by Codigo');
               Open;
          end;
          with Incoterms do begin 
               SQL.Clear;
               SQL.Add('select * from INCOTERMS order by Codigo');
               Open;
          end;
          with Campos do begin
               SQL.Clear;
//               SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
               SQL.Add('SELECT * FROM Campos WHERE Campo IN('') ORDER BY Tabela');
               Open;
          end;
          with TiposProcesso do begin 
               SQL.Clear;
               SQL.Add('select * from TiposProcesso order by Descricao');
               Open;
          end;
          with Configuracao do begin
               SQL.Clear;
               SQL.Add('select * from Configuracao');
               Open;
               if fieldbyname('Modelo_Simulacao').AsBoolean then begin
                  bImpHor.Visible   := false;
                  bImprimir.Caption := '&Imprimir';
               end;
          end;
     PageControl1.ActivePageIndex := 0;
     // Cursor VCL não utilizado em uniGUI;
end;

{
procedure TfComexSimulacaoImp.gDespesasCellClick(Column: TColumn);
begin
     with Dados do begin
          ClassificacaoFinanceira.Locate('Descricao', SimulaDespesas.FieldByName('Despesa').asstring, []);
          cDespesa.KeyValue := ClassificacaoFinanceiraCodigo.asstring;
          cDespNac.Value    := SimulaDespesas.FieldByName('Valor').ascurrency;
          cValorME.Value    := SimulaDespesas.FieldByName('Valor_ME').ascurrency;
          cTaxa.Value       := SimulaDespesas.FieldByName('Taxa').asfloat;
     end;
end;
}

procedure TfComexSimulacaoImp.lICMSSaiCalc(Sender: TObject; var Value: Variant);
begin
     Value := (SimulaProdutos.FieldByName('Quantidade').AsFloat * SimulaProdutos.FieldByName('Valor_ICMSSaida').AsCurrency);
end;


procedure TfComexSimulacaoImp.lIPISaiCalc(Sender: TObject; var Value: Variant);
begin
           Value := (SimulaProdutos.FieldByName('Quantidade').AsFloat * SimulaProdutos.FieldByName('Valor_IpiSai').AsCurrency);
end;


procedure TfComexSimulacaoImp.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
(*
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         SimulaImportacaoData.Value := Date;
         Panel5.Enabled         := true;
         bCalcular.Enabled      := false;
         bImprimir.Enabled      := false;
         NavegaProdutos.Enabled := false;
         PageControl1.ActivePageIndex := 0;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel5.Enabled := false;
         Navega.SetFocus;
         bCalcular.Enabled      := true;
         bImprimir.Enabled      := true;
         NavegaProdutos.Enabled := true;
      End;
      If (Button = nbInsert) then Begin
         SimulaImportacaoPais_Destino.Value                := '1058';
         SimulaImportacaoCliente_NotaContrib.Value         := true;
         SimulaImportacaoCliente_NotaJuridica.Value        := true;
         SimulaImportacaoCliente_NotaSimples.Value         := false;
         SimulaImportacaoCliente_NotaZonaFranca.Value      := false;
         SimulaImportacaoCliente_NotaConsumidorFinal.Value := false;
      End;
      with Dados, SimulaProdutos do begin
           cTotalII.Value  := FieldByName('Valor_II').ascurrency  * FieldByName('Quantidade').asfloat;
           cTotalIPI.Value := FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat;
      end;
*)      
end;


procedure TfComexSimulacaoImp.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
(*
      With Dados do begin
           If (Button = nbPost) and (SimulaImportacao.State = dsInsert) then begin
              tNumero.Open;
              SimulaImportacaoNumero.Value := tNumero.FieldByName('Numero').AsInteger + 1;
              tNumero.Close;
           End;
           if Button = nbDelete then begin
              if Messagedlg('Deseja realmente excluir esta simulação?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end else begin
                 tProdutos.sql.Clear;
                 tProdutos.SQL.Add('delete from SimulaProdutos where Simulacao = :pSimula');
                 tProdutos.ParamByName('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
                 tProdutos.Execute;
                 tDespesa.sql.Clear;
                 tDespesa.SQL.Add('delete from SimulaDespesas where Simulacao = :pSimula');
                 tDespesa.ParamByName('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
                 tDespesa.Execute;
              end;
           end;
      End;
*)      
end;


procedure TfComexSimulacaoImp.Ambos1Click(Sender: TObject);
begin
(*
      with Dados, SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value       := true;
                SimulaDespesasCusto_Saida.Value := true;
           Post;
           SomaDespesas;
      end;
*)      
end;


procedure TfComexSimulacaoImp.bRemoveTudoClick(Sender: TObject);
begin
(*
      if SimulaDespesas.RecordCount > 0 then begin
         if MessageDlg('Remover todas as despesas desta simulação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            with Dados do begin
                 SimulaDespesas.SQL.Clear;
                 SimulaDespesas.SQL.Add('delete from SimulaDespesas where(Simulacao = :pSimulacao)');
                 SimulaDespesas.ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                 SimulaDespesas.Execute;
                 SimulaDespesas.SQL.Clear;
                 SimulaDespesas.SQL.Add('select * from SimulaDespesas where(Simulacao = :pSimulacao) order by Registro');
                 SimulaDespesas.ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                 SimulaDespesas.Open;
            end;
         end;
      end;
      SomaDespesas;
*)      
end;


procedure TfComexSimulacaoImp.bBuscarClick(Sender: TObject);
begin
(*
      Processo_SimulacaoCalculoProcesso := TProcesso_SimulacaoCalculoProcesso.Create(Self);
      Processo_SimulacaoCalculoProcesso.Caption := Caption;
      Processo_SimulacaoCalculoProcesso.mSimulacao := SimulaImportacaoNumero.AsInteger;
      Processo_SimulacaoCalculoProcesso.ShowModal;
      SomaDespesas;
*)      
end;


procedure TfComexSimulacaoImp.cDespesaKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      PegaValor;
end;


procedure TfComexSimulacaoImp.PegaValor;
begin
{
      with tDespesa do begin
           sql.Clear;
           SQL.Add('select Valor = case :pTipo');
           SQL.Add('                    when 0 then (select min(Valor_Total) as Valor from PagarReceber where Classificacao = :pClass)');
           SQL.Add('                    when 1 then (select AVG(Valor_Total) as Valor from PagarReceber where Classificacao = :pClass)');
           SQL.Add('                    when 2 then (select max(Valor_Total) as Valor from PagarReceber where Classificacao = :pClass)');
           SQL.Add('               end');
           ParamByName('pClass').AsString := ClassificacaoFinanceiraCodigo.Value;
           ParamByName('pTipo').asinteger := cTipoValor.ItemIndex;
           Open;
           cDespNac.Value := 0;
           if RecordCount <> 0 then cDespNac.Value := FieldByName('Valor').AsCurrency;
      end;
}      
end;


procedure TfComexSimulacaoImp.cDespesaCloseUp(Sender: TObject);
begin
      PegaValor;
end;


procedure TfComexSimulacaoImp.bMarinhaClick(Sender: TObject);
begin
{
      Processo_SimulacaoMercante         := TProcesso_SimulacaoMercante.Create(Self);
      Processo_SimulacaoMercante.Caption := Caption;
      Processo_SimulacaoMercante.ShowModal;
}      
end;


procedure TfComexSimulacaoImp.bPesqClick(Sender: TObject);
begin
{
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ClassificacaoFinanceira';
      PesquisaGerais.mCampo  := 'Classificacao';
      PesquisaGerais.mCampo2 := 'Descricao';
      Dados.Configuracao.open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      PesquisaGerais.mTabela := SimulaDespesas;
      PesquisaGerais.Showmodal;
}      
end;


procedure TfComexSimulacaoImp.bPISCOFINSClick(Sender: TObject);
var
   mDifPIS, mDifCOFINS: real;
begin
(*
      if messagedlg('Deseja realmente gerar os lançamentos de diferença de PIS/COFINS?', mtConfirmation, [mbyes, mbno], 0) = mrNo then begin
         Abort;
      end;
      
      mDifPIS    := 0;
      mDifCOFINS := 0;
      with Dados, SimulaDespesas do begin
           with ttmp do begin
                sql.Clear;
                SQL.Add('select Valor_DifPIS    = Valor_BCPISEnt * ((select PIS - PIS_Nota from NCM where NCM.NCM = sm.NCM)/100)');
                SQL.Add('      ,Valor_DifCOFINS = Valor_BCPISEnt * ((select COFINS - COFINS_Nota from NCM where NCM.NCM = sm.NCM)/100)');
                SQL.Add('into #tmp');
                SQL.Add('from SimulaProdutos sm');
                SQL.Add('where Simulacao = :pSimula');
                SQL.Add('and Valor_BCPISEnt > 0');
                SQL.Add('and ((select PIS - PIS_Nota from NCM where NCM.NCM = sm.NCM) > 0 or (select COFINS - COFINS_Nota from NCM where NCM.NCM = sm.NCM) > 0)');
                SQL.Add('select Valor_DifPIS    = sum(isnull(Valor_DifPis, 0))');
                SQL.Add('      ,Valor_DifCOFINS = sum(isnull(Valor_DifCOFINS, 0))');
                SQL.Add('from #tmp');
                SQL.Add('drop table #tmp');
                parambyname('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
                //sql.SaveToFile('c:\temp\Simulacao_Diferença_PIS_COFINS.sql');
                open;
                mDifPIS    := fieldbyname('Valor_DifPIS').AsCurrency;
                mDifCOFINS := fieldbyname('Valor_DifCOFINS').AsCurrency;
           end;
           // Lançamento da despesa "Diferença de PIS".
           if (mDifPIS > 0) then begin 
              if (trim(TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString) = '') then begin
                 messagedlg('Classificação Financeira da diferença do PIS não parâmetrizada no "Tipo de Processo"!'+#13+'Lançamento não será gerado!', mtError, [mbOK], 0);
              end else begin
                 if trim(TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString) <> '' then begin
                    with ttmp do begin
                         sql.Clear;
                         SQL.Add('select Codigo, Descricao, Custo_Entrada, Custo_Saida = Custo');
                         SQL.Add('from ClassificacaoFinanceira');
                         SQL.Add('where Codigo = :pClass');
                         parambyname('pClass').Asstring := TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString;
                         open;
                    end;
                    with tRegistro do begin
                         sql.clear;
                         SQL.Add('select isnull(max(Registro), 0)+1 as Reg from SimulaDespesas');
                         open;
                    end;
                    append;
                         fieldbyname('Registro').Value      := tRegistro.FieldByName('Reg').AsInteger;
                         fieldbyname('Simulacao').Value     := SimulaImportacaoNumero.Value;
                         fieldbyname('Classificacao').Value := TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString;
                         fieldbyname('Despesa').Value       := ttmp.FieldByName('Descricao').AsString; 
                         fieldbyname('Valor').Value         := mDifPIS;
                         fieldbyname('Taxa').Value          := SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;
                         fieldbyname('Valor_ME').Value      := mDifPIS / SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;  
                         fieldbyname('Custo').Value         := ttmp.FieldByName('Custo_Entrada').asboolean;
                         fieldbyname('Custo_Saida').Value   := ttmp.FieldByName('Custo_Saida').asboolean;
                    post;
                    tRegistro.close;
                 end;
              end;
           end;
           // Lançamento da despesa "Diferença de COFINS".
           if mDifCOFINS > 0 then begin
              if trim(TiposProcessoSISCOMEX_ClassificacaoDifCOFINS.AsString) = '' then begin
                 messagedlg('Classificação Financeira da diferença do COFINS não parâmetrizada no "Tipo de Processo"!'+#13+'Lançamento não será gerado!', mtError, [mbOK], 0);
              end else begin
                 with ttmp do begin
                      sql.Clear;
                      SQL.Add('select Codigo, Descricao, Custo_Entrada, Custo_Saida = Custo');
                      SQL.Add('from ClassificacaoFinanceira');
                      SQL.Add('where Codigo = :pClass');
                      parambyname('pClass').Asstring := TiposProcessoSISCOMEX_ClassificacaoDifCOFINS.AsString;
                      open;
                 end;
                 with tRegistro do begin
                      sql.clear;
                      SQL.Add('select isnull(max(Registro), 0)+1 as Reg from SimulaDespesas');
                      open;
                 end;
                 append;
                      fieldbyname('Registro').Value      := tRegistro.FieldByName('Reg').AsInteger;
                      fieldbyname('Simulacao').Value     := SimulaImportacaoNumero.Value;
                      fieldbyname('Classificacao').Value := TiposProcessoSISCOMEX_ClassificacaoDifCOFINS.AsString;
                      fieldbyname('Despesa').Value       := ttmp.FieldByName('Descricao').AsString; 
                      fieldbyname('Valor').Value         := mDifCOFINS;
                      fieldbyname('Taxa').Value          := SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;
                      fieldbyname('Valor_ME').Value      := mDifCOFINS / SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;  
                      fieldbyname('Custo').Value         := ttmp.FieldByName('Custo_Entrada').asboolean;
                      fieldbyname('Custo_Saida').Value   := ttmp.FieldByName('Custo_Saida').asboolean;
                 post;
                 tRegistro.close;
              end;
           end;
      end;
      SomaDespesas;
*)      
end;


procedure TfComexSimulacaoImp.NavegaProdutosClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
(*
      With Dados do begin
           If (Button = nbEdit) or (Button = nbInsert) then begin
              For i := 0 to 6 do begin
                  NavegaProdutos.Controls[i].Enabled := False;
              End;
              Panel6.Enabled := true;
              cProduto.SetFocus;
              bCalcular.Enabled := false;
              bImprimir.Enabled := false;
              Navega.Enabled    := false;
              GradeProd.Enabled := false;
           End;

           If (Button = nbInsert) then Begin
              SimulaProdutosSimulacao.Value     := SimulaImportacaoNumero.Value;
              SimulaProdutosAliquota_ICMS.Value := SimulaImportacaoAliquota_ICMSSaida.Value;
           End;

           If (Button = nbPost) or (Button = nbCancel) then Begin
              Panel6.Enabled    := false;
              bCalcular.Enabled := true;
              bImprimir.Enabled := true;
              Navega.Enabled    := true;
              GradeProd.Enabled := true;
           End;
      End;
*)      
end;


procedure TfComexSimulacaoImp.Nenhum1Click(Sender: TObject);
begin
      with SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value       := false;
                SimulaDespesasCusto_Saida.Value := false;
           Post;
           SomaDespesas;
      end;
end;


procedure TfComexSimulacaoImp.cNCMExit(Sender: TObject);
begin
{
          with NCM do begin
               SQL.Clear;
               SQL.Add('select *');
               SQL.Add('from  NCM');
               SQL.Add('where NCM = :pNCM');
               ParamByName('pNCM').AsString := SimulaProdutosNCM.AsString;
               Open;
               
               SimulaProdutosAliquota_II.Value        := FieldByName('II').AsFloat;
               SimulaProdutosAliquota_IPI.Value       := FieldByName('IPI').AsFloat;
               SimulaProdutosAliquota_PIS.Value       := FieldByName('PIS_Nota').AsFloat;
               SimulaProdutosAliquota_COFINS.Value    := FieldByName('COFINS_Nota').AsFloat;
               SimulaProdutosAliquota_PISSai.Value    := FieldByName('PIS_NotaSaida').AsFloat;
               SimulaProdutosAliquota_COFINSSai.Value := FieldByName('COFINS_NotaSaida').AsFloat;
               SimulaProdutosAliquota_MVA.Value       := 0;
               SimulaProdutosAliquota_ICMSST.Value    := 0;
               if SimulaImportacaoCliente_NotaEstado.AsString <> '' then begin
                  SimulaProdutosAliquota_MVA.Value    := NCM.FieldByName(SimulaImportacaoCliente_NotaEstado.AsString+'_MVA').AsFloat;
                  SimulaProdutosAliquota_ICMSST.Value := NCM.FieldByName(SimulaImportacaoCliente_NotaEstado.AsString+'_ICMS').AsFloat;
               end;
          end;
}          
end;


procedure TfComexSimulacaoImp.NavegaProdutosBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
(*
      With Dados do begin
           If (Button = nbPost) then begin
              if trim(cPesoBruto.Text) = '' then begin
                 MessageDlg('O "Peso Bruto" deve ser informado', mtError, [mbok], 0);
                 cPesoBruto.SetFocus; 
                 Abort;
              end;
              If (SimulaProdutos.State = dsInsert) then begin
                 tItens.SQL.Clear;
                 tItens.SQL.Add('select max(Item) as Item from SimulaProdutos where(Simulacao = :pSimula)');
                 tItens.ParamByName('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
                 tItens.Open;
                 SimulaProdutosItem.Value := tItens.FieldByName('Item').AsInteger + 1;
                 tItens.Close;
              End;
           End;
           if Button = nbDelete then begin
              if Messagedlg('Deseja realmente remover este produto?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
           end;
      End;
*)      
end;


procedure TfComexSimulacaoImp.cNumeroChange(Sender: TObject);
begin
      // Totaliza as despesas.
           with SimulaDespesas do begin
                SQL.Clear;
                SQL.Add('select *');
                SQL.Add('      ,Valor_ME');
                SQL.Add('from SimulaDespesas');
                SQL.Add('where Simulacao = :pSimulacao');
                ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                //.sql.savetofile('c:\temp\Simula_Produtos.sql');
                Open;
           end;

           SomaDespesas;

           with SimulaProdutos do begin
                SQL.Clear;
                SQL.Add('select *');
                SQL.Add('      ,Total_Produtos  = (Valor_UnitarioSaida * Quantidade)');
                SQL.Add('      ,Total_ICMSSai   = (Valor_ICMSSaida * Quantidade)');
                SQL.Add('      ,Total_ICMSSTSai = (Valor_ICMSST * Quantidade)');
                SQL.Add('      ,Total_IPI       = (Valor_IPI * Quantidade)');
                SQL.Add('      ,Total_IPISai    = (Valor_IPISai * Quantidade)');
                SQL.Add('      ,Total_PISSai    = (Valor_PISSai * Quantidade)');
                SQL.Add('      ,Total_COFINSSai = (Valor_COFINSSai * Quantidade)');
                SQL.Add('from SimulaProdutos where(Simulacao = :pSimulacao)');
                ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                //sql.savetofile('c:\temp\Simula_Produtos.sql');
                Open;
           end;

           bCalcular.Enabled := SimulaProdutos.RecordCount > 0;
           with SimulaProdutos do begin
                cTotalII.Value  := FieldByName('Valor_II').ascurrency  * FieldByName('Quantidade').asfloat;
                cTotalIPI.Value := FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat;
           end;
end;


procedure TfComexSimulacaoImp.SomaDespesas;
begin
      // Totaliza as despesas.
           with tSomaDespesas do begin
                sql.Clear;
                SQL.Add('select Despesas_Entrada = sum(case when Custo       = 1 then Valor else 0 end)');
                SQL.Add('      ,Despesas_Saida   = sum(case when Custo_Saida = 1 then Valor else 0 end)');
                SQL.Add('from   SimulaDespesas');
                SQL.Add('where  Simulacao = :pSimul');
                ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
                Open;
                cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
                cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
           end;
end;


procedure TfComexSimulacaoImp.cUnitarioExit(Sender: TObject);
begin
          cUnitarioReal.Value := SimulaProdutosValor_UnitarioME.AsFloat * SimulaImportacaoTaxa_FOB.AsFloat;
end;


procedure TfComexSimulacaoImp.CustodeEntrada1Click(Sender: TObject);
begin
      with SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value := not SimulaDespesasCusto.Value;
           Post;
           SomaDespesas;
      end;
end;


procedure TfComexSimulacaoImp.CustodeSada1Click(Sender: TObject);
begin
      with SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto_Saida.Value := not SimulaDespesasCusto_Saida.Value;
           Post;
           SomaDespesas;
      end;
end;


procedure TfComexSimulacaoImp.cValorMEChange(Sender: TObject);
begin
      cDespNac.Enabled := cTaxa.Value = 0;
      if cTaxa.Value <> 0 then begin
         cDespNac.Value := cValorME.Value * cTaxa.Value;
      end;
end;


procedure TfComexSimulacaoImp.DBEdit39Change(Sender: TObject);
begin
          cDespNac.Value := SimulaDespesas.FieldByName('Valor').ascurrency;
          cValorME.Value := SimulaDespesas.FieldByName('Valor_ME').ascurrency;
          cTaxa.Value    := SimulaDespesas.FieldByName('Taxa').asfloat;
end;


procedure TfComexSimulacaoImp.NavegaDespBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
   mTaxa
  ,mValor
  ,mValorME: real;
begin
      mTaxa    := cTaxa.Value;
      mValor   := cDespNac.Value;
      mValorME := cValorME.Value;
(*      
      with SimulaDespesas do begin
           if Button = nbPost then begin
              if Trim(cDespesa.Text) = '' then begin
                 ShowMessage('É necessário informar a classificação financeira para o lançamento da despesa!');
                 Abort;
              end;   
              if cDespNac.Value = 0 then begin
                 ShowMessage('É necessário informar um valor válido para o lançamento da despesa!');
                 Abort;
              end;   
              if state = dsInsert then begin
                 tRegistro.Open;
                 fieldbyname('Registro').Value := tRegistro.FieldByName('Registro').AsInteger;
                 tRegistro.Close;
              end;
              fieldbyname('Simulacao').Value     := SimulaImportacaoNumero.Value;
              fieldbyname('Classificacao').Value := ClassificacaoFinanceiraCodigo.value;
              fieldbyname('Despesa').Value       := cDespesa.Text;
              fieldbyname('Valor').Value         := mValor;
              fieldbyname('Taxa').Value          := mTaxa;
              fieldbyname('Valor_ME').Value      := mValorME;
              fieldbyname('Custo').Value         := ClassificacaoFinanceiraCusto_Entrada.value;
              fieldbyname('Custo_Saida').Value   := ClassificacaoFinanceiraCusto.value;
           end;
           if Button = nbDelete then begin
              if Messagedlg('Deseja realmente excluir esta despesa?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
      end;
*)      
end;


procedure TfComexSimulacaoImp.NavegaDespClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
(*
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             NavegaDesp.Controls[i].Enabled := False;
         end;
         Panel2.Enabled := true;
         cTaxa.Value := SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;
         cDespesa.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := false;
         NavegaDesp.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbDelete) then Begin
         SomaDespesas;
      end;
*)      
end;


procedure TfComexSimulacaoImp.cProdutoChange(Sender: TObject);
begin
          cUnitarioReal.Value := SimulaProdutosValor_UnitarioME.AsFloat * SimulaImportacaoTaxa_FOB.AsFloat;
end;


procedure TfComexSimulacaoImp.CalculaEntrada;
var
   mUnitImp
  ,mSeguro
  ,mTotalFOB: Real;
begin
     // Calcula todos os impostos dos itens.
     (*
     with SimulaProdutos do begin
          TipoNota.locate('Codigo', SimulaImportacaoTipo_Nota.asinteger, [loCaseInsensitive]);

          with tSomaDespesas do begin
               sql.Clear;
               SQL.Add('select Despesas_Entrada = isnull(sum(case when Custo       = 1 then Valor end), 0)');
               SQL.Add('      ,Despesas_Saida   = isnull(sum(case when Custo_Saida = 1 then Valor end), 0)');
               SQL.Add('from   SimulaDespesas');
               SQL.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
               cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
               cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
          end;
          with tProdutos do begin
               sql.Clear;
               SQL.Add('select FOB = isnull(sum(Valor_UnitarioME*Quantidade), 0)');
               SQL.Add('from   SimulaProdutos');
               SQL.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
               mTotalFOB := FieldByName('FOB').AsCurrency;
          end;

          mFatorFrete  := 0;
          mFatorSeguro := 0;
          if (Incoterms.FieldByName('Frete').asBoolean) and (SimulaImportacao.FieldByName('Frete_Real').ascurrency > 0) then begin
             mFatorFrete := SimulaImportacao.FieldByName('Frete_Real').ascurrency / SimulaImportacao.FieldByName('Peso_Liquido').asfloat;
          end;
          if (Incoterms.FieldByName('Seguro').asBoolean) and (SimulaImportacao.FieldByName('Seguro_Real').ascurrency > 0) then begin
             mFatorSeguro  := SimulaImportacao.FieldByName('Seguro_Real').ascurrency / mTotalFOB;
          end;

          mFatorDespesa := tSomaDespesas.FieldByName('Despesas_Entrada').AsCurrency / mTotalFOB;
          First;
          while not Eof do begin
                mValor := roundto(FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacao.FieldByName('Taxa_FOB').asfloat, -4);
                mPeso  := FieldByName('Peso_Liquido').asfloat;
                mII    := FieldByName('Valor_II').ascurrency;

                Edit;
                   // Valor do produto.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_Mercadoria').asstring, 'PRODUTO - ENTRADA');
                   mValor           := roundto(mMacro.Calc([0]), -4);
                   FieldByName('Valor_UnitarioReal').AsCurrency := mValor;
                   FieldByName('Valor_CIFReal').AsCurrency      := mValor * SimulaProdutos.FieldByName('Quantidade').asfloat;

                   // Valor da BC II
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_BCII').asstring, 'B.C.II - ENTRADA');
                   FieldByName('BCII_Entrada').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do II.
                   FieldByName('Valor_II').value := FieldByName('BCII_Entrada').value * (FieldByName('Aliquota_II').asfloat/100);
                   memo1.lines.add('==[ VALOR II - ENTRADA ]=======================================================================');
                   Memo1.lines.add(FormatFloat(',##0,00', FieldByName('BCII_Entrada').ascurrency)+' * ('+formatFloat('##0.00', FieldByName('Aliquota_II').asfloat)+'/100)');
                   memo1.lines.add('');

                   // Valor da BC IPI
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_BCIPI').asstring, 'B.C.IPI - ENTRADA');
                   FieldByName('Valor_BCIPI').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0])/FieldByName('Quantidade').asfloat, 0);

                   // Valor do IPI
                   FieldByName('Valor_IPI').value := FieldByName('Valor_BCIPI').value * (FieldByName('Aliquota_IPI').asfloat/100);

                   // Valor da BC PIS/COFINS.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_BCPIS').asstring, 'B.C. PIS / COFINS - ENTRADA');
                   FieldByName('Valor_BCPISEnt').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do PIS.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_PIS').asstring, 'VALOR DO PIS - ENTRADA');
                   FieldByName('Valor_PIS').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do COFINS.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_COFINS').asstring, 'VALOR DA COFINS - ENTRADA');
                   FieldByName('Valor_COFINS').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do produto.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_Mercadoria').asstring, 'PRODUTO - ENTRADA');
                   mValor         := roundto(mMacro.Calc([0]), -4);
                   FieldByName('Valor_UnitarioReal').AsCurrency := mValor;
                   FieldByName('Valor_CIFReal').AsCurrency      := mValor * SimulaProdutos.FieldByName('Quantidade').asfloat;
                   
                   // Valor da B.C. ICMS Oper.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_BCICMS').asstring, 'B.C.ICMS OPERACIONAL - ENTRADA');
                   FieldByName('Valor_BCICMSEnt').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]) / FieldByName('Quantidade').asfloat, 0);

                   // Valor do ICMS Oper.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_VlrICMS').asstring, 'VALOR DO ICMS OPERACIONAL - ENTRADA');
                   FieldByName('Valor_ICMSEntrada').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do Produto com Impostos - Entrada.
                   memo1.lines.add('==[ VALOR UNITARIO C/IMPOSTOS - ENTRADA ]'+Replicate('=', 58));
                   mUnitImp := 0;
                   if pos('Valor_TotalProdutos', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_UnitarioReal').ascurrency;
                      memo1.Lines.Add('Produto...: '+padr(formatfloat(',##0.000000', FieldByName('Valor_UnitarioReal').ascurrency), 15));
                   end;
                   if pos('Valor_TotalIPI', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_IPI').ascurrency;
                      memo1.Lines.add('IPI.......: '+padr(formatfloat(',##0.000000', FieldByName('Valor_IPI').ascurrency), 15));
                   end;
                   if pos('ValorICMS_Substitutivo', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + 0;
                      memo1.Lines.Add('ICMS ST...: '+padr(formatfloat(',##0.000000', 0), 15));
                   end;
                   if pos('Valor_ICMS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_ICMSEntrada').ascurrency;
                      memo1.Lines.Add('ICMS OPER.: '+padr(formatfloat(',##0.000000', FieldByName('Valor_ICMSEntrada').ascurrency), 15));
                   end;
                   if pos('Valor_PIS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + roundto((FieldByName('Valor_PIS').ascurrency / FieldByName('Quantidade').asfloat), -6);
                      memo1.Lines.Add('PIS.......: '+padr(formatfloat(',##0.000000', FieldByName('Valor_PIS').ascurrency/FieldByName('Quantidade').asfloat), 15));
                   end;
                   if pos('Valor_COFINS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + roundto((FieldByName('Valor_COFINS').ascurrency / FieldByName('Quantidade').asfloat), -6);
                      memo1.Lines.Add('COFINS....: '+padr(formatfloat(',##0.000000', FieldByName('Valor_COFINS').ascurrency/FieldByName('Quantidade').asfloat), 15));
                   end;
                   
                   memo1.Lines.Add('TOTAL.....: '+padr(formatfloat(',##0.00', mUnitImp), 15));
                   memo1.lines.add('');

                   FieldByName('Valor_UnitarioImpEnt').value := mUnitImp;
                   FieldByName('Fator').Value := (100 - (FieldByName('Aliquota_PIS').AsFloat+
                                                         FieldByName('Aliquota_COFINS').AsFloat+
                                                         SimulaImportacaoAliquota_ICMSEntrada.AsFloat+
                                                         SimulaImportacaoTaxa_Adiministrativa.AsFloat+
                                                         SimulaImportacaoAliquota_CSLL.AsFloat+
                                                         SimulaImportacaoAliquota_IRPJ.AsFloat));
                Post;
                Next;
          end;

          // Totalizando a capa da simulação.
          with tSomaProdutos do begin
               SQL.Clear;
               SQL.Add('select sum(Valor_UnitarioME * Quantidade)   as Total,');
               SQL.Add('       sum(Valor_UnitarioME * Quantidade)   as Total_CIF,');
               SQL.Add('       sum(Valor_UnitarioME * Quantidade) * :pTaxa as Total_Real,');
               SQL.Add('       sum(Valor_II * Quantidade)           as Total_II,');
               SQL.Add('       sum(Valor_IPI * Quantidade)          as Total_IPI,');
               SQL.Add('       sum(Valor_PIS)                       as Total_PIS,');
               SQL.Add('       sum(Valor_COFINS)                    as Total_COFINS,');
               SQL.Add('       sum(Peso_Liquido * Quantidade)       as Total_Liquido,');
               SQL.Add('       sum(Peso_Bruto * Quantidade)         as Total_Bruto,');
               SQL.Add('       sum(Valor_ICMSSaida * Quantidade)    as Total_ICMS,');
               SQL.Add('       sum(Valor_ICMSST * Quantidade)       as Total_ICMSST,');
               SQL.Add('       sum(Valor_BCICMSEnt * Quantidade)    as Total_BCICMSEnt,');
               SQL.Add('       sum(Valor_ICMSEntrada * Quantidade)  as Total_ICMSEntrada');
               SQL.Add('from   SimulaProdutos');
               SQL.Add('where Simulacao = :pSimulacao');
               ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
               ParamByName('pTaxa').AsFloat        := SimulaImportacaoTaxa_FOB.asfloat;
               Open;
          end;
          with SimulaImportacao do begin
               Edit;
                   FieldByName('FOB').Value                := tSomaProdutos.FieldByName('Total').AsCurrency;
                   FieldByName('FOB_Real').Value           := tSomaProdutos.FieldByName('Total_Real').AsCurrency;
                   FieldByName('Frete_Real').Value         := SimulaImportacaoFrete_Internacional.AsCurrency * SimulaImportacaoTaxa_Frete.AsFloat;
                   
                   // Calculo do seguro internacional.
                   if ConfiguracaoPercentual_Seguro.AsFloat > 0 then begin
                      mSeguro := (tSomaProdutos.FieldByName('Total').AsCurrency + SimulaImportacaoFrete_Internacional.AsCurrency) * (ConfiguracaoPercentual_Seguro.AsFloat/100);
                      mSeguro := iif(mSeguro < ConfiguracaoMinimo_Seguro.Ascurrency, ConfiguracaoMinimo_Seguro.Ascurrency, mSeguro);
                      FieldByName('Seguro_PremioValor').Value := mSeguro;
                   end;
                   FieldByName('Seguro_Real').Value        := SimulaImportacaoSeguro_PremioValor.AsCurrency * SimulaImportacaoTaxa_Seguro.AsFloat;
                   FieldByName('Valor_II').Value           := tSomaProdutos.FieldByName('Total_II').AsCurrency;
                   FieldByName('Valor_IPI').Value          := tSomaProdutos.FieldByName('Total_IPI').AsCurrency;
                   FieldByName('Valor_PIS').Value          := tSomaProdutos.FieldByName('Total_PIS').AsCurrency;
                   FieldByName('Valor_COFINS').Value       := tSomaProdutos.FieldByName('Total_COFINS').AsCurrency;
                   FieldByName('Peso_Liquido').Value       := tSomaProdutos.FieldByName('Total_Liquido').AsFloat;
                   FieldByName('Peso_Bruto').Value         := tSomaProdutos.FieldByName('Total_Bruto').AsFloat;
                   FieldByName('Valor_ICMSSaida').Value    := tSomaProdutos.FieldByName('Total_ICMS').ascurrency;
                   FieldByName('Valor_ICMSST').Value       := tSomaProdutos.FieldByName('Total_ICMSST').ascurrency;
                   FieldByName('Valor_Despesas').Value     := tSomaDespesas.FieldByName('Despesas_Entrada').AsCurrency;
                   FieldByName('Valor_ICMSEntrada').Value  := tSomaProdutos.FieldByName('Total_ICMSEntrada').ascurrency;
                   FieldByName('BCICMS_Entrada').Value     := tSomaProdutos.FieldByName('Total_BCICMSEnt').ascurrency;

                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_TotalPedido').asstring, 'TOTAL DO PEDIDO - ENTRADA');
                   FieldByName('Total_NFEntrada').value  := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);
               Post;
          end;
     end;
*)     
end;

procedure TfComexSimulacaoImp.bCalcularClick(Sender: TObject);
begin
      Memo1.lines.clear;
      SomaDespesas;
      CalculaEntrada;
      CalculoSaida;
      with SimulaProdutos do begin
           cTotalII.Value  := FieldByName('Valor_II').ascurrency  * FieldByName('Quantidade').asfloat;
           cTotalIPI.Value := FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat;
      end;
end;


procedure TfComexSimulacaoImp.bDuplicarClick(Sender: TObject);
var
   mProc, mProcAtual: string;
   tOrig, tDest: TFDQuery;
   i, mSimula, mItem: integer;
begin
          mProcAtual := SimulaImportacao.FieldByName('Processo').AsString;
          mProc      := InputBox('Informe o processo de destino', 'Processo:', '');
          {
          if trim(mProc) = '' then begin
             MessageDlg('Nenhuma processo informado!'+#13+#13+'Processo atual não foi duplicado!', mtInformation, [mbok], 0);
             Abort;
          end;
          if SimulaImportacao.Locate('Processo', mProc, [loCaseInsensitive]) then begin
             MessageDlg('Ja existe uma simulação com o número de processo informado!'+#13+#13+'informe um número de Processo diferente!', mtInformation, [mbok], 0);
             SimulaImportacao.Locate('Processo', mProcAtual, [loCaseInsensitive]);
             Abort;
          end;
          if  MessageDlg('Deseja realmente duplicar esta simulação?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
              Abort;
          end;
          }
          tOrig := TFDQuery.Create(nil);
          tDest := TFDQuery.Create(nil);
          {
          with tOrig do begin
               Connection := Banco_Empresas;
               sql.clear;
               SQL.Add('select * from SimulaImportacao where Numero = :pNumero');
               parambyname('pNumero').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               Connection := Banco_Empresas;
               sql.clear;
               SQL.Add('select * from SimulaImportacao where Numero = (select isnull(max(numero), 0)+1 from SimulaImportacao)');
               open;
          end;
          }
          // Duplicando a capa da simulação.
          tDest.Append;
                for i := 0 to pred(tOrig.FieldCount) do begin
                    tDest.Fields[i].Value := tOrig.Fields[i].Value;
                end;
                tNumero.Open;
                mSimula := tNumero.FieldByName('Numero').AsInteger + 1;
                tNumero.Close;

                tDest.FieldByName('Numero').Value   := mSimula;
                tDest.FieldByName('Processo').Value := mProc;
          tDest.Post;

          // Duplicando os produtos.
          with tOrig do begin
               sql.clear;
               SQL.Add('select * from SimulaProdutos where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               sql.clear;
               SQL.Add('select * from SimulaProdutos where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := mSimula;
               open;
          end;
          with tItens do begin
               sql.Clear;
               SQL.Add('select isnull(max(Item), 0)+1 as Item from SimulaProdutos where Simulacao = :pSimula');
               ParamByName('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
               open;
               mItem := fieldbyname('Item').AsInteger;
               close;
          end;
          while not tOrig.Eof do begin
                tDest.Append;
                      for i := 0 to pred(tOrig.FieldCount) do begin
                          tDest.Fields[i].Value := tOrig.Fields[i].Value;
                      end;
                      tDest.FieldByName('Simulacao').Value := mSimula;
                      tDest.FieldByName('Item').Value      := mItem;
                tDest.Post;
                inc(mItem);
                tOrig.next;
          end;
          // Duplicando as Despesas.
          with tOrig do begin
               sql.clear;
               SQL.Add('select * from SimulaDespesas where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               sql.clear;
               SQL.Add('select * from SimulaDespesas where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := mSimula;
               open;
          end;
          with tItens do begin
               sql.Clear;
               SQL.Add('select isnull(max(Registro), 0)+1 as Registro from SimulaDespesas');
               open;
               mItem := fieldbyname('Registro').AsInteger;
               close;
          end;
          while not tOrig.Eof do begin
                tDest.Append;
                      for i := 0 to pred(tOrig.FieldCount) do begin
                          tDest.Fields[i].Value := tOrig.Fields[i].Value;
                      end;
                      tDest.FieldByName('Simulacao').Value := mSimula;
                      tDest.FieldByName('Registro').Value  := mItem;
                tDest.Post;
                inc(mItem);
                tOrig.next;
          end;

          SimulaImportacao.Refresh;
          SimulaImportacao.Locate('Numero', mSimula, [loCaseInsensitive]);
     tOrig.Free;
     tDest.Free;
end;


procedure TfComexSimulacaoImp.bDuplicarItemClick(Sender: TObject);
var
   mInput:string;
   mQtde, i, q, mItem:integer;
   tDest, tOrig: TFDQuery;
begin
     mQtde := 0;
          if InputQuery('Quantidade','Informe a quantidade de cópias', mInput) then begin
             try
                mQtde := strtoint(mInput);
             except
//                MessageDlg('Quantidade invalída.'+#13+#13+'Informe apenas números inteiros.', mtError, [mbok], 0);
                Abort;
             end;
          end else begin
             Abort;
          end;
          if mQtde < 1 then begin
//             MessageDlg('Quantidade miníma permitida de cópias é 1.', mtInformation, [mbok], 0);
             Abort;
          end;
          if mQtde > 100 then begin
//             MessageDlg('Quantidade maxíma permitida de cópias é 100.', mtInformation, [mbok], 0);
             Abort;
          end;
//          if  MessageDlg('Deseja realmente duplicar este item?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
//              Abort;
//          end;

          tOrig := TFDQuery.Create(nil);
          {
          with tOrig do begin
               Connection := Banco_Empresas;
               sql.clear;
               SQL.Add('select * from SimulaProdutos where Simulacao = :pSimula and Item = :pItem');
               parambyname('pSimula').AsInteger := SimulaProdutosSimulacao.asinteger;
               parambyname('pItem').AsInteger   := SimulaProdutosItem.asinteger;
               open;
          end;
          }
          tDest := TFDQuery.Create(nil);
          {
          with tDest do begin
               Connection := Banco_Empresas;
               sql.clear;
               SQL.Add('select * from SimulaProdutos where Simulacao = :pSimula and Item is null');
               parambyname('pSimula').AsInteger := SimulaProdutosSimulacao.asinteger;
               open;
               tItens.SQL.Clear;
               tItens.SQL.Add('select isnull(max(Item), 0)+1 as Item from SimulaProdutos where Simulacao = :pSimula');
               tItens.ParamByName('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
               tItens.Open;
               mItem := tItens.FieldByName('Item').AsInteger;
               tItens.Close;

               Janela_Processamento := TJanela_Processamento.Create(Self);
               Janela_Processamento.Progresso.Position := 0;
               Janela_Processamento.Progresso.Max      := mQtde;
               Janela_Processamento.Show;

               for q := 1 to mQtde do begin
                   Append;
                         for i := 0 to pred(tOrig.FieldCount) do begin
                             Fields[i].Value := tOrig.Fields[i].Value;
                         end;
                         FieldByName('Item').Value := mItem;
                   Post;
                   inc(mItem);
                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               end;
               Janela_Processamento.close;
          end;
          }
          tDest.Free;
          SimulaProdutos.Refresh;
end;


procedure TfComexSimulacaoImp.bExcelClick(Sender: TObject);
begin
      // ReportBuilder: impressão adiada.
      ExportaExcel;
end;


procedure TfComexSimulacaoImp.CalculoSaida;
var
   mTotalPIS
  ,mTotalCOFINS
  ,mTotalICMS
  ,mTotalBCICMS
  ,mTotalICMSST
  ,mTotAliqPJ
  ,mTotalCSLL
  ,mProdutos
  ,mDespesas
  ,mValorST
  ,mUnitImp
  ,mTotalFOB
  ,mTotalIPI: Real;
begin
     mTotalPIS    := 0;
     mTotalCOFINS := 0;
     mTotalICMS   := 0;
     mTotalICMSST := 0;
     mTotAliqPJ   := 0;
     mTotalCSLL   := 0;
     mProdutos    := 0;
     mTotalIPI    := 0;
     mTotalBCICMS := 0;
     
     with SimulaProdutos do begin
          // Totaliza as despesas.
          TipoNota.locate('Codigo', SimulaImportacaoTipo_NotaSai.asinteger, [loCaseInsensitive]);

          with tSomaDespesas do begin
               sql.Clear;
               sql.Clear;
               SQL.Add('select Despesas_Entrada = sum(case when Custo       = 1 then Valor end)');
               SQL.Add('      ,Despesas_Saida   = sum(case when Custo_Saida = 1 then Valor end)');
               SQL.Add('from   SimulaDespesas');
               SQL.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
               cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
               cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
          end;
          with tProdutos do begin
               sql.Clear;
               SQL.Add('select FOB = isnull(sum(Valor_UnitarioME*Quantidade), 0)');
               SQL.Add('from   SimulaProdutos');
               SQL.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
               mTotalFOB := FieldByName('FOB').AsCurrency;
          end;

          mFatorFrete  := 0;
          mFatorSeguro := 0;
          if (Incoterms.FieldByName('Frete').asBoolean) and (SimulaImportacao.FieldByName('Frete_Real').ascurrency > 0) then begin
             mFatorFrete := SimulaImportacao.FieldByName('Frete_Real').ascurrency / SimulaImportacao.FieldByName('Peso_Liquido').asfloat;
          end;
          if (Incoterms.FieldByName('Seguro').asBoolean) and (SimulaImportacao.FieldByName('Seguro_Real').ascurrency > 0) then begin
             mFatorSeguro  := SimulaImportacao.FieldByName('Seguro_Real').ascurrency / mTotalFOB;
          end;

          mFatorDespesa := tSomaDespesas.FieldByName('Despesas_Saida').AsCurrency / mTotalFOB;
          mFatorPIS     := SimulaImportacao.FieldByName('Valor_PIS').ascurrency / mTotalFOB;
          mFatorCOFINS  := SimulaImportacao.FieldByName('Valor_COFINS').ascurrency / mTotalFOB;

          first;
          {
          while not eof do begin
                mValor := roundto(FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacao.FieldByName('Taxa_FOB').asfloat, -4);
                mPeso  := FieldByName('Peso_Liquido').asfloat;
                mII    := FieldByName('Valor_II').ascurrency;

                edit;
                   // Valor do produto.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_Mercadoria').asstring, 'PRODUTO - SAÍDA');
                   mValor         := roundto(mMacro.Calc([0]), -4);
                   FieldByName('Valor_UnitarioSaida').value := mValor;
                   mValorTotal := mValor * FieldByName('Quantidade').asfloat;

                   // Valor da BC IPI.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCIPI').asstring, 'B.C.IPI - SAÍDA');
                   FieldByName('Valor_BCIPISai').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]) / FieldByName('Quantidade').asfloat, 0);

                   // Valor do IPI.
                   FieldByName('Valor_IPISai').value := FieldByName('Valor_BCIPISai').value * (FieldByName('Aliquota_IPI').asfloat/100);

                   // Valor da B.C. ICMS Oper.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCICMS').asstring, 'B.C.ICMS OPERACIONAL - SAÍDA');
                   FieldByName('Valor_BCICMS').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]) / FieldByName('Quantidade').asfloat, 0);

                   // Valor do ICMS Oper.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_VlrICMS').asstring, 'VALOR DO ICMS OPERACIONAL - SAÍDA');
                   FieldByName('Valor_ICMSSaida').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor da BC PIS/COFINS.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCPIS').asstring, 'B.C. PIS / COFINS - SAÍDA');
                   FieldByName('Valor_BCPISSai').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do PIS.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_PIS').asstring, 'VALOR DO PIS - SAÍDA');
                   FieldByName('Valor_PISSai').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do COFINS.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_COFINS').asstring, 'VALOR DA COFINS - SAÍDA');
                   FieldByName('Valor_COFINSSai').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor da B.C. MVA.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCMVA').asstring, 'B.C.MVA - SAÍDA');
                   FieldByName('Valor_BCMVA').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do MVA.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_VlrMVA').asstring, 'VALOR DO MVA - SAÍDA');
                   FieldByName('Valor_MVA').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor da B.C. ICMS ST.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCICMSSub').asstring, 'B.C.ICMS ST - SAÍDA');
                   FieldByName('BCICMSST').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]) / FieldByName('Quantidade').asfloat, 0);

                   // Valor do ICMS ST.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_VlrICMSSub').asstring, 'VALOR DO ICMS ST - SAÍDA');
                   FieldByName('Valor_ICMSST').value:= iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do Produto com Impostos.
                   memo1.lines.add('==[VALOR UNITARIO C/IMPOSTOS - SAÍDA]'+Replicate('=', 58));
                   mUnitImp := 0;
                   if pos('Valor_TotalProdutos', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_UnitarioSaida').ascurrency;
                      memo1.Lines.Add('Produto...: '+padr(formatfloat(',##0.00', FieldByName('Valor_UnitarioSaida').ascurrency), 15));
                   end;
                   if pos('Valor_TotalIPI', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_IPISai').ascurrency;
                      memo1.Lines.add('IPI.......: '+padr(formatfloat(',##0.00', FieldByName('Valor_IPISai').ascurrency), 15));
                   end;
                   if pos('ValorICMS_Substitutivo', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_ICMSST').ascurrency;
                      memo1.Lines.Add('ICMS ST...: '+padr(formatfloat(',##0.00', FieldByName('Valor_ICMSST').ascurrency), 15));
                   end;
                   if pos('Valor_ICMS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_ICMSSaida').ascurrency;
                      memo1.Lines.Add('ICMS OPER.: '+padr(formatfloat(',##0.00', FieldByName('Valor_ICMSSaida').ascurrency), 15));
                   end;
                   if pos('Valor_PIS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_PISSai').ascurrency;
                      memo1.Lines.Add('PIS.......: '+padr(formatfloat(',##0.00', FieldByName('Valor_PISSai').ascurrency), 15));
                   end;
                   if pos('Valor_COFINS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_COFINSSai').ascurrency;
                      memo1.Lines.Add('COFINS....: '+padr(formatfloat(',##0.00', FieldByName('Valor_COFINSSai').ascurrency), 15));
                   end;
                   memo1.Lines.Add('TOTAL.....: '+padr(formatfloat(',##0.00', mUnitImp), 15));
                   memo1.lines.add('');

                   FieldByName('Valor_UnitarioImpSai').value := mUnitImp;

                   if FieldByName('Valor_PISSai').AsCurrency    = 0 then FieldByName('Aliquota_PISSai').value    := 0;
                   if FieldByName('Valor_COFINSSai').AsCurrency = 0 then FieldByName('Aliquota_COFINSSai').value := 0;

                   FieldByName('Fator').Value := (100 - (FieldByName('Aliquota_PISSai').AsFloat+
                                                         FieldByName('Aliquota_COFINSSai').AsFloat+
                                                         SimulaImportacaoAliquota_ICMSSaida.AsFloat+
                                                         SimulaImportacaoTaxa_Adiministrativa.AsFloat+
                                                         SimulaImportacaoAliquota_CSLL.AsFloat+
                                                         SimulaImportacaoAliquota_IRPJ.AsFloat));
                post;

                mTotal       := mUnitario * FieldByName('Quantidade').asfloat;
                mTotalIPI    := mTotalIPI + (FieldByName('Valor_IPISai').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalPIS    := mTotalPIS + FieldByName('Valor_PISSai').ascurrency;
                mTotalCOFINS := mTotalCOFINS + FieldByName('Valor_COFINSSai').ascurrency;
                mTotalBCICMS := mTotalBCICMS + (FieldByName('Valor_BCICMS').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalICMS   := mTotalICMS + (FieldByName('Valor_ICMSSaida').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalICMSST := mTotalICMSST + (FieldByName('Valor_ICMSST').ascurrency * FieldByName('Quantidade').asfloat);
                mTotAliqPJ   := mTotAliqPJ + (mValor * ((SimulaImportacao.FieldByName('Aliquota_IRPJ').ascurrency/100)) * FieldByName('Quantidade').asfloat);
                mTotalCSLL   := mTotalCSLL + (mValor * ((SimulaImportacao.FieldByName('Aliquota_CSLL').ascurrency/100)) * FieldByName('Quantidade').asfloat);
                mProdutos    := mProdutos + (mValor * FieldByName('Quantidade').asfloat);

                next;
          end;
          with SimulaImportacao do begin
               edit;
                  FieldByName('Total_Produtos').Value    := mProdutos;
                  FieldByName('Valor_IPISai').Value      := mTotalIPI;
                  FieldByName('Valor_PISSai').Value      := mTotalPIS;
                  FieldByName('Valor_COFINSSai').Value   := mTotalCOFINS;
                  FieldByName('Valor_CSLL').Value        := mTotalCSLL;
                  FieldByName('Valor_IRPJ').Value        := mTotAliqPJ;
                  FieldByName('Valor_DespesasSai').Value := tSomaDespesas.FieldByName('Despesas_Saida').AsCurrency;
                  FieldByName('Valor_ICMSSaida').Value   := mTotalICMS;
                  FieldByName('Valor_ICMSST').Value      := mTotalICMSST;

                  mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_TotalPedido').asstring, 'TOTAL DO PEDIDO - SAÍDA');
                  FieldByName('Total_NFSaida').value  := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);
               post;
          end;
          }
     end;
end;


function TfComexSimulacaoImp.ConvFormula(Formula, Campo: string): string;
var
    lista, listafun: TStringList;
    i, x, c: integer;
    s
   ,mFuncao
   ,mTermo1
   ,mTermo2
   ,mFunCondic
   ,mSinal
   ,mcalc
   ,mCond
   ,mValor1
   ,mValor2: string;
begin
     lista    := TStringList.create;
     listaFun := TStringList.create;
     if trim(Formula) <> '' then begin
        with SimulaProdutos do begin
             mCalc   := Formula;
             Formula := ansiuppercase(Formula);
             Formula := StringReplace(Formula, #13, '', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, #12, '', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, #10, '', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, '+', '@+', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, '-', '@-', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, '*', '@*', [rfReplaceAll, rfIgnoreCase]);

             lista := Quebrastring(Formula, '@');

             for i := 0 to pred(lista.Count) do begin
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Valor_SemAdValorem]', formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacaoTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Valor_UnitarioReal]', formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacaoTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Unitario]'       ,  formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacaoTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Fator_Cambio]'         , '1'                                                                                     , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Frete]'          , formatfloat('##0.00000000', mFatorFrete * FieldByName('Peso_Liquido').ascurrency)       , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Rateio_FreteTerrNac]'  , formatfloat('##0.00000000', 0)                                                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Seguro]'         , formatfloat('##0.00000000', mFatorSeguro * FieldByName('Valor_UnitarioME').ascurrency)  , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Despesa]'        , formatfloat('##0.00000000', mFatorDespesa * FieldByName('Valor_UnitarioME').ascurrency) , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_II]'             , formatfloat('##0.00000000', mII)                                                        , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSOper]'    , formatfloat('##0.00', FieldByName('Aliquota_ICMS').asfloat)                             , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'ProcessosDocumentos_[Aliquota_ICMS]' , formatfloat('##0.00', FieldByName('Aliquota_ICMS').asfloat)                             , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_IPI]'            , formatfloat('##0.000000', FieldByName('Valor_IPI').ascurrency)                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_PIS]'            , formatfloat('##0.000000', FieldByName('Valor_PIS').ascurrency)                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_COFINS]'         , formatfloat('##0.000000', FieldByName('Valor_COFINS').ascurrency)                       , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_PISRed]'      , '0'                                                                                     , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_COFINSRed]'   , '0'                                                                                     , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSReducao]' , formatfloat('##0.00', FieldByName('Aliquota_ICMSRed').asfloat)                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSReducao2]', formatfloat('##0.00', FieldByName('Aliquota_ICMSRed2').asfloat)                         , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Quantidade]'           , formatfloat('##0.000', FieldByName('Quantidade').asfloat)                               , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Desconto_Valor]'       , '0'                                                                                     , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro]'                , formatfloat('##0.00'    , SimulaImportacao.FieldByName('Taxa_Adiministrativa').asfloat) , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro_Valor]'          , formatfloat('##0.00'    , 0), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSSub]'     , formatfloat('##0.00'    , FieldByName('Aliquota_ICMSST').asfloat)                       , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCICMSSub]'      , formatfloat('##0.000000', FieldByName('BCICMSST').asfloat)                              , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro_Valor]'          , formatfloat('##0.000000', 0)                                                            , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Lucro]'                     , formatfloat('##0.000000', 0)                                                            , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalII]'             , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_II').asCurrency)          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Percentual_Beneficio]' , formatfloat('##0.000000', IncentivosFiscais.fieldbyname('Percentual_Beneficio').AsFloat), [rfReplaceAll, rfIgnoreCase]);
                 
                 if TipoNota.FieldByName('Saida_Entrada').asinteger = 0 then begin
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCICMSOper]', formatfloat('##0.000000', FieldByName('Valor_BCICMSEnt').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Total]'     , formatfloat('##0.0000'  , FieldByName('Valor_CIFReal').ascurrency)                                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_PIS]'    , formatfloat('##0.00'    , FieldByName('Aliquota_PIS').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_COFINS]' , formatfloat('##0.00'    , FieldByName('Aliquota_COFINS').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCPIS]'     , formatfloat('##0.000000', FieldByName('Valor_BCPISEnt').asfloat)                                   , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Total_IPI]'       , formatfloat('##0.000000', FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat) , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_ICMSOper]'  , formatfloat('##0.00'    , FieldByName('Valor_ICMSEntrada').asfloat)                                , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_PIS]'            , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_PIS').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_COFINS]'         , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_COFINS').ascurrency)                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalIPI]'       , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_IPI').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_OutrasDespesas]' , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_Despesas').ascurrency)               , [rfReplaceAll, rfIgnoreCase]);
                 end else begin
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCICMSOper]', formatfloat('##0.000000', FieldByName('Valor_BCICMS').asfloat)                                        , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Produtos_[PIS_NotaSaida]'       , formatfloat('##0.00'    , FieldByName('Aliquota_PISSai').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Produtos_[COFINS_NotaSaida]'    , formatfloat('##0.00'    , FieldByName('Aliquota_COFINSSai').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Total]'     , formatfloat('##0.000000', mValorTotal)                                                                , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_PIS]'    , formatfloat('##0.00'    , FieldByName('Aliquota_PISSai').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_COFINS]' , formatfloat('##0.00'    , FieldByName('Aliquota_COFINSSai').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCPIS]'     , formatfloat('##0.000000', FieldByName('Valor_BCPISSai').asfloat)                                      , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Total_IPI]'       , formatfloat('##0.000000', FieldByName('Valor_IPISai').ascurrency*FieldByName('Quantidade').ascurrency), [rfReplaceAll, rfIgnoreCase]);
//                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_ICMSOper]'  , formatfloat('##0.00'    , FieldByName('Valor_ICMSSaida').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_ICMSOper]'  , formatfloat('##0.00'    , FieldByName('Valor_ICMSSaida').asfloat*FieldByName('Quantidade').ascurrency), [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_PIS]'            , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_PISSai').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_COFINS]'         , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_COFINSSai').ascurrency)                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalIPI]'       , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_IPISai').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_OutrasDespesas]' , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_DespesasSai').ascurrency)               , [rfReplaceAll, rfIgnoreCase]);
                 end;

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_PIS]'   , formatfloat('##0.000000', mFatorPIS * FieldByName('Valor_UnitarioME').ascurrency)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_COFINS]', formatfloat('##0.000000', mFatorCOFINS * FieldByName('Valor_UnitarioME').ascurrency), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Produtos_[Reducao_PIS]', '0'                                                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Produtos_[PIS_Nota]'   , formatfloat('##0.00', FieldByName('Aliquota_PIS').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Produtos_[COFINS_Nota]', formatfloat('##0.00', FieldByName('Aliquota_COFINS').asfloat), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalProdutos]'   , formatfloat('##0.000000', SimulaImportacao.FieldByName('Total_Produtos').ascurrency), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Total_Frete]'           , formatfloat('##0.000000', 0)                                                        , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_Dumping]'         , '0'                                                                                 , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Dumping]'    , '0'                                                                                 , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_MVA]'     , formatfloat('##0.00', FieldByName('Aliquota_MVA').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCMVA]'      , formatfloat('##0.000000', FieldByName('Valor_BCMVA').asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_MVA]'        , formatfloat('##0.000000', FieldByName('Valor_MVA').asfloat)  , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Pedidos_[Total_Descontos]'       , '0'                                                                           , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[ValorICMS_Substitutivo]', formatfloat('##0.00', SimulaImportacao.FieldByName('Valor_ICMSST').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_ICMS]'            , formatfloat('##0.00', SimulaImportacao.FieldByName('Valor_ICMSSaida').asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Aliquota_CSLL]'         , formatfloat('##0.00', SimulaImportacao.FieldByName('Aliquota_CSLL').asfloat)  , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Aliquota_IRPJ]'         , formatfloat('##0.00', SimulaImportacao.FieldByName('Aliquota_IRPJ').asfloat)  , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Taxa_Cambio]'           , formatfloat('##0.00', SimulaImportacao.FieldByName('Taxa_FOB').asfloat)       , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_AFRMM]'           , formatfloat('##0.00', SimulaImportacao.FieldByName('Valor_AFRMM').asfloat)    , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'NCM_[ICMS_Reducao]', formatfloat('##0.00', FieldByName('Aliquota_ICMSRed').asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'NCM_[PIS]'         , formatfloat('##0.00', FieldByName('Aliquota_PIS').asfloat)    , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'NCM_[COFINS]'      , formatfloat('##0.00', FieldByName('Aliquota_COFINS').asfloat) , [rfReplaceAll, rfIgnoreCase]);

                 if pos('CONDIÇÃO', AnsiUpperCase(lista[i])) > 0  then begin
                    mFuncao  := copy(lista[i], pos('CONDIÇÃO', AnsiUpperCase(lista[i])), 100);
                    mFuncao  := copy(mFuncao, 1, pos('}', mFuncao));
                    listaFun := Quebrastring(lista[i], ';');

                    // Sinal utilizado no teste de condição.
                    mSinal := '';
                    for c := 1 to Length(listaFun[0]) do begin
                        if (listaFun[0][c] = '=') or (listaFun[0][c] = '>') or (listaFun[0][c] = '<') then mSinal := mSinal + listaFun[0][c];
                    end;

                    mTermo1 := Copy(Listafun[0], Pos('{', Listafun[0])+1, Pos(mSinal, ListaFun[0])-(Pos('{', Listafun[0])+1));
                    mTermo2 := trim(Copy(Listafun[0], pos(mSinal, ListaFun[0])+1, pos(';', ListaFun[0])+pos(mSinal, ListaFun[0])));

                    // Valores da condição.
                    mValor1 := Copy(lista[i], Pos(';', lista[i])+1, 200);
                    mValor2 := Copy(mValor1, pos(';', mValor1)+1, pos('}',mValor1)-pos(';', mValor1)-1);
                    mValor1 := Copy(mValor1, 1, Pos(';', mValor1)-1);
                    if ApenasNumeros(mTermo2) <> '' then begin
                       if (mSinal = '=' ) and (StrtoFloat(mTermo1) =  StrtoFloat(mTermo2)) or
                          (mSinal = '>' ) and (StrtoFloat(mTermo1) >  StrtoFloat(mTermo2)) or
                          (mSinal = '<' ) and (StrtoFloat(mTermo1) <  StrtoFloat(mTermo2)) or
                          (mSinal = '<>') and (StrtoFloat(mTermo1) <> StrtoFloat(mTermo2)) or
                          (mSinal = '<=') and (StrtoFloat(mTermo1) <= StrtoFloat(mTermo2)) or
                          (mSinal = '>=') and (StrtoFloat(mTermo1) >= StrtoFloat(mTermo2)) then
                          lista[i] := stringReplace(lista[i], mFuncao, mValor1, [rfReplaceAll, rfIgnoreCase])
                       else
                          lista[i] := stringReplace(lista[i], mFuncao, mValor2, [rfReplaceAll, rfIgnoreCase]);
                    end else begin
                       if (mSinal = '=' ) and (mTermo1 =  mTermo2) or
                          (mSinal = '>' ) and (mTermo1 >  mTermo2) or
                          (mSinal = '<' ) and (mTermo1 <  mTermo2) or
                          (mSinal = '<>') and (mTermo1 <> mTermo2) or
                          (mSinal = '<=') and (mTermo1 <= mTermo2) or
                          (mSinal = '>=') and (mTermo1 >= mTermo2) then
                          lista[i] := stringReplace(lista[i], mFuncao, mValor1, [rfReplaceAll, rfIgnoreCase])
                       else
                          lista[i] := stringReplace(lista[i], mFuncao, mValor2, [rfReplaceAll, rfIgnoreCase]);
                    end;
                 end;
             end;
             for i := 0 to pred(lista.Count) do begin
                 s := s + trim(lista[i]);
             end;
             s := stringreplace(s, chr(32) , '', [rfReplaceAll, rfIgnoreCase]);
             s := stringreplace(s, chr(160), '', [rfReplaceAll, rfIgnoreCase]);
        end;

        result := s;
     end else begin
        result := '0';
     end;
     if mCalc <> '' then begin
        memo1.lines.add('==['+Campo+']'+stringofchar('=', 90-length(Campo)));
        Memo1.lines.add(mCalc);
        memo1.lines.add(s);
        memo1.lines.add('');
     end;

     lista.Free;
     listafun.free;
end;

// Envia informações para o excel.

procedure TfComexSimulacaoImp.ExportaEXCEL;
var
  LCID,
  mLinha,
  l: Integer;
  mDesemb
 ,mCIFReal
 ,mCIFME
 ,mImpostos
 ,mDespesas: Real;

//  WKBK: _Workbook;
begin
(*
            LCID                                  := GetUserDefaultLCID;                                  // Pega o usuário logado
            ExcelApplication1.DisplayAlerts[LCID] := false;                                               // Remove alertas do excel
            WKBK                                  := ExcelApplication1.Workbooks.Add(EmptyParam, LCID);   // Cria o novo arquivo
            mPlan.ConnectTo(WKBK.Worksheets[1] as _Worksheet);                                            // Conecta a planilha (1) que será a planilha a receber os dados
            mPlan.Activate(LCID);                                                                         // Ativa a planilha conectada
            ExcelApplication1.ScreenUpdating[LCID] := true;                                               // Torna possível fazer alterações

            // Ajusta o tamanho de todas as colunas.
            mPlan.Name                         := 'Simulação de Importação ('+tSimula.FieldByName('Numero').AsString+')'; // Atribui um nome a planilha
            mPlan.Range['A1','R1'].ColumnWidth := 12;
            mPlan.Range['A1','R300'].Font.Size := 8;

            // Cabecalho - Dados da Empresa.
            if FileExists(Empresas.FieldByName('Logo').AsString) then begin
               mPlan.Shapes.AddPicture(Empresas.FieldByName('Logo').AsString, 0, 1, 10, 10, 140, 40);  // Logo da Empresa.
            end;

            mPlan.Range['A1','A1'].Value2              := Dados.Empresas.FieldByName('Razao_Social').AsString;
            mPlan.Range['A1','R1'].Mergecells          := True;
            mPlan.Range['A1','R4'].Font.Size           := 14;
            mPlan.Range['A1','R4'].Font.Bold           := true;
            mPlan.Range['A1','R4'].HorizontalAlignment := 3;
            mPlan.Range['A1','R1000'].VerticalAlignment:= 2;

            mPlan.Range['A2','A2'].Value2              := 'Simulação de Importação Nº '+FormatFloat('000000', tSimula.FieldByName('Numero').Asinteger);
            mPlan.Range['A2','R2'].Mergecells          := True;

            mPlan.Range['A3','A3'].Value2              := tSimula.FieldByName('Modalidade').AsString;
            mPlan.Range['A3','R3'].Mergecells          := True;

            mPlan.Range['A5','A5'].Value2              := 'CLIENTE';
            mPlan.Range['A5','R5'].Mergecells          := True;
            mPlan.Range['A5','R5'].Interior.Color      := clRed;
            mPlan.Range['A5','R5'].Font.Color          := clWhite;
            mPlan.Range['A5','R5'].Font.Size           := 8;
            mPlan.Range['A5','R5'].Font.Bold           := true;

            mPlan.Range['A6','A6'].Value2              := 'NOME:';
            mPlan.Range['A7','A7'].Value2              := 'BENEFÍCIO:';
            mPlan.Range['A8','A8'].Value2              := 'FORNECEDOR:';
            mPlan.Range['A9','A9'].Value2              := 'PESO LIRUÍDO:';
            mPlan.Range['A6','A9'].Interior.Color      := $00FAD3E6;
            mPlan.Range['A6','A9'].Font.Color          := clBlack;
            mPlan.Range['A6','A9'].Font.Size           := 8;
            mPlan.Range['A6','A9'].Font.Bold           := false;
            mPlan.Range['A6','A9'].ColumnWidth         := 10;
            mPlan.Range['A6','A9'].Borders.LineStyle   := 1;
            mPlan.Range['B6','B6'].Value2              := tSimula.FieldByName('Cliente_ImpNome').AsString;
            mPlan.Range['B7','B7'].Value2              := tSimula.FieldByName('Beneficio').AsString;
            mPlan.Range['B8','B8'].Value2              := tSimula.FieldByName('Fornecedor').AsString;
            mPlan.Range['B9','B9'].Value2              := tSimula.FieldByName('Peso_Liquido').asfloat;
            mPlan.Range['B9','B9'].NumberFormat        := '#.##0,000';
            mPlan.Range['A6','A9'].BorderAround(1, 2, 0, RGB(100,0,0));

            mPlan.Range['F6','F6'].Value2              := 'TIPO PRODUTO:';
            mPlan.Range['F7','F7'].Value2              := 'MOD.IMPORTAÇÃO:';
            mPlan.Range['F8','F8'].Value2              := 'ORIGEM::';
            mPlan.Range['F9','F9'].Value2              := 'PESO BRUTO:';
            mPlan.Range['G6','G6'].Value2              := tSimula.FieldByName('Tipo_Produto').AsString;
            mPlan.Range['G7','G7'].Value2              := tSimula.FieldByName('Modalidade').AsString;
            mPlan.Range['G8','G8'].Value2              := tSimula.FieldByName('Pais_OrigemNome').AsString;
            mPlan.Range['G9','G9'].Value2              := tSimula.FieldByName('Peso_Bruto').asfloat;
            mPlan.Range['G9','G9'].NumberFormat        := '#.##0,000';
            mPlan.Range['F6','F9'].Interior.Color      := $00FAD3E6;
            mPlan.Range['F6','F9'].Font.Color          := clBlack;
            mPlan.Range['F6','F9'].Font.Size           := 8;
            mPlan.Range['F6','F9'].Font.Bold           := false;
            mPlan.Range['F6','F9'].ColumnWidth         := 13;
            mPlan.Range['F6','F9'].Borders.LineStyle   := 1;
            mPlan.Range['F6','F9'].BorderAround(1, 2, 0, RGB(100,0,0));

            mPlan.Range['K9','K9'].Value2              := 'CONTAINER:';
            mPlan.Range['L9','L9'].Value2              := tSimula.FieldByName('Tipo_Container').AsString;
            mPlan.Range['K9','K9'].Interior.Color      := $00FAD3E6;
            mPlan.Range['K9','K9'].Font.Color          := clBlack;
            mPlan.Range['K9','K9'].Font.Size           := 8;
            mPlan.Range['K9','K9'].Font.Bold           := false;
            mPlan.Range['K9','K9'].ColumnWidth         := 13;
            mPlan.Range['K9','K9'].Borders.LineStyle   := 1;
            mPlan.Range['K9','K9'].BorderAround(1, 2, 0, RGB(100,0,0));

            mPlan.Range['A10','A10'].Value2              := 'PRODUTOS - ENTRADA';
            mPlan.Range['A10','R10'].Mergecells          := True;
            mPlan.Range['A10','R10'].Interior.Color      := clRed;
            mPlan.Range['A10','R10'].Font.Color          := clWhite;
            mPlan.Range['A10','R10'].Font.Size           := 8;
            mPlan.Range['A10','R10'].Font.Bold           := true;

            mPlan.Range['A11','A11'].Value2              := 'DESCRIÇÃO';
            mPlan.Range['A11','B11'].Mergecells          := True;
            mPlan.Range['B11','B11'].ColumnWidth         := 40;
            mPlan.Range['C11','C11'].Value2              := 'NCM';
            mPlan.Range['D11','D11'].Value2              := 'RTDE';
            mPlan.Range['E11','E11'].Value2              := 'VLR.UNIT ME';
            mPlan.Range['F11','F11'].Value2              := 'VLR.UNIT R$';
            mPlan.Range['G11','G11'].Value2              := 'TOTAL';
            mPlan.Range['H11','H11'].Value2              := 'II';
            mPlan.Range['H11','I11'].Mergecells          := True;
            mPlan.Range['H11','H11'].ColumnWidth         := 6;
            mPlan.Range['J11','J11'].Value2              := 'IPI';
            mPlan.Range['J11','K11'].Mergecells          := True;
            mPlan.Range['J11','J11'].ColumnWidth         := 6;
            mPlan.Range['L11','L11'].Value2              := 'PIS';
            mPlan.Range['L11','M11'].Mergecells          := True;
            mPlan.Range['L11','L11'].ColumnWidth         := 6;
            mPlan.Range['N11','N11'].Value2              := 'COFINS';
            mPlan.Range['N11','O11'].Mergecells          := True;
            mPlan.Range['O11','O11'].ColumnWidth         := 6;
            mPlan.Range['P11','P11'].Value2              := 'ICMS ST';
            mPlan.Range['P11','Q11'].Mergecells          := True;
            mPlan.Range['R11','R11'].Value2              := 'VLR.C/IMP';

            mPlan.Range['A11','R11'].Interior.Color      := clSilver;
            mPlan.Range['A11','R11'].HorizontalAlignment := 3;
            mPlan.Range['A11','R11'].Borders.LineStyle   := 1;
            mPlan.Range['A11','R11'].BorderAround(1, 2, 0, RGB(100,0,0));

            mLinha := 12;

            with tProdutos do begin
                 First;
                 while not eof do begin
                       mPlan.Range['A'+inttostr(mLinha), 'B'+inttostr(mLinha)].Mergecells := True;
                       mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].Value2 := FieldByName('Produto').asstring;
                       mPlan.Range['C'+inttostr(mLinha), 'C'+inttostr(mLinha)].Value2 := FormatMaskText('####\.##\.##;0;', FieldByName('NCM').asstring);
                       mPlan.Range['D'+inttostr(mLinha), 'D'+inttostr(mLinha)].Value2 := FieldByName('Quantidade').asfloat;
                       mPlan.Range['E'+inttostr(mLinha), 'E'+inttostr(mLinha)].Value2 := FieldByName('Valor_UnitarioME').asfloat;
                       mPlan.Range['F'+inttostr(mLinha), 'F'+inttostr(mLinha)].Value2 := FieldByName('Valor_UnitarioReal').asfloat;
                       mPlan.Range['G'+inttostr(mLinha), 'G'+inttostr(mLinha)].Value2 := FieldByName('Valor_UnitarioReal').asfloat * FieldByName('Quantidade').asfloat;
                       mPlan.Range['H'+inttostr(mLinha), 'H'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_II').asfloat;
                       mPlan.Range['I'+inttostr(mLinha), 'I'+inttostr(mLinha)].Value2 := FieldByName('Total_II').ascurrency;
                       mPlan.Range['J'+inttostr(mLinha), 'J'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_IPI').asfloat;
                       mPlan.Range['K'+inttostr(mLinha), 'K'+inttostr(mLinha)].Value2 := FieldByName('Total_IPI').ascurrency;
                       mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_PIS').asfloat;
                       mPlan.Range['M'+inttostr(mLinha), 'M'+inttostr(mLinha)].Value2 := FieldByName('Total_PISEnt').ascurrency;
                       mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_COFINS').asfloat;
                       mPlan.Range['O'+inttostr(mLinha), 'O'+inttostr(mLinha)].Value2 := FieldByName('Total_COFINSEnt').ascurrency;
                       mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].Value2 := 0;
                       mPlan.Range['R'+inttostr(mLinha), 'R'+inttostr(mLinha)].Value2 := 0;
                       mPlan.Range['R'+inttostr(mLinha), 'R'+inttostr(mLinha)].Value2 := FieldByName('Valor_UnitarioImpEnt').ascurrency;

                       next;
                       inc(mLinha);
                 end;

                 mPlan.Range['A12', 'R'+inttostr(mLinha-1)].Borders.LineStyle := 1;
                 mPlan.Range['C12', 'C12'].ColumnWidth                        := 9;
                 mPlan.Range['C12', 'C'+inttostr(mLinha)].HorizontalAlignment := 3;
                 mPlan.Range['D12', 'D12'].ColumnWidth                        := 10;
                 mPlan.Range['D12', 'D12'].NumberFormat                       := '#.##0,000';
                 mPlan.Range['E12', 'E'+inttostr(mLinha)].ColumnWidth         := 12;
                 mPlan.Range['E12', 'E'+InttoStr(mLinha)].NumberFormat        := '#.##0,0000';
                 mPlan.Range['F12', 'F'+inttostr(mLinha)].ColumnWidth         := 12;
                 mPlan.Range['F12', 'F'+InttoStr(mLinha)].NumberFormat        := '#.##0,0000';
                 mPlan.Range['G12', 'R'+inttostr(mLinha)].ColumnWidth         := 12;
                 mPlan.Range['G12', 'R'+InttoStr(mLinha)].NumberFormat        := '#.##0,00';
                 mPlan.Range['H12', 'H'+inttostr(mLinha)].ColumnWidth         := 5;
                 mPlan.Range['J12', 'J'+inttostr(mLinha)].ColumnWidth         := 5;
                 mPlan.Range['L12', 'L'+inttostr(mLinha)].ColumnWidth         := 5;
                 mPlan.Range['N12', 'N'+inttostr(mLinha)].ColumnWidth         := 5;
                 mPlan.Range['P12', 'P'+inttostr(mLinha)].ColumnWidth         := 5;

                 mPlan.Range['G'+inttostr(mLinha),'R'+inttostr(mLinha)].Borders.LineStyle   := 1;
                 mPlan.Range['G'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := $00FAD3E6;
                 mPlan.Range['G'+inttostr(mLinha),'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 mPlan.Range['G'+inttostr(mLinha), 'G'+inttostr(mLinha)].Formula      := '=SOMA(G12:G'+inttostr(mLinha-1)+')';
                 mPlan.Range['I'+inttostr(mLinha), 'I'+inttostr(mLinha)].Formula      := '=SOMA(I12:I'+inttostr(mLinha-1)+')';
                 mPlan.Range['K'+inttostr(mLinha), 'K'+inttostr(mLinha)].Formula      := '=SOMA(K12:K'+inttostr(mLinha-1)+')';
                 mPlan.Range['M'+inttostr(mLinha), 'M'+inttostr(mLinha)].Formula      := '=SOMA(M12:M'+inttostr(mLinha-1)+')';
                 mPlan.Range['O'+inttostr(mLinha), 'O'+inttostr(mLinha)].Formula      := '=SOMA(O12:O'+inttostr(mLinha-1)+')';
                 mPlan.Range['G'+inttostr(mLinha), 'G'+inttostr(mLinha)].NumberFormat := '#.##0,00';

                 inc(mLinha);
            end;

            inc(mLinha);
            mPlan.Range['A'+inttostr(mLinha),'A'+inttostr(mLinha)].Value2              := 'VALORES NA ENTRADA';
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := clRed;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Color          := clWhite;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Size           := 8;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Bold           := true;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 1;
            inc(mLinha);
            mPlan.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha)].Value2              := 'VALOR';
            mPlan.Range['F'+inttostr(mLinha),'F'+inttostr(mLinha)].Value2              := 'MOEDA';
            mPlan.Range['F'+inttostr(mLinha),'J'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['K'+inttostr(mLinha),'K'+inttostr(mLinha)].Value2              := 'TAXA';
            mPlan.Range['L'+inttostr(mLinha),'L'+inttostr(mLinha)].Value2              := 'VALOR ME';
            mPlan.Range['L'+inttostr(mLinha),'M'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['N'+inttostr(mLinha),'N'+inttostr(mLinha)].Value2              := 'VALOR R$';
            mPlan.Range['N'+inttostr(mLinha),'R'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['E'+inttostr(mLinha),'R'+inttostr(mLinha+3)].Borders.LineStyle := 1;
            mPlan.Range['E'+inttostr(mLinha),'R'+inttostr(mLinha+3)].BorderAround(1, 2, 0, RGB(100,0,0));
            mPlan.Range['E'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := clSilver;
            mPlan.Range['E'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 3;
            inc(mLinha);

            mPlan.Range['E'+inttostr(mLinha)  ,'E'+inttostr(mLinha)].Value2         := 'FOB:';
            mPlan.Range['F'+inttostr(mLinha)  ,'F'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Moeda_FOB').AsString;
            mPlan.Range['F'+inttostr(mLinha)  ,'J'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['K'+inttostr(mLinha)  ,'K'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Taxa_FOB').Asfloat;
            mPlan.Range['L'+inttostr(mLinha)  ,'L'+inttostr(mLinha)].Value2         := tSimula.FieldByName('FOB').Asfloat;
            mPlan.Range['L'+inttostr(mLinha)  ,'M'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['N'+inttostr(mLinha)  ,'N'+inttostr(mLinha)].Value2         := tSimula.FieldByName('FOB_Real').Asfloat;
            mPlan.Range['N'+inttostr(mLinha)  ,'R'+inttostr(mLinha)].Mergecells     := True;

            mPlan.Range['E'+inttostr(mLinha+1),'E'+inttostr(mLinha+1)].Value2       := 'FRETE:';
            mPlan.Range['F'+inttostr(mLinha+1),'F'+inttostr(mLinha+1)].Value2       := tSimula.FieldByName('Moeda_Frete').AsString;
            mPlan.Range['F'+inttostr(mLinha+1),'J'+inttostr(mLinha+1)].Mergecells   := True;
            mPlan.Range['K'+inttostr(mLinha+1),'K'+inttostr(mLinha+1)].Value2       := tSimula.FieldByName('Taxa_Frete').Asfloat;
            mPlan.Range['L'+inttostr(mLinha+1),'L'+inttostr(mLinha+1)].Value2       := tSimula.FieldByName('Frete_Internacional').Asfloat;
            mPlan.Range['L'+inttostr(mLinha+1),'M'+inttostr(mLinha+1)].Mergecells   := True;
            mPlan.Range['N'+inttostr(mLinha+1),'N'+inttostr(mLinha+1)].Value2       := tSimula.FieldByName('Frete_Real').Asfloat;
            mPlan.Range['N'+inttostr(mLinha+1),'R'+inttostr(mLinha+1)].Mergecells   := True;

            mPlan.Range['E'+inttostr(mLinha+2),'E'+inttostr(mLinha+2)].Value2       := 'SEGURO:';
            mPlan.Range['F'+inttostr(mLinha+2),'F'+inttostr(mLinha+2)].Value2       := tSimula.FieldByName('Moeda_Seguro').Asstring;
            mPlan.Range['F'+inttostr(mLinha+2),'J'+inttostr(mLinha+2)].Mergecells   := True;
            mPlan.Range['K'+inttostr(mLinha+2),'K'+inttostr(mLinha+2)].Value2       := tSimula.FieldByName('Taxa_Seguro').Asfloat;
            mPlan.Range['L'+inttostr(mLinha+2),'L'+inttostr(mLinha+2)].Value2       := tSimula.FieldByName('Seguro_PremioValor').Asfloat;
            mPlan.Range['L'+inttostr(mLinha+2),'M'+inttostr(mLinha+2)].Mergecells   := True;
            mPlan.Range['N'+inttostr(mLinha+2),'N'+inttostr(mLinha+2)].Value2       := tSimula.FieldByName('Seguro_Real').Asfloat;
            mPlan.Range['N'+inttostr(mLinha+2),'R'+inttostr(mLinha+2)].Mergecells   := True;

            mPlan.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha+2)].Interior.Color := $00FAD3E6;
            mPlan.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha+2)].Font.Color     := clBlack;
            mPlan.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha+2)].Font.Size      := 8;
            mPlan.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha+2)].Font.Bold      := false;
            mPlan.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha+2)].ColumnWidth    := 10;
            mPlan.Range['K'+inttostr(mLinha),'K'+inttostr(mLinha+2)].NumberFormat   := '#.##0,0000';
            mPlan.Range['L'+inttostr(mLinha),'L'+inttostr(mLinha+2)].NumberFormat   := '#.##0,00';
            mPlan.Range['N'+inttostr(mLinha),'N'+inttostr(mLinha+2)].NumberFormat   := '#.##0,00';

            mCIFReal := tSimula.FieldByName('FOB_Real').ascurrency;
            mCIFME   := tSimula.FieldByName('FOB').ascurrency;
            if Incoterms.FieldByName('Frete').asboolean then begin
               mCIFME   := mCIFME   + SimulaImportacaoFrete_Internacional.AsCurrency;
               mCIFReal := mCIFReal + SimulaImportacaoFrete_Real.AsCurrency;
            end;
            if Incoterms.FieldByName('Seguro').asboolean then begin
               mCIFME   := mCIFME   + SimulaImportacaoSeguro_PremioValor.AsCurrency;
               mCIFReal := mCIFReal + SimulaImportacaoSeguro_Real.AsCurrency;
            end;

            inc(mLinha, 3);
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].value2         := mCIFME;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].value2         := mCIFReal;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color := $00FAD3E6;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Color     := clBlack;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

            inc(mLinha,2);
            mPlan.Range['E'+inttostr(mLinha), 'E'+inttostr(mLinha+4)].Interior.Color := $00FAD3E6;
            mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha+4)].Font.Color     := clBlack;
            mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha+4)].BorderAround(1, 2, 0, RGB(100,0,0));

            mPlan.Range['E'+inttostr(mLinha),'E'+inttostr(mLinha+4)].Borders.LineStyle := 1;
            mPlan.Range['L'+inttostr(mLinha),'R'+inttostr(mLinha+4)].Borders.LineStyle := 1;

            mPlan.Range['E'+inttostr(mLinha), 'E'+inttostr(mLinha)].Value2         := 'II:';
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_II').asfloat / tSimula.FieldByName('Taxa_FOB').asfloat;
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_II').asfloat;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));
            inc(mLinha);
            mPlan.Range['E'+inttostr(mLinha), 'E'+inttostr(mLinha)].Value2         := 'IPI:';
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_IPI').asfloat / tSimula.FieldByName('Taxa_FOB').asfloat;
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_IPI').asfloat;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));
            inc(mLinha);
            mPlan.Range['E'+inttostr(mLinha), 'E'+inttostr(mLinha)].Value2         := 'PIS:';
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_PIS').asfloat / tSimula.FieldByName('Taxa_FOB').asfloat;
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_PIS').asfloat;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));
            inc(mLinha);
            mPlan.Range['E'+inttostr(mLinha), 'E'+inttostr(mLinha)].Value2         := 'COFINS:';
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_COFINS').asfloat / tSimula.FieldByName('Taxa_FOB').asfloat;
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_COFINS').asfloat;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));
            inc(mLinha);
            mPlan.Range['E'+inttostr(mLinha), 'E'+inttostr(mLinha)].Value2         := 'ICMS:';
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_ICMSEntrada').asfloat / tSimula.FieldByName('Taxa_FOB').asfloat;
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2         := tSimula.FieldByName('Valor_ICMSEntrada').asfloat;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));
            inc(mLinha);
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].NumberFormat   := '#.##0,00';
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].value2         := '=SOMA(L'+trim(inttostr(mLinha-5))+':L'+trim(inttostr(mLinha-1))+')';
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].NumberFormat   := '#.##0,00';
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].value2         := '=SOMA(N'+trim(inttostr(mLinha-5))+':N'+trim(inttostr(mLinha-1))+')';
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color := $00FAD3E6;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

            inc(mLinha, 1);
            mDespesas := 0;

            with tDespesa do begin
                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha),'A'+inttostr(mLinha)].Value2              := 'DESPESAS NA ENTRADA';
                 mPlan.Range['L'+inttostr(mLinha),'L'+inttostr(mLinha)].Value2              := 'TAXA';
                 mPlan.Range['N'+inttostr(mLinha),'N'+inttostr(mLinha)].Value2              := 'VALOR ME';
                 mPlan.Range['P'+inttostr(mLinha),'P'+inttostr(mLinha)].Value2              := 'VALOR R$';
                 mPlan.Range['A'+inttostr(mLinha),'K'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['L'+inttostr(mLinha),'M'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['N'+inttostr(mLinha),'O'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['P'+inttostr(mLinha),'R'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['A'+inttostr(mLinha),'K'+inttostr(mLinha)].Interior.Color      := clRed;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Color          := clWhite;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Size           := 8;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Bold           := true;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 1;

                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := clSilver;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Color          := clBlack;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].HorizontalAlignment := 3;
                 mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha+3)].Borders.LineStyle := 1;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 inc(mLinha);
                 l := mLinha;

                 First;
                 while not eof do begin
                       mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells   := True;
                       mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
                       mPlan.Range['N'+inttostr(mLinha), 'O'+inttostr(mLinha)].Mergecells   := True;
                       mPlan.Range['P'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
                       mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].NumberFormat := '#.##0,0000';
                       mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].NumberFormat := '#.##0,00';

                       mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].Value2 := FieldByName('Despesa').asstring;
                       mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2 := FieldByName('Taxa').asfloat;
                       mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2 := FieldByName('Valor_ME').asfloat;
                       mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].Value2 := FieldByName('Valor').ascurrency;
                       mDespesas := mDespesas + FieldByName('Valor').ascurrency;

                       next;
                       inc(mLinha);
                 end;

                 mPlan.Range['A'+inttostr(l),'O'+inttostr(mLinha-1)].Borders.LineStyle  := 1;

                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
                 mPlan.Range['N'+inttostr(mLinha), 'O'+inttostr(mLinha)].Mergecells   := True;
                 mPlan.Range['P'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Formula      := '=SOMA(N'+inttostr(l)+':N'+inttostr(mLinha-1)+')';
                 mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].Formula      := '=SOMA(P'+inttostr(l)+':P'+inttostr(mLinha-1)+')';
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].NumberFormat := '#.##0,00';
                 mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].NumberFormat := '#.##0,00';

                 mPlan.Range['L'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color := $00FAD3E6;
                 mPlan.Range['L'+inttostr(mLinha),'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 inc(mLinha);
            end;
            with tDespesaAdm do begin
                 if RecordCount > 0 then begin
                    inc(mLinha);
                    mPlan.Range['A'+inttostr(mLinha),'A'+inttostr(mLinha)].Value2              := 'DESPESAS ADMINISTRATIVAS';
                    mPlan.Range['L'+inttostr(mLinha),'L'+inttostr(mLinha)].Value2              := 'TAXA';
                    mPlan.Range['N'+inttostr(mLinha),'N'+inttostr(mLinha)].Value2              := 'VALOR ME';
                    mPlan.Range['P'+inttostr(mLinha),'P'+inttostr(mLinha)].Value2              := 'VALOR R$';
                    mPlan.Range['A'+inttostr(mLinha),'K'+inttostr(mLinha)].Mergecells          := True;
                    mPlan.Range['L'+inttostr(mLinha),'M'+inttostr(mLinha)].Mergecells          := True;
                    mPlan.Range['N'+inttostr(mLinha),'O'+inttostr(mLinha)].Mergecells          := True;
                    mPlan.Range['P'+inttostr(mLinha),'R'+inttostr(mLinha)].Mergecells          := True;
                    mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := clRed;
                    mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Color          := clWhite;
                    mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Size           := 8;
                    mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Bold           := true;
                    mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 1;

                    mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := clSilver;
                    mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Color          := clBlack;
                    mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].HorizontalAlignment := 3;
                    mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha+3)].Borders.LineStyle := 1;
                    mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                    inc(mLinha);
                    l := mLinha;

                    First;
                    while not eof do begin
                          mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells   := True;
                          mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
                          mPlan.Range['N'+inttostr(mLinha), 'O'+inttostr(mLinha)].Mergecells   := True;
                          mPlan.Range['P'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
                          mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].NumberFormat := '#.##0,0000';
                          mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].NumberFormat := '#.##0,00';

                          mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].Value2 := FieldByName('Despesa').asstring;
                          mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2 := FieldByName('Taxa').asfloat;
                          mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2 := FieldByName('Valor_ME').asfloat;
                          mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].Value2 := FieldByName('Valor').ascurrency;

                          next;
                          inc(mLinha);
                    end;

                    mPlan.Range['A'+inttostr(l)     , 'R'+inttostr(mLinha-1)].Borders.LineStyle := 1;
                    mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells          := True;
                    mPlan.Range['N'+inttostr(mLinha), 'O'+inttostr(mLinha)].Mergecells          := True;
                    mPlan.Range['P'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells          := True;
                    mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Formula             := '=SOMA(N'+inttostr(l)+':N'+inttostr(mLinha-1)+')';
                    mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].Formula             := '=SOMA(P'+inttostr(l)+':P'+inttostr(mLinha-1)+')';
                    mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat        := '#.##0,00';

                    mPlan.Range['L'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color       := $00FAD3E6;
                    mPlan.Range['L'+inttostr(mLinha),'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                    inc(mLinha);
                 end;
            end;
            with tDespesaSai do begin
                 open;
                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha),'A'+inttostr(mLinha)].Value2              := 'DESPESAS NA SAÍDA';
                 mPlan.Range['L'+inttostr(mLinha),'L'+inttostr(mLinha)].Value2              := 'TAXA';
                 mPlan.Range['N'+inttostr(mLinha),'N'+inttostr(mLinha)].Value2              := 'VALOR ME';
                 mPlan.Range['P'+inttostr(mLinha),'P'+inttostr(mLinha)].Value2              := 'VALOR R$';
                 mPlan.Range['A'+inttostr(mLinha),'K'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['L'+inttostr(mLinha),'M'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['N'+inttostr(mLinha),'O'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['P'+inttostr(mLinha),'R'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := clRed;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Color          := clWhite;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Size           := 8;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Bold           := true;
                 mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 1;

                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := clSilver;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Color          := clBlack;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].HorizontalAlignment := 3;
                 mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha+3)].Borders.LineStyle := 1;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 inc(mLinha);
                 l := mLinha;

                 First;
                 while not eof do begin
                       mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells   := True;
                       mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
                       mPlan.Range['N'+inttostr(mLinha), 'O'+inttostr(mLinha)].Mergecells   := True;
                       mPlan.Range['P'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
                       mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].NumberFormat := '#.##0,0000';
                       mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].NumberFormat := '#.##0,00';

                       mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].Value2 := FieldByName('Despesa').asstring;
                       mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2 := FieldByName('Taxa').asfloat;
                       mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2 := FieldByName('Valor_ME').asfloat;
                       mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].Value2 := FieldByName('Valor').ascurrency;
                       mDespesas := mDespesas + FieldByName('Valor').ascurrency;

                       next;
                       inc(mLinha);
                 end;

                 mPlan.Range['A'+inttostr(l),'R'+inttostr(mLinha-1)].Borders.LineStyle  := 1;

                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
                 mPlan.Range['N'+inttostr(mLinha), 'O'+inttostr(mLinha)].Mergecells   := True;
                 mPlan.Range['P'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Formula      := '=SOMA(N'+inttostr(l)+':N'+inttostr(mLinha-1)+')';
                 mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].Formula      := '=SOMA(P'+inttostr(l)+':P'+inttostr(mLinha-1)+')';
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].NumberFormat := '#.##0,00';
                 mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].NumberFormat := '#.##0,00';

                 mPlan.Range['L'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color := $00FAD3E6;
                 mPlan.Range['L'+inttostr(mLinha),'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 inc(mLinha);
            end;

            inc(mLinha);
            mPlan.Range['A'+inttostr(mLinha),'A'+inttostr(mLinha)].Value2              := 'CUSTO IMPORTAÇÃO';
            mPlan.Range['L'+inttostr(mLinha),'L'+inttostr(mLinha)].Value2              := 'VALOR ME';
            mPlan.Range['N'+inttostr(mLinha),'N'+inttostr(mLinha)].Value2              := 'VALOR R$';
            mPlan.Range['A'+inttostr(mLinha),'K'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['L'+inttostr(mLinha),'M'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['N'+inttostr(mLinha),'R'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := clRed;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Color          := clWhite;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Size           := 8;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Bold           := true;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 1;

            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := clSilver;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Color          := clBlack;
            mPlan.Range['l'+inttostr(mLinha), 'R'+inttostr(mLinha)].HorizontalAlignment := 3;
            mPlan.Range['E'+inttostr(mLinha), 'R'+inttostr(mLinha+3)].Borders.LineStyle  := 1;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

            inc(mLinha);
            l:= mLinha;

            mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2 := 'DESEMBOLSO NA NACIONALIZAÇÃO';

            mDesemb := SimulaImportacaoFOB_Real.AsCurrency +
                       SimulaImportacaoFrete_Real.AsCurrency +
                       SimulaImportacaoSeguro_Real.AsCurrency +
                       SimulaImportacaoValor_II.AsCurrency +
                       SimulaImportacaoValor_IPI.AsCurrency +
                       SimulaImportacaoValor_PIS.AsCurrency +
                       SimulaImportacaoValor_COFINS.AsCurrency +
                       SimulaImportacaoValor_ICMSEntrada.AsCurrency+
                       mDespesas;

            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2 := mDesemb;
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2 := mDesemb / tSimula.FieldByName('Taxa_FOB').asfloat;
            mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat := '#.##0,00';

            inc(mLinha);
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2       := SimulaImportacaoValor_IPI.AsCurrency * -1;
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2       := (SimulaImportacaoValor_IPI.AsCurrency / tSimula.FieldByName('Taxa_FOB').asfloat) * -1;
            mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2       := 'IPI';
            mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat := '#.##0,00';

            inc(mLinha);
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2       := SimulaImportacaoValor_PIS.AsCurrency * -1;
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2       := (SimulaImportacaoValor_PIS.AsCurrency / tSimula.FieldByName('Taxa_FOB').asfloat) * -1;
            mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2       := 'PIS';
            mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat := '#.##0,00';

            inc(mLinha);
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2       := SimulaImportacaoValor_COFINS.AsCurrency * -1;
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2       := (SimulaImportacaoValor_COFINS.AsCurrency / tSimula.FieldByName('Taxa_FOB').asfloat) * -1;
            mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2       := 'COFINS';
            mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat := '#.##0,00';

            inc(mLinha);
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2       := SimulaImportacaoValor_ICMSEntrada.AsCurrency * -1;
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2       := (SimulaImportacaoValor_ICMSEntrada.AsCurrency / tSimula.FieldByName('Taxa_FOB').asfloat) * -1;
            mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2       := 'ICMS';
            mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells   := True;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat := '#.##0,00';

            inc(mLinha);
            mPlan.Range['A'+inttostr(l), 'R'+inttostr(mLinha-1)].Borders.LineStyle    := 1;
            mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells        := True;
            mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells        := True;
            mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Formula           := '=SOMA(L'+inttostr(l)+':L'+inttostr(mLinha-1)+')';
            mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Formula           := '=SOMA(N'+inttostr(l)+':N'+inttostr(mLinha-1)+')';
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat      := '#.##0,00';
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Borders.LineStyle := 1;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color    := $00FAD3E6;
            mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

            //[ SAÍDA ]---------------------------------------------------------------------------------------------------------------------------------------//
            inc(mLinha,2);
            mPlan.Range['A'+inttostr(mLinha),'A'+inttostr(mLinha)].Value2              := 'NOTA FISCAL DE SAÍDA';
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 3;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := clBlue;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Color          := clYellow;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Size           := 8;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Bold           := true;

            inc(mLinha);
            mPlan.Range['A'+inttostr(mLinha),'A'+inttostr(mLinha)].Value2              := 'PRODUTOS SAÍDA';
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 1;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := clRed;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Color          := clwhite;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Size           := 8;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Font.Bold           := true;

            inc(mLinha);
            mPlan.Range['A'+inttostr(mLinha),'A'+inttostr(mLinha)].Value2              := 'DESCRIÇÃO';
            mPlan.Range['A'+inttostr(mLinha),'B'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['B'+inttostr(mLinha),'B'+inttostr(mLinha)].ColumnWidth         := 40;
            mPlan.Range['C'+inttostr(mLinha),'C'+inttostr(mLinha)].Value2              := 'NCM';
            mPlan.Range['D'+inttostr(mLinha),'D'+inttostr(mLinha)].Value2              := 'FATOR';
            mPlan.Range['D'+inttostr(mLinha),'D'+inttostr(mLinha)].Value2              := 'RTDE';
            mPlan.Range['F'+inttostr(mLinha),'F'+inttostr(mLinha)].Value2              := 'VLR.UNIT R$';
            mPlan.Range['G'+inttostr(mLinha),'G'+inttostr(mLinha)].Value2              := 'TOTAL';
            mPlan.Range['H'+inttostr(mLinha),'H'+inttostr(mLinha)].Value2              := 'ICMS';
            mPlan.Range['H'+inttostr(mLinha),'I'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['H'+inttostr(mLinha),'H'+inttostr(mLinha)].ColumnWidth         := 6;
            mPlan.Range['J'+inttostr(mLinha),'J'+inttostr(mLinha)].Value2              := 'IPI';
            mPlan.Range['J'+inttostr(mLinha),'K'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['J'+inttostr(mLinha),'J'+inttostr(mLinha)].ColumnWidth         := 6;
            mPlan.Range['L'+inttostr(mLinha),'L'+inttostr(mLinha)].Value2              := 'PIS';
            mPlan.Range['L'+inttostr(mLinha),'M'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['L'+inttostr(mLinha),'L'+inttostr(mLinha)].ColumnWidth         := 6;
            mPlan.Range['N'+inttostr(mLinha),'N'+inttostr(mLinha)].Value2              := 'COFINS';
            mPlan.Range['N'+inttostr(mLinha),'O'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['N'+inttostr(mLinha),'N'+inttostr(mLinha)].ColumnWidth         := 6;
            mPlan.Range['P'+inttostr(mLinha),'P'+inttostr(mLinha)].Value2              := 'ICMS ST';
            mPlan.Range['P'+inttostr(mLinha),'Q'+inttostr(mLinha)].Mergecells          := True;
            mPlan.Range['P'+inttostr(mLinha),'P'+inttostr(mLinha)].ColumnWidth         := 6;
            mPlan.Range['R'+inttostr(mLinha),'R'+inttostr(mLinha)].Value2              := 'VLR.C/IMP';

            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color      := clSilver;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].HorizontalAlignment := 3;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].Borders.LineStyle   := 1;
            mPlan.Range['A'+inttostr(mLinha),'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

            inc(mLinha);
            l := mLinha;
            with tProdutos do begin
                 First;
                 while not eof do begin
                       mPlan.Range['A'+inttostr(mLinha), 'B'+inttostr(mLinha)].Mergecells := True;
                       mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].Value2 := FieldByName('Produto').asstring;
                       mPlan.Range['C'+inttostr(mLinha), 'C'+inttostr(mLinha)].Value2 := FormatMaskText('####\.##\.##;0;', FieldByName('NCM').asstring);
                       mPlan.Range['D'+inttostr(mLinha), 'D'+inttostr(mLinha)].Value2 := FieldByName('Quantidade').asfloat;
                       mPlan.Range['E'+inttostr(mLinha), 'E'+inttostr(mLinha)].Value2 := FieldByName('Valor_UnitarioME').asfloat;
                       mPlan.Range['F'+inttostr(mLinha), 'F'+inttostr(mLinha)].Value2 := FieldByName('Valor_UnitarioSaida').asfloat;
                       mPlan.Range['G'+inttostr(mLinha), 'G'+inttostr(mLinha)].Value2 := FieldByName('Valor_UnitarioSaida').asfloat * FieldByName('Quantidade').asfloat;
                       mPlan.Range['H'+inttostr(mLinha), 'H'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_ICMS').asfloat;
                       mPlan.Range['I'+inttostr(mLinha), 'I'+inttostr(mLinha)].Value2 := FieldByName('Total_ICMSSai').ascurrency;
                       mPlan.Range['J'+inttostr(mLinha), 'J'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_IPI').asfloat;
                       mPlan.Range['K'+inttostr(mLinha), 'K'+inttostr(mLinha)].Value2 := FieldByName('Total_IPISai').ascurrency;
                       mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_PISSai').asfloat;
                       mPlan.Range['M'+inttostr(mLinha), 'M'+inttostr(mLinha)].Value2 := FieldByName('Total_PISSai').ascurrency;
                       mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_COFINSSai').asfloat;
                       mPlan.Range['O'+inttostr(mLinha), 'O'+inttostr(mLinha)].Value2 := FieldByName('Total_COFINSSai').ascurrency;
                       mPlan.Range['P'+inttostr(mLinha), 'P'+inttostr(mLinha)].Value2 := FieldByName('Aliquota_ICMSST').asfloat;
                       mPlan.Range['Q'+inttostr(mLinha), 'Q'+inttostr(mLinha)].Value2 := FieldByName('Total_ICMSSTSai').ascurrency;
                       mPlan.Range['R'+inttostr(mLinha), 'R'+inttostr(mLinha)].Value2 := FieldByName('Valor_UnitarioImpSai').ascurrency;

                       next;
                       inc(mLinha);
                 end;

                 mPlan.Range['A'+inttostr(l),'R'+inttostr(mLinha-1)].Borders.LineStyle  := 1;

                 mPlan.Range['C12', 'C12'].ColumnWidth                        := 9;
                 mPlan.Range['C12', 'C'+inttostr(mLinha)].HorizontalAlignment := 3;
                 mPlan.Range['D12', 'D12'].ColumnWidth                        := 10;
                 mPlan.Range['D12', 'D12'].NumberFormat                       := '#.##0,000';
                 mPlan.Range['E12', 'E'+inttostr(mLinha)].ColumnWidth         := 12;
                 mPlan.Range['E12', 'E'+InttoStr(mLinha)].NumberFormat        := '#.##0,0000';
                 mPlan.Range['F12', 'F'+inttostr(mLinha)].ColumnWidth         := 12;
                 mPlan.Range['F12', 'F'+InttoStr(mLinha)].NumberFormat        := '#.##0,0000';
                 mPlan.Range['G12', 'R'+inttostr(mLinha)].ColumnWidth         := 12;
                 mPlan.Range['G12', 'R'+InttoStr(mLinha)].NumberFormat        := '#.##0,00';
                 mPlan.Range['H12', 'H'+inttostr(mLinha)].ColumnWidth         := 5;
                 mPlan.Range['J12', 'J'+inttostr(mLinha)].ColumnWidth         := 5;
                 mPlan.Range['L12', 'L'+inttostr(mLinha)].ColumnWidth         := 5;
                 mPlan.Range['N12', 'N'+inttostr(mLinha)].ColumnWidth         := 5;
                 mPlan.Range['P12', 'P'+inttostr(mLinha)].ColumnWidth         := 5;

                 mPlan.Range['G'+inttostr(mLinha),'R'+inttostr(mLinha)].Borders.LineStyle := 1;
                 mPlan.Range['G'+inttostr(mLinha),'R'+inttostr(mLinha)].Interior.Color    := $00FAD3E6;
                 mPlan.Range['G'+inttostr(mLinha),'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 mPlan.Range['G'+inttostr(mLinha), 'G'+inttostr(mLinha)].Formula      := '=SOMA(G'+inttostr(l)+':G'+inttostr(mLinha-1)+')';
                 mPlan.Range['I'+inttostr(mLinha), 'I'+inttostr(mLinha)].Formula      := '=SOMA(I'+inttostr(l)+':I'+inttostr(mLinha-1)+')';
                 mPlan.Range['K'+inttostr(mLinha), 'K'+inttostr(mLinha)].Formula      := '=SOMA(K'+inttostr(l)+':K'+inttostr(mLinha-1)+')';
                 mPlan.Range['M'+inttostr(mLinha), 'M'+inttostr(mLinha)].Formula      := '=SOMA(M'+inttostr(l)+':M'+inttostr(mLinha-1)+')';
                 mPlan.Range['O'+inttostr(mLinha), 'O'+inttostr(mLinha)].Formula      := '=SOMA(O'+inttostr(l)+':O'+inttostr(mLinha-1)+')';
                 mPlan.Range['Q'+inttostr(mLinha), 'Q'+inttostr(mLinha)].Formula      := '=SOMA(Q'+inttostr(l)+':Q'+inttostr(mLinha-1)+')';
                 mPlan.Range['G'+inttostr(mLinha), 'G'+inttostr(mLinha)].NumberFormat := '#.##0,00';

                 //[ SAÍDA ]---------------------------------------------------------------------------------------------------------------------------------------//
                 inc(mLinha, 2);
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].value2              := 'VALOR ME';
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := clRed;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].font.Color          := clWhite;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].HorizontalAlignment := 3;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].value2              := 'VALOR R$';
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells          := True;

                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := clSilver;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Color          := clBlack;
                 mPlan.Range['l'+inttostr(mLinha), 'R'+inttostr(mLinha)].HorizontalAlignment := 3;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha+3)].Borders.LineStyle := 1;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Bold           := true;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 inc(mLinha);
                 l := mLinha;
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2     := 'TAXA DMINISTRATIVA - '+FormatFloat(',##0.00%', tSimula.fieldByName('Taxa_Adiministrativa').asfloat);
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2     := ((SimulaImportacaoTotal_NFSaida.ascurrency - SimulaImportacaoValor_IPISai.ascurrency) * (tSimula.fieldByName('Taxa_Adiministrativa').asfloat/100)) / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2     := (SimulaImportacaoTotal_NFSaida.ascurrency - SimulaImportacaoValor_IPISai.ascurrency) * (tSimula.fieldByName('Taxa_Adiministrativa').asfloat/100);
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells := True;

                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2     := 'PIS';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_PISSai.ascurrency / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_PISSai.ascurrency;
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells := True;

                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2     := 'COFINS';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_COFINSSai.ascurrency / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_COFINSSai.ascurrency;
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells := True;

                 inc(mLinha) ;
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2     := 'ICMS OPERACIONAL';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_ICMSSaida.ascurrency / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_ICMSSaida.ascurrency;
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells := True;

                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2     := 'ICMS SUBSTITUTIVO';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_ICMSST.ascurrency / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_ICMSST.ascurrency;
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells := True;

                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2     := 'IRPJ';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_IRPJ.ascurrency / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_IRPJ.ascurrency;
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells := True;

                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2     := 'CSLL';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_CSLL.ascurrency / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_CSLL.ascurrency;
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells := True;

                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2     := 'IPI';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_IPISai.ascurrency / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2     := SimulaImportacaoValor_IPISai.ascurrency;
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells := True;

                 mPlan.Range['A'+inttostr(mLinha-7),'R'+inttostr(mLinha)].Borders.LineStyle := 1;
                 mPlan.Range['L'+inttostr(mLinha-7),'R'+inttostr(mLinha)].NumberFormat      := '#.##0,00';
                 mPlan.Range['A'+inttostr(mLinha-7),'R'+inttostr(mLinha)].Font.Color        := clBlack;
                 mPlan.Range['A'+inttostr(mLinha-7),'R'+inttostr(mLinha)].Font.Size         := 8;
                 mPlan.Range['A'+inttostr(mLinha-7),'R'+inttostr(mLinha)].Font.Bold         := true;

                 inc(mLinha);
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Formula             := '=SOMA(L'+inttostr(l)+':L'+inttostr(mLinha-1)+')';
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Formula             := '=SOMA(N'+inttostr(l)+':N'+inttostr(mLinha-1)+')';
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells          := True;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Borders.LineStyle   := 1;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := $00FAD3E6;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Bold           := true;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat        := '#.##0,00';
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 // TOTAIS FINAIS.
                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2         := 'TOTAL DA NF SAÍDA';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2         := SimulaImportacaoTotal_NFSaida.ascurrency / tSimula.fieldByName('Taxa_FOB').asfloat;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2         := SimulaImportacaoTotal_NFSaida.ascurrency;
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells     := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].Interior.Color := $00FAD3E6;

                 mPlan.Range['A'+inttostr(mLinha), 'R'+inttostr(mLinha)].Borders.LineStyle   := 1;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := $00FAD3E6;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Bold           := true;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat        := '#.##0,00';
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));

                 with tDespesaAdm do begin
                      sql.Clear;
                      SQL.Add('select Valor_ME = sum(Valor_ME)');
                      SQL.Add('from SimulaDespesas');
                      SQL.Add('where Simulacao = :pSimulacao');
                      SQL.Add('and   isnull(Custo, 0) = 0');
                      SQL.Add('and   isnull(Custo_Saida, 0) = 0');
                      ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
                      //sql.savetofile('c:\temp\Simula_DespesasAdm_Total.sql');
                      Open;
                 end;
                 
                 inc(mLinha);
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].value2         := 'FECHAMENTO DO PROCESSO (COM DESPESAS ADMINISTRATIVAS)';
                 mPlan.Range['L'+inttostr(mLinha), 'L'+inttostr(mLinha)].Value2         := tDespesaAdm.FieldByName('Valor_ME').AsCurrency;
                 mPlan.Range['N'+inttostr(mLinha), 'N'+inttostr(mLinha)].Value2         := SimulaImportacaoTotal_NFSaida.ascurrency + (tDespesaAdm.FieldByName('Valor_ME').AsCurrency * tSimula.fieldByName('Taxa_FOB').asfloat);
                 mPlan.Range['A'+inttostr(mLinha), 'K'+inttostr(mLinha)].Mergecells     := True;
                 mPlan.Range['L'+inttostr(mLinha), 'M'+inttostr(mLinha)].Mergecells     := True;
                 mPlan.Range['N'+inttostr(mLinha), 'R'+inttostr(mLinha)].Mergecells     := True;
                 mPlan.Range['A'+inttostr(mLinha), 'A'+inttostr(mLinha)].Interior.Color := $00FAD3E6;

                 mPlan.Range['A'+inttostr(mLinha), 'R'+inttostr(mLinha)].Borders.LineStyle   := 1;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Interior.Color      := $00FAD3E6;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].Font.Bold           := true;
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].NumberFormat        := '#.##0,00';
                 mPlan.Range['L'+inttostr(mLinha), 'R'+inttostr(mLinha)].BorderAround(1, 2, 0, RGB(100,0,0));
            end;
       ExcelApplication1.activewindow.displaygridlines := false;
       ExcelApplication1.Visible[LCID] := true;    // Torna a aplicação visível
*)
end;



end.
