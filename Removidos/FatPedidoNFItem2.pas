unit FatPedidoNFItem2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, CalcExpress, Data.DB, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, uniMemo, uniBasicGrid, uniStringGrid, uniCheckBox, uniDBCheckBox, uniGroupBox, uniLabel, uniEdit, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniPageControl, uniButton, uniBitBtn, uniSpeedButton, uniGUIBaseClasses, uniPanel, System.RegularExpressions, uniDBGrid, FireDAC.Stan.StorageBin, uniSweetAlert, uniDateTimePicker, uniDBDateTimePicker;

type
  TfFatPedidoNFItem2 = class(TUniFrame)
    UniPanel3: TUniPanel;
    UniSpeedButton1: TUniSpeedButton;
    bAddItem: TUniSpeedButton;
    bAddTudo: TUniSpeedButton;
    PedidosNFItens: TFDQuery;
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
    PedidosNFItensQuantidade: TFloatField;
    PedidosNFItensValor_BCIPI: TCurrencyField;
    PedidosNFItensAliquota_IPI: TFloatField;
    PedidosNFItensValor_IPI: TCurrencyField;
    PedidosNFItensAliquota_II: TFloatField;
    PedidosNFItensValor_II: TFloatField;
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
    PedidosNFItensValor_BCICMSOp: TCurrencyField;
    PedidosNFItensAliquota_ICMSOp: TFloatField;
    PedidosNFItensAliquota_ICMSEntrada: TFloatField;
    PedidosNFItensAliquota_ICMSPresumido: TFloatField;
    PedidosNFItensAliquota_ICMSDif: TFloatField;
    PedidosNFItensValor_ICMSOp: TCurrencyField;
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
    PedidosNFItensValor_ICMSDif: TCurrencyField;
    PedidosNFItensPercentual_Beneficio: TFloatField;
    PedidosNFItensPercentual_ICMSMono: TFloatField;
    PedidosNFItensPercentual_ICMSMonoRet: TFloatField;
    PedidosNFItensAliquota_ICMSOpRed: TFloatField;
    PedidosNFItensValor_ICMSOpRed: TCurrencyField;
    PedidosNFItensAliquota_ICMSOpIntegral: TFloatField;
    PedidosNFItensAliquota_ICMSOPRed2: TFloatField;
    PedidosNFItensCSTICMS_TabA: TStringField;
    PedidosNFItensCSTICMS_TabB: TStringField;
    PedidosNFItensES: TSmallintField;
    PedidosNFItensVeiculo: TBooleanField;
    PedidosNFItensDUIMP: TStringField;
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
    PedidosNFItensCSTIBS: TStringField;
    PedidosNFItensCSTCBS: TStringField;
    PedidosNFItensAliquota_ICMSSTAnt: TFloatField;
    PedidosNFItensValor_BCICMSSTAnt: TCurrencyField;
    dsPedidosNFItens: TDataSource;
    Produtos: TFDQuery;
    ProdutosCodigo: TIntegerField;
    ProdutosDescricao: TStringField;
    ProdutosValor_Venda: TCurrencyField;
    ProdutosValor_ConsumidorFinal: TCurrencyField;
    ProdutosValor_CustoMedio: TCurrencyField;
    ProdutosValor_Entrada: TCurrencyField;
    ProdutosValor_IPI: TCurrencyField;
    ProdutosNCM: TStringField;
    ProdutosAliquota_IPI: TFloatField;
    ProdutosAliquota_II: TFloatField;
    ProdutosValor_II: TCurrencyField;
    ProdutosReducao_PIS: TFloatField;
    ProdutosReducao_COFINS: TFloatField;
    ProdutosAliquota_PIS: TFloatField;
    ProdutosAliquota_COFINS: TFloatField;
    ProdutosAliquota_PISEntrada: TFloatField;
    ProdutosAliquota_COFINSEntrada: TFloatField;
    ProdutosAliquota_PISSaida: TFloatField;
    ProdutosAliquota_COFINSSaida: TFloatField;
    ProdutosCSTPIS_AliquotaUM: TBooleanField;
    ProdutosCSTPIS_Monofasica: TBooleanField;
    ProdutosCSTPIS_AliquotaZero: TBooleanField;
    ProdutosCSTPIS_Isenta: TBooleanField;
    ProdutosCSTPIS_SemIncidencia: TBooleanField;
    ProdutosCSTPIS_Suspensao: TBooleanField;
    ProdutosCSTPIS_Outras: TBooleanField;
    ProdutosOrigem: TStringField;
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
    ProdutosCodigo_Fabricante: TStringField;
    ProdutosUM: TStringField;
    ProdutosPeso_Liquido: TFloatField;
    ProdutosPeso_Bruto: TFloatField;
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
    tFormulas: TFDQuery;
    dstFormulas: TDataSource;
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
    tImpostosAliquota: TFloatField;
    tImpostosValor: TCurrencyField;
    tImpostosTotal: TCurrencyField;
    tImpostosCST: TStringField;
    Alerta: TUniSweetAlert;
    ttmp: TFDQuery;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    PedidosNFItensValor_BCICMSDif: TCurrencyField;
    PedidosNFItensValor_IPIDevol: TCurrencyField;
    PedidosNFItensPercentual_IPIDevol: TFloatField;
    PedidosNFItensBeneficio_Fiscal: TStringField;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    cQtde: TUniDBFormattedNumberEdit;
    cPercentual_Desconto: TUniDBFormattedNumberEdit;
    cValor_Desconto: TUniDBFormattedNumberEdit;
    cProduto: TUniDBLookupComboBox;
    cCFOP: TUniDBLookupComboBox;
    cProcesso: TUniDBLookupComboBox;
    cPO: TUniDBEdit;
    cOrdem: TUniDBEdit;
    cValor_Total: TUniFormattedNumberEdit;
    cValor_Unitario: TUniDBFormattedNumberEdit;
    GradeImpostos: TUniDBGrid;
    UniPanel1: TUniPanel;
    UniPanel4: TUniPanel;
    UniFormattedNumberEdit6: TUniFormattedNumberEdit;
    UniFormattedNumberEdit7: TUniFormattedNumberEdit;
    UniFormattedNumberEdit8: TUniFormattedNumberEdit;
    UniFormattedNumberEdit9: TUniFormattedNumberEdit;
    UniFormattedNumberEdit10: TUniFormattedNumberEdit;
    UniTabSheet2: TUniTabSheet;
    gFormula: TUniStringGrid;
    cLog: TUniMemo;
    UniTabSheet3: TUniTabSheet;
    UniPanel10: TUniPanel;
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
    UniDBFormattedNumberEdit35: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit36: TUniDBFormattedNumberEdit;
    UniPanel6: TUniPanel;
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
    cValor_BCPIS: TUniDBFormattedNumberEdit;
    cTotalPIS: TUniFormattedNumberEdit;
    cValor_PIS: TUniDBFormattedNumberEdit;
    cAliquota_PIS: TUniDBFormattedNumberEdit;
    cCSTPIS: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit;
    cTotalPISST: TUniFormattedNumberEdit;
    UniPanel9: TUniPanel;
    UniDBFormattedNumberEdit25: TUniDBFormattedNumberEdit;
    cTotalCOFINS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit26: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit27: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit;
    cTotalCOFINSST: TUniFormattedNumberEdit;
    UniPanel11: TUniPanel;
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
    UniDBFormattedNumberEdit40: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit38: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit39: TUniDBFormattedNumberEdit;
    cTotalFrete: TUniFormattedNumberEdit;
    cTotalSeguro: TUniFormattedNumberEdit;
    cTotalDespesa: TUniFormattedNumberEdit;
    UniPanel13: TUniPanel;
    UniDBFormattedNumberEdit16: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit18: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit19: TUniDBFormattedNumberEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBFormattedNumberEdit20: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit21: TUniDBFormattedNumberEdit;
    bLoteDet: TUniButton;
    bSerCha: TUniButton;
    UniDBEdit6: TUniDBEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniPanel2: TUniPanel;
    UniFormattedNumberEdit3: TUniFormattedNumberEdit;
    UniFormattedNumberEdit4: TUniFormattedNumberEdit;
    UniFormattedNumberEdit5: TUniFormattedNumberEdit;
    UniFormattedNumberEdit11: TUniFormattedNumberEdit;
    UniFormattedNumberEdit12: TUniFormattedNumberEdit;
    ProdutosAliquota_IBS: TFloatField;
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
    procedure cQtdeExit(Sender: TObject);
    procedure cValor_UnitarioExit(Sender: TObject);
  private
    { Private declarations }
    mOper: string;
    mPed
   ,mItem: integer;
    procedure CalculaTudo;
    function CalculaMacro(Formula: String): Real;
    function SubstituirCampos(Campo: string): string;
    function SubstituirCondicao(Campo: string): string;
    procedure PegaCST;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pPed, pItem: integer; pOper: string); reintroduce;
    
  end;
  
