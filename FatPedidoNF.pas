unit FatPedidoNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker,
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Menus, uniMainMenu, FireDAC.Comp.DataSet, uniMemo, uniDBComboBox, uniMultiItem, uniDBText, uniLabel, uniRadioGroup, uniDBRadioGroup, uniStringGrid, uniDBTreeGrid, CalcExpress, 
  System.Generics.Collections, uniCheckBox, uniToolBar, uniListBox, uniSegmentedButton, System.Rtti, System.RegularExpressions;

type
  TfFatPedidoNF = class(TUniFrame)
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
    Alerta: TUniSweetAlert;
    MenuCusto: TPopupMenu;
    Grade2: TuniDBGrid;
    mnDesmarcarCusto: TuniMenuItem;
    mnDesmarcarCustoEntrada: TuniMenuItem;
    mnDesmarcarCustoOutros: TuniMenuItem;
    mnDesmarcarCustoTodos: TuniMenuItem;
    mnDesmarcarCustoTodosEntrada: TuniMenuItem;
    mnDesmarcarCustoTodosOutros: TuniMenuItem;
    mnDesmarcarSeletivo: TuniMenuItem;
    mnDesmarcarSeletivoTodos: TuniMenuItem;
    mnMarcarCusto: TuniMenuItem;
    mnMarcarCustoEntrada: TuniMenuItem;
    mnMarcarCustoOutros: TuniMenuItem;
    mnMarcarCustoTodos: TuniMenuItem;
    mnMarcarCustoTodosEntrada: TuniMenuItem;
    mnMarcarCustoTodosOutros: TuniMenuItem;
    mnMarcarSeletivo: TuniMenuItem;
    mnMarcarSeletivoTodos: TuniMenuItem;
    N1: TuniMenuItem;
    N2: TuniMenuItem;
    N3: TuniMenuItem;
    Pasta: TuniPageControl;
    TabSheet1: TuniTabSheet;
    TabSheet2: TuniTabSheet;
    TabSheet3: TuniTabSheet;
    dsPedidosNF: TDataSource;
    UniScrollBox1: TUniScrollBox;
    UniPanel1: TUniPanel;
    cPedido: TUniDBEdit;
    cOperacao: TUniDBLookupComboBox;
    Destinatarios: TFDQuery;
    dsDestinatarios: TDataSource;
    OpFiscal: TFDQuery;
    dsOPFiscal: TDataSource;
    Beneficio: TFDQuery;
    dsBeneficio: TDataSource;
    UniTabSheet2: TUniTabSheet;
    UniScrollBox3: TUniScrollBox;
    Transportador: TFDQuery;
    dsTransportador: TDataSource;
    ModalFrete: TFDQuery;
    dsModalFrete: TDataSource;
    IndPresenca: TFDQuery;
    dsIndPresenca: TDataSource;
    PresencaComp: TFDQuery;
    dsPresencaComp: TDataSource;
    Intermediador: TFDQuery;
    dsIntermediador: TDataSource;
    CFOP: TFDQuery;
    dsCFOP: TDataSource;
    TiposDesc: TFDQuery;
    dsTiposDesc: TDataSource;
    TipoPgto: TFDQuery;
    dsTipoPgto: TDataSource;
    FormaPgto: TFDQuery;
    dsFormaPgto: TDataSource;
    OpVeiculo: TFDQuery;
    dsOpVeiculo: TDataSource;
    RestVeiculo: TFDQuery;
    dsRestVeiculo: TDataSource;
    Produtos: TFDQuery;
    dsProdutos: TDataSource;
    PedidosNFItens: TFDQuery;
    dsPedidosNFItens: TDataSource;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    CSTIPI: TFDQuery;
    dsCSTIPI: TDataSource;
    CSTPIS: TFDQuery;
    dsCSTPIS: TDataSource;
    CSTCOFINS: TFDQuery;
    dsCSTCOFINS: TDataSource;
    CSTICMSB: TFDQuery;
    dsCSTICMS: TDataSource;
    PanelDados1: TUniContainerPanel;
    NFRef: TFDQuery;
    dsNFRef: TDataSource;
    dsEmpresas: TDataSource;
    Empresas: TFDQuery;
    ttmp: TFDQuery;
    ICMS: TFDQuery;
    dsICMS: TDataSource;
    Config: TFDQuery;
    dsConfig: TDataSource;
    PedidosNF: TFDQuery;
    PainelItens: TUniPanel;
    TabSheet4: TUniTabSheet;
    tFormulas: TFDQuery;
    dstFormulas: TDataSource;
    UniScrollBox2: TUniScrollBox;
    Macro: TCalcExpress;
    tDespesas: TFDQuery;
    dstDespesas: TDataSource;
    tMestre: TFDQuery;
    dstMestre: TDataSource;
    ProdutosCodigo: TIntegerField;
    ProdutosDescricao: TStringField;
    ProdutosValor_Venda: TCurrencyField;
    ProdutosValor_ConsumidorFinal: TCurrencyField;
    ProdutosValor_CustoMedio: TCurrencyField;
    ProdutosValor_Entrada: TCurrencyField;
    ProdutosValor_IPI: TCurrencyField;
    ProdutosNCM: TStringField;
    PedidosNFItensPedido: TIntegerField;
    PedidosNFItensEmpresa: TStringField;
    PedidosNFItensItem: TSmallintField;
    PedidosNFItensOperacao: TSmallintField;
    PedidosNFItensCFOP: TStringField;
    PedidosNFItensCodigo_Mercadoria: TIntegerField;
    PedidosNFItensCodigo_Fabricante: TStringField;
    PedidosNFItensDescricao_Mercadoria: TMemoField;
    PedidosNFItensNCM: TStringField;
    PedidosNFItensEXTIPI: TSmallintField;
    PedidosNFItensUM: TStringField;
    PedidosNFItensCSTIPI: TStringField;
    PedidosNFItensCSTPIS: TStringField;
    PedidosNFItensCSTCOFINS: TStringField;
    PedidosNFItensAdicao: TSmallintField;
    PedidosNFItensQuantidade: TFloatField;
    PedidosNFItensPeso_Liquido: TFloatField;
    PedidosNFItensPeso_Bruto: TFloatField;
    PedidosNFItensMovimenta_Inventario: TBooleanField;
    PedidosNFItensMovimenta_Estoque: TBooleanField;
    PedidosNFItensModalidade_BCICMS: TSmallintField;
    PedidosNFItensModalidade_BCICMSST: TSmallintField;
    PedidosNFItensProcesso: TStringField;
    PedidosNFItensRateio_ICMSProcesso: TFloatField;
    PedidosNFItensApuracao_PISCOFINS: TBooleanField;
    PedidosNFItensFinalidade_Mercadoria: TSmallintField;
    PedidosNFItensRegistro_Adicao: TIntegerField;
    PedidosNFItensICMSST_Anterior: TBooleanField;
    PedidosNFItensNumeroNF_Referencia: TIntegerField;
    PedidosNFItensChaveNF_Referencia: TStringField;
    PedidosNFItensDataNF_Referencia: TDateField;
    PedidosNFItensNumeroNF_Terceiros: TStringField;
    PedidosNFItensDataNF_Terceiros: TDateField;
    PedidosNFItensDevolucao: TBooleanField;
    PedidosNFItensMovimenta_EstoqueRep: TBooleanField;
    PedidosNFItensCEST: TStringField;
    PedidosNFItensPO: TStringField;
    PedidosNFItensOrdem: TIntegerField;
    PedidosNFItensAliquota_ICMSSubAnt: TFloatField;
    PedidosNFItensFator_Cambio: TFloatField;
    PedidosNFItensOrigem_Mercadoria: TSmallintField;
    PedidosNFItensNumero_BL: TStringField;
    PedidosNFItensCodigo_CredPres: TStringField;
    PedidosNFItensSequencia: TIntegerField;
    PedidosNFItensSequencia_SISCOMEX: TIntegerField;
    PedidosNFItensValor_BCDIFAL: TCurrencyField;
    PedidosNFItensValor_BCDIFALST: TCurrencyField;
    PedidosNFItensValor_BCICMSMono: TCurrencyField;
    PedidosNFItensValor_BCICMSMonoRet: TCurrencyField;
    PedidosNFItensValor_BCICMSPresumido: TCurrencyField;
    PedidosNFItensValor_COFINSST: TCurrencyField;
    PedidosNFItensValor_ICMSMono: TCurrencyField;
    PedidosNFItensValor_ICMSMonoRet: TCurrencyField;
    PedidosNFItensValor_ICMSPresumido: TCurrencyField;
    PedidosNFItensValor_PISST: TCurrencyField;
    PedidosNFItensFator_Produto: TFloatField;
    PedidosNFItensValor_Unitario: TFloatField;
    PedidosNFItensValor_BCIPI: TCurrencyField;
    PedidosNFItensAliquota_IPI: TFloatField;
    PedidosNFItensValor_IPI: TCurrencyField;
    PedidosNFItensAliquota_II: TFloatField;
    PedidosNFItensValor_II: TFloatField;
    PedidosNFItensAliquota_ICMSEntrada: TFloatField;
    PedidosNFItensValor_BCICMSST: TCurrencyField;
    PedidosNFItensAliquota_ICMSST: TFloatField;
    PedidosNFItensValor_ICMSST: TCurrencyField;
    PedidosNFItensValor_BCMVA: TCurrencyField;
    PedidosNFItensAliquota_MVA: TFloatField;
    PedidosNFItensValor_MVA: TCurrencyField;
    PedidosNFItensAliquota_PIS: TFloatField;
    PedidosNFItensValor_BCPIS: TCurrencyField;
    PedidosNFItensValor_PIS: TCurrencyField;
    PedidosNFItensAliquota_COFINS: TFloatField;
    PedidosNFItensValor_BCCOFINS: TCurrencyField;
    PedidosNFItensValor_COFINS: TCurrencyField;
    PedidosNFItensValor_Frete: TCurrencyField;
    PedidosNFItensValor_Seguro: TCurrencyField;
    PedidosNFItensValor_Despesa: TCurrencyField;
    PedidosNFItensValor_BCFCPST: TCurrencyField;
    PedidosNFItensValor_FCPST: TCurrencyField;
    PedidosNFItensValor_BCFCP: TCurrencyField;
    PedidosNFItensValor_FCP: TCurrencyField;
    PedidosNFItensValor_BCICMSDest: TCurrencyField;
    PedidosNFItensAliquota_ICMSDest: TFloatField;
    PedidosNFItensValor_ICMSDest: TCurrencyField;
    PedidosNFItensValor_DIFAL: TCurrencyField;
    PedidosNFItensPercentual_DIFALOrig: TFloatField;
    PedidosNFItensValor_DIFALOrig: TCurrencyField;
    PedidosNFItensPercentual_DIFALDest: TFloatField;
    PedidosNFItensValor_DIFALDest: TCurrencyField;
    PedidosNFItensValor_DIFALST: TCurrencyField;
    PedidosNFItensAliquota_FCP: TFloatField;
    PedidosNFItensValor_FCPDest: TCurrencyField;
    PedidosNFItensPercentual_FCPICMSOrig: TFloatField;
    PedidosNFItensValor_FCPICMSDest: TCurrencyField;
    PedidosNFItensValor_ICMSDesonerado: TCurrencyField;
    PedidosNFItensValor_ICMSSTAnt: TCurrencyField;
    PedidosNFItensValor_ICMSAnt: TCurrencyField;
    PedidosNFItensValor_CIF: TCurrencyField;
    PedidosNFItensValor_Pauta: TCurrencyField;
    PedidosNFItensValor_AFRMM: TCurrencyField;
    PedidosNFItensValor_BCII: TCurrencyField;
    PedidosNFItensValor_IsentasICMS: TCurrencyField;
    PedidosNFItensValor_OutrasICMS: TCurrencyField;
    PedidosNFItensValor_IsentasIPI: TCurrencyField;
    PedidosNFItensValor_OutrasIPI: TCurrencyField;
    PedidosNFItensValor_BCICMSApuracao: TCurrencyField;
    PedidosNFItensValor_ICMSApuracao: TCurrencyField;
    PedidosNFItensValor_MediaBCR: TCurrencyField;
    PedidosNFItensValor_TotalNota: TCurrencyField;
    PedidosNFItensValor_Impostos: TCurrencyField;
    PedidosNFItensValor_Inventario: TCurrencyField;
    PedidosNFItensValor_Dumping: TCurrencyField;
    PedidosNFItensPercentual_Lucro: TFloatField;
    PedidosNFItensValor_Lucro: TCurrencyField;
    PedidosNFItensValor_PIS2: TFloatField;
    PedidosNFItensValor_COFINS2: TFloatField;
    PedidosNFItensAliquota_IRPJ: TFloatField;
    PedidosNFItensValor_IRPJ: TCurrencyField;
    PedidosNFItensAliquota_CSLL: TFloatField;
    PedidosNFItensValor_CSLL: TCurrencyField;
    PedidosNFItensRateio_FreteTerrNac: TFloatField;
    PedidosNFItensPercentual_Desconto: TFloatField;
    PedidosNFItensValor_Desconto: TFloatField;
    PedidosNFItensAliquota_PISRed: TFloatField;
    PedidosNFItensAliquota_COFINSRed: TFloatField;
    PedidosNFItensRateio_SISCOMEX: TFloatField;
    PedidosNFItensPercentual_Comissao: TFloatField;
    PedidosNFItensValor_Comissao: TCurrencyField;
    PedidosNFItensPercentual_RedICMSST: TFloatField;
    PedidosNFItensAliquota_ICMSDif: TFloatField;
    PedidosNFItensValor_ICMSDif: TCurrencyField;
    PedidosNFItensAliquota_ICMSPresumido: TFloatField;
    PedidosNFItensPercentual_Beneficio: TFloatField;
    PedidosNFItensPercentual_ICMSMono: TFloatField;
    PedidosNFItensPercentual_ICMSMonoRet: TFloatField;
    ProdutosAliquota_IPI: TFloatField;
    ProdutosAliquota_II: TFloatField;
    ProdutosValor_II: TCurrencyField;
    PedidosNFItensValor_BCICMSOp: TCurrencyField;
    PedidosNFItensAliquota_ICMSOp: TFloatField;
    PedidosNFItensValor_ICMSOp: TCurrencyField;
    ProdutosReducao_PIS: TFloatField;
    ProdutosReducao_COFINS: TFloatField;
    ProdutosAliquota_PIS: TFloatField;
    ProdutosAliquota_COFINS: TFloatField;
    ProdutosAliquota_PISEntrada: TFloatField;
    ProdutosAliquota_COFINSEntrada: TFloatField;
    ProdutosAliquota_PISSaida: TFloatField;
    ProdutosAliquota_COFINSSaida: TFloatField;
    tNCM: TFDQuery;
    dstNCM: TDataSource;
    TabPISCOFINS: TFDQuery;
    dsTabPISCOFINS: TDataSource;
    ProdutosCSTPIS_AliquotaUM: TBooleanField;
    ProdutosCSTPIS_Monofasica: TBooleanField;
    ProdutosCSTPIS_AliquotaZero: TBooleanField;
    ProdutosCSTPIS_Isenta: TBooleanField;
    ProdutosCSTPIS_SemIncidencia: TBooleanField;
    ProdutosCSTPIS_Suspensao: TBooleanField;
    ProdutosCSTPIS_Outras: TBooleanField;
    tNCMICMS: TFDQuery;
    dstNCMICMS: TDataSource;
    PedidosNFItensAliquota_ICMSOpRed: TFloatField;
    PedidosNFItensValor_ICMSOpRed: TCurrencyField;
    PedidosNFItensAliquota_ICMSOpIntegral: TFloatField;
    PedidosNFItensAliquota_ICMSOPRed2: TFloatField;
    ProdutosOrigem: TStringField;
    ProdutosPauta: TFDQuery;
    dsProdutosPauta: TDataSource;
    ProdutosICMS_ForaEstadoEnt: TFloatField;
    ProdutosICMS_ForaEstadoSai: TFloatField;
    ProdutosICMS_DentroEstadoEnt: TFloatField;
    ProdutosICMS_DentroEstadoSai: TFloatField;
    ProdutosICMS_DentroEstadoSimples: TFloatField;
    ProdutosTabela_CAMEX: TBooleanField;
    ProdutosCSTICMS_Entrada: TStringField;
    ProdutosCSTICMS_Saida: TStringField;
    ProdutosBeneficio_FiscalEnt: TStringField;
    ProdutosBeneficio_FiscalSai: TStringField;
    PedidosNFItensCSTICMS_TabA: TStringField;
    PedidosNFItensCSTICMS_TabB: TStringField;
    PedidosNFItensES: TSmallintField;
    PedidosNFItensVeiculo: TBooleanField;
    ProdutosCodigo_Fabricante: TStringField;
    ProdutosUM: TStringField;
    ProdutosPeso_Liquido: TFloatField;
    ProdutosPeso_Bruto: TFloatField;
    PedidosNFItensDUIMP: TStringField;
    ListaPed: TFDQuery;
    dsListaPed: TDataSource;
    ListaPedPedido: TIntegerField;
    ListaPedTipo: TStringField;
    ListaPedTipo_Processo: TStringField;
    ListaPedOperacao: TSmallintField;
    ListaPedOp_Descricao: TStringField;
    ListaPedDestinatario_Nome: TStringField;
    ListaPedDestinatario_CNPJ_CPF: TStringField;
    ListaPedDestinatario_Estado: TStringField;
    ListaPedValor_Pedido: TCurrencyField;
    Grade: TUniDBGrid;
    Tributos: TFDQuery;
    dsTributos: TDataSource;
    TributosTributo: TStringField;
    TributosCST: TSmallintField;
    TributosValor_BC: TCurrencyField;
    TributosAliquota: TFloatField;
    TributosValor: TCurrencyField;
    TributosTotal: TFloatField;
    cDestinatario: TUniDBLookupComboBox;
    cTransportador: TUniDBLookupComboBox;
    cNFRef: TUniDBLookupComboBox;
    cVolume_Especie: TUniDBEdit;
    cVolume_Quantidade: TUniDBEdit;
    cVolume_Marca: TUniDBEdit;
    cVolume_Numero: TUniDBEdit;
    cForma_Pagamento: TUniDBLookupComboBox;
    cDescricao_Forma: TUniDBEdit;
    cIntermediador: TUniDBLookupComboBox;
    cBeneficio_Fiscal: TUniDBLookupComboBox;
    cModalidade_Frete: TUniDBLookupComboBox;
    cIndicador_Intermediario: TUniDBLookupComboBox;
    cIndicador_Presenca: TUniDBLookupComboBox;
    cTipoDesc: TUniDBLookupComboBox;
    cDesconto_Percentual: TUniDBFormattedNumberEdit;
    cAliquota_IRPJ: TUniDBFormattedNumberEdit;
    cAliquota_CSLL: TUniDBFormattedNumberEdit;
    cTipo_Pagamento: TUniDBLookupComboBox;
    cOperacao_Veiculo: TUniDBLookupComboBox;
    cVeiculo_Restricao: TUniDBLookupComboBox;
    cTaxa_Cambio: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    GradeEditItens: TUniDBGrid;
    UniSimplePanel1: TUniSimplePanel;
    Campos: TFDQuery;
    NotasTerceirosItens: TFDQuery;
    dsNotasTerceirosItens: TDataSource;
    NotasItens: TFDQuery;
    dsNotasItens: TDataSource;
    Adicoes: TFDQuery;
    dsAdicoes: TDataSource;
    DataSource1: TDataSource;
    NotasTerceirosItensAliquota_ICMSOper: TFloatField;
    NotasTerceirosItensAliquota_ICMSSub: TFloatField;
    NotasTerceirosItensAliquota_IPI: TFloatField;
    NotasTerceirosItensDisponivel: TFloatField;
    NotasTerceirosItensPeso_Bruto: TFloatField;
    NotasTerceirosItensPeso_Liquido: TFloatField;
    NotasTerceirosItensQuantidade: TFloatField;
    NotasTerceirosItensValor_BCICMSOper: TCurrencyField;
    NotasTerceirosItensValor_BCICMSSub: TCurrencyField;
    NotasTerceirosItensValor_BCIPI: TCurrencyField;
    NotasTerceirosItensValor_COFINS: TCurrencyField;
    NotasTerceirosItensValor_Desconto: TCurrencyField;
    NotasTerceirosItensValor_ICMSOper: TCurrencyField;
    NotasTerceirosItensValor_ICMSSub: TCurrencyField;
    NotasTerceirosItensValor_IPI: TCurrencyField;
    NotasTerceirosItensValor_IsentasICMS: TCurrencyField;
    NotasTerceirosItensValor_IsentasIPI: TCurrencyField;
    NotasTerceirosItensValor_Liquido: TCurrencyField;
    NotasTerceirosItensValor_OutrasICMS: TCurrencyField;
    NotasTerceirosItensValor_OutrasIPI: TCurrencyField;
    NotasTerceirosItensValor_PIS: TCurrencyField;
    NotasTerceirosItensValor_Unitario: TFloatField;
    NotasItensAliquota_ICMSEntrada: TFloatField;
    NotasItensAliquota_ICMSOp: TFloatField;
    NotasItensAliquota_ICMSReducao: TFloatField;
    NotasItensAliquota_ICMSST: TFloatField;
    NotasItensAliquota_II: TFloatField;
    NotasItensAliquota_IPI: TFloatField;
    NotasItensAliquota_MVA: TFloatField;
    NotasItensDisponivel: TFloatField;
    NotasItensPeso_Bruto: TFloatField;
    NotasItensPeso_Liquido: TFloatField;
    NotasItensQuantidade: TFloatField;
    NotasItensValor_BCICMSOp: TCurrencyField;
    NotasItensValor_BCICMSST: TCurrencyField;
    NotasItensValor_BCIPI: TFloatField;
    NotasItensValor_CIF: TCurrencyField;
    NotasItensValor_COFINS: TFloatField;
    NotasItensValor_Despesa: TFloatField;
    NotasItensValor_DespesasOutros: TFloatField;
    NotasItensValor_Frete: TFloatField;
    NotasItensValor_ICMSOp: TCurrencyField;
    NotasItensValor_ICMSReducao: TCurrencyField;
    NotasItensValor_ICMSST: TCurrencyField;
    NotasItensValor_II: TFloatField;
    NotasItensValor_IPI: TCurrencyField;
    NotasItensValor_MVA: TCurrencyField;
    NotasItensValor_Pauta: TCurrencyField;
    NotasItensValor_PIS: TFloatField;
    NotasItensValor_Seguro: TFloatField;
    NotasItensValor_Total: TCurrencyField;
    NotasItensValor_Unitario: TFloatField;
    AdicoesAliquota_ICMS: TFloatField;
    AdicoesLucro: TFloatField;
    AdicoesPeso_Liquido: TFloatField;
    AdicoesQuantidade: TFloatField;
    AdicoesValor_COFINS: TCurrencyField;
    AdicoesValor_PIS: TCurrencyField;
    AdicoesValor_SemAdValorem: TFloatField;
    AdicoesValor_Unitario: TFloatField;
    AdicoesValor_UnitarioReal: TFloatField;
    gFormula: TUniStringGrid;
    cLog: TUniMemo;
    PedidosNFItensEmbarque: TIntegerField;
    PedidosNFItensBL: TStringField;
    PedidosNFItensValor_BCIBS: TCurrencyField;
    PedidosNFItensAliquota_IBS: TFloatField;
    PedidosNFItensValor_IBS: TCurrencyField;
    PedidosNFItensValor_BCCBS: TCurrencyField;
    PedidosNFItensAliquota_CBS: TFloatField;
    PedidosNFItensValor_CBS: TCurrencyField;
    PedidosNFItensValor_BCIS: TCurrencyField;
    PedidosNFItensAliquota_IS: TFloatField;
    PedidosNFItensValor_IS: TCurrencyField;
    CSTIBS: TFDQuery;
    dsCSTIBS: TDataSource;
    CSTCBS: TFDQuery;
    dsCSTCBS: TDataSource;
    PedidosNFItensCSTIBS: TStringField;
    PedidosNFItensCSTCBS: TStringField;
    pNavegaItens: TUniPanel;
    bAddItens: TUniSpeedButton;
    bEditItens: TUniSpeedButton;
    bExcItens: TUniSpeedButton;
    bCancItens: TUniSpeedButton;
    bGravItens: TUniSpeedButton;
    bExcTodosItens: TUniSpeedButton;
    bNFRef: TUniSpeedButton;
    bDE: TUniSpeedButton;
    bDUIMP: TUniSpeedButton;
    cCSTIPI: TUniDBLookupComboBox;
    cCSTPIS: TUniDBLookupComboBox;
    cCSTCOFINS: TUniDBLookupComboBox;
    cCSTICMS: TUniDBLookupComboBox;
    cQtde: TUniDBFormattedNumberEdit;
    cPercentual_Desconto: TUniDBFormattedNumberEdit;
    cValor_Desconto: TUniDBFormattedNumberEdit;
    cProduto: TUniDBLookupComboBox;
    cCFOP: TUniDBLookupComboBox;
    cProcesso: TUniDBLookupComboBox;
    cPO: TUniDBEdit;
    cOrdem: TUniDBEdit;
    cAliquota_II: TUniDBFormattedNumberEdit;
    cValor_BCII: TUniDBFormattedNumberEdit;
    cValor_II: TUniDBFormattedNumberEdit;
    cAliquota_IPI: TUniDBFormattedNumberEdit;
    cValor_BCIPI: TUniDBFormattedNumberEdit;
    cValor_IPI: TUniDBFormattedNumberEdit;
    cValor_OutrasIPI: TUniDBFormattedNumberEdit;
    cAliquota_PIS: TUniDBFormattedNumberEdit;
    cValor_BCPIS: TUniDBFormattedNumberEdit;
    cValor_PIS: TUniDBFormattedNumberEdit;
    cAliquota_COFINS: TUniDBFormattedNumberEdit;
    cValor_BCCOFINS: TUniDBFormattedNumberEdit;
    cValor_COFINS: TUniDBFormattedNumberEdit;
    cAliquota_ICMSOp: TUniDBFormattedNumberEdit;
    cValor_BCICMSOp: TUniDBFormattedNumberEdit;
    cValor_ICMS: TUniDBFormattedNumberEdit;
    cAliquota_ICMSDif: TUniDBFormattedNumberEdit;
    cValor_ICMSDif: TUniDBFormattedNumberEdit;
    cValor_OutrasICMS: TUniDBFormattedNumberEdit;
    cValor_IsentasICMS: TUniDBFormattedNumberEdit;
    cAliquota_ICMSST: TUniDBFormattedNumberEdit;
    cValor_BCICMSST: TUniDBFormattedNumberEdit;
    cValor_ICMSST: TUniDBFormattedNumberEdit;
    cAliquota_MVA: TUniDBFormattedNumberEdit;
    cValor_BCMVA: TUniDBFormattedNumberEdit;
    cValor_MVA: TUniDBFormattedNumberEdit;
    cValor_Total: TUniFormattedNumberEdit;
    cValor_Unitario: TUniDBFormattedNumberEdit;
    cTotalIPI: TUniFormattedNumberEdit;
    cTotalOutrasIPI: TUniFormattedNumberEdit;
    cTotalPIS: TUniFormattedNumberEdit;
    cTotalCOFINS: TUniFormattedNumberEdit;
    cTotalICMSOp: TUniFormattedNumberEdit;
    cTotalICMSST: TUniFormattedNumberEdit;
    cTotalOutrasICMS: TUniFormattedNumberEdit;
    cTotalIsentasICMS: TUniFormattedNumberEdit;
    cTotalMVA: TUniFormattedNumberEdit;
    cTotalII: TUniFormattedNumberEdit;
    cICMSAnt: TUniDBCheckBox;
    UniDBEdit1: TUniDBEdit;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    UniLabel29: TUniLabel;
    UniLabel30: TUniLabel;
    cValor_IsentasIPI: TUniDBFormattedNumberEdit;
    cTotalIsentasIPI: TUniFormattedNumberEdit;
    UniLabel31: TUniLabel;
    UniLabel32: TUniLabel;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit10: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit11: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit12: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit13: TUniDBFormattedNumberEdit;
    cTotalIS: TUniFormattedNumberEdit;
    cTotalIBS: TUniFormattedNumberEdit;
    cTotalCBS: TUniFormattedNumberEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    CFOPCodigo: TStringField;
    CFOPDescricao: TStringField;
    UniPanel3: TUniPanel;
    cValorProdutos: TUniDBFormattedNumberEdit;
    cValorDespesas: TUniDBFormattedNumberEdit;
    cValorFrete: TUniDBFormattedNumberEdit;
    cValorSeguro: TUniDBFormattedNumberEdit;
    cValorII: TUniDBFormattedNumberEdit;
    cValorIPI: TUniDBFormattedNumberEdit;
    cValorPIS: TUniDBFormattedNumberEdit;
    cValorCOFINS: TUniDBFormattedNumberEdit;
    cValorICMS: TUniDBFormattedNumberEdit;
    cValorICMSST: TUniDBFormattedNumberEdit;
    cValorDesconto: TUniDBFormattedNumberEdit;
    cValorPedido: TUniDBFormattedNumberEdit;
    cValorBCII: TUniDBFormattedNumberEdit;
    cValorBCIPI: TUniDBFormattedNumberEdit;
    cValorBCPIS: TUniDBFormattedNumberEdit;
    cValorBCCOFINS: TUniDBFormattedNumberEdit;
    cValorBCICMS: TUniDBFormattedNumberEdit;
    cValorBCICMSST: TUniDBFormattedNumberEdit;
    cValorAFRMM: TUniDBFormattedNumberEdit;
    cValorDIFALDest: TUniDBFormattedNumberEdit;
    cValorDIFALOrig: TUniDBFormattedNumberEdit;
    cValorBCIS: TUniDBFormattedNumberEdit;
    cValorIS: TUniDBFormattedNumberEdit;
    cValorBCIBS: TUniDBFormattedNumberEdit;
    cValorIBS: TUniDBFormattedNumberEdit;
    ValorBCCBS: TUniDBFormattedNumberEdit;
    cValorCBS: TUniDBFormattedNumberEdit;
    UniTabSheet1: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniSpeedButton1: TUniSpeedButton;
    UniSpeedButton2: TUniSpeedButton;
    UniSpeedButton3: TUniSpeedButton;
    UniSpeedButton4: TUniSpeedButton;
    UniSpeedButton5: TUniSpeedButton;
    UniSpeedButton6: TUniSpeedButton;
    UniSpeedButton7: TUniSpeedButton;
    UniSpeedButton8: TUniSpeedButton;
    UniSpeedButton9: TUniSpeedButton;
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
    procedure PedidosNFBeforePost(DataSet: TDataSet);
    procedure PedidosNFBeforeDelete(DataSet: TDataSet);
    procedure bAddItensClick(Sender: TObject);
    procedure bCancItensClick(Sender: TObject);
    procedure bEditItensClick(Sender: TObject);
    procedure bGravItensClick(Sender: TObject);
    procedure cQtdeExit(Sender: TObject);
    procedure cValor_UnitarioExit(Sender: TObject);
    procedure CalculaTudo;
    procedure cValor_UnitarioChange(Sender: TObject);
    procedure bExcItensClick(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
    procedure cPercentual_DescontoExit(Sender: TObject);
    procedure cValor_DescontoExit(Sender: TObject);
    procedure cValor_BCIIChange(Sender: TObject);
    procedure cAliquota_IIChange(Sender: TObject);
    procedure cValor_BCIPIChange(Sender: TObject);
    procedure cAliquota_IPIChange(Sender: TObject);
    procedure bDUIMPClick(Sender: TObject);
    procedure bExcTodosItensClick(Sender: TObject);
    procedure ListaPedAfterScroll(DataSet: TDataSet);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniSpeedButton2Click(Sender: TObject);
  private
    procedure MudaPedido;
    procedure LigaBotoesItens(Estado: boolean);
    procedure PegaCST;
    function CalculaMacro(Formula: String): Real;
    function SubstituirCampos(Campo: string): string;
    function SubstituirCondicao(Campo: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, FatPedidoItensDUIMP, FatPedidoNFItem;

procedure TfFatPedidoNF.bAddItensClick(Sender: TObject);
begin
      with PedidosNFItens do begin
           try
               LigaBotoesItens(false);
               Append;
               cProduto.SetFocus;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfFatPedidoNF.bAdicionarClick(Sender: TObject);
begin
      with PedidosNF do begin
           try
               LigaBotoes(false);
               PanelDados1.Enabled := false;
               Append;
               cOperacao.SetFocus;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfFatPedidoNF.bExcItensClick(Sender: TObject);
begin
     with PedidosNFItens do begin
          MessageDlg('Deseja realmente excluir este produto do pedido?'+#13+#13+FieldByName('Codigo_Mercadoria').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Produto excluído do Pedido!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfFatPedidoNF.bExcluirClick(Sender: TObject);
begin
     with PedidosNF do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Pedido').AsString, mtConfirmation,mbYesNo,
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

procedure TfFatPedidoNF.bExcTodosItensClick(Sender: TObject);
begin
     with PedidosNFItens do begin
          MessageDlg('Atenção!'+#13+#13+'Isso ira remover todos os "Itens" do "Pedido"'+#13+#13+'Deseja realmente rewmover todos os itens?'+#13+#13+FieldByName('Codigo_Mercadoria').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             with tTmp do begin
                                  sql.Clear;
                                  sql.add('delete from PedidosNFItens where Pedido = :pPed');
                                  parambyname('pPed').value := PedidosNF.FieldByName('Pedido').AsInteger;
                                  execute;
                             end;
                             Alerta.Text := 'Todos os itens foram removidos do Pedido!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfFatPedidoNF.bGravarClick(Sender: TObject);
begin
     with PedidosNF do begin
          if CampoVazio(cBeneficio_Fiscal,'"Beneficio Fiscal" é obrigatório!') then Abort;
          if CampoVazio(cModalidade_Frete,'Modalidade de frete é campo obrigatório!') then Abort;
          if CampoVazio(cIndicador_Presenca,'Indicador de Presença do Comprador é campo obrigatório!') then Abort;
          if fieldbyName('Volume_Quantidade').asfloat <> 0 then begin
             if CampoVazio(cVolume_Especie,'Falta informar a "ESPÉCIE" dos volumes.'+#13+#13+'Se a quantidade de volumes é maior que zero a espécie dos volumes deve ser informada.') then Abort;
          end;
          if trim(fieldbyName('Volume_Especie').asstring) <> '' then begin
             if CampoVazio(cVolume_Quantidade,'Falta informar a "QUANTIDADE" dos volumes.'+#13+#13+'A quantidade de volumes deve maior que zero se a espécie de volumes for informada.') then Abort;
          end;
          if Fieldbyname('ES').asinteger = 0 then begin
             if Aviso(Destinatarios.FieldByName('Indicador_IE').value, '', '=', '"Indicador de Inscrição Estadual" do Fornecedor não informado no cadastro de Fornecedores.', '') then Abort
          else
             if Aviso(Destinatarios.FieldByName('Indicador_IE').value, '', '=', '"Indicador de Inscrição Estadual" do Cliente não informado no cadastro de Clientes.', '') then abort;
          end;
          if (FieldByName('Forma_Pagamento').AsInteger = 99) then begin // and (fieldbyname('Descricao_Forma').AsString = '') then begin
             if CampoVazio(cDescricao_Forma,'"Descrição da Forma de Pagamento" é obrigatório para "99 Outros".') then Abort;
          end;
          if fieldbyname('Indicador_Presenca').AsInteger in[2, 3, 4] then begin
             if CampoVazio(cIntermediador,'"Intermediador" é obrigatório para indicador de presença = 2, 3 e 4 !') then Abort;
          end;
          if OpFiscal.fieldbyname('Transportador').asboolean then begin
             if CampoVazio(cTransportador,'Para operações de combustivel o transportador e obrigatório!') then Abort;
          end;
          if (fieldbyname('ES').AsInteger = 1) and (ICMS.RecordCount = 0) then begin
             if Aviso(ICMS.RecordCount, 0, '=', 'Estado do Cliente ('+ Destinatarios.fieldbyname('Estado').AsString+') não cadastrado na tabela de ICMS.', '') then abort;
          end;
          // Caso esteja selecionado em configurações, bloqueia o cliente em caso de atraso de pagamento.
          if Config.fieldbyname('Faturamento_BloquearAtraso').AsBoolean then begin
             with ttmp do begin
                  sql.clear;
                  sql.add('select Atraso = isnull(count(*), 0)');
                  sql.add('from PagarReceber pr');
                  sql.add('where Beneficiario = :pDest');
                  sql.add('and datediff(Day, Data_Vencimento, getdate()) > (select Atraso_Maximo from Destinatarios  where Codigo = Beneficiario)');
                  sql.add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Titulo = prb.Titulo), 2),0) < round(Valor_Total, 2)');
                  parambyName('pDest').AsInteger := Destinatarios.FieldByName('Codigo').asinteger;
                  open;
                  if Aviso(fieldbyname('Atraso').asinteger, 0, '>', 'Constam pagamentos em atraso para o cliente informado.'+#13+#13+'Não é possível emitir notas para este cliente.', 'ATRASO DE PAGAMENTO') then abort;
             end;
          end;

          // Verifica se o cliente informado é uma das filias para pedidos de transferência.
          if OpFiscal.FieldByName('Transferencia').AsBoolean then begin
             // Verifica se o CNPJ do Destinatário igual Emissor.
             if ValidaCampo(cDestinatario, Destinatarios.FieldByName('CNPJ_CPF').AsString, Empresas.FieldByName('CNPJ').asstring, '=', 'CNPJ inválido para Pedido de transferência.'+#13+#13+'Não é possível emitir notas de transferência para a própria empresa.', 'TRANSFERÊNCIA') then Abort;

             // Verifica se o CNPJ do Destinatario é de uma filial.
             with ttmp do begin
                  sql.clear;
                  sql.add('select Empresas = count(*)');
                  sql.add('from Cybersoft_Cadastros.dbo.Empresas');
                  sql.add('where  CNPJ like '+QuotedStr(Copy(Destinatarios.FieldByName('CNPJ_CPF').AsString, 1, 8)+'%'));
                  open;
                  if ValidaCampo(cDestinatario, FieldByName('Empresas').AsInteger, 0, '=', 'CNPJ inválido para Pedido de transferência.'+#13+#13+'CNPJ do destinatário não compatível com o da empresa atual.', 'TRANSFERÊNCIA') then Abort;
             end;
          end;
          if CampoVazio(cTipo_Pagamento,'"Tipo de Pagamento" é obrigatório!') then Abort;
          if CampoVazio(cForma_Pagamento,'"Forma de Pagamento" é obrigatório!') then Abort;

          with ttmp do begin
               sql.Clear;
               sql.Add('select Nome from Municipios where Codigo = :pCodigo');
               parambyname('pCodigo').value := Destinatarios.FieldByName('Municipio').AsString;
               open;
          end;

          try
              if State = dsInsert then begin
                 fieldByName('Pedido').Value := GeraCodigo('PedidosNF', 'Pedido');
              end;
              fieldbyname('Data_Emissao').Value               := now;
              fieldbyname('Hora_Emissao').Value               := now;
              fieldbyname('Empresa').Value                    := UniMainModule.mEmpresaAtiva;
              fieldbyname('Destinatario_CNPJ_CPF').Value      := trim(Destinatarios.FieldByName('CNPJ').AsString)+trim(Destinatarios.FieldByName('CPF').AsString);
              fieldbyname('Destinatario_Nome').Value          := Destinatarios.FieldByName('Nome').AsString;
              fieldbyname('Destinatario_Rua').Value           := Destinatarios.FieldByName('Rua').AsString;
              fieldbyname('Destinatario_RuaNumero').Value     := Destinatarios.FieldByName('Rua_Numero').AsString;
              fieldbyname('Destinatario_Complemento').Value   := Destinatarios.FieldByName('Complemento').AsString;
              fieldbyname('Destinatario_Bairro').Value        := Destinatarios.FieldByName('Bairro').AsString;
              fieldbyname('Destinatario_Municipio').Value     := Destinatarios.FieldByName('Municipio').AsString;
              fieldbyname('Destinatario_MunicipioNome').Value := ttmp.FieldByName('Nome').AsString;
              fieldbyname('Destinatario_Estado').Value        := Destinatarios.FieldByName('Estado').AsString;
              fieldbyname('Destinatario_CEP').Value           := Destinatarios.FieldByName('CEP').AsString;
              fieldbyname('Destinatario_Pais').Value          := Destinatarios.FieldByName('Pais').AsString;
              fieldbyname('Destinatario_Telefone1').Value     := Destinatarios.FieldByName('Telefone1').AsString;
              fieldbyname('Destinatario_IE').Value            := Destinatarios.FieldByName('Inscricao_Estadual').AsString;
              fieldbyname('Destinatario_Juridica').Value      := iif(trim(Destinatarios.FieldByName('CNPJ').AsString) <> '', 1, 0);
              fieldbyname('ES').Value                         := OpFiscal.FieldByName('ES').AsInteger;
              fieldbyname('ES_Desc').Value                    := iif(OpFiscal.FieldByName('ES').AsInteger = 0, 'ENTRADA', 'SAÍDA');
              fieldbyname('Op_Descricao').Value               := OpFiscal.FieldByName('Descricao').AsString;
              fieldbyname('Processo_Desc').Value              := 'REVENDA';
              if fieldbyname('Tipo_Processo').asstring = 'I' then fieldbyname('Processo_Desc').Value := 'IMPORTAÇÃO';
              if fieldbyname('Tipo_Processo').asstring = 'E' then fieldbyname('Processo_Desc').Value := 'EXPORTAÇÃO';

              Post;
              
              LigaBotoes(true);
              Alerta.Text := 'Registro salvo no banco de dados!';
              Alerta.Execute;
              PanelDados1.Enabled := false;
          except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, []);
        end;
     end;
end;

procedure TfFatPedidoNF.bGravItensClick(Sender: TObject);
begin
      if CampoVazio(cProduto,'"Produto" é obrigatório!') then Abort;
      if CampoVazio(cCFOP,'"CFOP" é campo obrigatório!') then Abort;
      if CampoVazio(cQtde,'"Quantidade" é campo obrigatório!') then Abort;
      try
         with PedidosNFItens do begin
              if State = dsInsert then begin
                 ttmp.sql.Clear;
                 ttmp.sql.Add('select isnull(max(Item), 0)+1 as item from PedidosNFItens where Pedido = :pPed');
                 ttmp.parambyname('pPed').AsInteger := PedidosNF.FieldByName('Pedido').AsInteger;
                 ttmp.open;
                 fieldbyname('Item').value := ttmp.FieldByName('item').AsInteger;
              end;
              fieldbyname('Pedido').value                := PedidosNF.FieldByName('Pedido').AsInteger;
              fieldbyname('Empresa').value               := UniMainModule.mEmpresaAtiva;
              fieldbyname('ES').value                    := PedidosNF.FieldByName('ES').AsInteger;
              fieldbyname('Operacao').value              := PedidosNF.FieldByName('Operacao').AsInteger;
              fieldbyname('Codigo_Fabricante').value     := Produtos.FieldByName('Codigo_Fabricante').asstring;
              fieldbyname('Descricao_Mercadoria').value  := Produtos.FieldByName('Descricao').asstring;
              fieldbyname('NCM').value                   := Produtos.FieldByName('NCM').asstring;
              fieldbyname('UM').value                    := Produtos.FieldByName('UM').asstring;
              fieldbyname('Peso_Liquido').value          := Produtos.FieldByName('Peso_Liquido').asfloat;
              fieldbyname('Peso_Bruto').value            := Produtos.FieldByName('Peso_Bruto').asfloat;
              fieldbyname('EXTIPI').value                := tNCM.FieldByName('Codigo_EXTIPI').asinteger;
              fieldbyname('Modalidade_BCICMS').Value     := tNCM.fieldbyname('Modalidade_BCICMS').Value;
              fieldbyname('Modalidade_BCICMSST').Value   := tNCM.fieldbyname('Modalidade_BCICMSST').Value;
              fieldbyname('CEST').Value                  := tNCM.fieldbyname('CEST').Value;
              fieldbyname('Movimenta_Inventario').value  := OpFiscal.FieldByName('Movimenta_Inventario').asboolean;
              fieldbyname('Movimenta_Estoque').value     := OpFiscal.FieldByName('Movimenta_Estoque').asboolean;
              fieldbyname('Movimenta_EstoqueRep').value  := OpFiscal.FieldByName('Movimenta_EstoqueRep').asboolean;
              fieldbyname('Apuracao_PISCOFINS').value    := OpFiscal.FieldByName('Apuracao_PISCOFINS').asboolean;
              fieldbyname('Finalidade_Mercadoria').value := OpFiscal.FieldByName('Finalidade_Mercadoria').asinteger;
              fieldbyname('Devolucao').value             := OpFiscal.FieldByName('Finalidade_Mercadoria').asinteger = 2;
              Post;
         end;
         LigaBotoesItens(true);
         Alerta.Text := 'Registro salvo no banco de dados!';
         Alerta.Execute;
      except on E: Exception do
         MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, []);
      end;
end;

procedure TfFatPedidoNF.bCancelarClick(Sender: TObject);
begin
      PedidosNF.Cancel;
      LigaBotoes(true);
      PanelDados1.Enabled := false;
end;

procedure TfFatPedidoNF.bCancItensClick(Sender: TObject);
begin
      PedidosNFItens.Cancel;
      LigaBotoesItens(true);
end;

procedure TfFatPedidoNF.bDUIMPClick(Sender: TObject);
begin
      fFatPedidoItensDUIMP.mPedido   := PedidosNF.FieldByName('Pedido').asinteger;
      fFatPedidoItensDUIMP.mEstado   := PedidosNF.FieldByName('Destinatario_Estado').asstring;
      fFatPedidoItensDUIMP.mOperacao := PedidosNF.FieldByName('Operacao').asinteger;
      fFatPedidoItensDUIMP.ShowModal;
      PedidosNFItens.refresh;
end;

procedure TfFatPedidoNF.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         PedidosNF.Edit;
         PanelDados1.Enabled := true;
         cOperacao.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfFatPedidoNF.bEditItensClick(Sender: TObject);
begin
      with PedidosNFItens do begin
           try
               LigaBotoesItens(false);
               Edit;
               cProduto.SetFocus;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode editar o registro!', mtError, []);
           end;
      end;
end;

procedure TfFatPedidoNF.UniFrameDestroy(Sender: TObject);
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

procedure TfFatPedidoNF.UniSpeedButton1Click(Sender: TObject);
begin
      //fFatPedidoNFItem.mItem   := 'select * from PedidosNFItens where Pedido = '+PedidosNF.fieldbyname('Pedido').asstring+' and Item = 0';
      fFatPedidoNFItem.mPed    := PedidosNF.FieldByName('Pedido').asinteger;
//      fFatPedidoNFItem.mEst    := iif(PedidosNF.FieldByName('Destinatario_Estado').asstring = Empresas.FieldByName('Estado').AsString, 'D', 'F');
//      fFatPedidoNFItem.mApura  := OpFiscal.FieldByName('Apuracao_PISCOFINS').asboolean;
//      fFatPedidoNFItem.mES     := PedidosNF.FieldByName('ES').asinteger;
      fFatPedidoNFItem.mOper   := 'Adicionar';
      fFatPedidoNFItem.Caption := 'INCLUSÃO DE ITEM AO PEDIDO ('+PedidosNF.fieldbyname('Pedido').asstring+')';
      fFatPedidoNFItem.ShowModal;
      //tOpFormulas.Refresh;
end;

procedure TfFatPedidoNF.UniSpeedButton2Click(Sender: TObject);
begin
{
      fFatPedidoNFItem.mPed    := PedidosNF.FieldByName('Pedido').asinteger;
      fFatPedidoNFItem.mItem   := PedidosNFItens.FieldByName('Item').asinteger;
      fFatPedidoNFItem.mEst    := iif(PedidosNF.FieldByName('Destinatario_Estado').asstring = Empresas.FieldByName('Estado').AsString, 'D', 'F');
      fFatPedidoNFItem.mES     := PedidosNF.FieldByName('ES').asinteger;
      fFatPedidoNFItem.mApura  := OpFiscal.FieldByName('Apuracao_PISCOFINS').asboolean;
      fFatPedidoNFItem.mOper   := 'Alterar';
      fFatPedidoNFItem.Caption := 'ALTERAÇÃO DO ITEM DO PEDIDO ('+PedidosNF.fieldbyname('Pedido').asstring+')';
      fFatPedidoNFItem.ShowModal;
}      
end;

procedure TfFatPedidoNF.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFatPedidoNF.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled      := Estado;
     bEditar.Enabled     := Estado;
     bExcluir.Enabled    := Estado;
     bAdicionar.Enabled  := Estado;
     bCancelar.Enabled   := not Estado;
     bGravar.Enabled     := not Estado;
     PainelItens.Enabled := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfFatPedidoNF.LigaBotoesItens(Estado:boolean);
begin
     //NavegaItens.Enabled    := Estado;
     bEditItens.Enabled     := Estado;
     bExcitens.Enabled      := Estado;
     bAdditens.Enabled      := Estado;
     GradeEditItens.Enabled := Estado;
     bCancItens.Enabled     := not Estado;
     bGravItens.Enabled     := not Estado;
     PainelItens.Enabled    := not Estado;
     if not Estado then Pasta.ActivePageIndex := 2;
end;

procedure TfFatPedidoNF.ListaPedAfterScroll(DataSet: TDataSet);
begin
     MudaPedido;
end;

procedure TfFatPedidoNF.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as fichas de dados ao centro do componente pai.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (TuniPanel(Components[i]).Parent.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;
      
      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      with Empresas do begin
           sql.Clear;
           sql.Add('select CNPJ');
           sql.Add('      ,Estado');
           sql.Add('      ,Razao_Social');
           sql.Add('      ,Regime_Tributario');
           sql.Add('from Empresas');
           sql.Add('where CNPJ = :pCNPJ');
           parambyname('pCNPJ').Value :=  UniMainModule.mEmpresaAtiva;
           open;
      end;
      with Config do begin
           sql.Clear;
           sql.add('select Empresa');
           sql.add('      ,Faturamento_BloquearAtraso');
           sql.add('from Config');
           sql.add('where Empresa = :pEmpresa');
           parambyname('pEmpresa').Value := UniMainModule.mEmpresaAtiva;
           open;
      end;
      with PedidosNF do begin
           sql.clear;
           sql.add('select top 1 *');
           sql.add('from PedidosNF');
           sql.Add('order by Pedido');
           open;
      end;
      with ListaPed do begin
           sql.clear;
           sql.add('select Pedido');
           sql.add('      ,Tipo = iif(ES = 0, ''ENTRADA'', ''SAÍDA'')' );
           sql.add('      ,Processo_Desc = case Tipo_Processo');
           sql.add('                             when ''I'' then ''IMPORTAÇÃO'' ');
           sql.add('                             when ''E'' then ''EXPORTAÇÃO'' ');
           sql.add('                             when ''''  then ''OUTROS'' ');
           sql.add('                       end');
           sql.add('      ,Operacao');
           sql.add('      ,Op_Descricao = (select Descricao from OperacaoFiscal where Codigo = Operacao)');
           sql.add('      ,Destinatario_Nome');
           sql.add('      ,Destinatario_CNPJ_CPF');
           sql.add('      ,Destinatario_Estado');
           sql.add('      ,Valor_Pedido');
           sql.add('from PedidosNF');
           sql.Add('order by Pedido');
           //sql.savetofile('c:\temp\PedidosNF.sql');
           open;
      end;
      with OpFiscal do begin
           sql.clear;
           sql.add('select Codigo');
           sql.Add('      ,Descricao');
           sql.Add('      ,Tipo = iif(ES = 0, ''ENTRADA'', ''SAÍDA'') ');
           sql.Add('      ,ES');
           sql.Add('      ,Nota_Referencia');
           sql.Add('      ,Apuracao_PISCOFINS');
           sql.Add('      ,Beneficio_Fiscal');
           sql.Add('      ,Transportador');
           sql.Add('      ,Transferencia');
           sql.Add('      ,Nao_Tributada_IPI');
           sql.Add('      ,Imune_IPI');
           sql.Add('      ,Suspensao_IPI');
           sql.Add('      ,Isencao_IPI');
           sql.add('      ,CSTPIS_AliquotaUM');
           sql.add('      ,CSTPIS_Monofasica');
           sql.add('      ,CSTPIS_AliquotaZero');
           sql.add('      ,CSTPIS_Isenta');
           sql.add('      ,CSTPIS_SemIncidencia');
           sql.add('      ,CSTPIS_Suspensao');
           sql.add('      ,CSTPIS_Outras');
           sql.add('      ,Finalidade_Mercadoria');
           sql.add('      ,Isencao_ICMS');
           sql.add('      ,Nao_Tributada_ICMS');
           sql.add('      ,Suspensao_ICMS');
           sql.add('      ,Diferido_ICMS');
           sql.Add('      ,Imune_ICMS');
           sql.add('      ,Monofasico_Comb');
           sql.add('      ,Monofasico_CombRetencao');
           sql.add('      ,Monofasico_CombDiferido');
           sql.add('      ,Monofasico_CombAnterior');
           sql.add('      ,Movimenta_Estoque');
           sql.add('      ,Movimenta_EstoqueRep');
           sql.add('      ,Movimenta_Inventario');
           sql.add('      ,CSOSN_Saida');
           sql.Add('from OperacaoFiscal');
           sql.add('order by Tipo, Descricao');
           open;
           locate('Codigo', PedidosNF.fieldbyname('Operacao').asinteger);
      end;
      if OpFiscal.fieldbyname('Nota_Referencia').asboolean then begin
         cNFRef.Enabled := true;
         with NFRef do begin
              sql.clear;
              sql.add('select Chave');
              sql.add('      ,Data_Emissao');
              sql.Add('      ,Processo');
              sql.add('from NotasFiscais');
              sql.add('where isnull(Cancelada, 0) = 0');
              sql.add('and isnull(Denegada, 0) = 0');
              sql.add('order by Data_Emissao, Chave');
              open;
         end;
      end;
      with Beneficio do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from BeneficioFiscal');
           sql.add('order by Nome');
           open;
      end;
      with Transportador do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,CNPJ_CPF = iif(isnull(CNPJ, '''') <> '''', replicate(''0'', 14-len(isnull(CNPJ,'''')))+isnull(CNPJ,''''), replicate(''0'', 14-len(isnull(CPF, '''')))+isnull(CPF,''''))');
           sql.add('from Destinatarios');
           sql.Add('where isnull(Transportador, 0) = 1');
           sql.add('order by Nome');
           open;
      end;
      with ModalFrete do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao');
           sql.add('from ModalidadesFrete');
           sql.add('order by Descricao');
           open;
      end;
      with IndPresenca do begin
           sql.clear;
           sql.add('select Codigo = 0, Descricao = ''Operação sem intermediador (em site ou plataforma própria)'' ');
           sql.add('union all');
           sql.add('select Codigo = 1, Descricao = ''Operação em site ou plataforma de terceiros (intermediadores/marketplace)'' ');
           sql.add('order by Codigo');
           open;
      end;
      with TipoPgto do begin
           sql.clear;
           sql.add('select Codigo = 0, Descricao = ''A VISTA'' ');
           sql.add('union all');
           sql.add('select Codigo = 1, Descricao = ''A PRAZO'' ');
           sql.add('union all');
           sql.add('select Codigo = 2, Descricao = ''OUTROS'' ');
           sql.add('order by Codigo');
           open;
      end;
      with FormaPgto do begin
           sql.clear;
           sql.add('select * from FormasPagamento order by Codigo');
           open;
      end;
      with PresencaComp do begin
           sql.clear;
           sql.add('select * from PresencaComprador order by Codigo');
           open;
      end;
      with Intermediador do begin
           sql.clear;
           sql.add('select * from Intermediadores order by Codigo');
           open;
      end;
      with TiposDesc do begin
           sql.clear;
           sql.add('select * from TiposDescontos');
           open;
      end;
      with OpVeiculo do begin
           sql.clear;
           sql.add('select * from OperacaoVeiculo');
           open;
      end;
      with RestVeiculo do begin
           sql.clear;
           sql.add('select * from RestricaoVeiculo');
           open;
      end;
      {
      with Produtos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.Add('      ,Codigo_Fabricante');
           sql.Add('      ,Descricao = Descricao_Reduzida');
           sql.Add('      ,NCM');
           sql.Add('      ,UM');
           sql.Add('      ,Peso_Liquido');
           sql.Add('      ,Peso_Bruto');
           sql.Add('      ,Valor_Venda');
           sql.Add('      ,Valor_ConsumidorFinal');
           sql.Add('      ,Valor_CustoMedio');
           sql.Add('      ,Valor_Entrada');
           sql.Add('      ,Aliquota_IPI');
           sql.Add('      ,Valor_IPI');
           sql.Add('      ,Aliquota_II');
           sql.Add('      ,Valor_II');
           sql.Add('      ,Aliquota_PIS');
           sql.Add('      ,Aliquota_COFINS');
           sql.Add('      ,Aliquota_PISEntrada');
           sql.Add('      ,Aliquota_COFINSEntrada');
           sql.Add('      ,Aliquota_PISSaida');
           sql.Add('      ,Aliquota_COFINSSaida');
           sql.Add('      ,Reducao_PIS');
           sql.Add('      ,Reducao_COFINS');
           sql.add('      ,CSTPIS_AliquotaUM');
           sql.add('      ,CSTPIS_Monofasica');
           sql.add('      ,CSTPIS_AliquotaZero');
           sql.add('      ,CSTPIS_Isenta');
           sql.add('      ,CSTPIS_SemIncidencia');
           sql.add('      ,CSTPIS_Suspensao');
           sql.add('      ,CSTPIS_Outras');
           sql.add('      ,Origem');
           sql.add('      ,ICMS_ForaEstadoEnt');
           sql.add('      ,ICMS_ForaEstadoSai');
           sql.add('      ,ICMS_DentroEstadoEnt');
           sql.add('      ,ICMS_DentroEstadoSai');
           sql.add('      ,ICMS_DentroEstadoSimples');
           sql.add('      ,Tabela_CAMEX');
           sql.add('      ,CSTICMS_Entrada');
           sql.add('      ,CSTICMS_Saida');
           sql.add('      ,Beneficio_FiscalEnt');
           sql.add('      ,Beneficio_FiscalSai');
           sql.add('from Produtos');
           sql.Add('where Desativado <> 1');
           sql.Add('and isnull(NCM, '''') <> '''' ');
           sql.Add('order by Descricao');
           //sql.SaveToFile('c:\temp\Pedidos_Itens_Produtos.sql');
           open;
      end;
      with Processos do begin
           sql.clear;
           sql.add('select Tipo = ''IMP'' ');
           sql.Add('      ,Processo');
           sql.Add('      ,ICMS_Diferido');
           sql.add('from ProcessosImp');
           sql.add('where isnull(DUIMP, '''') <> '''' ');
           sql.Add('and Processo_Fechamento is not null');
           sql.Add('union all');
           sql.Add('select Tipo = ''EXP'' ');
           sql.add('      ,Processo');
           sql.Add('      ,ICMS_Diferido');
           sql.Add('from ProcessosExp');
           sql.Add('where isnull(DE, '''') <> '''' ');
           sql.add('and Processo_Fechamento is not null');
           sql.add('order by Tipo, Processo');
           open;
      end;
      with CSTIPI do begin
           sql.clear;
           sql.add('select * from CSTIPI');
           open;
      end;
      with CSTPIS do begin
           sql.clear;
           sql.add('select * from CSTPIS');
           open;
      end;
      with CSTCOFINS do begin
           sql.clear;
           sql.add('select * from CSTCOFINS');
           open;
      end;
      with CSTICMSB do begin
           sql.clear;
           sql.add('select * from CSTICMSTabB order by Codigo');
           open;
      end;
      with TabPISCOFINS do begin
           sql.clear;
           sql.add('select * from TabelaPISCOFINS where Tipo = ''B'' ');
           open;
      end;
      with CSTIBS do begin
           sql.clear;
           sql.add('select * from CSTIBS order by Codigo');
           open;
      end;
      with CSTCBS do begin
           sql.clear;
           sql.add('select * from CSTCBS order by Codigo');
           open;
      end;
      }
      MudaPedido;
end;

procedure TfFatPedidoNF.cPercentual_DescontoExit(Sender: TObject);
begin
    CalculaTudo;
end;

procedure TfFatPedidoNF.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfFatPedidoNF.cProdutoExit(Sender: TObject);
begin
(*
     with tNCM do begin
          sql.clear;
          sql.add('select NCM');
          sql.add('      ,IPI_TribAliquotaZero');
          sql.add('      ,IPI_Isento');
          sql.add('      ,IPI_Suspensao');
          sql.add('      ,PIS_ST');
          sql.add('      ,CodigoTrib_TabA');
          sql.add('      ,CodigoTrib_TabA2');
          sql.add('      ,CodigoTrib_TabA3');
          sql.add('      ,ICMS_Isento');
          sql.Add('      ,ICMS_Imune');
          sql.add('      ,ICMS_Suspensao');
          sql.add('      ,Modalidade_BCICMS');
          sql.add('      ,Modalidade_BCICMSST');
          sql.add('      ,Codigo_EXTIPI');
          sql.add('      ,CEST');
          sql.add('from NCM');
          sql.Add('where NCM = :pNCM');
          ParamByName('pNCM').value := ProdutosNCM.AsString;
          open;
     end;
     with PedidosNFItens do begin
          FieldByName('Aliquota_IPI').value    := Produtos.FieldByName('Aliquota_IPI').AsFloat;
          FieldByName('Aliquota_II').value     := Produtos.FieldByName('Aliquota_II').AsFloat;
          FieldByName('Aliquota_PIS').value    := iif(PedidosNF.fieldbyname('ES').AsInteger = 0, Produtos.FieldByName('Aliquota_PISEntrada').AsFloat, Produtos.FieldByName('Aliquota_PISSaida').AsFloat);
          FieldByName('Aliquota_COFINS').value := iif(PedidosNF.fieldbyname('ES').AsInteger = 0, Produtos.FieldByName('Aliquota_COFINSEntrada').AsFloat, Produtos.FieldByName('Aliquota_COFINSSaida').AsFloat);

          // Alíquota do ICMS.
          with tNCMICMS do begin
               sql.Clear;
               sql.Add('select * from NCMICMS where NCM = :pNCM and Estado = :pEstado');
               parambyname('pNCM').Value    := Produtos.FieldByName('NCM').AsString;
               parambyname('pEstado').Value := Destinatarios.FieldByName('Estado').AsString;
               open;
          end;

          PedidosNFItens.fieldbyname('Aliquota_ICMSOpRed').value  := tNCMICMS.FieldbyName('Reducao_BCICMSOp').AsFloat;
          PedidosNFItens.fieldbyname('Aliquota_ICMSOPRed2').Value := tNCMICMS.FieldbyName('Reducao_BCICMSOp2').AsFloat;

          // Mercadoria de origem importada.
          if (tNCM.fieldbyname('CodigoTrib_TabA').asinteger in[1, 6]) and (Produtos.fieldbyname('Origem').AsString = 'I') then begin
             // Contribuinte.
             if Destinatarios.fieldbyname('Indicador_IE').Value = '1' then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyname('Imp_Contribuinte').asfloat;
             end;
             // Contribuinte com nf para comsumo.
             if (Destinatarios.fieldbyname('Indicador_IE').Value = '1') and (OpFiscal.fieldbyname('Finalidade_Mercadoria').asinteger = 1) then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyname('Imp_NContribuinte').asfloat;
             end;
             // Não Contribuinte.
             if (Destinatarios.fieldbyname('Indicador_IE').Value = '2') or (Destinatarios.fieldbyname('Indicador_IE').Value = '9') then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyname('Imp_NContribuinte').asfloat;
             end;
             // Atacadistas.
             if Destinatarios.fieldbyname('Atacadista').AsBoolean then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyname('Imp_Atacadista').AsFloat;
             end;
             // Varejistas.
             if Destinatarios.fieldbyname('Varejista').AsBoolean then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyname('Imp_Varejista').AsFloat;
             end;
          end;
          // Mercadoria de origem importada adquirida no mercado interno.
          if (tNCM.fieldbyname('CodigoTrib_TabA3').asinteger in[2, 7]) and (Produtos.fieldbyName('Origem').AsString = 'M') then begin
             // Contribuinte.
             if Destinatarios.fieldbyName('Indicador_IE').Value = '1' then begin
                PedidosNFItens.fieldbyName('Aliquota_ICMSOp').value := ICMS.fieldbyName('Imp_Contribuinte').asfloat
             end;
             // Contribuinte com nf para comsumo.
             if (Destinatarios.fieldbyName('Indicador_IE').Value = '1') and (OpFiscal.fieldbyName('Finalidade_Mercadoria').asinteger = 1) then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Imp_NContribuinte').asfloat;
             end;
             // N o Contribuinte.
             if (Destinatarios.fieldbyName('Indicador_IE').Value = '2') or (Destinatarios.fieldbyName('Indicador_IE').Value = '9') then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Imp_NContribuinte').asfloat;
             end;
             // Atacadistas.
             if Destinatarios.fieldbyName('Atacadista').AsBoolean then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Imp_Atacadista').AsFloat;
             end;
             // Varejistas.
             if Destinatarios.fieldbyName('Varejista').AsBoolean then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Imp_Varejista').AsFloat;
             end;
          end;
          // Mercadoria de origem Nacional.
          if trim(tNCM.fieldbyName('CodigoTrib_TabA2').asstring) = '' then begin
             showmessage('Código de CST do ICMS da tabela A (Nacional) no cadastrado da "NCM" não informado.'+#13+#13+'NCM :'+tNCM.fieldbyName('NCM').asstring);
             abort;
          end;
          if (tNCM.fieldbyName('CodigoTrib_TabA2').asinteger in[0, 3, 4, 5]) and (Produtos.fieldbyName('Origem').AsString = 'N') then begin
             // Contribuinte pessoa Juridica.
             if Destinatarios.fieldbyName('Indicador_IE').Value = '1' then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Nac_Contribuinte').asfloat;
             end;
             // Contribuinte com nf para comsumo.
             if (Destinatarios.fieldbyName('Indicador_IE').Value = '1') and (OpFiscal.fieldbyName('Finalidade_Mercadoria').asinteger = 1) then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Nac_NContribuinte').asfloat;
             end;
             // Não Contribuinte.
             if (Destinatarios.fieldbyName('Indicador_IE').Value = '2') or (Destinatarios.fieldbyName('Indicador_IE').Value = '9') then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Nac_NContribuinte').asfloat;
             end;
             // Atacadistas.
             if Destinatarios.fieldbyName('Atacadista').AsBoolean then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Nac_Atacadista').asfloat;
             end;
             // Varejistas.
             if Destinatarios.fieldbyName('Varejista').AsBoolean then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Nac_Varejista').asfloat;
             end;
          end;
          if Destinatarios.fieldbyName('Simples_Nacional').AsBoolean then begin
             PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Simples_Nacional').AsFloat;
             if ICMS.fieldbyName('Simples_Nacional').AsFloat = 0 then begin
                MessageDlg('Alíquota do ICMS do "SIMPLES" não encontrada na tabela de ICMS.', mtError, [mbok]);
                bCancItens.Click;
                Abort;
             end;
          end;
          // Não encontrando a estado na tabela de ICMS zera a alíquota do ICMS operacional.
          if ICMS.Locate('UF', Destinatarios.fieldbyName('Estado').AsString, [loCaseInsensitive]) = false then begin
             PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := 0;
          end;
          // Pegando as alíquotas de ICMS na entrada, (Cliente de fora do estado / Cliente de dentro do estado).
          if (PedidosNF.fieldbyName('Destinatario_Estado').asstring <> Empresas.fieldbyName('Estado').asstring) then begin
              PedidosNFItens.fieldbyname('Aliquota_ICMSEntrada').value := Produtos.fieldbyName('ICMS_ForaEstadoEnt').AsFloat;
          end else begin
              PedidosNFItens.fieldbyname('Aliquota_ICMSEntrada').value := Produtos.fieldbyName('ICMS_DentroEstadoEnt').AsFloat;
          end;
          // Pegando o valor de pauta.
          with ProdutosPauta do begin
               sql.clear;
               sql.add('select * from ProdutosPauta where Produto = :pCodigo');
               paramByName('pCodigo').Asinteger := PedidosNFItens.fieldbyname('Codigo_Mercadoria').AsInteger;
               open;
               PedidosNFItensValor_Pauta.Value := ProdutosPauta.FieldByName('Valor').AsCurrency;
          end;
          // Verifica se existe alíquota de ICMS informado no cadastro do produto.
          // Dentro do Estado.
          if (PedidosNF.fieldbyname('Destinatario_Estado').asstring = Empresas.fieldbyname('Estado').asstring) and (Produtos.fieldbyname('ICMS_DentroEstadoSai').AsFloat > 0) then begin
             // Simples Nacional.
             if Destinatarios.fieldbyname('Simples_Nacional').AsBoolean then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := Produtos.fieldbyname('ICMS_DentroEstadoSimples').AsFloat;
             end else begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := Produtos.fieldbyname('ICMS_DentroEstadoSai').ASFloat;
             end;
          end;
          // Fora do Estado.
          if (PedidosNF.fieldbyname('Destinatario_Estado').asstring <> Empresas.fieldbyname('Estado').asstring) and (Produtos.fieldbyname('ICMS_ForaEstadoSai').AsFloat > 0) then begin
             PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := Produtos.fieldbyname('ICMS_ForaEstadoSai').asfloat;
          end;
          // Verifica se o produto esta na tabela CAMEX.
          if Produtos.fieldbyname('Tabela_CAMEX').AsBoolean and (ICMS.fieldbyname('ICMS_CAMEX').asfloat > 0) then begin
             PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value       := ICMS.fieldbyname('ICMS_CAMEX').asfloat;
             PedidosNFItens.fieldbyname('Aliquota_ICMSIntegral').Value := ICMS.fieldbyname('ICMS_CAMEX').asfloat;
          end;

          CalculaTudo;
     end;
*)     
end;

procedure TfFatPedidoNF.PegaCST;
var
   mCST: string;
   mBC, mTotal: real;
begin
     with PedidosNFItens do begin
          // Código de Situação Tributaria do IPI.
          mCST := '';
          if (Fieldbyname('Valor_IPI').ascurrency > 0) or (Fieldbyname('Aliquota_IPI').ascurrency> 0)      then mCST := Trim(OpFiscal.FieldByName('ES').AsString)+'+IPI';
          if Produtos.fieldbyname('Valor_IPI').asfloat <> 0                                                then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+V';
          if tNCM.fieldbyname('IPI_TribAliquotaZero').asboolean                                            then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+V';
          if (tNCM.fieldbyname('IPI_Isento').AsBoolean) or (OpFiscal.fieldbyname('Isencao_IPI').AsBoolean) then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+I';
          if OpFiscal.fieldbyname('Nao_Tributada_IPI').asboolean                                           then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+NT';
          if OpFiscal.fieldbyname('Imune_IPI').asboolean                                                   then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+IM';
          if tNCM.fieldbyname('IPI_Suspensao').asboolean                                                   then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+SUS';
          if OpFiscal.fieldbyname('Suspensao_IPI').asboolean                                               then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+SUS';
          if mCST = ''                                                                                     then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+<>';
          if not CSTIPI.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
             mCST := '<>';
             CSTIPI.Locate('Classificacao', mCST, [loCaseInsensitive]);
          end;
          Fieldbyname('CSTIPI').Value := CSTIPI.FieldByName('Codigo').Value;

          // Código de Situação Tributaria do PIS/COFINS.
          if TabPISCOFINS.Locate('Imposto', 'PIS', [loCaseInsensitive]) then begin
             mCST := '';
             if PedidosNF.fieldbyname('ES').AsInteger = 1 then begin
                if (Produtos.fieldbyname('Aliquota_PISSaida').AsFloat > 0) and (Produtos.fieldbyname('Aliquota_PISSaida').AsFloat = TabPISCOFINS.fieldbyname('Saida').AsFloat) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+B';                                     // 01.
                if (Produtos.fieldbyname('Aliquota_PISSaida').AsFloat > 0) and (Produtos.fieldbyname('Aliquota_PISSaida').AsFloat <> TabPISCOFINS.fieldbyname('Saida').AsFloat) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+D';                                     // 02.
                if (OpFiscal.fieldbyname('CSTPIS_AliquotaUM').AsBoolean) or (Produtos.fieldbyname('CSTPIS_AliquotaUM').AsBoolean) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+UM';                                    // 03.
                if (OpFiscal.fieldbyname('CSTPIS_Monofasica').AsBoolean) or (Produtos.fieldbyname('CSTPIS_Monofasica').AsBoolean) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+MONO+A0';                               // 04.
                if (tNCM.fieldbyname('PIS_ST').asboolean) and (Destinatarios.fieldbyname('Varejista').AsBoolean) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+ST';                                    // 05.
                if (OpFiscal.fieldbyname('CSTPIS_AliquotaZero').AsBoolean) or (Produtos.fieldbyname('CSTPIS_AliquotaZero').AsBoolean) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+A0';                                    // 06.
                if (OpFiscal.fieldbyname('CSTPIS_Isenta').AsBoolean) or (Produtos.fieldbyname('CSTPIS_Isenta').AsBoolean) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+ISE';                                   // 07.
                if (OpFiscal.fieldbyname('CSTPIS_SemIncidencia').AsBoolean) or (Produtos.fieldbyname('CSTPIS_SemIncidencia').AsBoolean) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+SINC';                                  // 08.
                if (OpFiscal.fieldbyname('CSTPIS_Suspensao').AsBoolean) or (Produtos.fieldbyname('CSTPIS_Suspensao').AsBoolean) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+SUS';                                   // 09.
                if (OpFiscal.fieldbyname('CSTPIS_Outras').AsBoolean) or (Produtos.fieldbyname('CSTPIS_Outras').AsBoolean) then
                   mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+O';                                     // Outras.
             end else begin
                if Trim(Produtos.fieldbyname('CSTPIS_Entrada').AsString) <> '' then begin
                   if CSTPIS.Locate('Codigo', Produtos.fieldbyname('CSTPIS_Entrada').Value, [loCaseInsensitive]) = true then begin
                      mCST := CSTPIS.fieldbyname('Classificacao').Value;
                   end;
                end else begin
                   if Trim(OpFiscal.fieldbyname('CST_PIS').Value) <> '' then begin
                      if CSTPIS.Locate('Codigo', OpFiscal.fieldbyname('CST_PIS').Value, [loCaseInsensitive]) = true then begin
                         mCST := CSTPIS.fieldbyname('Classificacao').Value;
                      end;
                   end else begin
                      If (Produtos.fieldbyname('PIS_Nota').AsFloat > 0) then
                         mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+RNTNTMIE'; // 56;
                   end;
                end;

                If (OpFiscal.fieldbyname('CSTPIS_Isenta').AsBoolean        = true) or (Produtos.fieldbyname('CSTPIS_IsentaEnt').AsBoolean        = true) then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+ISE';  // 71.
                If (OpFiscal.fieldbyname('CSTPIS_Suspensao').AsBoolean     = true) or (Produtos.fieldbyname('CSTPIS_SuspensaoEnt').AsBoolean     = true) then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+SUS';  // 72.
                If (OpFiscal.fieldbyname('CSTPIS_AliquotaZero').AsBoolean  = true) or (Produtos.fieldbyname('CSTPIS_AliquotaZeroEnt').AsBoolean  = true) then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+A0';   // 73.
                If (OpFiscal.fieldbyname('CSTPIS_SemIncidencia').AsBoolean = true) or (Produtos.fieldbyname('CSTPIS_SemIncidenciaEnt').AsBoolean = true) then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+SINC'; // 74.
                If (OpFiscal.fieldbyname('CSTPIS_Outras').AsBoolean        = true) or (Produtos.fieldbyname('CSTPIS_OutrasEnt').AsBoolean        = true) then mCST := Trim(OpFiscal.fieldbyname('ES').AsString)+'+O';    // Outras.
             end;
          end else begin
             Alerta.Title     := 'ATENÇÃO!';
             Alerta.Text      := 'Alíquota básica do PIS/COFINS não cadastrada na tabela de PIS/COFINS.';
             Alerta.AlertType := atWarning;
             Alerta.Execute;
          end;
          with tTmp do begin
               // CST PIS.
               sql.clear;
               sql.add('select Codigo from CSTPIS where Classificacao = '+quotedstr(mCST));
               open;
               if recordcount = 0 then begin
                  mCST := '<>';
                  sql.clear;
                  sql.add('select * from CSTPIS where Codigo = '+quotedstr(mCST));
                  open;
               end;
               PedidosNFItens.fieldbyname('CSTPIS').Value := fieldbyname('Codigo').Value;
               // CST COFINS.
               sql.clear;
               sql.add('select Codigo from CSTCOFINS where Classificacao = '+quotedstr(mCST));
               open;
               if recordcount = 0 then begin
                  mCST := '<>';
                  sql.clear;
                  sql.add('select * from CSTCOFINS where Codigo = '+quotedstr(mCST));
                  open;
               end;
               PedidosNFItens.fieldbyname('CSTCOFINS').Value := fieldbyname('Codigo').Value;
          end;

          // CST ICMS Operacional.
          mCST   := '';
          mBC    := fieldbyname('Valor_BCICMSOp').asfloat;
          mTotal := cValor_Total.Value;
          if Empresas.fieldbyname('Regime_Tributario').asinteger = 3 then begin
             // Empresas optantes do Regime normal.
             if Fieldbyname('Valor_ICMSOp').Value <> 0 then
                mCST := mCST + '+O'
             else
                mCST := mCST + '-O';     // ICMS Operacional.

             if (Int(mBC) < Int(mTotal)) and (mBC > 0) then
                mCST := mCST + '+R'
             else
                mCST := mCST + '-R';     // Reducao de base.

             if OpFiscal.Fieldbyname('ES').asinteger = 0 then begin
                mCST := mCST + '-S';     // ICMS ST na Entrada.
             end else begin
                if Fieldbyname('Valor_ICMSST').ascurrency <> 0 then
                   mCST := mCST + '+S'
                else
                   mCST := mCST + '-S';  // ICMS ST na Saida.
             end;
             if OpFiscal.Fieldbyname('Isencao_ICMS').AsBoolean or tNCM.fieldbyname('ICMS_Isento').AsBoolean then mCST := '+I';
             if OpFiscal.Fieldbyname('Nao_Tributada_ICMS').asboolean then mCST := '+NT';
             if OpFiscal.Fieldbyname('Suspensao_ICMS').AsBoolean or tNCM.fieldbyname('ICMS_Suspensao').AsBoolean then mCST := '+SUS';
             if Processos.fieldbyname('ICMS_Diferido').asboolean and (OpFiscal.Fieldbyname('ES').asinteger = 0) then mCST := '+D';
             if OpFiscal.Fieldbyname('Diferido_ICMS').AsBoolean then mCST := '+D';
             if cICMSAnt.Checked then mCST := mCST + '+SD';

             // CST para Detalhe especifico combustivel.
             if OpFiscal.Fieldbyname('ES').asinteger = 0 then begin
                if Produtos.fieldbyname('CSTICMS_Entrada').asstring <> '' then mCST := Produtos.fieldbyname('CSTICMS_Entrada').AsString;
             end else begin
                if Produtos.fieldbyname('CSTICMS_Saida').asstring <> '' then mCST := Produtos.fieldbyname('CSTICMS_Saida').AsString;
             end;

             if OpFiscal.Fieldbyname('Monofasico_Comb').asboolean         then MCST := '02';
             if OpFiscal.Fieldbyname('Monofasico_CombRetencao').asboolean then MCST := '15';
             if OpFiscal.Fieldbyname('Monofasico_CombDiferido').asboolean then MCST := '53';
             if OpFiscal.Fieldbyname('Monofasico_CombAnterior').asboolean then MCST := '61';
             with tTmp do begin
                  sql.clear;
                  sql.add('select Codigo from CSTICMS where Classificacao = '+quotedstr(mCST));
                  open;
                  if recordcount = 0 then begin
                     mCST := '<>';
                     sql.clear;
                     sql.add('select * from CSTICMS where Codigo = '+quotedstr(mCST));
                     open;
                  end;
                  if Produtos.Fieldbyname('Origem').asstring = 'I' then mCST := tNCM.Fieldbyname('CodigoTrib_TabA').Value;
                  if Produtos.Fieldbyname('Origem').asstring = 'N' then mCST := tNCM.Fieldbyname('CodigoTrib_TabA2').Value;
                  if Produtos.Fieldbyname('Origem').asstring = 'M' then mCST := tNCM.Fieldbyname('CodigoTrib_TabA3').Value;
                  PedidosNFItens.fieldbyname('CSTICMS_TabA').Value := mCST;
                  PedidosNFItens.fieldbyname('CSTICMS_TabB').Value := fieldbyname('Codigo').asstring;
             end;
          end else begin
             // Empresas do Regime do Simples Nacional.
             if tNCMICMS.RecordCount > 0 then begin
                if OpFiscal.Fieldbyname('ES').asinteger = 1 then begin
                   if (tNCMICMS.FieldByName('ST').AsFloat = 0) and (not Destinatarios.fieldbyname('Consumidor_Final').AsBoolean and not Destinatarios.fieldbyname('Simples_Nacional').AsBoolean) then mCST := '101';
                end;
                if OpFiscal.Fieldbyname('ES').asinteger = 0 then begin
                   if tNCMICMS.FieldByName('ST').asfloat = 0 then mCST := '102';
                end else begin
                   if (tNCMICMS.FieldByName('ST').AsFloat = 0) and (Destinatarios.fieldbyname('Consumidor_Final').AsBoolean or Destinatarios.fieldbyname('Simples_Nacional').AsBoolean) then mCST := '102';
                end;
             end else begin
                cLog.Lines.add('ERRO DE CST: Tabela de ICMS para "SIMPLES NACIONAL" não cadastrada.');
             end;

             if OpFiscal.Fieldbyname('Isencao_ICMS').AsBoolean or tNCM.fieldbyname('ICMS_Isento').AsBoolean then begin
                if PedidosNF.Fieldbyname('ES').AsInteger = 0 then begin
                   if tNCMICMS.FieldByName('ST').AsFloat = 0 then mCST := '103';
                end else begin
                   if tNCMICMS.FieldByName('ST').AsFloat = 0 then mCST := '103';
                end;
             end;
             if OpFiscal.Fieldbyname('ES').asinteger = 1 then begin
                if (tNCMICMS.FieldByName('ST').AsFloat > 0) and not Destinatarios.Fieldbyname('Consumidor_Final').AsBoolean and not Destinatarios.Fieldbyname('Simples_Nacional').AsBoolean then mCST := '201';
             end;
             if OpFiscal.Fieldbyname('ES').asinteger = 0 then begin
                if tNCMICMS.FieldByName('ST').AsFloat > 0 then mCST := '202';
             end else begin
                if (tNCMICMS.FieldByName('ST').AsFloat > 0) and (Destinatarios.Fieldbyname('Consumidor_Final').AsBoolean or Destinatarios.Fieldbyname('Simples_Nacional').AsBoolean) then mCST := '202';
             end;
             if OpFiscal.Fieldbyname('Isencao_ICMS').AsBoolean or tNCM.Fieldbyname('ICMS_Isento').AsBoolean then begin
                if PedidosNF.Fieldbyname('ES').AsInteger = 0 then begin         // NF de Entrada.
                   if tNCMICMS.FieldByName('ST').AsFloat > 0 then mCST := '203';
                end else begin                                           // NF de Saída.
                   if tNCMICMS.FieldByName('ST').AsFloat > 0 then mCST := '203';
                end;
             end;
             if OpFiscal.Fieldbyname('Imune_ICMS').AsBoolean or tNCM.Fieldbyname('ICMS_Imune').AsBoolean then mCST := '300';
             if OpFiscal.Fieldbyname('Nao_Tributada_ICMS').AsBoolean then mCST := '400';
             if cICMSAnt.Checked then mCST := '500';
             if OpFiscal.Fieldbyname('Diferido_ICMS').AsBoolean then mCST := '900';

             if PedidosNF.Fieldbyname('ES').AsInteger = 0 then begin
                if Trim(OpFiscal.Fieldbyname('CSOSN_Entrada').AsString) <> '' then begin
                   mCST := Trim(OpFiscal.Fieldbyname('CSOSN_Entrada').AsString);
                end;
             end else begin
                if Trim(OpFiscal.Fieldbyname('CSOSN_Saida').AsString) <> '' then begin
                   mCST := Trim(OpFiscal.Fieldbyname('CSOSN_Saida').AsString);
                end;
             end;

             if OpFiscal.Fieldbyname('Monofasico_Comb').asboolean then MCST := '02';
             if OpFiscal.Fieldbyname('Monofasico_CombRetencao').asboolean then MCST := '15';
             if OpFiscal.Fieldbyname('Monofasico_CombDiferido').asboolean then MCST := '53';
             if OpFiscal.Fieldbyname('Monofasico_CombAnterior').asboolean then MCST := '61';

             with tTmp do begin
                  sql.clear;
                  sql.add('select Codigo from CSTICMS where Classificacao = '+quotedstr(mCST));
                  open;
                  if recordcount = 0 then begin
                     mCST := 'S<>';
                     sql.clear;
                     sql.add('select * from CSTICMS where Codigo = '+quotedstr(mCST));
                     open;
                  end;
                  if Produtos.Fieldbyname('Origem').asstring = 'I' then mCST := tNCM.Fieldbyname('CodigoTrib_TabA').Value;
                  if Produtos.Fieldbyname('Origem').asstring = 'N' then mCST := tNCM.Fieldbyname('CodigoTrib_TabA2').Value;
                  if Produtos.Fieldbyname('Origem').asstring = 'M' then mCST := tNCM.Fieldbyname('CodigoTrib_TabA3').Value;
                  PedidosNFItens.fieldbyname('CSTICMS_TabA').Value := mCST;
                  PedidosNFItens.fieldbyname('CSTICMS_TabB').Value := fieldbyname('Codigo').asstring;
             end;
          end;
     end;
end;

procedure TfFatPedidoNF.cQtdeExit(Sender: TObject);
begin
     CalculaTudo;
end;

procedure TfFatPedidoNF.cValor_BCIIChange(Sender: TObject);
begin
    CalculaTudo;
end;

procedure TfFatPedidoNF.cValor_BCIPIChange(Sender: TObject);
begin
    CalculaTudo;
end;

procedure TfFatPedidoNF.cValor_DescontoExit(Sender: TObject);
begin
    CalculaTudo;
end;

procedure TfFatPedidoNF.cValor_UnitarioChange(Sender: TObject);
begin
//    cValor_Total.Value := PedidosNFItens.FieldByName('Valor_Unitario').AsCurrency * PedidosNFItens.FieldByName('Quantidade').asfloat;
end;

procedure TfFatPedidoNF.cValor_UnitarioExit(Sender: TObject);
begin
    CalculaTudo;
end;

procedure TfFatPedidoNF.bPesquisaClick(Sender: TObject);
begin
     PedidosNF.Cancel;
     LigaBotoes(true);
     Pesquisa(PedidosNF,'PedidosNF','Pedido', 'Pedido',cPesquisa.text)
end;

procedure TfFatPedidoNF.PedidosNFBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Pedido').AsString, EstadoTabela(DataSet));
end;

procedure TfFatPedidoNF.PedidosNFBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Pedido').AsString, 'Delete');
end;

procedure TfFatPedidoNF.MudaPedido;
begin
      if PedidosNF.tag = 1 then begin
         with PedidosNF do begin
              sql.clear;
              sql.add('select * from PedidosNF where Pedido = :pPed');
              parambyname('pPed').value := ListaPed.FieldByName('Pedido').asinteger;
              open;
         end;
         with Destinatarios do begin
              sql.clear;
              sql.add('select Codigo');
              sql.add('      ,Nome');
              sql.add('      ,CNPJ_CPF = iif(isnull(CNPJ, '''') <> '''', replicate(''0'', 14-len(isnull(CNPJ,'''')))+isnull(CNPJ,''''), replicate(''0'', 14-len(isnull(CPF, '''')))+isnull(CPF,''''))');
              sql.add('      ,CNPJ');
              sql.add('      ,CPF');
              sql.add('      ,Estado');
              sql.add('      ,Indicador_IE');
              sql.add('      ,Rua');
              sql.add('      ,Rua_Numero');
              sql.add('      ,Complemento');
              sql.add('      ,Bairro');
              sql.add('      ,Municipio');
              sql.add('      ,Estado');
              sql.add('      ,CEP');
              sql.add('      ,Pais');
              sql.add('      ,Telefone1');
              sql.add('      ,Inscricao_Estadual');
              sql.add('      ,Atacadista');
              sql.add('      ,Varejista');
              sql.add('      ,Simples_Nacional');
              sql.add('      ,Consumidor_Final');
              sql.add('from Destinatarios');
              sql.add('where isnull(Desativado, 0) = 0');
              sql.add('and Fornecedor = iif(:pES = 0, 1, 0)');
              sql.add('and cliente    = iif(:pES = 0, 0, 1)');
              parambyname('pES').asinteger := PedidosNF.fieldbyname('ES').AsInteger;
              sql.add('order by Nome');
              //sql.SaveToFile('c:\temp\Destinatarios.sql');
              open;
         end;
         with PedidosNFItens do begin
              sql.clear;
              sql.add('select * from PedidosNFItens where Pedido = :pPed order by Item');
              parambyname('pPed').value := ListaPed.FieldByName('Pedido').asinteger;
              open;
         end;
         {
         with CFOP do begin
              sql.clear;
              sql.add('select Codigo');
              sql.add('      ,Descricao');
              sql.add('from CFOP ');
              sql.add('where Desativada <> 1');
              sql.add('and ES = :pES');
              sql.add('and Apuracao_PISCOFINS = :pApura');
              if PedidosNF.FieldByName('Destinatario_Estado').asstring = Empresas.FieldByName('Estado').AsString then begin
                 sql.add('and Estado = ''D'' ');
              end else begin
                 sql.add('and Estado <> ''D'' ');
              end;
              parambyname('pApura').value := OpFiscal.FieldByName('Apuracao_PISCOFINS').asboolean;
              parambyname('pES').value    := OpFiscal.FieldByName('ES').asinteger;
              //sql.savetofile('c:\temp\CFOP.sql');
              open;
         end;
         }
         with tFormulas do begin
              sql.clear;
              sql.add('select *');
              sql.add('from OperacaoFiscalFormulas');
              sql.add('where Operacao = :pOp');
              sql.add('and Desativada <> 1');
              sql.add('order by Tipo, Ordem_Calculo, Campo');
              parambyname('pOp').AsInteger := PedidosNF.FieldByName('Operacao').AsInteger;
              open;
         end;
         with ICMS do begin
              sql.clear;
              sql.add('select UF');
              sql.add('      ,Imp_Contribuinte');
              sql.add('      ,Imp_NContribuinte');
              sql.add('      ,Nac_Contribuinte');
              sql.add('      ,Nac_NContribuinte');
              sql.add('      ,Reducao_ICMS');
              sql.add('      ,Simples_Nacional');
              sql.add('      ,ICMSSub_ReceitaDentro');
              sql.add('      ,ICMSSub_ReceitaFora');
              sql.add('      ,Reducao_MVASimplesNac');
              sql.add('      ,Imp_ContribuinteCheia');
              sql.add('      ,Imp_NContribuinteCheia');
              sql.add('      ,Nac_ContribuinteCheia');
              sql.add('      ,Nac_NContribuinteCheia');
              sql.add('      ,ICMS_CAMEX');
              sql.add('      ,MVA');
              sql.add('      ,FCP');
              sql.add('      ,ICMS_Interno');
              sql.add('      ,ICMS_CTe');
              sql.add('      ,Empresa');
              sql.add('from ICMS');
              sql.Add('where UF = :pUF');
              parambyname('pUF').value := ListaPed.FieldByName('Destinatario_Estado').AsString;
              open;
         end;
      end;
      PedidosNF.Tag := 1;
end;

procedure TfFatPedidoNF.cAliquota_IIChange(Sender: TObject);
begin
    CalculaTudo;
end;

procedure TfFatPedidoNF.cAliquota_IPIChange(Sender: TObject);
begin
    CalculaTudo;
end;

procedure TfFatPedidoNF.CalculaTudo;
var
   mValor: real;
   mCp: TComponent;
begin
      cLog.Clear;
      gFormula.RowCount  := 1;
      with tFormulas do begin
           first;
           while not eof do begin
                 gFormula.Cells[0, gFormula.RowCount-1] := tFormulas.FieldByName('Campo').AsString;
                 gFormula.Cells[1, gFormula.RowCount-1] := tFormulas.fieldbyname('Formula').AsString;

                 with Campos do begin
                      sql.clear;
                      sql.add('select Campo');
                      sql.add('      ,Tabela');
                      sql.add('      ,Campo_Chave');
                      sql.add('      ,Pesquisa');
                      sql.add('      ,Percentual');
                      sql.Add('from Campos');
                      sql.Add('where Campo in('+ListaCampos(tFormulas.fieldbyname('Formula').AsString, 0)+')');
                      sql.add('order by Tabela');
                      //sql.SaveToFile('c:\temp\Calcula_Campos.sql');
                      open;
                 end;
                 if fieldbyname('Tipo').AsString = 'Item' then begin
                    // Faz o calculo da formula e Acha o campo.
                    mValor := CalculaMacro(fieldbyname('Formula').AsString);
                    PedidosNFItens.fieldbyname(fieldbyname('Campo').AsString).value := mValor;
                    mCp    := Self.FindComponent('c'+trim(fieldbyname('Campo').asstring));
                 end;
                 next;
           end;
      end;
      // Totaliza os campos de total dos itens.
      cValor_Total.Value := PedidosNFItens.FieldByName('Valor_Unitario').AsCurrency * PedidosNFItens.FieldByName('Quantidade').asfloat;
      with PedidosNFItens do begin
           cTotalII.Value          := Fieldbyname('Valor_II').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalIPI.Value         := Fieldbyname('Valor_IPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalOutrasIPI.Value   := Fieldbyname('Valor_OutrasIPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalIsentasIPI.Value  := Fieldbyname('Valor_IsentasIPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalPIS.Value         := Fieldbyname('Valor_PIS').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalCOFINS.Value      := Fieldbyname('Valor_COFINS').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalICMSOp.Value      := Fieldbyname('Valor_ICMSOp').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalICMSST.Value      := Fieldbyname('Valor_ICMSST').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalOutrasICMS.Value  := Fieldbyname('Valor_OutrasICMS').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalIsentasICMS.Value := Fieldbyname('Valor_IsentasICMS').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalMVA.Value         := Fieldbyname('Valor_MVA').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalICMSOP.Value      := Fieldbyname('Valor_ICMSOp').AsCurrency * Fieldbyname('Quantidade').asfloat;
      end;

     // PegaCST;
end;

// Executa os calculos dos macros passados como strings.
function TfFatPedidoNF.CalculaMacro(Formula:String): Real;
var
    mFormula: String;
    mResultado: real;
begin
     // Convertendo a formula do campo.
     mFormula := StringReplace(Formula ,#13,'',[rfReplaceAll]);
     mFormula := StringReplace(mFormula,#12,'',[rfReplaceAll]);
     mFormula := StringReplace(mFormula,#10,'',[rfReplaceAll]);
     with Campos do begin
          First;
          while not Eof do begin
                mFormula := stringreplace(mFormula, fieldbyname('Campo').AsString, SubstituirCampos(fieldbyname('Campo').AsString), [rfReplaceAll]);
                campos.Next;
          end;                                              
          mFormula := SubstituirCondicao(mFormula);
          mformula := stringreplace(mFormula,' ', '', [rfReplaceAll]);
     end;
     try
         Macro.Formula := mFormula;
         mResultado    := Macro.Calc([0]);
         if mResultado <= 0 then mResultado := 0;
     except
         cLog.Lines.Add('');
         cLog.Lines.Add(stringofchar('>', 30)+' ERRO NA FÓRMULA DO CAMPO '+stringofchar('<', 30));
         mResultado := 0;
     end;
     gFormula.Cells[2, gFormula.RowCount-1] := mFormula;
     gFormula.Cells[3, gFormula.RowCount-1] := floattostr(mResultado);
     gFormula.RowCount := gFormula.RowCount + 1;
     result := mResultado;
end;

function TfFatPedidoNF.SubstituirCampos(Campo: string): string;
var
  Match: TMatch;
  CampoNome
 ,NomeDataSet: string;
  DataSet: TDataSet;
  mValor: real;
begin
     Result      := '';
     NomeDataSet := copy(Campo, 1, pos('_', Campo)-1);
     // Localiza componente pelo nome
     DataSet := TDataSet(FindComponent(NomeDataset));
     if not DataSet.Active then begin
        result := '0';
        exit;
     end;
     // Expressão regular para pegar o texto dentro dos colchetes
     Match     := TRegEx.Match(Campo, '\[(.*?)\]');
     CampoNome := Match.Groups[1].Value;
     if DataSet.FindField(CampoNome) <> nil then begin
        Result := iif(DataSet.FieldByName(CampoNome).AsString = '', '0', DataSet.FieldByName(CampoNome).AsString);
     end else begin
        Result := '0';
     end;
end;

function TfFatPedidoNF.SubstituirCondicao(Campo: string): string;
var
   mPosFun
  ,i: integer;
   mFuncao
  ,mFunCondic
  ,mValorCondic1
  ,mValorCondic2
  ,mFunTermo1
  ,mFunTermo2
  ,mSinal: string;
begin
     result := '';
     while Pos('{', Campo) > 0 do begin
           Campo := stringreplace(Campo, 'CONDIÇÃO', '', [rfReplaceAll]);
           mPosFun := Pos('{', Campo)+1;
           mFuncao := Copy(Campo, mPosFun, Pos('}', Campo)-mPosFun);

           // Condição da função.
           mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
           mFuncao    := StringReplace(mFuncao, mFunCondic, '', [rfReplaceAll]);
           mFunCondic := StringReplace(mFunCondic, ';', '', [rfReplaceAll]);

           // Primeiro termo da função.
           mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
           mFuncao    := StringReplace(mFuncao, mFunTermo1, '', [rfReplaceAll] );
           mFunTermo1 := StringReplace(mFunTermo1, ';', '', [rfReplaceAll] );

           // Segundo termo da função.
           mFunTermo2 := StringReplace(mFuncao, ';', '', [rfReplaceAll]);

           // Sinal utilizado no teste de condição.
           mSinal := '';
           for i := 1 to Length(mFunCondic) do begin
               if (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
           end;

           // Valores da condição.
           mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
           mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
           mFuncao := '';
           for i := Pos('{', Campo) to Length(Campo) do begin
               mFuncao := mFuncao + Campo[i];
               if Campo[i] = '}' then break;
           end;
           if ApenasNumeros(mValorCondic2) <> '' then begin
              if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                 (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                 (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                 (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                 (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                 (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                 Campo := StringReplace(Campo, mFuncao, mFunTermo1, [rfReplaceAll])
              else
                 Campo := StringReplace(Campo, mFuncao, mFunTermo2, [rfReplaceAll]);
           end else begin
              if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                 (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                 (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                 (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                 (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                 (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                 Campo := StringReplace(Campo, mFuncao, mFunTermo1, [rfReplaceAll])
              else
                 Campo := StringReplace(Campo, mFuncao, mFunTermo2, [rfReplaceAll]);
           end;
     end;
     result := Campo;
end;



end.



