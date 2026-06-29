unit FatPedidoNFItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, CalcExpress, Data.DB, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, uniMemo, uniBasicGrid, uniStringGrid, uniCheckBox, uniDBCheckBox, uniGroupBox, uniLabel, uniEdit, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniPageControl, uniButton, uniBitBtn, uniSpeedButton, uniGUIBaseClasses, uniPanel, System.RegularExpressions, uniDBGrid, FireDAC.Stan.StorageBin, uniSweetAlert,
  uniDateTimePicker, uniDBDateTimePicker;

type
  TfFatPedidoNFItem = class(TUniFrame)
    PedidosNFItens: TFDQuery;
    PedidosNFItensPedido: TIntegerField;
    PedidosNFItensEmpresa: TStringField;
    PedidosNFItensItem: TSmallintField;
    PedidosNFItensOperacao: TSmallintField;
    PedidosNFItensCFOP: TStringField;
    PedidosNFItensCodigo_Fabricante: TStringField;
    PedidosNFItensDescricao_Mercadoria: TMemoField;
    PedidosNFItensNCM: TStringField;
    PedidosNFItensEXTIPI: TSmallintField;
    PedidosNFItensUM: TStringField;
    PedidosNFItensCSTIPI: TStringField;
    PedidosNFItensCSTPIS: TStringField;
    PedidosNFItensCSTCOFINS: TStringField;
    PedidosNFItensAdicao: TSmallintField;
    PedidosNFItensPeso_Liquido: TBCDField;
    PedidosNFItensPeso_Bruto: TBCDField;
    PedidosNFItensMovimenta_Inventario: TBooleanField;
    PedidosNFItensMovimenta_Estoque: TBooleanField;
    PedidosNFItensModalidade_BCICMS: TSmallintField;
    PedidosNFItensModalidade_BCICMSST: TSmallintField;
    PedidosNFItensProcesso: TStringField;
    PedidosNFItensRateio_ICMSProcesso: TBCDField;
    PedidosNFItensApuracao_PISCOFINS: TBooleanField;
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
    PedidosNFItensFator_Cambio: TBCDField;
    PedidosNFItensOrigem_Mercadoria: TSmallintField;
    PedidosNFItensNumero_BL: TStringField;
    PedidosNFItensValor_BCDIFAL: TBCDField;
    PedidosNFItensValor_BCDIFALST: TBCDField;
    PedidosNFItensValor_BCICMSMono: TBCDField;
    PedidosNFItensValor_BCICMSMonoRet: TBCDField;
    PedidosNFItensValor_BCICMSPresumido: TBCDField;
    PedidosNFItensValor_COFINSST: TBCDField;
    PedidosNFItensValor_ICMSMono: TBCDField;
    PedidosNFItensValor_ICMSMonoRet: TBCDField;
    PedidosNFItensValor_ICMSPresumido: TBCDField;
    PedidosNFItensValor_PISST: TBCDField;
    PedidosNFItensFator_Produto: TBCDField;
    PedidosNFItensValor_Unitario: TBCDField;
    PedidosNFItensQuantidade: TBCDField;
    PedidosNFItensValor_BCIPI: TBCDField;
    PedidosNFItensAliquota_IPI: TBCDField;
    PedidosNFItensValor_IPI: TBCDField;
    PedidosNFItensAliquota_II: TBCDField;
    PedidosNFItensValor_II: TBCDField;
    PedidosNFItensValor_BCICMSST: TBCDField;
    PedidosNFItensAliquota_ICMSST: TBCDField;
    PedidosNFItensValor_ICMSST: TBCDField;
    PedidosNFItensValor_BCMVA: TBCDField;
    PedidosNFItensAliquota_MVA: TBCDField;
    PedidosNFItensValor_MVA: TBCDField;
    PedidosNFItensAliquota_PIS: TBCDField;
    PedidosNFItensValor_BCPIS: TBCDField;
    PedidosNFItensValor_PIS: TBCDField;
    PedidosNFItensAliquota_COFINS: TBCDField;
    PedidosNFItensValor_BCCOFINS: TBCDField;
    PedidosNFItensValor_COFINS: TBCDField;
    PedidosNFItensValor_Frete: TBCDField;
    PedidosNFItensValor_Seguro: TBCDField;
    PedidosNFItensValor_Despesa: TBCDField;
    PedidosNFItensValor_BCFCPST: TBCDField;
    PedidosNFItensValor_FCPST: TBCDField;
    PedidosNFItensValor_BCFCP: TBCDField;
    PedidosNFItensValor_FCP: TBCDField;
    PedidosNFItensValor_BCICMSDest: TBCDField;
    PedidosNFItensAliquota_ICMSDest: TBCDField;
    PedidosNFItensValor_ICMSDest: TBCDField;
    PedidosNFItensValor_DIFAL: TBCDField;
    PedidosNFItensPercentual_DIFALOrig: TBCDField;
    PedidosNFItensValor_DIFALOrig: TBCDField;
    PedidosNFItensPercentual_DIFALDest: TBCDField;
    PedidosNFItensValor_DIFALDest: TBCDField;
    PedidosNFItensValor_DIFALST: TBCDField;
    PedidosNFItensAliquota_FCP: TBCDField;
    PedidosNFItensValor_FCPDest: TBCDField;
    PedidosNFItensPercentual_FCPICMSOrig: TBCDField;
    PedidosNFItensValor_FCPICMSDest: TBCDField;
    PedidosNFItensValor_ICMSDesonerado: TBCDField;
    PedidosNFItensValor_ICMSSTAnt: TBCDField;
    PedidosNFItensValor_ICMSAnt: TBCDField;
    PedidosNFItensValor_CIF: TBCDField;
    PedidosNFItensValor_Pauta: TBCDField;
    PedidosNFItensValor_AFRMM: TBCDField;
    PedidosNFItensValor_BCII: TBCDField;
    PedidosNFItensValor_IsentasICMS: TBCDField;
    PedidosNFItensValor_OutrasICMS: TBCDField;
    PedidosNFItensValor_IsentasIPI: TBCDField;
    PedidosNFItensValor_OutrasIPI: TBCDField;
    PedidosNFItensValor_BCICMSOp: TBCDField;
    PedidosNFItensAliquota_ICMSOp: TBCDField;
    PedidosNFItensAliquota_ICMSEntrada: TBCDField;
    PedidosNFItensAliquota_ICMSPresumido: TBCDField;
    PedidosNFItensAliquota_ICMSDif: TBCDField;
    PedidosNFItensValor_BCICMSApuracao: TBCDField;
    PedidosNFItensValor_ICMSApuracao: TBCDField;
    PedidosNFItensValor_MediaBCR: TBCDField;
    PedidosNFItensValor_TotalNota: TBCDField;
    PedidosNFItensValor_Inventario: TBCDField;
    PedidosNFItensValor_Dumping: TBCDField;
    PedidosNFItensPercentual_Lucro: TBCDField;
    PedidosNFItensValor_Lucro: TBCDField;
    PedidosNFItensValor_PIS2: TBCDField;
    PedidosNFItensValor_COFINS2: TBCDField;
    PedidosNFItensAliquota_IRPJ: TBCDField;
    PedidosNFItensValor_IRPJ: TBCDField;
    PedidosNFItensAliquota_CSLL: TBCDField;
    PedidosNFItensValor_CSLL: TBCDField;
    PedidosNFItensRateio_FreteTerrNac: TBCDField;
    PedidosNFItensPercentual_Desconto: TBCDField;
    PedidosNFItensValor_Desconto: TBCDField;
    PedidosNFItensAliquota_PISRed: TBCDField;
    PedidosNFItensAliquota_COFINSRed: TBCDField;
    PedidosNFItensRateio_SISCOMEX: TBCDField;
    PedidosNFItensPercentual_Comissao: TBCDField;
    PedidosNFItensValor_Comissao: TBCDField;
    PedidosNFItensPercentual_RedICMSST: TBCDField;
    PedidosNFItensValor_ICMSDif: TBCDField;
    PedidosNFItensPercentual_Beneficio: TBCDField;
    PedidosNFItensPercentual_ICMSMono: TBCDField;
    PedidosNFItensPercentual_ICMSMonoRet: TBCDField;
    PedidosNFItensAliquota_ICMSOpRed: TBCDField;
    PedidosNFItensValor_ICMSOpRed: TBCDField;
    PedidosNFItensAliquota_ICMSOpIntegral: TBCDField;
    PedidosNFItensAliquota_ICMSOPRed2: TBCDField;
    PedidosNFItensCSTICMS_TabA: TStringField;
    PedidosNFItensCSTICMS_TabB: TStringField;
    PedidosNFItensES: TSmallintField;
    PedidosNFItensEmbarque: TIntegerField;
    PedidosNFItensBL: TStringField;
    PedidosNFItensValor_BCIBS: TBCDField;
    PedidosNFItensAliquota_IBS: TBCDField;
    PedidosNFItensValor_IBS: TBCDField;
    PedidosNFItensValor_BCCBS: TBCDField;
    PedidosNFItensAliquota_CBS: TBCDField;
    PedidosNFItensValor_CBS: TBCDField;
    PedidosNFItensValor_BCIS: TBCDField;
    PedidosNFItensAliquota_IS: TBCDField;
    PedidosNFItensValor_IS: TBCDField;
    PedidosNFItensCSTIBS: TStringField;
    PedidosNFItensCSTCBS: TStringField;
    PedidosNFItensAliquota_ICMSSTAnt: TBCDField;
    PedidosNFItensValor_BCICMSSTAnt: TBCDField;
    dsPedidosNFItens: TDataSource;
    Produtos: TFDQuery;
    ProdutosCodigo: TIntegerField;
    ProdutosDescricao: TStringField;
    ProdutosValor_Venda: TBCDField;
    ProdutosValor_ConsumidorFinal: TBCDField;
    ProdutosValor_CustoMedio: TBCDField;
    ProdutosValor_Entrada: TBCDField;
    ProdutosValor_IPI: TBCDField;
    ProdutosNCM: TStringField;
    ProdutosAliquota_IPI: TBCDField;
    ProdutosAliquota_II: TBCDField;
    ProdutosValor_II: TBCDField;
    ProdutosReducao_PIS: TBCDField;
    ProdutosReducao_COFINS: TBCDField;
    ProdutosAliquota_PIS: TBCDField;
    ProdutosAliquota_COFINS: TBCDField;
    ProdutosAliquota_PISEntrada: TBCDField;
    ProdutosAliquota_COFINSEntrada: TBCDField;
    ProdutosAliquota_PISSaida: TBCDField;
    ProdutosAliquota_COFINSSaida: TBCDField;
    ProdutosCSTPIS_AliquotaUM: TBooleanField;
    ProdutosCSTPIS_Monofasica: TBooleanField;
    ProdutosCSTPIS_AliquotaZero: TBooleanField;
    ProdutosCSTPIS_Isenta: TBooleanField;
    ProdutosCSTPIS_SemIncidencia: TBooleanField;
    ProdutosCSTPIS_Suspensao: TBooleanField;
    ProdutosCSTPIS_Outras: TBooleanField;
    ProdutosOrigem: TStringField;
    ProdutosICMS_ForaEstadoEnt: TBCDField;
    ProdutosICMS_ForaEstadoSai: TBCDField;
    ProdutosICMS_DentroEstadoEnt: TBCDField;
    ProdutosICMS_DentroEstadoSai: TBCDField;
    ProdutosICMS_DentroEstadoSimples: TBCDField;
    ProdutosTabela_CAMEX: TBooleanField;
    ProdutosCSTICMS_Entrada: TStringField;
    ProdutosCSTICMS_Saida: TStringField;
    ProdutosBeneficio_FiscalEnt: TStringField;
    ProdutosBeneficio_FiscalSai: TStringField;
    ProdutosCodigo_Fabricante: TStringField;
    ProdutosUM: TStringField;
    ProdutosPeso_Liquido: TBCDField;
    ProdutosPeso_Bruto: TBCDField;
    dsProdutos: TDataSource;
    CSTCBS: TFDQuery;
    dsCSTCBS: TDataSource;
    CSTIBS: TFDQuery;
    dsCSTIBS: TDataSource;
    CFOP: TFDQuery;
    CFOPCodigo: TStringField;
    CFOPDescricao: TStringField;
    dsCFOP: TDataSource;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    CSTIPI: TFDQuery;
    dsCSTIPI: TDataSource;
    CSTPIS: TFDQuery;
    dsCSTPIS: TDataSource;
    CSTCOFINS: TFDQuery;
    dsCSTCOFINS: TDataSource;
    CSTICMSB: TFDQuery;
    dsCSTICMSB: TDataSource;
    ICMS: TFDQuery;
    dsICMS: TDataSource;
    CSTICMSA: TFDQuery;
    dsCSTICMSA: TDataSource;
    TabPISCOFINS: TFDQuery;
    dsTabPISCOFINS: TDataSource;
    PedidosNF: TFDQuery;
    dsPedidosNF: TDataSource;
    OpFiscal: TFDQuery;
    dsOPFiscal: TDataSource;
    tFormulasItens: TFDQuery;
    dstFormulasItens: TDataSource;
    Campos: TFDQuery;
    dsCampos: TDataSource;
    Macro: TCalcExpress;
    tNCM: TFDQuery;
    dstNCM: TDataSource;
    tNCMICMS: TFDQuery;
    dstNCMICMS: TDataSource;
    Destinatarios: TFDQuery;
    dsDestinatarios: TDataSource;
    ProdutosPauta: TFDQuery;
    dsProdutosPauta: TDataSource;
    dstImpostos: TDataSource;
    tImpostos: TFDMemTable;
    tImpostosOrdem_Calculo: TSmallintField;
    tImpostosDescricao: TStringField;
    tImpostosCampo: TStringField;
    tImpostosAliquota: TBCDField;
    tImpostosValor: TBCDField;
    tImpostosTotal: TBCDField;
    tImpostosCST: TStringField;
    Alerta: TUniSweetAlert;
    ttmp: TFDQuery;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    PedidosNFItensValor_BCICMSDif: TBCDField;
    PedidosNFItensValor_IPIDevol: TBCDField;
    PedidosNFItensPercentual_IPIDevol: TBCDField;
    PedidosNFItensBeneficio_Fiscal: TStringField;
    UniPageControl1: TUniPageControl;
    ProdutosAliquota_IBS: TBCDField;
    PedidosNFItensDeclaracao: TStringField;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    gFormula: TUniStringGrid;
    cLog: TUniMemo;
    ProdutosEstoque_Minimo: TBCDField;
    PedidosNFItensCodigo_Mercadoria: TIntegerField;
    PedidosNFItensMovimenta_EstoqueInd: TBooleanField;
    PedidosNFItensCodigo_CredPres: TStringField;
    FichaEstoque: TFDQuery;
    FichaInventario: TFDQuery;
    ProdutosEstoque_Navio: TBooleanField;
    dstFormulasTotais: TDataSource;
    tFormulasTotais: TFDQuery;
    PedidosNFItensValor_ICMSOp: TBCDField;
    UniContainerPanel1: TUniContainerPanel;
    UniPanel3: TUniPanel;
    UniPanel11: TUniPanel;
    UniDBFormattedNumberEdit40: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit38: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit39: TUniDBFormattedNumberEdit;
    cTotalFrete: TUniFormattedNumberEdit;
    cTotalSeguro: TUniFormattedNumberEdit;
    cTotalDespesa: TUniFormattedNumberEdit;
    UniPanel12: TUniPanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    cTotalCBS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit41: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit42: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit43: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    cTotalIBS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit44: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit45: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit46: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit47: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit48: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit49: TUniDBFormattedNumberEdit;
    cTotalIS: TUniFormattedNumberEdit;
    UniPanel13: TUniPanel;
    cQtde: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit18: TUniDBFormattedNumberEdit;
    cProduto: TUniDBLookupComboBox;
    cCFOP: TUniDBLookupComboBox;
    cProcesso: TUniDBLookupComboBox;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    cValor_Produtos: TUniFormattedNumberEdit;
    cValor_Unitario: TUniDBFormattedNumberEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBFormattedNumberEdit20: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit21: TUniDBFormattedNumberEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniPanel2: TUniPanel;
    cEstoqueMinimo: TUniFormattedNumberEdit;
    cDisponivel: TUniFormattedNumberEdit;
    cInventario: TUniFormattedNumberEdit;
    cEstoqueLote: TUniFormattedNumberEdit;
    cEstoqueNavio: TUniFormattedNumberEdit;
    UniPanel5: TUniPanel;
    cValor_BCICMSOp: TUniDBFormattedNumberEdit;
    cValor_ICMS: TUniDBFormattedNumberEdit;
    cTotalICMSOp: TUniFormattedNumberEdit;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    cCSTICMS: TUniDBLookupComboBox;
    cAliquota_ICMSOp: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    cTotalICMSMono: TUniFormattedNumberEdit;
    cTotalICMSMonoRet: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit15: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit14: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    cValor_ICMSST: TUniDBFormattedNumberEdit;
    cTotalICMSSTAnt: TUniFormattedNumberEdit;
    cValor_ICMSSTAnt: TUniDBFormattedNumberEdit;
    cValor_BCICMSSTAnt: TUniDBFormattedNumberEdit;
    cAliquota_ICMSSTAnt: TUniDBFormattedNumberEdit;
    cTotalICMSST: TUniFormattedNumberEdit;
    cValor_BCICMSST: TUniDBFormattedNumberEdit;
    cAliquota_ICMSST: TUniDBFormattedNumberEdit;
    cAliquota_MVA: TUniDBFormattedNumberEdit;
    cValor_BCMVA: TUniDBFormattedNumberEdit;
    cValor_MVA: TUniDBFormattedNumberEdit;
    cTotalMVA: TUniFormattedNumberEdit;
    cAliquota_ICMSDif: TUniDBFormattedNumberEdit;
    cTotalICMSDif: TUniFormattedNumberEdit;
    cValor_ICMSDif: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit22: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit23: TUniDBFormattedNumberEdit;
    cICMSAnt: TUniDBCheckBox;
    cValor_OutrasICMS: TUniDBFormattedNumberEdit;
    cValor_IsentasICMS: TUniDBFormattedNumberEdit;
    cTotalOutrasICMS: TUniFormattedNumberEdit;
    cTotalIsentasICMS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit10: TUniDBFormattedNumberEdit;
    cTotalICMSPresumido: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit31: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit32: TUniDBFormattedNumberEdit;
    cValor_ICMSDesonerado: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit37: TUniDBFormattedNumberEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniPanel6: TUniPanel;
    cValor_BCPIS: TUniDBFormattedNumberEdit;
    cTotalPIS: TUniFormattedNumberEdit;
    cValor_PIS: TUniDBFormattedNumberEdit;
    cAliquota_PIS: TUniDBFormattedNumberEdit;
    cCSTPIS: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit;
    cTotalPISST: TUniFormattedNumberEdit;
    UniPanel7: TUniPanel;
    cCSTIPI: TUniDBLookupComboBox;
    cAliquota_IPI: TUniDBFormattedNumberEdit;
    cValor_BCIPI: TUniDBFormattedNumberEdit;
    cValor_IPI: TUniDBFormattedNumberEdit;
    cValor_OutrasIPI: TUniDBFormattedNumberEdit;
    cTotalIPI: TUniFormattedNumberEdit;
    cTotalOutrasIPI: TUniFormattedNumberEdit;
    cValor_IsentasIPI: TUniDBFormattedNumberEdit;
    cTotalIsentasIPI: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit33: TUniDBFormattedNumberEdit;
    UniFormattedNumberEdit2: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit34: TUniDBFormattedNumberEdit;
    UniPanel8: TUniPanel;
    cTotalII: TUniFormattedNumberEdit;
    cValor_II: TUniDBFormattedNumberEdit;
    cAliquota_II: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit24: TUniDBFormattedNumberEdit;
    UniPanel9: TUniPanel;
    UniDBFormattedNumberEdit25: TUniDBFormattedNumberEdit;
    cTotalCOFINS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit26: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit27: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit;
    cTotalCOFINSST: TUniFormattedNumberEdit;
    UniContainerPanel2: TUniContainerPanel;
    PedidosNFItensSequencia: TIntegerField;
    PedidosNFItensValor_Impostos: TBCDField;
    PedidosNFItensFinalidade_Mercadoria: TSmallintField;
    PedidosNFItensItem_Declaracao: TSmallintField;
    bDetalhe: TUniBitBtn;
    bSerial: TUniBitBtn;
    procedure UniFrameCreate(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
    procedure cQtdeExit(Sender: TObject);
    procedure cValor_UnitarioExit(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure bDetalheClick(Sender: TObject);
    procedure bSerialClick(Sender: TObject);
  private
    { Private declarations }
    mOper: string;
    mPed
   ,mItem: integer;
    function CalculoReverso: real;
    procedure ApuraEstoque;
    procedure TotalizaItens;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pPed, pItem: integer; pOper: string); reintroduce;
  end;
  
implementation

uses Funcoes, MainModule, FatPedidoNFDetalhe, FatPedidoNFLote, ServerModule;

constructor TfFatPedidoNFItem.Create(AOwner: TComponent; pPed, pItem: integer; pOper: string);
begin
    inherited Create(AOwner);
    mPed  := pPed;
    mItem := pItem;
    mOper := pOper;
end;

procedure TfFatPedidoNFItem.cValor_UnitarioExit(Sender: TObject);
begin
    CalculaTudo(PedidosNF.fieldbyname('Operacao').asinteger, 'Item', gFormula, cLog, PedidosNFItens, self, nil);
    TotalizaItens;
end;

{$R *.dfm}

procedure TfFatPedidoNFItem.cProcessoExit(Sender: TObject);
begin
     with PedidosNFItens do begin
          fieldbyname('Declaracao').Value := null;
          if trim(cProcesso.Text) <> '' then begin 
             fieldbyname('Declaracao').Value := Processos.FieldByName('Declaracao').AsString;
          end;
     end;
end;

procedure TfFatPedidoNFItem.cProdutoExit(Sender: TObject);
begin
     gFormula.RowCount := 1;
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
          sql.add('      ,Codigo_CredPres');
          sql.add('      ,ICMS_Isento');
          sql.Add('      ,ICMS_Imune');
          sql.add('      ,ICMS_Suspensao');
          sql.add('      ,Modalidade_BCICMS');
          sql.add('      ,Modalidade_BCICMSST');
          sql.add('      ,Codigo_EXTIPI');
          sql.add('      ,CEST');
          sql.add('      ,CBS_Isencao');
          sql.add('      ,CBS_Imunidade');
          sql.add('      ,CBS_Suspensao');
          sql.add('      ,CBS_Diferido');
          sql.add('      ,IBS_Isencao');
          sql.add('      ,IBS_Imunidade');
          sql.add('      ,IBS_Suspensao');
          sql.add('      ,IBS_Diferido');
          sql.add('from NCM');
          sql.Add('where NCM = :pNCM');
          ParamByName('pNCM').value := ProdutosNCM.AsString;
          open;
     end;
     with FichaEstoque do begin
          sql.clear;
          sql.add('select Unitario_Entrada');
          sql.add('      ,Unitario_Saida');
          sql.add('      ,Unitario_Saldo');
          sql.add('from FichaEstoque fet');
          sql.add('where fet.Codigo = :pCodigo');
          sql.add('and fet.Item = (select max(Item) from FichaEstoque fe2 where fe2.Codigo = fet.Codigo)');
          parambyname('pCodigo').asinteger := Produtos.fieldbyname('Codigo').asinteger;
          open;
     end;
     with FichaInventario do begin
          sql.clear;
          sql.add('select Unitario_Entrada');
          sql.add('      ,Unitario_Saida');
          sql.add('      ,Unitario_Saldo');
          sql.add('from FichaInventario fiv');
          sql.add('where fiv.Codigo = :pCodigo');
          sql.add('and fiv.Item = (select max(Item) from FichaEstoque fi2 where fi2.Codigo = fiv.Codigo)');
          parambyname('pCodigo').asinteger := Produtos.fieldbyname('Codigo').asinteger;
          open;
     end;

     ApuraEstoque;

     with PedidosNFItens do begin
          gFormula.Cells[0, gFormula.RowCount-1] := 'Valor_Unitario';
          gFormula.Cells[1, gFormula.RowCount-1] := 'Produtos_[Valor_Venda]';
          gFormula.Cells[2, gFormula.RowCount-1] := floattostr(Produtos.fieldbyname('Valor_Venda').ascurrency);
          gFormula.Cells[3, gFormula.RowCount-1] := floattostr(Produtos.fieldbyname('Valor_Venda').ascurrency);
          if State = dsInsert then begin
             fieldbyname('Valor_Unitario').value := Produtos.fieldbyname('Valor_Venda').ascurrency;
             if tFormulasItens.Locate('Campo', 'Valor_Unitario', [loCaseInsensitive]) then begin
                gFormula.Cells[0, gFormula.RowCount-1] := tFormulasItens.fieldbyname('Campo').AsString;
                gFormula.Cells[1, gFormula.RowCount-1] := tFormulasItens.fieldbyname('Formula').AsString;
                fieldbyname('Valor_Unitario').value    := CalculaMacro(self, tFormulasItens.fieldbyname('Formula').AsString);
             end;
          end;
          gFormula.RowCount := gFormula.RowCount + 1;
          
          fieldbyname('NCM').value                 := Produtos.fieldbyname('NCM').asstring;
          fieldbyname('UM').value                  := Produtos.fieldbyname('UM').asstring;
          FieldByName('Aliquota_IPI').value        := Produtos.FieldByName('Aliquota_IPI').AsFloat;
          FieldByName('Aliquota_II').value         := Produtos.FieldByName('Aliquota_II').AsFloat;
          FieldByName('Aliquota_PIS').value        := iif(PedidosNF.fieldbyname('ES').AsInteger = 0, Produtos.FieldByName('Aliquota_PISEntrada').AsFloat   , Produtos.FieldByName('Aliquota_PISSaida').AsFloat);
          FieldByName('Aliquota_COFINS').value     := iif(PedidosNF.fieldbyname('ES').AsInteger = 0, Produtos.FieldByName('Aliquota_COFINSEntrada').AsFloat, Produtos.FieldByName('Aliquota_COFINSSaida').AsFloat);
          fieldbyname('Codigo_CredPres').value     := tNCM.fieldbyname('Codigo_CredPres').value;
          fieldbyname('EXTIPI').value              := tNCM.Fieldbyname('Codigo_EXTIPI').value;
          fieldbyname('Modalidade_BCICMS').Value   := tNCM.fieldbyname('Modalidade_BCICMS').Value;
          fieldbyname('Modalidade_BCICMSST').Value := tNCM.fieldbyname('Modalidade_BCICMSST').Value;
          fieldbyname('CEST').Value                := tNCM.Fieldbyname('CEST').value;
          fieldbyname('Codigo_CredPres').value     := tNCM.fieldbyname('Codigo_CredPres').Value;

          // Alíquota do ICMS.
          with tNCMICMS do begin
               sql.Clear;
               sql.Add('select * from NCMICMS where NCM = :pNCM and Estado = :pEstado');
               parambyname('pNCM').Value    := Produtos.FieldByName('NCM').AsString;
               parambyname('pEstado').Value := PedidosNF.FieldByName('Destinatario_Estado').AsString;
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
             if (Destinatarios.fieldbyname('Indicador_IE').Value = '1') and (OpFiscal.fieldbyname('Finalidade_Mercadoria').asstring = 'Consumo') then begin
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
             if (Destinatarios.fieldbyName('Indicador_IE').Value = '1') and (OpFiscal.fieldbyName('Finalidade_Mercadoria').asstring = 'Consumo') then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := ICMS.fieldbyName('Imp_NContribuinte').asfloat;
             end;
             // Não Contribuinte.
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
             if (Destinatarios.fieldbyName('Indicador_IE').Value = '1') and (OpFiscal.fieldbyName('Finalidade_Mercadoria').asstring = 'Consumo') then begin
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
                //bCancItens.Click;
                Abort;
             end;
          end;
          // Não encontrando a estado na tabela de ICMS zera a alíquota do ICMS operacional.
          if ICMS.RecordCount = 0 then PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := 0;
          
          // Pegando as alíquotas de ICMS na entrada, (Cliente de fora do estado / Cliente de dentro do estado).
          PedidosNFItens.fieldbyname('Aliquota_ICMSEntrada').value := iif(PedidosNF.fieldbyName('Dentro_Fora').asstring = 'F', Produtos.fieldbyName('ICMS_ForaEstadoEnt').AsFloat, Produtos.fieldbyName('ICMS_DentroEstadoEnt').AsFloat);
          
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
          if (PedidosNF.fieldbyname('Dentro_Fora').asstring = 'D') and (Produtos.fieldbyname('ICMS_DentroEstadoSai').AsFloat > 0) then begin
             // Simples Nacional.
             if Destinatarios.fieldbyname('Simples_Nacional').AsBoolean then begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := Produtos.fieldbyname('ICMS_DentroEstadoSimples').AsFloat;
             end else begin
                PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := Produtos.fieldbyname('ICMS_DentroEstadoSai').ASFloat;
             end;
          end;
          // Fora do Estado.
          if (PedidosNF.fieldbyname('Dentro_Fora').asstring = 'F') and (Produtos.fieldbyname('ICMS_ForaEstadoSai').AsFloat > 0) then begin
             PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value := Produtos.fieldbyname('ICMS_ForaEstadoSai').asfloat;
          end;
          
          // Verifica se o produto esta na tabela CAMEX.
          if Produtos.fieldbyname('Tabela_CAMEX').AsBoolean and (ICMS.fieldbyname('ICMS_CAMEX').asfloat > 0) then begin
             PedidosNFItens.fieldbyname('Aliquota_ICMSOp').Value       := ICMS.fieldbyname('ICMS_CAMEX').asfloat;
             PedidosNFItens.fieldbyname('Aliquota_ICMSIntegral').Value := ICMS.fieldbyname('ICMS_CAMEX').asfloat;
          end;
          
          // Alíquota de CBS / IBS (Reforma Tributária).
          PedidosNFItens.fieldbyname('Aliquota_IBS').Value := Produtos.fieldbyname('Aliquota_IBS').asfloat;
          PedidosNFItens.fieldbyname('Aliquota_CBS').Value := ICMS.fieldbyname('Aliquota_CBS').asfloat;
          
          // Executa o calculo de todos os campos de valores do item.
          CalculaTudo(PedidosNF.fieldbyname('Operacao').asinteger, 'Item', gFormula, cLog, PedidosNFItens, self, nil);
          
          fieldbyname('CSTIPI').Value    := PegaCSTIPI(PedidosNF.fieldbyname('Operacao').asinteger, Produtos.FieldByName('Codigo').asinteger);
          fieldbyname('CSTPIS').Value    := PegaCSTPIS(PedidosNF.fieldbyname('Operacao').asinteger, Produtos.FieldByName('Codigo').asinteger, PedidosNF.fieldbyname('Destinatario').asinteger) ;
          fieldbyname('CSTCOFINS').Value := PegaCSTCOFINS(PedidosNF.fieldbyname('Operacao').asinteger, Produtos.FieldByName('Codigo').asinteger, PedidosNF.fieldbyname('Destinatario').asinteger) ;
          // Tabela A - Origem.
          if Produtos.fieldbyname('Origem').asstring = 'I' then fieldbyname('CSTICMS_TabA').value := tNCM.Fieldbyname('CodigoTrib_TabA').Value;
          if Produtos.fieldbyname('Origem').asstring = 'N' then fieldbyname('CSTICMS_TabA').value := tNCM.Fieldbyname('CodigoTrib_TabA2').Value;
          if Produtos.fieldbyname('Origem').asstring = 'M' then fieldbyname('CSTICMS_TabA').value := tNCM.Fieldbyname('CodigoTrib_TabA3').Value;
          // Tabela B - Tributação.
          fieldbyname('CSTICMS_TabB').Value := PegaCSTICMS(PedidosNFItens, OpFiscal.fieldbyname('Codigo').asinteger, fieldbyname('Codigo_Mercadoria').asinteger, Empresas.fieldbyname('Regime_Tributario').asinteger, PedidosNF.FieldByName('Destinatario').asinteger);
          fieldbyname('CSTCBS').Value       := PegaCSTCBS(PedidosNFItens, PedidosNF.fieldbyname('Operacao').asinteger, Produtos.FieldByName('Codigo').asinteger);
          fieldbyname('CSTIBS').Value       := PegaCSTIBS(PedidosNFItens, PedidosNF.fieldbyname('Operacao').asinteger, Produtos.FieldByName('Codigo').asinteger);

          TotalizaItens;
     end;
end;

procedure TfFatPedidoNFItem.cQtdeExit(Sender: TObject);
begin
    CalculaTudo(PedidosNF.fieldbyname('Operacao').asinteger, 'Item', gFormula, cLog, PedidosNFItens, self, nil);
    TotalizaItens;
end;

procedure TfFatPedidoNFItem.UniFrameCreate(Sender: TObject);
var
  larq: string;
begin
     UniPageControl1.ActivePageIndex := 0;
     cLog.Clear;
     gFormula.RowCount := 1;

     // Alinhando todas as fichas de dados ao centro do componente pai.
     uniPanel3.Top   := 30;
     uniPanel3.Left  := (uniPanel3.Parent.Width - uniPanel3.Width) div 2;
     uniPanel3.Color := clNone;

     lArq := UniServerModule.FilesFolder +'images\icones\DetalheProduto.bmp';
     if FileExists(lArq) then bDetalhe.Glyph.LoadFromFile(lArq);
     lArq := UniServerModule.FilesFolder +'images\icones\SerialProduto.bmp';
     if FileExists(lArq) then bSerial.Glyph.LoadFromFile(lArq);
     
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
     with PedidosNF do begin
          sql.clear;
          sql.add('select Pedido');
          sql.add('      ,Empresa');
          sql.add('      ,ES');
          sql.add('      ,Operacao');
          sql.add('      ,Dentro_Fora = case when Destinatario_Estado = (select Estado from Empresas emp where emp.CNPJ = PedidosNF.Destinatario_CNPJ_CPF) then ''D'' else ''F'' end');
          sql.add('      ,Destinatario');
          sql.add('      ,Destinatario_Estado');
          sql.add('      ,Valor_Produtos');
          sql.add('from PedidosNF');
          sql.add('where Pedido = :pPed');
          parambyname('pPed').AsInteger := mPed;
          open;
     end;
     with OpFiscal do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Finalidade_Mercadoria');
          sql.add('      ,Destino_Origem');
          sql.add('      ,ES');
          sql.add('      ,Apuracao_PISCOFINS');
          sql.add('      ,Isencao_IPI');
          sql.add('      ,Nao_Tributada_IPI');
          sql.add('      ,Imune_IPI');
          sql.add('      ,Suspensao_IPI');
          sql.Add('      ,CSTPIS_AliquotaZero');
          sql.Add('      ,CSTPIS_AliquotaUm');
          sql.Add('      ,CSTPIS_Monofasica');
          sql.add('      ,CSTPIS_Isenta');
          sql.Add('      ,CSTPIS_SemIncidencia');
          sql.Add('      ,CSTPIS_Suspensao');
          sql.Add('      ,CSTPIS_Outras');
          sql.add('      ,Isencao_ICMS');
          sql.Add('      ,Nao_Tributada_ICMS');
          sql.Add('      ,Suspensao_ICMS');
          sql.Add('      ,Diferido_ICMS');
          sql.add('      ,Imune_ICMS');
          sql.add('      ,Monofasico_Comb');
          sql.Add('      ,Monofasico_CombRetencao');
          sql.Add('      ,Monofasico_CombDiferido');
          sql.Add('      ,Monofasico_CombAnterior');
          sql.add('      ,Movimenta_Estoque');
          sql.add('      ,Movimenta_EstoqueRep');
          sql.add('      ,Movimenta_EstoqueInd');
          sql.add('      ,Movimenta_Inventario');
          sql.add('      ,CSOSN_Saida');
          sql.add('      ,Complementar');
          sql.add('      ,CBS_Isencao');
          sql.add('      ,CBS_Imunidade');
          sql.add('      ,CBS_Suspensao');
          sql.add('      ,CBS_Diferido');
          sql.add('      ,IBS_Isencao');
          sql.add('      ,IBS_Imunidade');
          sql.add('      ,IBS_Suspensao');
          sql.add('      ,IBS_Diferido');
          sql.add('from OperacaoFiscal');
          sql.add('where Codigo = :pCodigo');
          parambyname('pCodigo').asinteger := PedidosNF.FieldByName('Operacao').AsInteger;
          open;
     end;
     with Destinatarios do begin
          sql.Clear;
          sql.Add('select Indicador_IE');
          sql.Add('      ,Atacadista');
          sql.Add('      ,Varejista');
          sql.Add('      ,Estado');
          sql.Add('      ,Simples_Nacional');
          sql.Add('from Destinatarios');
          sql.Add('where Codigo = :pCod');
          parambyname('pCod').asinteger := PedidosNF.FieldByName('Destinatario').asinteger;
          open;
     end;
     with PedidosNFItens do begin
          sql.clear;
          sql.add('select * from PedidosNFItens where Pedido = :pPed and Item = :pItem');
          parambyname('pPed').AsInteger  := mPed;
          parambyname('pItem').AsInteger := mItem;
          open;
          if mOper = 'Adicionar' then Append;
          if mOper = 'Editar'    then Edit;;
     end;
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
          sql.add('      ,Aliquota_IBS');
          sql.add('      ,Beneficio_FiscalEnt');
          sql.add('      ,Beneficio_FiscalSai');
          sql.add('      ,Estoque_Minimo');
          sql.add('      ,Estoque_Navio');
          sql.add('from Produtos');
          sql.Add('where isnull(Desativado, 0) = 0');
          sql.Add('and isnull(NCM, '''') <> '''' ');
          sql.Add('order by Descricao');
          open;
     end;
     with CFOP do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CFOP');
          sql.add('where isnull(Desativada, 0) = 0');
          sql.add('and ES = :pES');
          sql.add('and Dentro_Fora = :pDentroFora');
          sql.add('and Apuracao_PISCOFINS = :pApura');
          parambyname('pES').value         := PedidosNF.FieldByName('ES').asinteger;
          parambyname('pDentroFora').value := PedidosNF.FieldByName('Dentro_Fora').asstring;
          parambyname('pApura').value      := OpFiscal.FieldByName('Apuracao_PISCOFINS').AsBoolean;
          open;
     end;
     with Processos do begin
          sql.clear;
          sql.add('select Tipo = ''IMP'' ');
          sql.Add('      ,Processo');
          sql.Add('      ,ICMS_Diferido');
          sql.Add('      ,Declaracao = DUIMP');
          sql.add('from ProcessosImp');
          sql.add('where isnull(DUIMP, '''') <> '''' ');
          sql.Add('and isnull(Processo_Fechamento, '''') <> '''' ');
          sql.Add('union all');
          sql.Add('select Tipo = ''EXP'' ');
          sql.add('      ,Processo');
          sql.Add('      ,ICMS_Diferido');
          sql.Add('      ,Declaracao = DE');
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
     with CSTICMSA do begin
          sql.clear;
          sql.add('select * from CSTICMSTabA order by Codigo');
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
     with tFormulasItens do begin
          sql.clear;
          sql.add('select Campo');
          sql.add('      ,Formula');
          sql.add('      ,Campo_Aliquota');
          sql.add('      ,Campo_CST');
          sql.add('      ,Ordem_Calculo');
          sql.add('      ,Descricao');
          sql.add('from OperacaoFiscalFormulas');
          sql.add('where Operacao = :pOp');
          sql.add('and Tipo = :pTipo');
          sql.add('and isnull(Desativada, 0) = 0');
          sql.add('order by Ordem_Calculo');
          parambyname('pOp').AsInteger  := PedidosNF.fieldbyname('Operacao').asinteger;
          parambyname('pTipo').asstring := 'Item';
          open;
     end;
     with tFormulasTotais do begin
          sql.clear;
          sql.add('select *');
          sql.add('from OperacaoFiscalFormulas');
          sql.add('where Operacao = :pOp');
          sql.add('and Tipo = :pTipo');
          sql.add('and isnull(Desativada, 0) = 0');
          sql.add('order by Tipo, Ordem_Calculo');
          parambyname('pOp').AsInteger  := PedidosNF.fieldbyname('Operacao').asinteger;
          parambyname('pTipo').asstring := 'Totalizador';
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
          sql.add('      ,Aliquota_CBS');
          sql.add('      ,Empresa');
          sql.add('from ICMS');
          sql.Add('where UF = :pUF');
          parambyname('pUF').value := PedidosNF.FieldByName('Destinatario_Estado').AsString;
          open;
     end;
     
     // Totaliza os campos de total dos itens.
     TotalizaItens;

     cProduto.setfocus;
end;

procedure TfFatPedidoNFItem.bDetalheClick(Sender: TObject);
var
  Frm: TfFatPedidoNFDetalhe;
begin
     Frm := TfFatPedidoNFDetalhe.Create(UniApplication, PedidosNFItens.fieldbyname('Pedido').AsInteger, PedidosNFItens.fieldbyname('Codigo_Mercadoria').AsInteger);
     Frm.ShowModal;
end;

procedure TfFatPedidoNFItem.bSerialClick(Sender: TObject);
var
  Frm: TfFatPedidoNFLote;
begin
     Frm := TfFatPedidoNFLote.Create(UniApplication, PedidosNFItens.fieldbyname('Pedido').AsInteger, PedidosNFItens.fieldbyname('Codigo_Mercadoria').AsInteger);
     Frm.ShowModal;
end;

function TfFatPedidoNFItem.CalculoReverso: real;
Var
    mUnitario
   ,mIPI
   ,mBCICMS
   ,mMVA
   ,mICMSST
   ,mICMSOp
   ,mFator: Real;
begin
     with PedidosNFItens do begin
          if fieldbyname('Valor_Unitario').ascurrency = 0 then begin
             if OpFiscal.fieldbyname('Origem_ValorUnitario').AsInteger = 0 then
                fieldbyname('Valor_Unitario').Value := ProdutosValor_Entrada.AsCurrency;
             if OpFiscal.fieldbyname('Origem_ValorUnitario').AsInteger = 1 then
                fieldbyname('Valor_Unitario').Value := ProdutosValor_Venda.AsCurrency;
             if OpFiscal.fieldbyname('Origem_ValorUnitario').AsInteger = 2 then
                fieldbyname('Valor_Unitario').Value := ProdutosValor_CustoMedio.AsCurrency;
                
             if Produtos.fieldbyname('Promocao').AsBoolean = true and (Produtos.fieldbyname('Promocao_Valor').AsFloat > 0) then 
                fieldbyname('Valor_Unitario').Value := Produtos.fieldbyname('Promocao_Valor').AsCurrency;
             if UpperCase(PedidosNF.fieldbyname('Desconto_Tipo').AsString) = UpperCase('COMERCIAL  - Valor Unitario') then 
                fieldbyname('Valor_Unitario').Value := ProdutosValor_Venda.Value * (1-(fieldbyname('Desconto').Value/100));

             // Desconto no valor unitário do produto "Sem destaque na nota fiscal".
             if (PedidosNF.fieldbyname('Desconto_Tipo').AsString = 'Valor unitário do Produto') then 
                fieldbyname('Valor_Unitario').Value := fieldbyname('Valor_Unitario').Value * (1-(PedidosNF.fieldbyname('Desconto_Percentual').Value/100));
          end;

          mUnitario := 1.00;
          mIPI      := Percentual(mUnitario, fieldbyname('Aliquota_IPI').AsFloat);
          mBCICMS   := mUnitario;
          if Pos('Valor do IPI unitario', OpFiscal.fieldbyname('Formula_BCICMS').AsString) <> 0 then begin
             mBCICMS := mBCICMS + mIPI;
          end;

          mICMSOp := Percentual(mBCICMS , fieldbyname('Aliquota_ICMSOper').AsFloat);
          mICMSST := 0;

          if Trim(OpFiscal.fieldbyname('Calculo_BCICMSSub').AsString) <> '' then begin
             mMVA    := Percentual((mUnitario+mIPI)   , fieldbyname('Aliquota_MVA').AsFloat);
             mICMSST := Percentual(mUnitario+mIPI+mMVA, fieldbyname('Aliquota_ICMSSub').AsFloat) - mICMSOp;
          end;
          mFator := mUnitario + mIPI + mICMSST;
          Result := fieldbyname('Valor_Unitario').AsCurrency / mFator;
     end;
end;

// Apura o estoque disponível do produto.
procedure TfFatPedidoNFItem.ApuraEstoque;
begin     
     cEstoqueMinimo.Value := Produtos.fieldbyname('Estoque_Minimo').asfloat;
     cDisponivel.Value    := EstoqueProduto(PedidosNFItens.fieldbyname('Codigo_Mercadoria').asinteger);
     cInventario.Value    := InventarioProduto(PedidosNFItens.fieldbyname('Codigo_Mercadoria').asinteger);
     cEstoqueLote.Value   := EstoqueDetalhe(PedidosNFItens.FieldByName('Codigo_Mercadoria').asinteger, 'TESTE');
end;

procedure TfFatPedidoNFItem.TotalizaItens;
begin
     // Totaliza os campos de total dos itens.
     with PedidosNFItens do begin
          cValor_Produtos.Value   := FieldByName('Valor_Unitario').AsCurrency * FieldByName('Quantidade').asfloat;
          cTotalII.Value          := Fieldbyname('Valor_II').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalIPI.Value         := Fieldbyname('Valor_IPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalOutrasIPI.Value   := Fieldbyname('Valor_OutrasIPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalIsentasIPI.Value  := Fieldbyname('Valor_IsentasIPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalPIS.Value         := Fieldbyname('Valor_PIS').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalCOFINS.Value      := Fieldbyname('Valor_COFINS').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalICMSOp.Value      := Fieldbyname('Valor_ICMSOp').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalICMSMono.Value    := Fieldbyname('Valor_ICMSMono').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalICMSMonoRet.Value := Fieldbyname('Valor_ICMSMonoRet').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalICMSST.Value      := Fieldbyname('Valor_ICMSST').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalICMSSTAnt.Value   := Fieldbyname('Valor_ICMSSTAnt').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalICMSDif.Value     := Fieldbyname('Valor_ICMSDif').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalOutrasICMS.Value  := Fieldbyname('Valor_OutrasICMS').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalIsentasICMS.Value := Fieldbyname('Valor_IsentasICMS').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalMVA.Value         := Fieldbyname('Valor_MVA').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalCBS.Value         := Fieldbyname('Valor_CBS').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalIBS.Value         := Fieldbyname('Valor_IBS').AsCurrency * Fieldbyname('Quantidade').asfloat;
          cTotalIS.Value          := Fieldbyname('Valor_IS').AsCurrency * Fieldbyname('Quantidade').asfloat;
          
          if state = dsEdit then ApuraEstoque;
     end;
end;



end.