implementation

uses Funcoes, MainModule;

constructor TfFatPedidoNFItem2.Create(AOwner: TComponent; pPed, pItem: integer; pOper: string);
begin
    inherited Create(AOwner);
    mPed  := pPed;
    mItem := pItem;
    mOper := pOper;
end;

procedure TfFatPedidoNFItem2.cValor_UnitarioExit(Sender: TObject);
begin
    CalculaTudo;
end;

{$R *.dfm}

procedure TfFatPedidoNFItem2.cProdutoExit(Sender: TObject);
begin
     PedidosNFItens.FieldByName('Valor_Unitario').value := Produtos.FieldByName('Valor_Venda').AsCurrency;
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
          CalculaTudo;
     end;
end;

procedure TfFatPedidoNFItem2.cQtdeExit(Sender: TObject);
begin
    CalculaTudo;
end;

procedure TfFatPedidoNFItem2.UniFrameCreate(Sender: TObject);
begin
     UniPageControl1.ActivePageIndex := 0;
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
          sql.add('from PedidosNF');
          sql.add('where Pedido = :pPed');
          parambyname('pPed').AsInteger := mPed;
          open;
     end;
     with OpFiscal do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Finalidade_Mercadoria');
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
          sql.add('      ,Monofasico_Comb');
          sql.Add('      ,Monofasico_CombRetencao');
          sql.Add('      ,Monofasico_CombDiferido');
          sql.Add('      ,Monofasico_CombAnterior');
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
          if mOper = 'Adicionar' then begin 
             Append;
          end else begin
             Edit;
          end;
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
          sql.add('from ProcessosImp');
          sql.add('where isnull(DUIMP, '''') <> '''' ');
          sql.Add('and isnull(Processo_Fechamento, '''') <> '''' ');
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
     with tFormulas do begin
          sql.clear;
          sql.add('select *');
          sql.add('from OperacaoFiscalFormulas');
          sql.add('where Operacao = :pOp');
          sql.add('and isnull(Desativada, 0) = 0');
          sql.add('order by Tipo, Ordem_Calculo');
          parambyname('pOp').AsInteger := PedidosNF.fieldbyname('Operacao').asinteger;
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
end;

