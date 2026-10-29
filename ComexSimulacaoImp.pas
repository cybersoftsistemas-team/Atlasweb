unit ComexSimulacaoImp;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Client, Math, System.Variants, Vcl.Dialogs, uniGUIClasses, uniGUIBaseClasses, uniGUIFrame, uniPanel,
  uniPageControl, uniDBGrid, uniDBNavigator, uniDBEdit, uniDBMemo, uniDBCheckBox, uniDBComboBox, uniDBDateTimePicker, uniDBLookUpComboBox, uniButton, uniSpeedButton, uniLabel,
  uniGroupBox, uniMemo, uniEdit, uniDateTimePicker, uniCheckBox, uniComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniBitBtn, uniBasicGrid, uniMultiItem, Vcl.Controls, Vcl.Forms, CalcExpress,
  Graphics, uniRadioGroup, uniStringGrid, uniSweetAlert, System.Diagnostics, uniSpinEdit, uniSplitter, ppDB, ppDBPipe, ppParameter, ppVar, ppBands, ppDesignLayer, ppCtrls, ppReport, ppStrtch, ppSubRpt, Vcl.Imaging.pngimage, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd;

type
  TfComexSimulacaoImp = class(TUniFrame)
    Pasta: TUniPageControl;
    TabSheet1: TUniTabSheet;
    Ficha: TUniPanel;
    cNumero: TUniDBEdit;
    cFornecedor: TUniDBEdit;
    cFOB: TUniDBFormattedNumberEdit;
    cPorto_Destino: TUniDBEdit;
    cQtde_Container: TUniDBFormattedNumberEdit;
    cFrete_Internacional: TUniDBFormattedNumberEdit;
    cTaxa_FOB: TUniDBFormattedNumberEdit;
    cFOB_Real: TUniDBFormattedNumberEdit;
    cFrete_Real: TUniDBFormattedNumberEdit;
    cTaxa_Adiministrativa: TUniDBFormattedNumberEdit;
    cDataRegistro_DI: TUniDBDateTimePicker;
    cMoeda_FOB: TUniDBLookupComboBox;
    cBeneficio: TUniDBLookupComboBox;
    cAliquota_IRPJ: TUniDBFormattedNumberEdit;
    cAliquota_CSLL: TUniDBFormattedNumberEdit;
    cValor_IRPJ: TUniDBFormattedNumberEdit;
    cValor_CSLL: TUniDBFormattedNumberEdit;
    cPeso_Liquido: TUniDBFormattedNumberEdit;
    cPeso_Bruto: TUniDBFormattedNumberEdit;
    cPais_Origem: TUniDBLookupComboBox;
    cPais_Destino: TUniDBLookupComboBox;
    cCidade_Origem: TUniDBEdit;
    cCidade_Destino: TUniDBEdit;
    cPorto_Origem: TUniDBEdit;
    cMoeda_Frete: TUniDBLookupComboBox;
    cTaxa_Frete: TUniDBFormattedNumberEdit;
    cOperacao_Entrada: TUniDBLookupComboBox;
    GroupBox2: TUniGroupBox;
    cCliente_NotaNome: TUniDBEdit;
    DBCheckBox1: TUniDBCheckBox;
    DBCheckBox2: TUniDBCheckBox;
    DBCheckBox3: TUniDBCheckBox;
    cCliente_NotaEstado: TUniDBLookupComboBox;
    DBCheckBox4: TUniDBCheckBox;
    DBCheckBox5: TUniDBCheckBox;
    DBCheckBox6: TUniDBCheckBox;
    cINCOTERM: TUniDBLookupComboBox;
    cProcesso: TUniDBEdit;
    cTipo_Produto: TUniDBEdit;
    cFator: TUniDBFormattedNumberEdit;
    cOperacao_Saida: TUniDBLookupComboBox;
    cAliquota_ICMSEntrada: TUniDBFormattedNumberEdit;
    cAliquota_ICMSSaida: TUniDBFormattedNumberEdit;
    cModalidade: TUniDBLookupComboBox;
    cProduto_Destinado: TUniDBEdit;
    GroupBox3: TUniGroupBox;
    cAliquota_PISServ: TUniDBFormattedNumberEdit;
    cAliquota_CSLLServ: TUniDBFormattedNumberEdit;
    cAliquota_COFINSServ: TUniDBFormattedNumberEdit;
    cAliquota_IRPJServ: TUniDBFormattedNumberEdit;
    cAliquota_ISSServ: TUniDBFormattedNumberEdit;
    cTaxa_Servico: TUniDBFormattedNumberEdit;
    cValor_AFRMM: TUniDBFormattedNumberEdit;
    cMoeda_Seguro: TUniDBLookupComboBox;
    cTaxa_Seguro: TUniDBFormattedNumberEdit;
    cSeguro: TUniDBFormattedNumberEdit;
    cSeguro_Real: TUniDBFormattedNumberEdit;
    TabSheet2: TUniTabSheet;
    Panel6: TUniPanel;
    TabSheet3: TUniTabSheet;
    TabSheet5: TUniTabSheet;
    DBGrid1: TUniDBGrid;
    TabSheet4: TUniTabSheet;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    Contas: TFDQuery;
    dsContas: TDataSource;
    Moedas: TFDQuery;
    dsMoedas: TDataSource;
    OperEnt: TFDQuery;
    dsOperEnt: TDataSource;
    Beneficios: TFDQuery;
    dsBeneficios: TDataSource;
    Paises: TFDQuery;
    dsPaises: TDataSource;
    Estados: TFDQuery;
    dsEstados: TDataSource;
    ttmp: TFDQuery;
    SimulaImp: TFDQuery;
    dsSimulaImp: TDataSource;
    Itens: TFDQuery;
    dsItens: TDataSource;
    Despesas: TFDQuery;
    dsDespesas: TDataSource;
    mMacro: TCalcExpress;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    Modalidades: TFDQuery;
    dsModalidades: TDataSource;
    dsOperSair: TDataSource;
    OperSai: TFDQuery;
    ViaTransporte: TFDQuery;
    dsViaTransporte: TDataSource;
    cVia_Transporte: TUniDBLookupComboBox;
    TipoContainer: TFDQuery;
    dsTipoContainer: TDataSource;
    cTipo_Container: TUniDBLookupComboBox;
    cCliente_ImpNome: TUniDBEdit;
    cCliente_ImpEstado: TUniDBLookupComboBox;
    UniContainerPanel1: TUniContainerPanel;
    cEmpresa: TUniDBLookupComboBox;
    GradeProd: TUniDBGrid;
    pBarraNavItem: TUniPanel;
    NavegaItem: TUniDBNavigator;
    bDuplicarItem: TUniButton;
    FichaItem: TUniContainerPanel;
    cProduto: TUniDBEdit;
    cNCM: TUniDBEdit;
    cItemPeso_Liquido: TUniDBFormattedNumberEdit;
    cUnitarioME: TUniDBFormattedNumberEdit;
    cQuantidade: TUniDBFormattedNumberEdit;
    cItemPeso_Bruto: TUniDBFormattedNumberEdit;
    bAdicionarItem: TUniSpeedButton;
    bCancelarItem: TUniSpeedButton;
    bEditarItem: TUniSpeedButton;
    bExcluirItem: TUniSpeedButton;
    bSalvarItem: TUniSpeedButton;
    SimulaImpSimulacao: TFDAutoIncField;
    SimulaImpEmpresa: TStringField;
    SimulaImpData: TDateField;
    SimulaImpModalidade: TSmallintField;
    SimulaImpFornecedor: TStringField;
    SimulaImpBeneficio: TSmallintField;
    SimulaImpPeso_Bruto: TFMTBCDField;
    SimulaImpFOB: TFMTBCDField;
    SimulaImpValor_II: TFMTBCDField;
    SimulaImpValor_IPI: TFMTBCDField;
    SimulaImpFrete_Internacional: TFMTBCDField;
    SimulaImpSeguro_PremioPercentual: TFMTBCDField;
    SimulaImpSeguro_PremioValor: TFMTBCDField;
    SimulaImpFOB_Real: TFMTBCDField;
    SimulaImpFrete_Real: TFMTBCDField;
    SimulaImpSeguro_Real: TFMTBCDField;
    SimulaImpValor_PIS: TFMTBCDField;
    SimulaImpValor_COFINS: TFMTBCDField;
    SimulaImpAliquota_ICMSEntrada: TFMTBCDField;
    SimulaImpValor_ICMSEntrada: TFMTBCDField;
    SimulaImpAliquota_ICMSSaida: TFMTBCDField;
    SimulaImpValor_ICMSSaida: TFMTBCDField;
    SimulaImpTaxa_Adiministrativa: TFMTBCDField;
    SimulaImpBCICMS_Entrada: TFMTBCDField;
    SimulaImpBCICMS_Saida: TFMTBCDField;
    SimulaImpAliquota_IRPJ: TFMTBCDField;
    SimulaImpValor_IRPJ: TFMTBCDField;
    SimulaImpAliquota_CSLL: TFMTBCDField;
    SimulaImpValor_CSLL: TFMTBCDField;
    SimulaImpPeso_Liquido: TFMTBCDField;
    SimulaImpPorto_Origem: TStringField;
    SimulaImpPorto_Destino: TStringField;
    SimulaImpPais_Origem: TStringField;
    SimulaImpCidade_Origem: TStringField;
    SimulaImpPais_Destino: TStringField;
    SimulaImpCidade_Destino: TStringField;
    SimulaImpMoeda_FOB: TSmallintField;
    SimulaImpTaxa_FOB: TFMTBCDField;
    SimulaImpMoeda_Seguro: TSmallintField;
    SimulaImpTaxa_Seguro: TFMTBCDField;
    SimulaImpMoeda_Frete: TSmallintField;
    SimulaImpTaxa_Frete: TFMTBCDField;
    SimulaImpOperacao_Entrada: TSmallintField;
    SimulaImpOperacao_Saida: TSmallintField;
    SimulaImpCliente_NotaZonaFranca: TBooleanField;
    SimulaImpCliente_NotaConsumidorFinal: TBooleanField;
    SimulaImpINCOTERM: TStringField;
    SimulaImpProcesso: TStringField;
    SimulaImpDI: TStringField;
    SimulaImpQtde_Container: TIntegerField;
    SimulaImpCliente_ImpNome: TStringField;
    SimulaImpCliente_ImpEstado: TStringField;
    SimulaImpCliente_NotaNome: TStringField;
    SimulaImpCliente_NotaEstado: TStringField;
    SimulaImpCliente_NotaContrib: TBooleanField;
    SimulaImpCliente_NotaSimples: TBooleanField;
    SimulaImpCliente_NotaJuridica: TBooleanField;
    SimulaImpTipo_Produto: TStringField;
    SimulaImpFator: TFMTBCDField;
    SimulaImpValor_IPISai: TFMTBCDField;
    SimulaImpValor_PISSai: TFMTBCDField;
    SimulaImpValor_COFINSSai: TFMTBCDField;
    SimulaImpTotal_NFSaida: TFMTBCDField;
    SimulaImpTotal_Produtos: TFMTBCDField;
    SimulaImpValor_Despesas: TFMTBCDField;
    SimulaImpBCIPI_Entrada: TFMTBCDField;
    SimulaImpBCIPI_Saida: TFMTBCDField;
    SimulaImpBCII_Entrada: TFMTBCDField;
    SimulaImpBCICMSST: TFMTBCDField;
    SimulaImpValor_ICMSST: TFMTBCDField;
    SimulaImpTotal_NFEntrada: TFMTBCDField;
    SimulaImpValor_DespesasSai: TFMTBCDField;
    SimulaImpProduto_Destinado: TStringField;
    SimulaImpTaxa_Servico: TFMTBCDField;
    SimulaImpAliquota_PISServ: TFMTBCDField;
    SimulaImpAliquota_COFINSServ: TFMTBCDField;
    SimulaImpAliquota_IRPJServ: TFMTBCDField;
    SimulaImpAliquota_CSLLServ: TFMTBCDField;
    SimulaImpAliquota_ISSServ: TFMTBCDField;
    SimulaImpDestacar_ImpCred: TBooleanField;
    SimulaImpValor_AFRMM: TFMTBCDField;
    SimulaImpVia_Transporte: TSmallintField;
    SimulaImpTipo_Container: TSmallintField;
    SimulaImpPais_OrigemNome: TStringField;
    SimulaImpPais_DestinoNome: TStringField;
    SimulaImpModal_Nome: TStringField;
    SimulaImpBeneficio_Nome: TStringField;
    UniPanel1: TUniPanel;
    pBarraNavDesp: TUniPanel;
    bRemoveTudo: TUniButton;
    bBuscar: TUniButton;
    bMarinha: TUniButton;
    NavegaDesp: TUniDBNavigator;
    bPISCOFINS: TUniButton;
    gDespesas: TUniDBGrid;
    DespesasRegistro: TFDAutoIncField;
    DespesasSimulacao: TIntegerField;
    DespesasConta: TStringField;
    DespesasDescricao: TStringField;
    DespesasTaxa: TFloatField;
    DespesasValor_ME: TCurrencyField;
    DespesasValor_Real: TCurrencyField;
    DespesasCusto_Entrada: TBooleanField;
    DespesasCusto_Saida: TBooleanField;
    FichaDesp: TUniContainerPanel;
    cValor: TUniRadioGroup;
    cConta: TUniDBLookupComboBox;
    cTaxa: TUniDBFormattedNumberEdit;
    bAdicionarDesp: TUniSpeedButton;
    bEditarDesp: TUniSpeedButton;
    bExcluirDesp: TUniSpeedButton;
    bSalvarDesp: TUniSpeedButton;
    bCancelarDesp: TUniSpeedButton;
    bCalcular: TUniSpeedButton;
    bImprimir: TUniButton;
    bExcel: TUniButton;
    bDuplicar: TUniButton;
    gFormula: TUniStringGrid;
    cLog: TUniMemo;
    Alerta: TUniSweetAlert;
    dsIncoterms: TDataSource;
    Incoterms: TFDQuery;
    SimulaNFItensEnt: TFDQuery;
    dsSimulaNFItensEnt: TDataSource;
    NCM: TFDQuery;
    dsNCM: TDataSource;
    ItensSimulacao: TIntegerField;
    ItensItem: TSmallintField;
    ItensProduto: TStringField;
    ItensNCM: TStringField;
    ItensQuantidade: TFMTBCDField;
    ItensValor_UnitarioME: TFMTBCDField;
    ItensValor_Unitario: TFMTBCDField;
    ItensPeso_Liquido: TFMTBCDField;
    ItensPeso_Bruto: TFMTBCDField;
    ValoresEnt: TFDQuery;
    dsValoresEnt: TDataSource;
    NCMICMS: TFDQuery;
    dsNCMICMS: TDataSource;
    UniPanel2: TUniPanel;
    cAliquotaIIE: TUniDBFormattedNumberEdit;
    cAliquotaIPIE: TUniDBFormattedNumberEdit;
    cAliquota_PISEntE: TUniDBFormattedNumberEdit;
    cAliquota_COFINSEntE: TUniDBFormattedNumberEdit;
    cValor_IIItemE: TUniDBFormattedNumberEdit;
    cValor_IPIIPIE: TUniDBFormattedNumberEdit;
    cValor_PISEntE: TUniDBFormattedNumberEdit;
    cValor_COFINSEntE: TUniDBFormattedNumberEdit;
    cValor_ICMSEntradaItemE: TUniDBFormattedNumberEdit;
    cAliquota_ICMSEntE: TUniDBFormattedNumberEdit;
    cValor_ICMSSTItemE: TUniDBFormattedNumberEdit;
    cICMSSTItemE: TUniDBFormattedNumberEdit;
    cAliquota_MVAE: TUniDBFormattedNumberEdit;
    cAliquota_ICMSRed2E: TUniDBFormattedNumberEdit;
    cAliquota_ICMSRedE: TUniDBFormattedNumberEdit;
    cValor_MVAE: TUniDBFormattedNumberEdit;
    dsValoresSai: TDataSource;
    ValoresSai: TFDQuery;
    UniPanel3: TUniPanel;
    cAliquota_IBSe: TUniDBFormattedNumberEdit;
    cValor_IBSe: TUniDBFormattedNumberEdit;
    cAliquota_CBSe: TUniDBFormattedNumberEdit;
    cValor_CBSe: TUniDBFormattedNumberEdit;
    cAliquota_IIS: TUniDBFormattedNumberEdit;
    cAliquota_IPIS: TUniDBFormattedNumberEdit;
    cAliquota_PISS: TUniDBFormattedNumberEdit;
    cAliquota_COFINSS: TUniDBFormattedNumberEdit;
    cValor_IIS: TUniDBFormattedNumberEdit;
    cValor_IPIS: TUniDBFormattedNumberEdit;
    cValor_PISS: TUniDBFormattedNumberEdit;
    cValor_COFINSS: TUniDBFormattedNumberEdit;
    cValor_ICMSOpS: TUniDBFormattedNumberEdit;
    cAliquota_ICMSOpS: TUniDBFormattedNumberEdit;
    cValor_ICMSSTS: TUniDBFormattedNumberEdit;
    cAliquota_ICMSSTS: TUniDBFormattedNumberEdit;
    cAliquota_MVAS: TUniDBFormattedNumberEdit;
    cICMS_Reducao: TUniDBFormattedNumberEdit;
    cAliquota_ICMSRed: TUniDBFormattedNumberEdit;
    cValor_MVAS: TUniDBFormattedNumberEdit;
    cAliquota_IBSS: TUniDBFormattedNumberEdit;
    cValor_IBSS: TUniDBFormattedNumberEdit;
    cAliquota_CBSS: TUniDBFormattedNumberEdit;
    cValor_CBSS: TUniDBFormattedNumberEdit;
    cValor_ME: TUniDBFormattedNumberEdit;
    cValor_Real: TUniDBFormattedNumberEdit;
    cQtdeDup: TUniSpinEdit;
    CValor_Unitario: TUniDBFormattedNumberEdit;
    cValor_BCIPI: TUniDBFormattedNumberEdit;
    cValor_BCII: TUniDBFormattedNumberEdit;
    cValor_BCCOFINSE: TUniDBFormattedNumberEdit;
    Valor_BCPISE: TUniDBFormattedNumberEdit;
    CValor_BCICMSSTe: TUniDBFormattedNumberEdit;
    CValor_BCICMSOpe: TUniDBFormattedNumberEdit;
    cValor_BCMVAe: TUniDBFormattedNumberEdit;
    cValor_BCCBSe: TUniDBFormattedNumberEdit;
    cValor_BCIBSe: TUniDBFormattedNumberEdit;
    cValor_BCIPIs: TUniDBFormattedNumberEdit;
    cValor_BCIIs: TUniDBFormattedNumberEdit;
    cValor_BCCOFINSs: TUniDBFormattedNumberEdit;
    cValor_BCPISs: TUniDBFormattedNumberEdit;
    cValor_BCICMSSTs: TUniDBFormattedNumberEdit;
    cValor_BCICMSOps: TUniDBFormattedNumberEdit;
    cValor_BCMVAs: TUniDBFormattedNumberEdit;
    cValor_BCCBSs: TUniDBFormattedNumberEdit;
    cValor_BCIBSs: TUniDBFormattedNumberEdit;
    UniSplitter1: TUniSplitter;
    cTotalItem: TUniFormattedNumberEdit;
    rSimulacaoRadar: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel175: TppLabel;
    iLogoRadar: TppImage;
    ppImage3: TppImage;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppImage4: TppImage;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppDBText264: TppDBText;
    ppShape225: TppShape;
    ppLabel176: TppLabel;
    ppDBText177: TppDBText;
    ppDetailBand13: TppDetailBand;
    ppShape231: TppShape;
    ppShape227: TppShape;
    ppShape230: TppShape;
    ppShape226: TppShape;
    ppDBText179: TppDBText;
    ppLabel178: TppLabel;
    ppLine9: TppLine;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel256: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppDBText180: TppDBText;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLine19: TppLine;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppShape229: TppShape;
    ppShape228: TppShape;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel276: TppLabel;
    ppLabel177: TppLabel;
    ppDBText178: TppDBText;
    ppLabel277: TppLabel;
    ppLine23: TppLine;
    ppLabel278: TppLabel;
    ppLine22: TppLine;
    ppLabel279: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText196: TppDBText;
    ppLabel280: TppLabel;
    Total01_ME: TppVariable;
    Total01_Real: TppVariable;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppShape232: TppShape;
    ppLabel281: TppLabel;
    ppLabel284: TppLabel;
    ppLine28: TppLine;
    ppLabel285: TppLabel;
    ppLine29: TppLine;
    ppLabel286: TppLabel;
    ppDBText200: TppDBText;
    ppDBText203: TppDBText;
    ppDBText205: TppDBText;
    ImpostoME_II: TppVariable;
    ImpostoME_IPI: TppVariable;
    ImpostoME_PIS: TppVariable;
    ppLine33: TppLine;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppDBText204: TppDBText;
    pDespesasMM: TppSubReport;
    ppChildReport11: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppShape234: TppShape;
    ppLabel290: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppDBText212: TppDBText;
    ppDBText214: TppDBText;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppDBText213: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppShape235: TppShape;
    ppLine39: TppLine;
    ppLabel289: TppLabel;
    ppLine40: TppLine;
    Total03_ME: TppDBCalc;
    Total03_Real: TppDBCalc;
    ppDesignLayers13: TppDesignLayers;
    ppDesignLayer13: TppDesignLayer;
    pDespesaNac: TppSubReport;
    ppChildReport12: TppChildReport;
    ppTitleBand12: TppTitleBand;
    ppShape238: TppShape;
    ppLabel295: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppDBText221: TppDBText;
    ppDBText222: TppDBText;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppDBText223: TppDBText;
    ppSummaryBand14: TppSummaryBand;
    ppShape239: TppShape;
    ppLabel296: TppLabel;
    Total04_ME: TppDBCalc;
    Total04_Real: TppDBCalc;
    ppShape236: TppShape;
    ppLine41: TppLine;
    ppLabel291: TppLabel;
    ppLine42: TppLine;
    TotalDesemb_Real: TppVariable;
    TotalDesemb_ME: TppVariable;
    ppDesignLayers14: TppDesignLayers;
    ppDesignLayer14: TppDesignLayer;
    ppLine43: TppLine;
    ppLabel315: TppLabel;
    ppShape233: TppShape;
    ppLabel287: TppLabel;
    Total02_ME: TppVariable;
    Total02_Real: TppVariable;
    ppLabel282: TppLabel;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppLabel283: TppLabel;
    ppDBText210: TppDBText;
    ppLabel288: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine32: TppLine;
    ImpostoME_COFINS: TppVariable;
    ImpostoME_ICMSEnt: TppVariable;
    ImpostoME_AFRMM: TppVariable;
    ppDBText206: TppDBText;
    ppDBText211: TppDBText;
    ppDBText209: TppDBText;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppPageSummaryBand3: TppPageSummaryBand;
    ppShape251: TppShape;
    ppShape242: TppShape;
    ppShape237: TppShape;
    ppShape241: TppShape;
    ppLabel294: TppLabel;
    ppLine44: TppLine;
    ppLabel297: TppLabel;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppDBText218: TppDBText;
    ppDBText219: TppDBText;
    ppLabel300: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLabel293: TppLabel;
    ppShape243: TppShape;
    TotalCustoNac_ME: TppVariable;
    TotalCustoNac_Real: TppVariable;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLabel302: TppLabel;
    TotalCredImp_Real: TppVariable;
    ppDBText215: TppDBText;
    ppDBText224: TppDBText;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    TotalCredImp_ME: TppVariable;
    ppLabel292: TppLabel;
    ppShape240: TppShape;
    ppShape244: TppShape;
    ppShape245: TppShape;
    ppLabel301: TppLabel;
    ppLine20: TppLine;
    ppLabel303: TppLabel;
    ppDBText220: TppDBText;
    ppDBText227: TppDBText;
    ppLabel304: TppLabel;
    ppLabel305: TppLabel;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppLabel306: TppLabel;
    ppLine21: TppLine;
    ppLine52: TppLine;
    ppLabel308: TppLabel;
    ppShape246: TppShape;
    ppLine53: TppLine;
    ppLabel309: TppLabel;
    ppDBText230: TppDBText;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppLabel310: TppLabel;
    ppDBText234: TppDBText;
    ppLabel311: TppLabel;
    ppLine57: TppLine;
    ppDBText235: TppDBText;
    ppDBText236: TppDBText;
    ppLabel312: TppLabel;
    ppLine58: TppLine;
    ppDBText237: TppDBText;
    ppLabel313: TppLabel;
    ppShape247: TppShape;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLabel314: TppLabel;
    TotalNFSaida_Real: TppDBText;
    TotalNFSaida_ME: TppDBText;
    Total_AssImpME: TppDBText;
    Total_AssImpReal: TppDBText;
    Total_ImpME: TppDBText;
    ppShape248: TppShape;
    ppShape249: TppShape;
    ppShape250: TppShape;
    ppLabel316: TppLabel;
    ppLine61: TppLine;
    ppLabel317: TppLabel;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppDBText244: TppDBText;
    ppDBText245: TppDBText;
    ppLabel320: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    TotalCreditos_Real: TppVariable;
    ppDBText246: TppDBText;
    ppDBText247: TppDBText;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    TotalCreditos_ME: TppVariable;
    ppLabel321: TppLabel;
    ppLabel323: TppLabel;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLabel326: TppLabel;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLabel327: TppLabel;
    ppLine69: TppLine;
    ppLabel322: TppLabel;
    ppLine70: TppLine;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText250: TppDBText;
    ppShape259: TppShape;
    ppDBText274: TppDBText;
    ppDBText275: TppDBText;
    ppLabel364: TppLabel;
    ppShape260: TppShape;
    ppLabel365: TppLabel;
    ppDBText276: TppDBText;
    ppDBText277: TppDBText;
    ppShape261: TppShape;
    ppLabel366: TppLabel;
    ppDBText278: TppDBText;
    ppDBText279: TppDBText;
    ppShape262: TppShape;
    ppLabel367: TppLabel;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppShape263: TppShape;
    ppLabel368: TppLabel;
    ppDBText282: TppDBText;
    ppDBText283: TppDBText;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine56: TppLine;
    ppDBText285: TppDBText;
    ppDBText284: TppDBText;
    ppDBText286: TppDBText;
    ppDBText287: TppDBText;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppShape264: TppShape;
    ppLabel369: TppLabel;
    ppDBText291: TppDBText;
    Valor_TotalNFServ: TppVariable;
    Valor_TotalNFSaiServ: TppVariable;
    ppFooterBand3: TppFooterBand;
    ppLabel307: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLine6: TppLine;
    ppSystemVariable8: TppSystemVariable;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDesignLayers18: TppDesignLayers;
    ppDesignLayer18: TppDesignLayer;
    ppParameterList3: TppParameterList;
    rSimulacaoRadarProd: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape252: TppShape;
    ppShape253: TppShape;
    ppShape254: TppShape;
    ppLabel328: TppLabel;
    ppImage2: TppImage;
    ppImage5: TppImage;
    ppLabel329: TppLabel;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppImage6: TppImage;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppDBText238: TppDBText;
    ppLabel334: TppLabel;
    ppDBText239: TppDBText;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppLine71: TppLine;
    ppDBText240: TppDBText;
    ppLine72: TppLine;
    ppDBText241: TppDBText;
    ppLabel337: TppLabel;
    ppLine73: TppLine;
    ppDBText255: TppDBText;
    ppLabel338: TppLabel;
    ppDBText256: TppDBText;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine80: TppLine;
    ppLabel343: TppLabel;
    ppLabel344: TppLabel;
    ppLabel345: TppLabel;
    ppLabel346: TppLabel;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppLabel349: TppLabel;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppLabel352: TppLabel;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLabel356: TppLabel;
    ppLabel357: TppLabel;
    ppLabel358: TppLabel;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLabel359: TppLabel;
    ppLabel360: TppLabel;
    ppLabel361: TppLabel;
    ppLine108: TppLine;
    ppLabel339: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppLine79: TppLine;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppDBText259: TppDBText;
    ppDBText260: TppDBText;
    ppLine85: TppLine;
    ppDBText261: TppDBText;
    ppDBText262: TppDBText;
    ppDBText263: TppDBText;
    ppDBText265: TppDBText;
    ppDBText266: TppDBText;
    ppDBText267: TppDBText;
    ppDBText268: TppDBText;
    ppDBText269: TppDBText;
    ppDBText270: TppDBText;
    ppDBText271: TppDBText;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine94: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine109: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    pUnitario: TppVariable;
    pUnitarioME: TppVariable;
    ppPageSummaryBand4: TppPageSummaryBand;
    ppShape255: TppShape;
    ppDBText331: TppDBText;
    ppLabel362: TppLabel;
    ppShape257: TppShape;
    ppDBCalc19: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    pTotalME: TppVariable;
    pTotalReal: TppVariable;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppFooterBand4: TppFooterBand;
    ppLabel404: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppDesignLayers17: TppDesignLayers;
    ppDesignLayer17: TppDesignLayer;
    ppParameterList4: TppParameterList;
    pSimulacao: TppDBPipeline;
    pEmpresas: TppDBPipeline;
    pDespesas: TppDBPipeline;
    pDespesasppField1: TppField;
    pDespesasppField2: TppField;
    pDespesasppField3: TppField;
    pDespesasppField4: TppField;
    pDespesasppField5: TppField;
    pDespesasppField6: TppField;
    pDespesasppField7: TppField;
    pDespesasppField8: TppField;
    pDespesasppField9: TppField;
    pDespesasppField10: TppField;
    pProdutos: TppDBPipeline;
    pProdutosppField1: TppField;
    pProdutosppField2: TppField;
    pProdutosppField3: TppField;
    pProdutosppField4: TppField;
    pProdutosppField5: TppField;
    pProdutosppField6: TppField;
    pProdutosppField7: TppField;
    pProdutosppField8: TppField;
    pProdutosppField9: TppField;
    pProdutosppField10: TppField;
    pProdutosppField11: TppField;
    pProdutosppField12: TppField;
    pProdutosppField13: TppField;
    pProdutosppField14: TppField;
    pProdutosppField15: TppField;
    pProdutosppField16: TppField;
    pProdutosppField17: TppField;
    pProdutosppField18: TppField;
    pProdutosppField19: TppField;
    pProdutosppField20: TppField;
    pProdutosppField21: TppField;
    pProdutosppField22: TppField;
    pProdutosppField23: TppField;
    pProdutosppField24: TppField;
    pProdutosppField25: TppField;
    pProdutosppField26: TppField;
    pProdutosppField27: TppField;
    pProdutosppField28: TppField;
    pProdutosppField29: TppField;
    pProdutosppField30: TppField;
    pProdutosppField31: TppField;
    pProdutosppField32: TppField;
    pProdutosppField33: TppField;
    pProdutosppField34: TppField;
    pProdutosppField35: TppField;
    pProdutosppField36: TppField;
    pProdutosppField37: TppField;
    pProdutosppField38: TppField;
    pProdutosppField39: TppField;
    pProdutosppField40: TppField;
    pProdutosppField41: TppField;
    pProdutosppField42: TppField;
    pProdutosppField43: TppField;
    pProdutosppField44: TppField;
    pProdutosppField45: TppField;
    pProdutosppField46: TppField;
    pProdutosppField47: TppField;
    pProdutosppField48: TppField;
    pProdutosppField49: TppField;
    pProdutosppField50: TppField;
    pProdutosppField51: TppField;
    pProdutosppField52: TppField;
    pProdutosppField53: TppField;
    pProdutosppField54: TppField;
    pProdutosppField55: TppField;
    pProdutosppField56: TppField;
    pProdutosppField57: TppField;
    pProdutosppField58: TppField;
    pProdutosppField59: TppField;
    pProdutosppField60: TppField;
    pProdutosppField61: TppField;
    pProdutosppField62: TppField;
    pProdutosppField63: TppField;
    pProdutosppField64: TppField;
    pProdutosppField65: TppField;
    pProdutosppField66: TppField;
    pProdutosppField67: TppField;
    pProdutosppField68: TppField;
    pProdutosppField69: TppField;
    pProdutosppField70: TppField;
    pProdutosppField71: TppField;
    pProdutosppField72: TppField;
    pProdutosppField73: TppField;
    pProdutosppField74: TppField;
    pDespesaAdm: TppDBPipeline;
    pDespesaSai: TppDBPipeline;
    pDespesaSaippField1: TppField;
    pDespesaSaippField2: TppField;
    pDespesaSaippField3: TppField;
    pDespesaSaippField4: TppField;
    pDespesaSaippField5: TppField;
    pDespesaSaippField6: TppField;
    pDespesaSaippField7: TppField;
    pDespesaSaippField8: TppField;
    pDespesaSaippField9: TppField;
    pDespesaSaippField10: TppField;
    pDespesaMar: TppDBPipeline;
    pDespesaMarppField1: TppField;
    pDespesaMarppField2: TppField;
    pDespesaMarppField3: TppField;
    pDespesaMarppField4: TppField;
    pDespesaMarppField5: TppField;
    pDespesaMarppField6: TppField;
    pDespesaMarppField7: TppField;
    pDespesaMarppField8: TppField;
    pDespesaMarppField9: TppField;
    dsImpSimula: TDataSource;
    ImpSimula: TFDQuery;
    rSimul: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppImage1: TppImage;
    ppImage7: TppImage;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppImage8: TppImage;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bRemoveTudoClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure PegaValor;
    procedure NavegaProdutosClick(Sender: TObject; Button: TNavigateBtn);
    procedure cNCMExit(Sender: TObject);
    procedure NavegaProdutosBeforeAction(Sender: TObject;Button: TNavigateBtn);
    procedure cNumeroChange(Sender: TObject);
    procedure CalculaEntrada;
    procedure bCalcularClick(Sender: TObject);
    procedure lICMSSaiCalc(Sender: TObject; var Value: Variant);
    procedure lIPISaiCalc(Sender: TObject; var Value: Variant);
    procedure bExcelClick(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
    procedure CustodeEntrada1Click(Sender: TObject);
    procedure CustodeSada1Click(Sender: TObject);
    procedure Nenhum1Click(Sender: TObject);
    procedure Ambos1Click(Sender: TObject);
    procedure bMarinhaClick(Sender: TObject);
    procedure cValorRealChange(Sender: TObject);
    procedure DBEdit39Change(Sender: TObject);
    procedure cDespesaCloseUp(Sender: TObject);
    procedure NavegaDespClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaDespBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesqClick(Sender: TObject);
    procedure bPISCOFINSClick(Sender: TObject);
    procedure bDuplicarItemClick(Sender: TObject);
    procedure CalculoSaida;
    procedure CarregarDados;
    procedure UniFrameCreate(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bAdicionarDespClick(Sender: TObject);
    procedure bCancelarDespClick(Sender: TObject);
    procedure bAdicionarItemClick(Sender: TObject);
    procedure bCancelarItemClick(Sender: TObject);
    procedure bEditarItemClick(Sender: TObject);
    procedure bSalvarItemClick(Sender: TObject);
    procedure bEditarDespClick(Sender: TObject);
    procedure bExcluirItemClick(Sender: TObject);
    procedure bExcluirDespClick(Sender: TObject);
    procedure ItensAfterScroll(DataSet: TDataSet);
    procedure cContaCloseUp(Sender: TObject);
    procedure cValor_MEChange(Sender: TObject);
    procedure bSalvarDespClick(Sender: TObject);
    procedure cUnitarioMEChange(Sender: TObject);
    procedure cQuantidadeChange(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    procedure TotalizaItens;
    procedure Imprimir;
  public
    mUnitario
   ,mTotal
   ,mBCPIS
   ,mValor
   ,mValorTotal
   ,mPeso
   ,mII
   ,mFatorPIS
   ,mFatorCOFINS
   ,mFatorDespesa
   ,mFatorSeguro
   ,mFator
   ,mFatorFrete
   ,mValor_Produtos
   ,mTotalII
   ,mTotalIPI
   ,mTotalOutrasIPI
   ,mTotalIsentasIPI
   ,mTotalPIS
   ,mTotalCOFINS
   ,mTotalICMSOp
   ,mTotalICMSMono
   ,mTotalICMSMonoRet
   ,mTotalICMSST
   ,mTotalICMSSTAnt
   ,mTotalICMSDif
   ,mTotalOutrasICMS
   ,mTotalIsentasICMS
   ,mTotalMVA
   ,mTotalCBS
   ,mTotalIBS
   ,mTotalIS: Real;
  end;

implementation

uses MainModule, Main, ServerModule, Funcoes;

{$R *.dfm}

procedure TfComexSimulacaoImp.cContaCloseUp(Sender: TObject);
begin
     PegaValor;
end;

procedure TfComexSimulacaoImp.UniFrameCreate(Sender: TObject);
begin
     // Alinhando todas as ficha de dados ao centro do form.
     AlinharPanels(self, Pasta.Width);

     Pasta.ActivePageIndex := 0;
     CarregarDados;
end;

procedure TfComexSimulacaoImp.CarregarDados;
var
     Tempo: TStopwatch;
begin
     Tempo := TStopwatch.StartNew;

     // Cursor VCL não utilizado em uniGUI;
     with Empresas do begin
          sql.clear;
          sql.add('select CNPJ');
          sql.add('      ,Estado');
          sql.add('      ,Unidade = case when isnull(Filial, 0) = 0 then ''MATRIZ'' else ''FILIAL ''+cast(Filial as char(3)) end');
          sql.add('      ,Razao_Social');
          sql.add('      ,Regime_Tributario');
          sql.add('      ,Filial');
          sql.add('from Empresas');
          sql.add('where substring(CNPJ, 1, 8) = '+quotedstr(copy(UniMainModule.mEmpresaAtiva, 1, 8)) );
          sql.add('order by Filial');
          open;
     end;
     with SimulaImp do begin
          sql.clear;
          sql.add('select s.*');
          sql.add('      ,Pais_OrigemNome = po.Nome');
          sql.add('      ,Pais_DestinoNome = pd.Nome');
          sql.add('      ,Modal_Nome = m.Descricao');
          sql.add('      ,Beneficio_Nome = b.Nome');
          sql.add('from SimulaImp s');
          sql.add('left join Paises po on po.Codigo = s.Pais_Origem');
          sql.add('left join Paises pd on pd.Codigo = s.Pais_Destino');
          sql.add('left join ModalidadeImportacao m on m.Codigo = s.Modalidade');
          sql.add('left join BeneficioFiscal b on b.Codigo = s.Beneficio');
          sql.add('where s.Empresa = :pEmp');
          sql.add('order by Simulacao');
          parambyname('pEmp').asstring := UniMainModule.mEmpresaAtiva;
          open;
     end;
     with Itens do begin
          sql.clear;
          sql.add('select * from SimulaProdutos where Simulacao = :Simulacao');
          open;
     end;
     with Despesas do begin
          sql.clear;
          sql.add('select * from SimulaDespesas where Simulacao = :Simulacao');
          open;
     end;
     with Modalidades do begin
          sql.clear;
          sql.add('select Codigo, Descricao from ModalidadeImportacao order by Descricao');
          open;
     end;
     with Beneficios do begin
          sql.clear;
          sql.add('select Codigo, Nome, Percentual_Beneficio from BeneficioFiscal order by Nome');
          open;
     end;
     with Incoterms do begin
          sql.clear;
          sql.add('select * from INCOTERMS order by Codigo');
          open;
     end;
     with OperEnt do begin
          sql.clear;
          sql.add('select Codigo, Descricao from OperacaoFiscal where ES = 0 and Desativado <> 1 order by Descricao');
          open;
     end;
     with OperSai do begin
          sql.clear;
          sql.add('select Codigo, Descricao from OperacaoFiscal where ES = 1 and Desativado <> 1 order by Descricao');
          open;
     end;
     with Paises do begin
          SQL.Clear;
          SQL.Add('select Codigo, Nome from Paises order by Nome');
          Open;
     end;
     with ViaTransporte do begin
          sql.clear;
          sql.add('select * from ViaTransporte order by Descricao');
          open;
     end;
     with TipoContainer do begin
          sql.clear;
          sql.add('select * from TipoContainer order by Descricao');
          open;
     end;
     with Moedas do begin
          sql.clear;
          sql.add('select Codigo, Nome from Moedas order by Nome');
          open;
     end;
     with Estados do begin
          SQL.Clear;
          sql.add('select UF, Nome from Estados order by Nome');
          Open;
     end;
     with Contas do begin
          SQL.Clear;
          sql.add('select Conta');
          sql.add('      ,Nome = Nome_Financeiro');
          sql.add('      ,Custo_Entrada');
          sql.add('      ,Custo_Saida');
          sql.add('from PlanoContas');
          sql.add('where Desativada <> 1');
          sql.add('and Tipo = ''P'' ');
          sql.add('and (Custo_Entrada = 1 or Custo_Saida = 1)');
          sql.add('order by Nome');
          Open;
     end;
     {
     with SimulaDespesas do begin
          SQL.Clear;
          sql.add('select * from SimulaDespesas where(Simulacao = :pSimulacao) order by Registro');
          ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
          Open;
     end;
     with ClassificacaoFinanceira do begin
          SQL.Clear;
          sql.add('select * from ClassificacaoFinanceira where(Desativada <> 1) order by Descricao');
          Open;
     end;
     with TipoNota do begin
          SQL.Clear;
          sql.add('select * from TipoNota order by Descricao');
          Open;
     end;
     with Campos do begin
          SQL.Clear;
          //sql.add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(SimulaImportacao.FieldByName('Tipo_Nota').AsInteger, 0)+') ORDER BY Tabela');
          Open;
     end;
     with Configuracao do begin
          SQL.Clear;
          sql.add('select * from Configuracao');
          Open;
          if fieldbyname('Modelo_Simulacao').AsBoolean then begin
             bImpHor.Visible   := false;
             bImprimir.Caption := '&Imprimir';
          end;
     end;
     }
     Pasta.ActivePageIndex := 0;
     // Cursor VCL não utilizado em uniGUI;
end;

{
procedure TfComexSimulacaoImp.gDespesasCellClick(Column: TColumn);
begin
     begin
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
      begin
           Value := (Itens.FieldByName('Quantidade').AsFloat * Itens.FieldByName('Valor_ICMSSaida').AsCurrency);
      end;
end;

procedure TfComexSimulacaoImp.lIPISaiCalc(Sender: TObject; var Value: Variant);
begin
      begin
           Value := (Itens.FieldByName('Quantidade').AsFloat * Itens.FieldByName('Valor_IpiSai').AsCurrency);
      end;
end;

procedure TfComexSimulacaoImp.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
{
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
      with Dados, Itens do begin
           cTotalII.Value  := FieldByName('Valor_II').ascurrency  * FieldByName('Quantidade').asfloat;
           cTotalIPI.Value := FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat;
      end;
}      
end;

procedure TfComexSimulacaoImp.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
{
      begin
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
                 tProdutos.sql.add('delete from Itens where Simulacao = :pSimula');
                 tProdutos.ParamByName('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
                 tProdutos.Execute;
                 tDespesa.sql.Clear;
                 tDespesa.sql.add('delete from SimulaDespesas where Simulacao = :pSimula');
                 tDespesa.ParamByName('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
                 tDespesa.Execute;
              end;
           end;
      End;
}      
end;

procedure TfComexSimulacaoImp.Ambos1Click(Sender: TObject);
begin
{
      with SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value       := true;
                SimulaDespesasCusto_Saida.Value := true;
           Post;
           SomaDespesas;
      end;
}
end;

procedure TfComexSimulacaoImp.bRemoveTudoClick(Sender: TObject);
begin
{
      if SimulaDespesas.RecordCount > 0 then begin
         if MessageDlg('Remover todas as despesas desta simulação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            begin
                 SimulaDespesas.SQL.Clear;
                 SimulaDespesas.sql.add('delete from SimulaDespesas where(Simulacao = :pSimulacao)');
                 SimulaDespesas.ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                 SimulaDespesas.Execute;
                 SimulaDespesas.SQL.Clear;
                 SimulaDespesas.sql.add('select * from SimulaDespesas where(Simulacao = :pSimulacao) order by Registro');
                 SimulaDespesas.ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                 SimulaDespesas.Open;
            end;
         end;
      end;
      SomaDespesas;
}
end;

procedure TfComexSimulacaoImp.bSalvarClick(Sender: TObject);
begin
     LigaBotoes(self, true);
     Ficha.Enabled         := false;
     pBarraNavItem.Enabled := true;
     SimulaImp.Refresh;
end;

procedure TfComexSimulacaoImp.bSalvarDespClick(Sender: TObject);
begin
     with Despesas do begin
          LigaBotoes(self, true);
          pBarraNavDesp.Enabled := true;
          FichaDesp.Enabled     := false;
          try
             post;
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode salvar a despesa!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexSimulacaoImp.bSalvarItemClick(Sender: TObject);
begin
     with Itens do begin
          LigaBotoes(self, true);
          pBarraNav.Enabled := true;
          FichaItem.Enabled := false;

          try
             if State = dsInsert then begin
                fieldbyname('Item').value := GeraItem('SimulaProdutos', 'Item', 'Simulacao = '+ItensSimulacao.AsString);
             end;

             Itens.post;

             with ValoresEnt do begin
                  FieldByName('Item').value := ItensItem.Value;
                  post;
             end;
             with ValoresSai do begin
                  FieldByName('Item').value := ItensItem.Value;
                  post;
             end;
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode salvar o item!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexSimulacaoImp.bAdicionarItemClick(Sender: TObject);
begin
     with Itens do begin
          try
             LigaBotoes(self, false);
             pBarraNav.Enabled := false;
             FichaItem.Enabled := true;

             Append;
                  FieldByName('Simulacao').Value := SimulaImpSimulacao.AsInteger;

             with ValoresEnt do begin
                  Append;
                       FieldByName('Simulacao').Value      := SimulaImpSimulacao.AsInteger;
                       FieldByName('ES').Value             := 0;
                       FieldByName('Valor_Unitario').Value := Itens.fieldbyname('Valor_Unitario').value;
             end;
             with ValoresSai do begin
                  Append;
                       FieldByName('Simulacao').Value      := SimulaImpSimulacao.AsInteger;
                       FieldByName('ES').Value             := 1;
                       FieldByName('Valor_Unitario').Value := Itens.fieldbyname('Valor_Unitario').value;
             end;

             cProduto.SetFocus;
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode adicionar um novo item!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexSimulacaoImp.bAdicionarClick(Sender: TObject);
begin
     with SimulaImp do begin
          try
             LigaBotoes(self, false);
             Pasta.ActivePageIndex := 1;
             pBarraNavItem.Enabled := false;

             Append;
                  FieldByName('Empresa').Value := UniMainModule.mEmpresaAtiva;
                  FieldByName('Data').Value    := date;

             cEmpresa.SetFocus;
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexSimulacaoImp.bAdicionarDespClick(Sender: TObject);
begin
     with Despesas do begin
          try
             LigaBotoes(self, false);
             pBarraNav.Enabled := false;
             FichaDesp.Enabled := true;
             append;
                  fieldbyname('Simulacao').Value := SimulaImpSimulacao.AsInteger;
                  fieldbyname('Taxa').Value      := SimulaImpTaxa_FOB.asfloat;
             cConta.SetFocus;
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode adicionar uma nova despesa!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexSimulacaoImp.bBuscarClick(Sender: TObject);
begin
{
      Processo_SimulacaoCalculoProcesso := TProcesso_SimulacaoCalculoProcesso.Create(Self);
      Processo_SimulacaoCalculoProcesso.Caption := Caption;
      Processo_SimulacaoCalculoProcesso.mSimulacao := SimulaImportacaoNumero.AsInteger;
      Processo_SimulacaoCalculoProcesso.ShowModal;
      SomaDespesas;
}      
end;

procedure TfComexSimulacaoImp.PegaValor;
begin
     with ttmp do begin
          sql.clear;
          sql.add('select Valor = case :pTipo');
          sql.add('                    when 0 then min(Valor_Total)');
          sql.add('                    when 1 then avg(Valor_Total)');
          sql.add('                    when 2 then max(Valor_Total)');
          sql.add('               end');
          sql.add('from PagarReceber');
          sql.add('where Conta = :pCta');
          parambyname('pCta').asstring   := contas.fieldbyname('conta').asstring;
          parambyname('pTipo').asinteger := cvalor.itemindex;
          open;
          DespesasValor_ME.value   := fieldbyname('Valor').ascurrency / SimulaImp.fieldbyname('Taxa_FOB').asfloat;
          DespesasTaxa.value       := SimulaImp.fieldbyname('Taxa_FOB').asfloat;
          DespesasValor_Real.value := fieldbyname('Valor').ascurrency;
     end;
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
      Configuracao.open;
      PesquisaGerais.mBanco  := iif(Configuracao.FieldByName('Compartilhar_Classificacao').asboolean, 'Dados','Empresa');
      PesquisaGerais.mTabela := SimulaDespesas;
      PesquisaGerais.Showmodal;
      }
end;

procedure TfComexSimulacaoImp.bPISCOFINSClick(Sender: TObject);
var
   mDifPIS, mDifCOFINS: real;
begin
{
      if messagedlg('Deseja realmente gerar os lançamentos de diferença de PIS/COFINS?', mtConfirmation, [mbyes, mbno], 0) = mrNo then begin
         Abort;
      end;
      
      mDifPIS    := 0;
      mDifCOFINS := 0;
      with Dados, SimulaDespesas do begin
           with ttmp do begin
                sql.Clear;
                sql.add('select Valor_DifPIS    = Valor_BCPISEnt * ((select PIS - PIS_Nota from NCM where NCM.NCM = sm.NCM)/100)');
                sql.add('      ,Valor_DifCOFINS = Valor_BCPISEnt * ((select COFINS - COFINS_Nota from NCM where NCM.NCM = sm.NCM)/100)');
                sql.add('into #tmp');
                sql.add('from Itens sm');
                sql.add('where Simulacao = :pSimula');
                sql.add('and Valor_BCPISEnt > 0');
                sql.add('and ((select PIS - PIS_Nota from NCM where NCM.NCM = sm.NCM) > 0 or (select COFINS - COFINS_Nota from NCM where NCM.NCM = sm.NCM) > 0)');
                sql.add('select Valor_DifPIS    = sum(isnull(Valor_DifPis, 0))');
                sql.add('      ,Valor_DifCOFINS = sum(isnull(Valor_DifCOFINS, 0))');
                sql.add('from #tmp');
                sql.add('drop table #tmp');
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
                         sql.add('select Codigo, Descricao, Custo_Entrada, Custo_Saida = Custo');
                         sql.add('from ClassificacaoFinanceira');
                         sql.add('where Codigo = :pClass');
                         parambyname('pClass').Asstring := TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString;
                         open;
                    end;
                    with tRegistro do begin
                         sql.clear;
                         sql.add('select isnull(max(Registro), 0)+1 as Reg from SimulaDespesas');
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
                      sql.add('select Codigo, Descricao, Custo_Entrada, Custo_Saida = Custo');
                      sql.add('from ClassificacaoFinanceira');
                      sql.add('where Codigo = :pClass');
                      parambyname('pClass').Asstring := TiposProcessoSISCOMEX_ClassificacaoDifCOFINS.AsString;
                      open;
                 end;
                 with tRegistro do begin
                      sql.clear;
                      sql.add('select isnull(max(Registro), 0)+1 as Reg from SimulaDespesas');
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
      }
end;

procedure TfComexSimulacaoImp.NavegaProdutosClick(Sender: TObject;Button: TNavigateBtn);
Var
   i: Integer;
begin
{
      begin
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
              ItensSimulacao.Value     := SimulaImportacaoNumero.Value;
              ItensAliquota_ICMS.Value := SimulaImportacaoAliquota_ICMSSaida.Value;
           End;

           If (Button = nbPost) or (Button = nbCancel) then Begin
              Panel6.Enabled    := false;
              bCalcular.Enabled := true;
              bImprimir.Enabled := true;
              Navega.Enabled    := true;
              GradeProd.Enabled := true;
           End;
      End;
      }
end;

procedure TfComexSimulacaoImp.Nenhum1Click(Sender: TObject);
begin
{
      with Dados, SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value       := false;
                SimulaDespesasCusto_Saida.Value := false;
           Post;
           SomaDespesas;
      end;
}      
end;

procedure TfComexSimulacaoImp.cNCMExit(Sender: TObject);
begin
{
     with NCM do begin
          sql.clear;
          sql.add('select II');
          sql.add('      ,IPI');
          sql.add('      ,PIS_Nota');
          sql.add('      ,COFINS_Nota');
          sql.add('      ,PIS_NotaSaida');
          sql.add('      ,COFINS_NotaSaida');
          sql.add('from NCM');
          sql.add('where NCM = :pNCM');
          parambyname('pNCM').AsString := ItensNCM.AsString;
          open;
     end;
}
     with NCM do begin
          sql.clear;
          sql.add('select n.II');
          sql.add('      ,n.IPI');
          sql.add('      ,n.PIS_Nota');
          sql.add('      ,n.COFINS_Nota');
          sql.add('      ,n.PIS_NotaSaida');
          sql.add('      ,n.COFINS_NotaSaida');
          sql.add('      ,i.ST');
          sql.add('      ,i.MVA_Imp');
          sql.add('      ,i.MVA_Nac');
          sql.add('      ,i.Reducao_BCICMSOp');
          sql.add('      ,i.Reducao_BCICMSST');
          sql.add('from NCM n');
          sql.add('inner join NCMICMS i on i.NCM = n.NCM and i.Estado = ''PA'' ');
          sql.add('where i.NCM = :NCM');
          parambyname('NCM').asstring := cNCM.Text;
          open;
     end;
     with NCMICMS do begin
          sql.clear;
          sql.add('select * from NCMICMS where NCM = :pNCM and Estado = :pEst');
          parambyname('pNCM').AsString := ItensNCM.AsString;
          parambyname('pEst').AsString := SimulaImpCliente_NotaEstado.AsString;
          open;
     end;
     with ValoresEnt do begin
          edit;
             fieldbyname('Simulacao').value       := ItensSimulacao.asinteger;
             fieldbyname('Item').value            := ItensItem.asinteger;
             fieldbyname('ES').value              := 0;
             fieldbyname('Aliquota_II').Value     := NCM.FieldByName('II').AsFloat;
             fieldbyname('Aliquota_IPI').Value    := NCM.FieldByName('IPI').AsFloat;
             fieldbyname('Aliquota_PIS').Value    := NCM.FieldByName('PIS_Nota').AsFloat;
             fieldbyname('Aliquota_COFINS').Value := NCM.FieldByName('COFINS_Nota').AsFloat;
             fieldbyname('Aliquota_MVA').Value    := NCM.FieldByName('MVA_Imp').AsFloat;
             fieldbyname('Aliquota_ICMSST').Value := NCM.FieldByName('ST').asfloat;
     end;
     with ValoresSai do begin
          edit;
             fieldbyname('Simulacao').value       := ItensSimulacao.asinteger;
             fieldbyname('Item').value            := ItensItem.asinteger;
             fieldbyname('ES').value              := 1;
             fieldbyname('Aliquota_II').Value     := NCM.FieldByName('II').AsFloat;
             fieldbyname('Aliquota_IPI').Value    := NCM.FieldByName('IPI').AsFloat;
             fieldbyname('Aliquota_PIS').Value    := NCM.FieldByName('PIS_NotaSaida').AsFloat;
             fieldbyname('Aliquota_COFINS').Value := NCM.FieldByName('COFINS_NotaSaida').AsFloat;
             fieldbyname('Aliquota_MVA').Value    := NCM.FieldByName('MVA_Imp').AsFloat;
             fieldbyname('Aliquota_ICMSST').Value := NCM.FieldByName('ST').asfloat;
     end;
end;

procedure TfComexSimulacaoImp.NavegaProdutosBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
{
      begin
           If (Button = nbPost) then begin
              if trim(cPesoBruto.Text) = '' then begin
                 MessageDlg('O "Peso Bruto" deve ser informado', mtError, [mbok], 0);
                 cPesoBruto.SetFocus; 
                 Abort;
              end;
              If (Itens.State = dsInsert) then begin
                 tItens.SQL.Clear;
                 tItens.sql.add('select max(Item) as Item from Itens where(Simulacao = :pSimula)');
                 tItens.ParamByName('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
                 tItens.Open;
                 ItensItem.Value := tItens.FieldByName('Item').AsInteger + 1;
                 tItens.Close;
              End;
           End;
           if Button = nbDelete then begin
              if Messagedlg('Deseja realmente remover este produto?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
           end;
      End;
}      
end;

procedure TfComexSimulacaoImp.cNumeroChange(Sender: TObject);
begin
{
     // Totaliza as despesas.
     with SimulaDespesas do begin
          SQL.Clear;
          sql.add('select *');
          sql.add('      ,Valor_ME');
          sql.add('from SimulaDespesas');
          sql.add('where Simulacao = :pSimulacao');
          ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
          //.sql.savetofile('c:\temp\Simula_Produtos.sql');
          Open;
     end;

     SomaDespesas;

     with Itens do begin
          SQL.Clear;
          sql.add('select *');
          sql.add('      ,Total_Produtos  = (Valor_UnitarioSaida * Quantidade)');
          sql.add('      ,Total_ICMSSai   = (Valor_ICMSSaida * Quantidade)');
          sql.add('      ,Total_ICMSSTSai = (Valor_ICMSST * Quantidade)');
          sql.add('      ,Total_IPI       = (Valor_IPI * Quantidade)');
          sql.add('      ,Total_IPISai    = (Valor_IPISai * Quantidade)');
          sql.add('      ,Total_PISSai    = (Valor_PISSai * Quantidade)');
          sql.add('      ,Total_COFINSSai = (Valor_COFINSSai * Quantidade)');
          sql.add('from Itens where(Simulacao = :pSimulacao)');
          ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
          //sql.savetofile('c:\temp\Simula_Produtos.sql');
          Open;
     end;

     bCalcular.Enabled := Itens.RecordCount > 0;
     with Itens do begin
          cTotalII.Value  := FieldByName('Valor_II').ascurrency  * FieldByName('Quantidade').asfloat;
          cTotalIPI.Value := FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat;
     end;
}
end;

procedure TfComexSimulacaoImp.CustodeEntrada1Click(Sender: TObject);
begin
{
      with SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value := not SimulaDespesasCusto.Value;
           Post;
           SomaDespesas;
      end;
}
end;

procedure TfComexSimulacaoImp.CustodeSada1Click(Sender: TObject);
begin
{
      with SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto_Saida.Value := not SimulaDespesasCusto_Saida.Value;
           Post;
           SomaDespesas;
      end;
}
end;

procedure TfComexSimulacaoImp.cValorRealChange(Sender: TObject);
begin
//      cDespNac.Enabled := cTaxa.Value = 0;
//      if cTaxa.Value <> 0 then begin
//         cDespNac.Value := cValorME.Value * cTaxa.Value;
//      end;
end;

procedure TfComexSimulacaoImp.cValor_MEChange(Sender: TObject);
begin
     DespesasValor_Real.value := DespesasValor_ME.ascurrency * DespesasTaxa.asfloat;
end;

procedure TfComexSimulacaoImp.DBEdit39Change(Sender: TObject);
begin
{
     begin
          cDespNac.Value := SimulaDespesas.FieldByName('Valor').ascurrency;
          cValorME.Value := SimulaDespesas.FieldByName('Valor_ME').ascurrency;
          cTaxa.Value    := SimulaDespesas.FieldByName('Taxa').asfloat;
     end;
}
end;

procedure TfComexSimulacaoImp.ItensAfterScroll(DataSet: TDataSet);
begin
     with ValoresEnt do begin
          sql.clear;
          sql.add('select * from SimulaValores where Simulacao = :pSim and Item = :pItem and ES = 0');
          parambyname('pSim').asinteger  := ItensSimulacao.asinteger;
          parambyname('pItem').asinteger := ItensItem.asinteger;
          open;
     end;
     with ValoresSai do begin
          sql.clear;
          sql.add('select * from SimulaValores where Simulacao = :pSim and Item = :pItem and ES = 1');
          parambyname('pSim').asinteger  := ItensSimulacao.asinteger;
          parambyname('pItem').asinteger := ItensItem.asinteger;
          open;
     end;
end;

procedure TfComexSimulacaoImp.NavegaDespBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
   mTaxa
  ,mValor
  ,mValorME: real;
begin
//      mTaxa    := cTaxa.Value;
//      mValor   := cDespNac.Value;
//      mValorME := cValorME.Value;
{
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
              fieldbyname('Simulacao').Value     := SimulaImpNumero.Value;
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
}      
end;

procedure TfComexSimulacaoImp.NavegaDespClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
{
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             NavegaDesp.Controls[i].Enabled := False;
         end;
         Panel2.Enabled := true;
         cTaxa.Value := SimulaImp.FieldByName('Taxa_FOB').AsFloat;
         cDespesa.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := false;
         NavegaDesp.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbDelete) then Begin
         SomaDespesas;
      end;
}      
end;

procedure TfComexSimulacaoImp.cQuantidadeChange(Sender: TObject);
begin
     cTotalItem.value := ItensValor_Unitario.AsCurrency * ItensQuantidade.asfloat;
end;

procedure TfComexSimulacaoImp.cUnitarioMEChange(Sender: TObject);
begin
     cValor_Unitario.value := ItensValor_UnitarioME.asfloat * SimulaImpTaxa_FOB.asfloat;
     ValoresEnt.FieldByName('Valor_Unitario').Value := Itens.fieldbyname('Valor_Unitario').value;
     ValoresSai.FieldByName('Valor_Unitario').Value := Itens.fieldbyname('Valor_Unitario').value;
     cTotalItem.value := ItensValor_Unitario.AsCurrency * ItensQuantidade.asfloat;
end;

procedure TfComexSimulacaoImp.CalculaEntrada;
var
   mUnitImp
  ,mSeguro
  ,mTotalFOB: Real;
begin
     // Calcula todos os impostos dos itens.
     {
     with Itens do begin
          TipoNota.locate('Codigo', SimulaImpTipo_Nota.asinteger, [loCaseInsensitive]);

          with Dados, tSomaDespesas do begin
               sql.Clear;
               sql.add('select Despesas_Entrada = isnull(sum(case when Custo       = 1 then Valor end), 0)');
               sql.add('      ,Despesas_Saida   = isnull(sum(case when Custo_Saida = 1 then Valor end), 0)');
               sql.add('from   SimulaDespesas');
               sql.add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImpNumero.AsInteger;
               Open;
               cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
               cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
          end;
          with Dados, tProdutos do begin
               sql.Clear;
               sql.add('select FOB = isnull(sum(Valor_UnitarioME*Quantidade), 0)');
               sql.add('from   Itens');
               sql.add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImpNumero.AsInteger;
               Open;
               mTotalFOB := FieldByName('FOB').AsCurrency;
          end;

          mFatorFrete  := 0;
          mFatorSeguro := 0;
          if (Incoterms.FieldByName('Frete').asBoolean) and (SimulaImp.FieldByName('Frete_Real').ascurrency > 0) then begin
             mFatorFrete := SimulaImp.FieldByName('Frete_Real').ascurrency / SimulaImp.FieldByName('Peso_Liquido').asfloat;
          end;
          if (Incoterms.FieldByName('Seguro').asBoolean) and (SimulaImp.FieldByName('Seguro_Real').ascurrency > 0) then begin
             mFatorSeguro  := SimulaImp.FieldByName('Seguro_Real').ascurrency / mTotalFOB;
          end;

          mFatorDespesa := tSomaDespesas.FieldByName('Despesas_Entrada').AsCurrency / mTotalFOB;
          First;
          while not Eof do begin
                mValor := roundto(FieldByName('Valor_UnitarioME').ascurrency * SimulaImp.FieldByName('Taxa_FOB').asfloat, -4);
                mPeso  := FieldByName('Peso_Liquido').asfloat;
                mII    := FieldByName('Valor_II').ascurrency;

                Edit;
                   // Valor do produto.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_Mercadoria').asstring, 'PRODUTO - ENTRADA');
                   mValor           := roundto(mMacro.Calc([0]), -4);
                   FieldByName('Valor_UnitarioReal').AsCurrency := mValor;
                   FieldByName('Valor_CIFReal').AsCurrency      := mValor * Itens.FieldByName('Quantidade').asfloat;

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
                   FieldByName('Valor_CIFReal').AsCurrency      := mValor * Itens.FieldByName('Quantidade').asfloat;
                   
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
                                                         SimulaImpAliquota_ICMSEntrada.AsFloat+
                                                         SimulaImpTaxa_Adiministrativa.AsFloat+
                                                         SimulaImpAliquota_CSLL.AsFloat+
                                                         SimulaImpAliquota_IRPJ.AsFloat));
                Post;
                Next;
          end;

          // Totalizando a capa da simulação.
          with tSomaProdutos do begin
               SQL.Clear;
               sql.add('select sum(Valor_UnitarioME * Quantidade)   as Total,');
               sql.add('       sum(Valor_UnitarioME * Quantidade)   as Total_CIF,');
               sql.add('       sum(Valor_UnitarioME * Quantidade) * :pTaxa as Total_Real,');
               sql.add('       sum(Valor_II * Quantidade)           as Total_II,');
               sql.add('       sum(Valor_IPI * Quantidade)          as Total_IPI,');
               sql.add('       sum(Valor_PIS)                       as Total_PIS,');
               sql.add('       sum(Valor_COFINS)                    as Total_COFINS,');
               sql.add('       sum(Peso_Liquido * Quantidade)       as Total_Liquido,');
               sql.add('       sum(Peso_Bruto * Quantidade)         as Total_Bruto,');
               sql.add('       sum(Valor_ICMSSaida * Quantidade)    as Total_ICMS,');
               sql.add('       sum(Valor_ICMSST * Quantidade)       as Total_ICMSST,');
               sql.add('       sum(Valor_BCICMSEnt * Quantidade)    as Total_BCICMSEnt,');
               sql.add('       sum(Valor_ICMSEntrada * Quantidade)  as Total_ICMSEntrada');
               sql.add('from   Itens');
               sql.add('where Simulacao = :pSimulacao');
               ParamByName('pSimulacao').AsInteger := SimulaImpNumero.AsInteger;
               ParamByName('pTaxa').AsFloat        := SimulaImpTaxa_FOB.asfloat;
               Open;
          end;
          with SimulaImp do begin
               Edit;
                   FieldByName('FOB').Value                := tSomaProdutos.FieldByName('Total').AsCurrency;
                   FieldByName('FOB_Real').Value           := tSomaProdutos.FieldByName('Total_Real').AsCurrency;
                   FieldByName('Frete_Real').Value         := SimulaImpFrete_Internacional.AsCurrency * SimulaImpTaxa_Frete.AsFloat;
                   
                   // Calculo do seguro internacional.
                   if ConfiguracaoPercentual_Seguro.AsFloat > 0 then begin
                      mSeguro := (tSomaProdutos.FieldByName('Total').AsCurrency + SimulaImpFrete_Internacional.AsCurrency) * (ConfiguracaoPercentual_Seguro.AsFloat/100);
                      mSeguro := iif(mSeguro < ConfiguracaoMinimo_Seguro.Ascurrency, ConfiguracaoMinimo_Seguro.Ascurrency, mSeguro);
                      FieldByName('Seguro_PremioValor').Value := mSeguro;
                   end;
                   FieldByName('Seguro_Real').Value        := SimulaImpSeguro_PremioValor.AsCurrency * SimulaImpTaxa_Seguro.AsFloat;
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
}     
end;

procedure TfComexSimulacaoImp.bCalcularClick(Sender: TObject);
var
   s: boolean;
begin
     cLog.lines.clear;
     gFormula.RowCount := 1;
     s := ValoresEnt.State in[dsEdit, dsInsert];
     if not s then begin
        ValoresEnt.edit;
        ValoresSai.edit;
     end;
     gFormula.Cells[0, gFormula.RowCount-1] := '=========[ ENTRADA ]==========';
     gFormula.RowCount := gFormula.RowCount+1;
     CalculaSimulacao(SimulaImpOperacao_Entrada.asinteger, 'Item', gFormula, cLog, ValoresEnt, self);

     gFormula.RowCount := gFormula.RowCount+1;
     gFormula.Cells[0, gFormula.RowCount-1] := '===========[  SAÍDA  ]===========';
     gFormula.RowCount := gFormula.RowCount+1;
     CalculaSimulacao(SimulaImpOperacao_Saida.asinteger  , 'Item', gFormula, cLog, ValoresSai, self);

     if not s then begin
        ValoresEnt.post;
        ValoresSai.post;
     end;
end;

procedure TfComexSimulacaoImp.TotalizaItens;
begin
     // Totaliza os campos de total dos itens.
     with SimulaNFItensEnt do begin
          mValor_Produtos   := FieldByName('Valor_Unitario').AsCurrency    * FieldByName('Quantidade').asfloat;
          mTotalII          := Fieldbyname('Valor_II').AsCurrency          * Fieldbyname('Quantidade').asfloat;
          mTotalIPI         := Fieldbyname('Valor_IPI').AsCurrency         * Fieldbyname('Quantidade').asfloat;
          mTotalOutrasIPI   := Fieldbyname('Valor_OutrasIPI').AsCurrency   * Fieldbyname('Quantidade').asfloat;
          mTotalIsentasIPI  := Fieldbyname('Valor_IsentasIPI').AsCurrency  * Fieldbyname('Quantidade').asfloat;
          mTotalPIS         := Fieldbyname('Valor_PIS').AsCurrency         * Fieldbyname('Quantidade').asfloat;
          mTotalCOFINS      := Fieldbyname('Valor_COFINS').AsCurrency      * Fieldbyname('Quantidade').asfloat;
          mTotalICMSOp      := Fieldbyname('Valor_ICMSOp').AsCurrency      * Fieldbyname('Quantidade').asfloat;
          mTotalICMSMono    := Fieldbyname('Valor_ICMSMono').AsCurrency    * Fieldbyname('Quantidade').asfloat;
          mTotalICMSMonoRet := Fieldbyname('Valor_ICMSMonoRet').AsCurrency * Fieldbyname('Quantidade').asfloat;
          mTotalICMSST      := Fieldbyname('Valor_ICMSST').AsCurrency      * Fieldbyname('Quantidade').asfloat;
          mTotalICMSSTAnt   := Fieldbyname('Valor_ICMSSTAnt').AsCurrency   * Fieldbyname('Quantidade').asfloat;
          mTotalICMSDif     := Fieldbyname('Valor_ICMSDif').AsCurrency     * Fieldbyname('Quantidade').asfloat;
          mTotalOutrasICMS  := Fieldbyname('Valor_OutrasICMS').AsCurrency  * Fieldbyname('Quantidade').asfloat;
          mTotalIsentasICMS := Fieldbyname('Valor_IsentasICMS').AsCurrency * Fieldbyname('Quantidade').asfloat;
          mTotalMVA         := Fieldbyname('Valor_MVA').AsCurrency         * Fieldbyname('Quantidade').asfloat;
          mTotalCBS         := Fieldbyname('Valor_CBS').AsCurrency         * Fieldbyname('Quantidade').asfloat;
          mTotalIBS         := Fieldbyname('Valor_IBS').AsCurrency         * Fieldbyname('Quantidade').asfloat;
          mTotalIS          := Fieldbyname('Valor_IS').AsCurrency          * Fieldbyname('Quantidade').asfloat;
     end;
end;

procedure TfComexSimulacaoImp.bCancelarClick(Sender: TObject);
begin
     SimulaImp.Cancel;
     ValoresEnt.Cancel;
     ValoresSai.Cancel;
     LigaBotoes(self, true);
     Ficha.Enabled         := false;
     pBarraNavItem.Enabled := true;
     SimulaImp.Refresh;
end;

procedure TfComexSimulacaoImp.bCancelarDespClick(Sender: TObject);
begin
     with Despesas do begin
          LigaBotoes(self, true);
          pBarraNav.Enabled  := true;
          NavegaDesp.Enabled := true;
          FichaDesp.Enabled  := false;
          cancel;
     end;
end;

procedure TfComexSimulacaoImp.bCancelarItemClick(Sender: TObject);
begin
     with Itens do begin
          LigaBotoes(self, true);
          pBarraNav.Enabled := true;
          FichaItem.Enabled := false;
          cancel;
     end;
end;

procedure TfComexSimulacaoImp.bDuplicarClick(Sender: TObject);
var
   mProc, mProcAtual: string;
   tOrig, tDest: TFDQuery;
   i, mSimula, mItem: integer;
begin
{
     begin
          mProcAtual := SimulaImp.FieldByName('Processo').AsString;
          mProc      := InputBox('Informe o processo de destino', 'Processo:', '');
          if trim(mProc) = '' then begin
             MessageDlg('Nenhuma processo informado!'+#13+#13+'Processo atual não foi duplicado!', mtInformation, [mbok]);
             Abort;
          end;
          if SimulaImp.Locate('Processo', mProc, [loCaseInsensitive]) then begin
             MessageDlg('Ja existe uma simulação com o número de processo informado!'+#13+#13+'informe um número de Processo diferente!', mtInformation, [mbok]);
             SimulaImp.Locate('Processo', mProcAtual, [loCaseInsensitive]);
             Abort;
          end;
          if  MessageDlg('Deseja realmente duplicar esta simulação?', mtConfirmation, [mbyes, mbno]) = mrno then begin
              Abort;
          end;

          tOrig := TFDQuery.Create(nil);
          tDest := TFDQuery.Create(nil);
          with tOrig do begin
               Connection := Banco_Empresas;
               sql.clear;
               sql.add('select * from SimulaImp where Numero = :pNumero');
               parambyname('pNumero').AsInteger := SimulaImp.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               Connection := Banco_Empresas;
               sql.clear;
               sql.add('select * from SimulaImp where Numero = (select isnull(max(numero), 0)+1 from SimulaImp)');
               open;
          end;

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
               sql.add('select * from Itens where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := SimulaImp.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               sql.clear;
               sql.add('select * from Itens where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := mSimula;
               open;
          end;
          with tItens do begin
               sql.Clear;
               sql.add('select isnull(max(Item), 0)+1 as Item from Itens where Simulacao = :pSimula');
               ParamByName('pSimula').AsInteger := SimulaImpNumero.AsInteger;
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
               sql.add('select * from SimulaDespesas where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := SimulaImp.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               sql.clear;
               sql.add('select * from SimulaDespesas where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := mSimula;
               open;
          end;
          with tItens do begin
               sql.Clear;
               sql.add('select isnull(max(Registro), 0)+1 as Registro from SimulaDespesas');
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

          SimulaImp.Refresh;
          SimulaImp.Locate('Numero', mSimula, [loCaseInsensitive]);
     end;
     tOrig.Free;
     tDest.Free;
}     
end;

procedure TfComexSimulacaoImp.bDuplicarItemClick(Sender: TObject);
var
   i, q, mItem:integer;
   tDest, tOrig: TFDQuery;
begin
     if (cQtdeDup.Value < 1) or (cQtdeDup.Value > 100) then begin
        MessageDlgn('Informe uma quantidade valida para copiar os itens.', mtError, [mbok]);
        Abort;
     end;
     if  MessageDlg('Deseja realmente duplicar este item?', mtConfirmation, [mbyes, mbno]) = mrno then begin
         Abort;
     end;

     tOrig := TFDQuery.Create(nil);
     with tOrig do begin
          Connection := UniMainModule.Conecta;
          sql.clear;
          sql.add('select * from SimulaProdutos where Simulacao = :pSimula and Item = :pItem');
          parambyname('pSimula').AsInteger := ItensSimulacao.asinteger;
          parambyname('pItem').AsInteger   := ItensItem.asinteger;
          open;
     end;

     try
        tDest := TFDQuery.Create(nil);
        with tDest do begin
             Connection := UniMainModule.Conecta;
             sql.clear;
             sql.add('select * from SimulaProdutos where Simulacao = :pSimula and Item is null');
             parambyname('pSimula').AsInteger := ItensSimulacao.asinteger;
             open;
             with ttmp do begin
                  ttmp.sql.clear;
                  sql.add('select isnull(max(Item), 0)+1 as Item from SimulaProdutos where Simulacao = :pSimula');
                  ParamByName('pSimula').AsInteger := SimulaImpSimulacao.AsInteger;
                  Open;
                  mItem := FieldByName('Item').asinteger;
             end;
             for q := 1 to cQtdeDup.Value do begin
                 append;
                      for i := 0 to pred(tOrig.FieldCount) do begin
                          Fields[i].Value := tOrig.Fields[i].Value;
                      end;
                      FieldByName('Item').Value := mItem;
                 post;
                 inc(mItem);
             end;
        end;
     finally
        tDest.Free;
        tOrig.Free;
        Itens.Refresh;
     end;
end;

procedure TfComexSimulacaoImp.bEditarClick(Sender: TObject);
begin
     LigaBotoes(self, false);
     Pasta.ActivePageIndex := 1;
     Ficha.Enabled         := true;
     pBarraNavItem.Enabled := false;
end;

procedure TfComexSimulacaoImp.bEditarDespClick(Sender: TObject);
begin
     with Despesas do begin
          try
             LigaBotoes(self, false);
             pBarraNav.Enabled := true;
             FichaDesp.Enabled := true;

             Edit;

             cConta.SetFocus;
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode editar despesa!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexSimulacaoImp.bEditarItemClick(Sender: TObject);
begin
     with Itens do begin
          try
             LigaBotoes(self, false);
             pBarraNav.Enabled := true;
             FichaItem.Enabled := true;

             Itens.Edit;

             ValoresEnt.Edit;
                        ValoresEnt.FieldByName('Valor_Unitario').Value := Itens.fieldbyname('Valor_Unitario').value;
             ValoresSai.Edit;
                        ValoresSai.FieldByName('Valor_Unitario').Value := Itens.fieldbyname('Valor_Unitario').value;

             cProduto.SetFocus;
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode editar item!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexSimulacaoImp.bExcelClick(Sender: TObject);
begin
      // ReportBuilder: impressão adiada.
      // Exportacao XLSX pendente: nao usar automacao COM no servidor.
end;

procedure TfComexSimulacaoImp.bExcluirDespClick(Sender: TObject);
begin
     with Despesas do begin
          MessageDlg('Deseja realmente excluir esta despesa?', mtConfirmation,mbYesNo,
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

procedure TfComexSimulacaoImp.bExcluirItemClick(Sender: TObject);
begin
     with Itens do begin
          MessageDlg('Deseja realmente excluir este item?', mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             ValoresEnt.Delete;
                             ValoresSai.Delete;
                             Itens.Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfComexSimulacaoImp.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfComexSimulacaoImp.bImprimirClick(Sender: TObject);
var
   ArquivoPDF: string;
   URL: string;
   Tempo: TStopwatch;
begin
     Imprimir;

     ArquivoPDF := UniServerModule.LocalCachePath + 'Simulacao.pdf';
     with rSimulacaoRadar do begin
          DeviceType       := 'PDF';
          TextFileName     := ArquivoPDF;
          ShowPrintDialog  := False;
          ShowCancelDialog := False;
          PrinterSetup.PrinterName := 'Screen';
          Print;
     end;
     URL := UniServerModule.LocalCacheURL + 'Simulacao.pdf';
     UniSession.AddJS('window.open("' + URL + '", "_blank");');
end;

{
procedure TfComexSimulacaoImp.bImprimirClick(Sender: TObject);
var
   T: TStopwatch;
begin
     T := TStopwatch.StartNew;
     with rSimul do begin
          PrinterSetup.PrinterName := 'Screen';
          DeviceType               := 'PDF';
          TextFileName             := UniServerModule.LocalCachePath + 'Simulacao.pdf';
          ShowPrintDialog          := False;
          ShowCancelDialog         := False;
          T.Stop;
          ShowMessage('Configuração: ' + T.ElapsedMilliseconds.ToString + ' ms');
          T := TStopwatch.StartNew;
          Print;
          T.Stop;
     end;
     ShowMessage('Print: ' + T.ElapsedMilliseconds.ToString + ' ms');
end;
}
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
(*
     with Itens do begin
          // Totaliza as despesas.
          TipoNota.locate('Codigo', SimulaImpTipo_NotaSai.asinteger, [loCaseInsensitive]);

          with tSomaDespesas do begin
               sql.Clear;
               sql.Clear;
               sql.add('select Despesas_Entrada = sum(case when Custo       = 1 then Valor end)');
               sql.add('      ,Despesas_Saida   = sum(case when Custo_Saida = 1 then Valor end)');
               sql.add('from   SimulaDespesas');
               sql.add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImpNumero.AsInteger;
               Open;
               cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
               cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
          end;
          with tProdutos do begin
               sql.Clear;
               sql.add('select FOB = isnull(sum(Valor_UnitarioME*Quantidade), 0)');
               sql.add('from   Itens');
               sql.add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImpNumero.AsInteger;
               Open;
               mTotalFOB := FieldByName('FOB').AsCurrency;
          end;

          mFatorFrete  := 0;
          mFatorSeguro := 0;
          if (Incoterms.FieldByName('Frete').asBoolean) and (SimulaImp.FieldByName('Frete_Real').ascurrency > 0) then begin
             mFatorFrete := SimulaImp.FieldByName('Frete_Real').ascurrency / SimulaImp.FieldByName('Peso_Liquido').asfloat;
          end;
          if (Incoterms.FieldByName('Seguro').asBoolean) and (SimulaImp.FieldByName('Seguro_Real').ascurrency > 0) then begin
             mFatorSeguro  := SimulaImp.FieldByName('Seguro_Real').ascurrency / mTotalFOB;
          end;

          mFatorDespesa := tSomaDespesas.FieldByName('Despesas_Saida').AsCurrency / mTotalFOB;
          mFatorPIS     := SimulaImp.FieldByName('Valor_PIS').ascurrency / mTotalFOB;
          mFatorCOFINS  := SimulaImp.FieldByName('Valor_COFINS').ascurrency / mTotalFOB;

          first;
          while not eof do begin
                mValor := roundto(FieldByName('Valor_UnitarioME').ascurrency * SimulaImp.FieldByName('Taxa_FOB').asfloat, -4);
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
                   memo1.lines.add('==[VALOR UNITARIO C/IMPOSTOS - SAÍDA]'+stringofchar('=', 58));
                   mUnitImp := 0;
                   if pos('Valor_TotalProdutos', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_UnitarioSaida').ascurrency;
                      memo1.Lines.Add('Produto...: '+formatfloat(',##0.00', FieldByName('Valor_UnitarioSaida').ascurrency));
                   end;
                   if pos('Valor_TotalIPI', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_IPISai').ascurrency;
                      memo1.Lines.add('IPI.......: '+formatfloat(',##0.00', FieldByName('Valor_IPISai').ascurrency));
                   end;
                   if pos('ValorICMS_Substitutivo', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_ICMSST').ascurrency;
                      memo1.Lines.Add('ICMS ST...: '+formatfloat(',##0.00', FieldByName('Valor_ICMSST').ascurrency));
                   end;
                   if pos('Valor_ICMS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_ICMSSaida').ascurrency;
                      memo1.Lines.Add('ICMS OPER.: '+formatfloat(',##0.00', FieldByName('Valor_ICMSSaida').ascurrency));
                   end;
                   if pos('Valor_PIS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_PISSai').ascurrency;
                      memo1.Lines.Add('PIS.......: '+formatfloat(',##0.00', FieldByName('Valor_PISSai').ascurrency));
                   end;
                   if pos('Valor_COFINS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_COFINSSai').ascurrency;
                      memo1.Lines.Add('COFINS....: '+formatfloat(',##0.00', FieldByName('Valor_COFINSSai').ascurrency));
                   end;
                   memo1.Lines.Add('TOTAL.....: '+formatfloat(',##0.00', mUnitImp));
                   memo1.lines.add('');

                   FieldByName('Valor_UnitarioImpSai').value := mUnitImp;

                   if FieldByName('Valor_PISSai').AsCurrency    = 0 then FieldByName('Aliquota_PISSai').value    := 0;
                   if FieldByName('Valor_COFINSSai').AsCurrency = 0 then FieldByName('Aliquota_COFINSSai').value := 0;

                   FieldByName('Fator').Value := (100 - (FieldByName('Aliquota_PISSai').AsFloat+
                                                         FieldByName('Aliquota_COFINSSai').AsFloat+
                                                         SimulaImpAliquota_ICMSSaida.AsFloat+
                                                         SimulaImpTaxa_Adiministrativa.AsFloat+
                                                         SimulaImpAliquota_CSLL.AsFloat+
                                                         SimulaImpAliquota_IRPJ.AsFloat));
                post;

                mTotal       := mUnitario * FieldByName('Quantidade').asfloat;
                mTotalIPI    := mTotalIPI + (FieldByName('Valor_IPISai').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalPIS    := mTotalPIS + FieldByName('Valor_PISSai').ascurrency;
                mTotalCOFINS := mTotalCOFINS + FieldByName('Valor_COFINSSai').ascurrency;
                mTotalBCICMS := mTotalBCICMS + (FieldByName('Valor_BCICMS').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalICMS   := mTotalICMS + (FieldByName('Valor_ICMSSaida').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalICMSST := mTotalICMSST + (FieldByName('Valor_ICMSST').ascurrency * FieldByName('Quantidade').asfloat);
                mTotAliqPJ   := mTotAliqPJ + (mValor * ((SimulaImp.FieldByName('Aliquota_IRPJ').ascurrency/100)) * FieldByName('Quantidade').asfloat);
                mTotalCSLL   := mTotalCSLL + (mValor * ((SimulaImp.FieldByName('Aliquota_CSLL').ascurrency/100)) * FieldByName('Quantidade').asfloat);
                mProdutos    := mProdutos + (mValor * FieldByName('Quantidade').asfloat);

                next;
          end;
          with SimulaImp do begin
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
     end;
*)
end;

procedure TfComexSimulacaoImp.Imprimir;
begin
     {
     with ImpSimula do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('      ,Pais_OrigemNome = (select Nome from Paises where Codigo = Pais_Origem) ');
          sql.add('      ,INCOTERM_Desc   = (select Descricao from Incoterms where Codigo = INCOTERM)');
          sql.add('      ,NCM_Descricao   = case (select Count(distinct NCM) from SimulaProdutos sp where sp.Simulacao = si.Numero)');
          sql.add('                              when 1 then (select distinct substring(NCM,1,4)+''.''+substring(NCM,5,2)+''.''+substring(NCM,7,2) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
          sql.add('                         end');
          sql.Add('      ,Unidade_Descricao = case (select Count(distinct NCM) from SimulaProdutos where Simulacao = si.Numero)');
          sql.Add('                                when 1 then (select Unidade from NCM where NCM = (select distinct NCM from SimulaProdutos where Simulacao = si.Numero)) else ''VARIOS'' ');
          sql.Add('                           end');
          sql.Add('      ,Unitario_Descricao = case (select Count(distinct Valor_UnitarioReal) from SimulaProdutos where Simulacao = si.Numero)');
          sql.Add('                                 when 1 then (select distinct cast(cast(Valor_UnitarioReal AS NUMERIC(15,2)) as varchar(17)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
          sql.Add('                            end');
          sql.add('      ,Volumes = (select sum(Quantidade) from SimulaProdutos where Simulacao = si.Numero)');
          sql.Add('      ,Valor_AFRMM = isnull((select sum(isnull(Valor, 0)) from SimulaDespesas where Simulacao = si.Numero and Despesa like ''%AFRMM%''), 0)');
          sql.Add('      ,Aliquota_II = case (select Count(distinct Aliquota_II) from SimulaProdutos where Simulacao = si.Numero)');
          sql.Add('                          when 1 then (select cast(cast(max(Aliquota_II) AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
          sql.Add('                     end');
          sql.add('      ,Aliquota_IPI = case (select Count(distinct Aliquota_IPI) from SimulaProdutos where Simulacao = si.Numero)');
          sql.Add('                           when 1 then (select cast(cast(max(Aliquota_IPI) AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
          sql.Add('                      end');
          sql.Add('      ,Aliquota_PIS = case (select Count(distinct Aliquota_PIS) from SimulaProdutos where Simulacao = si.Numero)');
          sql.Add('                           when 1 then (select cast(cast(max(Aliquota_PIS) AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
          sql.add('                      end');
          sql.Add('      ,Aliquota_COFINS = case (select Count(distinct Aliquota_COFINS) from SimulaProdutos where Simulacao = si.Numero)');
          sql.Add('                              when 1 then (select cast(cast(max(Aliquota_COFINS) AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
          sql.Add('                         end');
          sql.Add('      ,Aliquota_ICMSEnt = case isnull(Aliquota_ICMSEntrada, 0)');
          sql.add('                               when 0 then ''DIFERIDO'' else cast(cast(Aliquota_ICMSEntrada AS NUMERIC(6,2)) as varchar(6))');
          sql.Add('                          end');
          sql.Add('      ,Aliquota_ICMSSaida');
          sql.Add('      ,Aliquota_AFRMM    = (select Percentual_Marinha from Configuracao)');
          sql.Add('      ,Credito_IPI       = Valor_IPI *-1');
          sql.Add('      ,Credito_PIS       = Valor_PIS *-1');
          sql.Add('      ,Credito_COFINS    = Valor_COFINS *-1');
          sql.Add('      ,Credito_ICMS      = Valor_ICMSEntrada *-1');
          sql.Add('      ,Credito_IPIME     = round((Valor_IPI *-1) / Taxa_FOB, 2)');
          sql.Add('      ,Credito_PISME     = round((Valor_PIS *-1) / Taxa_FOB, 2)');
          sql.Add('      ,Credito_COFINSME  = round((Valor_COFINS *-1) / Taxa_FOB, 2)');
          sql.Add('      ,Credito_ICMSME    = round((Valor_ICMSEntrada *-1) / Taxa_FOB, 2)');
          sql.Add('      ,Valor_IPISaiME    = round(Valor_IPISai / Taxa_FOB, 2)');
          sql.Add('      ,Valor_PISSaiME    = round(Valor_PISSai / Taxa_FOB, 2)');
          sql.Add('      ,Valor_COFINSSaiME = round(Valor_COFINSSai / Taxa_FOB, 2)');
          sql.Add('      ,Valor_ICMSSaiME   = round(Valor_ICMSSaida / Taxa_FOB, 2)');
          sql.Add('      ,Valor_ICMSSTME    = round(Valor_ICMSST / Taxa_FOB, 2)');
          sql.Add('      ,Total_NFSaidaME   = round(Total_NFSaida / Taxa_FOB, 2)');
          sql.Add('      ,Valor_MarkupReal  = cast(0 as money)');
          sql.Add('      ,Valor_MarkupME    = cast(0 as money)');
          sql.Add('      ,Valor_AssImpReal  = round((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100), 2)');
          sql.Add('      ,Valor_AssImpME    = round(((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
          sql.Add('      ,Valor_TotalImpReal= round(Total_NFSaida + (select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100), 2)');
          sql.Add('      ,Valor_TotalImpME  = round((Total_NFSaida + (select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
          sql.Add('      ,Valor_CredTribIPI      = Valor_IPISai');
          sql.Add('      ,Valor_CredTribIPIME    = round(Valor_IPISai/Taxa_FOB, 2)');
          sql.Add('      ,Valor_CredTribPIS      = iif(Modalidade = ''CONTA E ORDEM'', Valor_PIS, Valor_PISSai)');
          sql.Add('      ,Valor_CredTribPISME    = iif(Modalidade = ''CONTA E ORDEM'', round(Valor_PIS/Taxa_FOB, 2)  , round(Valor_PISSai/Taxa_FOB, 2))');
          sql.Add('      ,Valor_CredTribCOFINS   = iif(Modalidade = ''CONTA E ORDEM'', Valor_COFINS, Valor_COFINSSai)');
          sql.Add('      ,Valor_CredTribCOFINSME = iif(Modalidade = ''CONTA E ORDEM'', round(Valor_COFINS/Taxa_FOB, 2), round(Valor_COFINSSai/Taxa_FOB, 2))');
          sql.Add('      ,Valor_BCImpServ        = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
          sql.Add('                                (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ)), 2)');
          sql.Add('      ,Valor_PISServ    = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_PISServ/100)');
          sql.Add('      ,Valor_COFINSServ = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_COFINSServ/100)');
          sql.Add('      ,Valor_ISSServ    = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_ISSServ/100)');
          sql.Add('      ,Valor_IRPJServ   = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_IRPJServ/100)');
          sql.Add('      ,Valor_CSLLServ   = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_CSLLServ/100)');
          sql.Add('      ,Valor_AssImpReal = round((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100), 2)');
          sql.Add('      ,Valor_AssImpME   = round(((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
          sql.Add('from  SimulaImp si');
          sql.add('where Simulacao = :psim');
          ParamByName('psim').AsInteger := SimulaImpSimulacao.asinteger;
          sql.SaveToFile('c:\temp\AtlasWeb_Simulacao.sql');
          Open;
     end;}
     {
     with ImpSimula do begin
          sql.clear;
          sql.Add('select *');
          sql.Add('      ,Pais_OrigemNome = pa.Nome');
          sql.Add('      ,INCOTERM_Desc  = inc.Descricao');
          sql.Add('      ,NCM_Descricao   = case (select Count(distinct NCM) from SimulaProdutos sp where sp.Simulacao = si.Simulacao)');
          sql.Add('                              when 1 then (select distinct substring(NCM,1,4)+''.''+substring(NCM,5,2)+''.''+substring(NCM,7,2) from SimulaProdutos where Simulacao = si.Simulacao) else ''VARIOS'' ');
          sql.Add('                         end');
          sql.Add('      ,Unidade_Descricao = case (select Count(distinct NCM) from SimulaProdutos where Simulacao = si.Simulacao)');
          sql.Add('                                when 1 then (select Unidade from NCM where NCM = (select distinct NCM from SimulaProdutos where Simulacao = si.Simulacao)) else ''VARIOS'' ');
          sql.Add('                           end');
          sql.Add('      ,Unitario_Descricao = case (select Count(distinct Valor_Unitario) from SimulaProdutos where Simulacao = si.Simulacao)');
          sql.Add('                                 when 1 then (select distinct cast(cast(Valor_Unitario AS NUMERIC(15,2)) as varchar(17)) from SimulaProdutos where Simulacao = si.Simulacao) else ''VARIOS'' ');
          sql.Add('                            end');
          sql.Add('      ,Volumes = (select sum(Quantidade) from SimulaProdutos where Simulacao = si.Simulacao)');
          sql.Add('      ,Valor_AFRMM = isnull((select sum(isnull(Valor_Real, 0)) from SimulaDespesas where Simulacao = si.Simulacao and Descricao like ''%AFRMM%''), 0)');
          sql.Add('      ,Aliquota_II = case (select Count(distinct Aliquota_II) from SimulaValores sv where sv.Simulacao = si.Simulacao)');
          sql.Add('                          when 1 then (select cast(cast(max(Aliquota_II) AS NUMERIC(6,2)) as varchar(6)) from SimulaValores sv where sv.Simulacao = si.Simulacao) else ''VARIOS'' ');
          sql.Add('                     end');
          sql.Add('      ,Aliquota_IPI = case (select Count(distinct Aliquota_IPI) from SimulaValores sv where sv.Simulacao = si.Simulacao)');
          sql.Add('                           when 1 then (select cast(cast(max(Aliquota_IPI) AS NUMERIC(6,2)) as varchar(6)) from SimulaValores sv where sv.Simulacao = si.Simulacao) else ''VARIOS'' ');
          sql.Add('                      end');
          sql.Add('      ,Aliquota_PIS = case (select Count(distinct Aliquota_PIS) from SimulaValores sv where sv.Simulacao = si.Simulacao)');
          sql.Add('                           when 1 then (select cast(cast(max(Aliquota_PIS) AS NUMERIC(6,2)) as varchar(6)) from SimulaValores sv where sv.Simulacao = si.Simulacao) else ''VARIOS'' ');
          sql.Add('                      end');
          sql.Add('      ,Aliquota_COFINS = case (select Count(distinct Aliquota_COFINS) from SimulaValores sv where sv.Simulacao = si.Simulacao)');
          sql.Add('                              when 1 then (select cast(cast(max(Aliquota_COFINS) AS NUMERIC(6,2)) as varchar(6)) from SimulaValores sv where sv.Simulacao = si.Simulacao) else ''VARIOS'' ');
          sql.Add('                         end');
          sql.Add('      ,Aliquota_ICMSEnt = case isnull(Aliquota_ICMSEntrada, 0)');
          sql.Add('                               when 0 then ''DIFERIDO'' else cast(cast(Aliquota_ICMSEntrada AS NUMERIC(6,2)) as varchar(6))');
          sql.Add('                          end');
          sql.Add('      ,Aliquota_ICMSSaida');
          sql.Add('      ,Aliquota_AFRMM    = (select AFRMM_Percentual from Config)');
          sql.Add('      ,Credito_IPI       = Valor_IPI *-1');
          sql.Add('      ,Credito_PIS       = Valor_PIS *-1');
          sql.Add('      ,Credito_COFINS    = Valor_COFINS *-1');
          sql.Add('      ,Credito_ICMS      = Valor_ICMSEntrada *-1');
          sql.Add('      ,Credito_IPIME     = round((Valor_IPI *-1) / Taxa_FOB, 2)');
          sql.Add('      ,Credito_PISME     = round((Valor_PIS *-1) / Taxa_FOB, 2)');
          sql.Add('      ,Credito_COFINSME  = round((Valor_COFINS *-1) / Taxa_FOB, 2)');
          sql.Add('      ,Credito_ICMSME    = round((Valor_ICMSEntrada *-1) / Taxa_FOB, 2)');
          sql.Add('      ,Valor_IPISaiME    = round(Valor_IPISai / Taxa_FOB, 2)');
          sql.Add('      ,Valor_PISSaiME    = round(Valor_PISSai / Taxa_FOB, 2)');
          sql.Add('      ,Valor_COFINSSaiME = round(Valor_COFINSSai / Taxa_FOB, 2)');
          sql.Add('      ,Valor_ICMSSaiME   = round(Valor_ICMSSaida / Taxa_FOB, 2)');
          sql.Add('      ,Valor_ICMSSTME    = round(Valor_ICMSST / Taxa_FOB, 2)');
          sql.Add('      ,Total_NFSaidaME   = round(Total_NFSaida / Taxa_FOB, 2)');
          sql.Add('      ,Valor_MarkupReal  = cast(0 as money)');
          sql.Add('      ,Valor_MarkupME    = cast(0 as money)');
          sql.Add('      ,Valor_AssImpReal  = round((select sum(isnull(sv.Valor_BCICMSOp * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) * (isnull(Taxa_Servico, 1)/100), 2)');
          sql.Add('      ,Valor_AssImpME    = round(((select sum(isnull(sv.Valor_BCICMSOp * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
          sql.Add('      ,Valor_TotalImpReal= round(Total_NFSaida + (select sum(isnull(sv.Valor_BCICMSOp * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) * (isnull(Taxa_Servico, 1)/100), 2)');
          sql.Add('      ,Valor_TotalImpME  = round((Total_NFSaida + (select sum(isnull(sv.Valor_BCICMSOP * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
          sql.Add('      ,Valor_CredTribIPI      = Valor_IPISai');
          sql.Add('      ,Valor_CredTribIPIME    = round(Valor_IPISai/Taxa_FOB, 2)');
          sql.Add('      ,Valor_CredTribPIS      = iif(Modalidade = 2, Valor_PIS, Valor_PISSai)');
          sql.Add('      ,Valor_CredTribPISME    = iif(Modalidade = 2, round(Valor_PIS/Taxa_FOB, 2)  , round(Valor_PISSai/Taxa_FOB, 2))');
          sql.Add('      ,Valor_CredTribCOFINS   = iif(Modalidade = 2, Valor_COFINS, Valor_COFINSSai)');
          sql.Add('      ,Valor_CredTribCOFINSME = iif(Modalidade = 2, round(Valor_COFINS/Taxa_FOB, 2), round(Valor_COFINSSai/Taxa_FOB, 2))');
          sql.Add('      ,Valor_BCImpServ        = round( ((select sum(isnull(sv.Valor_BCICMSop * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) *');
          sql.Add('                                (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ)), 2)');
          sql.Add('      ,Valor_PISServ    = round( ((select sum(isnull(sv.Valor_BCICMSOp * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_PISServ/100)');
          sql.Add('      ,Valor_COFINSServ = round( ((select sum(isnull(sv.Valor_BCICMSOP * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_COFINSServ/100)');
          sql.Add('      ,Valor_ISSServ    = round( ((select sum(isnull(sv.Valor_BCICMSOP * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_ISSServ/100)');
          sql.Add('      ,Valor_IRPJServ   = round( ((select sum(isnull(sv.Valor_BCICMSOP * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_IRPJServ/100)');
          sql.Add('      ,Valor_CSLLServ   = round( ((select sum(isnull(sv.Valor_BCICMSOP * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) *');
          sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_CSLLServ/100)');
          sql.Add('      ,Valor_AssImpReal = round((select sum(isnull(sv.Valor_BCICMSOP * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) * (isnull(Taxa_Servico, 1)/100), 2)');
          sql.Add('      ,Valor_AssImpME   = round(((select sum(isnull(sv.Valor_BCICMSOP * sv.Quantidade, 0)) from SimulaValores sv where sv.Simulacao = si.Simulacao) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
          sql.Add('from  SimulaImp si');
          sql.Add('inner join Paises    pa  on pa.Codigo  = si.Pais_Origem');
          sql.Add('inner join Incoterms inc on inc.Codigo = si.INCOTERM');
          sql.add('where Simulacao = :psim');
          ParamByName('psim').AsInteger := SimulaImpSimulacao.asinteger;
          sql.SaveToFile('c:\temp\AtlasWeb_Simulacao.sql');
          Open;
     end;
     }

      with ImpSimula do begin
           sql.clear;
           sql.add('with Produtos as (');
           sql.add('     select Simulacao');
           sql.add('           ,QtdeNCM = count(distinct NCM)');
           sql.add('           ,NCM = min(NCM)');
           sql.add('           ,QtdeUnitario = count(distinct Valor_Unitario)');
           sql.add('           ,ValorUnitario = min(Valor_Unitario)');
           sql.add('           ,Volumes = sum(Quantidade)');
           sql.add('     from SimulaProdutos');
           sql.add('     where Simulacao = :psim');
           sql.add('     group by Simulacao');
           sql.add('), Valores as (');
           sql.add('    select Simulacao');
           sql.add('          ,QtdeII = count(distinct Aliquota_II)');
           sql.add('          ,QtdeIPI = count(distinct Aliquota_IPI)');
           sql.add('          ,QtdePIS = count(distinct Aliquota_PIS)');
           sql.add('          ,QtdeCOFINS = count(distinct Aliquota_COFINS)');
           sql.add('          ,II = max(Aliquota_II)');
           sql.add('          ,IPI = max(Aliquota_IPI)');
           sql.add('          ,PIS = max(Aliquota_PIS)');
           sql.add('          ,COFINS = max(Aliquota_COFINS)');
           sql.add('          ,BaseServico = sum(isnull(Valor_BCICMSOp * Quantidade, 0))');
           sql.add('    from SimulaValores');
           sql.add('    where Simulacao = :psim');
           sql.add('    group by Simulacao');
           sql.add('), Despesas as (');
           sql.add('    select Simulacao');
           sql.add('          ,Valor_AFRMM = sum(isnull(Valor_Real, 0))');
           sql.add('    from SimulaDespesas');
           sql.add('    where Simulacao = :psim');
           sql.add('    and Descricao like ''%AFRMM%''');
           sql.add('    group by Simulacao');
           sql.add(')');
           sql.add('select si.*');
           sql.add('      ,Pais_OrigemNome        = pa.Nome');
           sql.add('      ,INCOTERM_Desc          = inc.Descricao');
           sql.add('      ,NCM_Descricao          = case when p.QtdeNCM = 1  then substring(p.NCM,1,4)+''.''+substring(p.NCM,5,2)+''.''+substring(p.NCM,7,2) else ''VARIOS'' end');
           sql.add('      ,Unidade_Descricao      = case when p.QtdeNCM = 1 then n.Unidade else ''VARIOS'' end');
           sql.add('      ,Unitario_Descricao     = case when p.QtdeUnitario = 1 then cast(cast(p.ValorUnitario as numeric(15,2)) as varchar(17)) else ''VARIOS'' end');
           sql.add('      ,Volumes                = p.Volumes');
           sql.add('      ,Valor_AFRMM            = isnull(d.Valor_AFRMM, 0)');
           sql.add('      ,Aliquota_II            = case when v.QtdeII = 1 then cast(cast(v.II as numeric(6,2)) as varchar(6)) else ''VARIOS'' end');
           sql.add('      ,Aliquota_IPI           = case when v.QtdeIPI = 1 then cast(cast(v.IPI as numeric(6,2)) as varchar(6)) else ''VARIOS'' end');
           sql.add('      ,Aliquota_PIS           = case when v.QtdePIS = 1 then cast(cast(v.PIS as numeric(6,2)) as varchar(6)) else ''VARIOS'' end');
           sql.add('      ,Aliquota_COFINS        = case when v.QtdeCOFINS = 1 then cast(cast(v.COFINS as numeric(6,2)) as varchar(6)) else ''VARIOS'' end');
           sql.add('      ,Aliquota_ICMSEnt       = case isnull(si.Aliquota_ICMSEntrada, 0) when 0 then ''DIFERIDO'' else cast(cast(si.Aliquota_ICMSEntrada as numeric(6,2)) as varchar(6)) end');
           sql.add('      ,Aliquota_ICMSSaida     = si.Aliquota_ICMSSaida');
           sql.add('      ,Aliquota_AFRMM         = (select AFRMM_Percentual from Config)');
           sql.add('      ,Credito_IPI            = si.Valor_IPI * -1');
           sql.add('      ,Credito_PIS            = si.Valor_PIS * -1');
           sql.add('      ,Credito_COFINS         = si.Valor_COFINS * -1');
           sql.add('      ,Credito_ICMS           = si.Valor_ICMSEntrada * -1');
           sql.add('      ,Credito_IPIME          = round((si.Valor_IPI * -1) / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Credito_PISME          = round((si.Valor_PIS * -1) / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Credito_COFINSME       = round((si.Valor_COFINS * -1) / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Credito_ICMSME         = round((si.Valor_ICMSEntrada * -1) / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_IPISaiME         = round(si.Valor_IPISai / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_PISSaiME         = round(si.Valor_PISSai / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_COFINSSaiME      = round(si.Valor_COFINSSai / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_ICMSSaiME        = round(si.Valor_ICMSSaida / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_ICMSSTME         = round(si.Valor_ICMSST / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Total_NFSaidaME        = round(si.Total_NFSaida / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_MarkupReal       = cast(0 as money)');
           sql.add('      ,Valor_MarkupME         = cast(0 as money)');
           sql.add('      ,Valor_AssImpReal       = calc.Valor_AssImpReal');
           sql.add('      ,Valor_AssImpME         = round(calc.Valor_AssImpBase / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_TotalImpReal     = round(si.Total_NFSaida + calc.Valor_AssImpBase, 2)');
           sql.add('      ,Valor_TotalImpME       = round((si.Total_NFSaida + calc.Valor_AssImpBase) / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_CredTribIPI      = si.Valor_IPISai');
           sql.add('      ,Valor_CredTribIPIME    = round(si.Valor_IPISai / nullif(si.Taxa_FOB,0), 2)');
           sql.add('      ,Valor_CredTribPIS      = iif(si.Modalidade = 2, si.Valor_PIS, si.Valor_PISSai)');
           sql.add('      ,Valor_CredTribPISME    = iif(si.Modalidade = 2, round(si.Valor_PIS / nullif(si.Taxa_FOB,0), 2), round(si.Valor_PISSai / nullif(si.Taxa_FOB,0), 2))');
           sql.add('      ,Valor_CredTribCOFINS   = iif(si.Modalidade = 2, si.Valor_COFINS, si.Valor_COFINSSai)');
           sql.add('      ,Valor_CredTribCOFINSME = iif(si.Modalidade = 2, round(si.Valor_COFINS / nullif(si.Taxa_FOB,0), 2), round(si.Valor_COFINSSai / nullif(si.Taxa_FOB,0), 2))');
           sql.add('      ,Valor_BCImpServ        = serv.BaseBC');
           sql.add('      ,Valor_PISServ          = serv.BaseTributos * (si.Aliquota_PISServ / 100)');
           sql.add('      ,Valor_COFINSServ       = serv.BaseTributos * (si.Aliquota_COFINSServ / 100)');
           sql.add('      ,Valor_ISSServ          = serv.BaseTributos * (si.Aliquota_ISSServ / 100)');
           sql.add('      ,Valor_IRPJServ         = serv.BaseTributos * (si.Aliquota_IRPJServ / 100)');
           sql.add('      ,Valor_CSLLServ         = serv.BaseTributos * (si.Aliquota_CSLLServ / 100)');
           sql.add('from SimulaImp si');
           sql.add('inner join Paises pa on pa.Codigo = si.Pais_Origem');
           sql.add('inner join Incoterms inc on inc.Codigo = si.INCOTERM');
           sql.add('left join Produtos p on p.Simulacao = si.Simulacao');
           sql.add('left join NCM n on n.NCM = p.NCM and p.QtdeNCM = 1');
           sql.add('left join Valores v on v.Simulacao = si.Simulacao');
           sql.add('left join Despesas d on d.Simulacao = si.Simulacao');
           sql.add('outer apply (');
           sql.add('      select Valor_AssImpBase = v.BaseServico * (isnull(si.Taxa_Servico,1)/100)');
           sql.add('            ,Valor_AssImpReal = round(v.BaseServico * (isnull(si.Taxa_Servico,1)/100),2)');
           sql.add(') calc');
           sql.add('outer apply (');
           sql.add('      select BaseBC       = round(calc.Valor_AssImpBase / 1 - (si.Aliquota_PISServ + si.Aliquota_COFINSServ + si.Aliquota_ISSServ), 2)');
           sql.add('            ,BaseTributos = round(calc.Valor_AssImpBase / 1');
           sql.add('                                  -(si.Aliquota_PISServ + si.Aliquota_COFINSServ + si.Aliquota_ISSServ');
           sql.add('                                  +si.Aliquota_IRPJServ + si.Aliquota_CSLLServ');
           sql.add('                                  +si.Aliquota_IRPJServ + si.Aliquota_CSLLServ), 2)');
           sql.add(') serv');
           sql.add('where si.Simulacao = :psim');
           paramByName('psim').AsInteger := SimulaImpSimulacao.AsInteger;
           //sql.saveToFile('c:\temp\AtlasWeb_Simulacao.sql');
           open;
      end;

     {
     with tProdutos do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('      ,Total_Produtos        = Valor_UnitarioSaida * Quantidade');
          sql.Add('      ,Total_ICMSSai         = Valor_ICMSSaida     * Quantidade');
          sql.Add('      ,Total_ICMSSTSai       = Valor_ICMSST        * Quantidade');
          sql.Add('      ,Total_ICMSSTEnt       = 0');
          sql.Add('      ,Total_II              = Valor_II            * Quantidade');
          sql.Add('      ,Total_IPI             = Valor_IPI           * Quantidade');
          sql.Add('      ,Total_IPISai          = Valor_IPISai        * Quantidade');
          sql.Add('      ,Total_IPISaiME        = (Valor_IPISai       * Quantidade)/(select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Total_PISEnt          = Valor_PIS');
          sql.Add('      ,Total_COFINSEnt       = Valor_COFINS');
          sql.Add('      ,Total_PISSai          = Valor_PISSai');
          sql.Add('      ,Total_COFINSSai       = Valor_COFINSSai');
          sql.Add('      ,Processo              = (select Processo from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Modalidade            = (select Modalidade from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Produto               = (select Tipo_Produto from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Cliente               = (select Cliente_ImpNome from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Taxa                  = (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Valor_ICMSSTME        = Valor_ICMSST / (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
          sql.add('      ,Valor_ICMSSaiME       = Valor_ICMSSaida/(select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
          // Simulação RADAR.
          sql.Add('      ,Valor_UniExReal       = Valor_UnitarioME * (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Valor_TotalExReal     = (Valor_UnitarioME * (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)) * Quantidade');
          sql.Add('      ,Valor_TotalExME       = Valor_UnitarioME * Quantidade');
          sql.Add('      ,Valor_TotalExIPIReal  = (select isnull(Valor_IPISai, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) / (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal');
          sql.Add('      ,Valor_TotalExIPIME    = ((select isnull(Valor_IPISai, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) /');
          sql.add('                               (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal) / (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Valor_TotalExICMSReal = (select isnull(Valor_ICMSSaida, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) / (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal');
          sql.Add('      ,Valor_TotalExICMSME   = ((select isnull(Valor_ICMSSaida, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) /');
          sql.add('                               (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal) / (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
          sql.Add('      ,Valor_TotalExICMSSTReal = (select isnull(Valor_ICMSST, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) / (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal');
          sql.Add('      ,Valor_TotalExICMSSTME   = ((select isnull(Valor_ICMSST, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) /');
          sql.add('                               (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal) / (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
          sql.Add('from SimulaProdutos sp');
          sql.Add('where Simulacao = :pSimulacao');
          ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
          //sql.savetofile('c:\temp\Simula_Produtos.sql');
          tProdutos.Open;
     end;
     if not Configuracao.fieldbyname('Modelo_Simulacao').AsBoolean then begin
        with tDespesa do begin
             sql.Clear;
             sql.Add('select *');
             sql.Add('from SimulaDespesas');
             sql.Add('where Simulacao = :pSimulacao');
             sql.Add('and   isnull(Custo, 0) = 1');
             ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
             //sql.savetofile('c:\temp\Simula_DespesasCusto.sql');
             Open;
        end;
        with tDespesaSai do begin
             sql.Clear;
             sql.Add('select *');
             sql.Add('from SimulaDespesas');
             sql.Add('where Simulacao = :pSimulacao');
             sql.Add('and   isnull(Custo_Saida, 0) = 1');
             ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
             //sql.savetofile('c:\temp\Simula_DespesasCustoSai.sql');
             Open;
        end;
     end else begin
        with tDespesa do begin
             sql.Clear;
             sql.Add('select *');
             sql.Add('from  SimulaDespesas');
             sql.Add('where Simulacao = :pSimulacao');
             sql.Add('and   (select isnull(Despesa_AgMaritima, 0) from ClassificacaoFinanceira where Codigo = Classificacao) <> 1');
             sql.Add('and   isnull(Custo, 0) = 1');
             ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
             //sql.savetofile('c:\temp\Simula_DespesasCusto.sql');
             Open;
        end;
     end;
     with tDespesaAdm do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from SimulaDespesas');
          sql.Add('where Simulacao = :pSimulacao');
          sql.Add('and   isnull(Custo, 0) = 0');
          sql.Add('and   isnull(Custo_Saida, 0) = 0');
          ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
          //sql.savetofile('c:\temp\Simula_DespesasAdm.sql');
          Open;
     end;
     with tDespesaMar do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from SimulaDespesas');
          sql.Add('where Simulacao = :pSimulacao');
          sql.Add('and   (select isnull(Despesa_AgMaritima, 0) from ClassificacaoFinanceira where Codigo = Classificacao) = 1');
          ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
          //sql.savetofile('c:\temp\Simula_DespesasAdm.sql');
          Open;
     end;
     if not Dados.Configuracao.fieldbyname('Modelo_Simulacao').AsBoolean then begin
        if FileExists(Dados.EmpresasLogo.Value) then begin
           iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        end;
     end else begin
        if FileExists(Dados.EmpresasLogo.Value) then begin
           iLogoRadar.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
        end;
     end;
     lTitulo.Caption    := 'SIMULAÇÃO Nº '+FormatFloat('00000', tSimula.FieldByName('Numero').asinteger);
     lTituloHor.Caption := 'SIMULAÇÃO Nº '+FormatFloat('00000', tSimula.FieldByName('Numero').asinteger);
     }
end;




end.