procedure TfFatPedidoNFItem2.UniSpeedButton1Click(Sender: TObject);
begin
     free;
end;

procedure TfFatPedidoNFItem2.CalculaTudo;
var
   mValor: real;
   mCp: TComponent;
   mAliqImp
  ,mCSTImp: string;
begin
     cLog.Clear;
     gFormula.RowCount := 1;
     
     // Limpa a tabela de impostos.
     with tImpostos do begin
          Open;
          EmptyDataSet;
     end;
     
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
                     open;
                end;
                if fieldbyname('Tipo').AsString = 'Item' then begin
                   // Faz o calculo da formula e Acha o campo.
                   mValor := CalculaMacro(fieldbyname('Formula').AsString);
                   PedidosNFItens.fieldbyname(fieldbyname('Campo').AsString).value := mValor;
                   mCp := Self.FindComponent('c'+trim(fieldbyname('Campo').asstring));
                end;

                // Gera os código cst.
                PegaCST;

                with tImpostos do begin
                     mAliqImp := trim(tFormulas.fieldbyname('Campo_Aliquota').asstring);
                     mCSTImp  := trim(tFormulas.fieldbyname('Campo_CST').asstring);
                     append;
                           fieldbyname('Ordem_Calculo').Value := tFormulas.FieldByName('Ordem_Calculo').Value;
                           fieldbyname('Descricao').Value     := tFormulas.FieldByName('Descricao').Value;
                           fieldbyname('Campo').Value         := tFormulas.fieldbyname('Campo').value;
                           fieldbyname('Valor').Value         := mValor;
                           fieldbyname('Total').Value         := mValor * PedidosNFItens.fieldbyname('Quantidade').value;
                           if mAliqImp <> '' then begin
                              fieldbyname('Aliquota').Value := PedidosNFItens.fieldbyname(mAliqImp).asfloat;
                           end;
                           if mCSTImp <> '' then begin
                              fieldbyname('CST').Value := PedidosNFItens.fieldbyname(mCSTImp).asstring;
                           end;
                     post;
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
     end;
end;

// Executa os calculos dos macros passados como strings.
function TfFatPedidoNFItem2.CalculaMacro(Formula:String): Real;
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
     gFormula.RowCount                      := gFormula.RowCount + 1;
     result := mResultado;
end;

function TfFatPedidoNFItem2.SubstituirCampos(Campo: string): string;
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

function TfFatPedidoNFItem2.SubstituirCondicao(Campo: string): string;
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

procedure TfFatPedidoNFItem2.PegaCST;
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

             if OpFiscal.Fieldbyname('Monofasico_Comb').asboolean         then mCST := '02';
             if OpFiscal.Fieldbyname('Monofasico_CombRetencao').asboolean then mCST := '15';
             if OpFiscal.Fieldbyname('Monofasico_CombDiferido').asboolean then mCST := '53';
             if OpFiscal.Fieldbyname('Monofasico_CombAnterior').asboolean then mCST := '61';
             with tTmp do begin
                  sql.clear;
                  sql.add('select Codigo from CSTICMSTabB where Classificacao = '+quotedstr(mCST));
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



end.
