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
    dsPedidosNFItens: TDataSource;
    Produtos: TFDQuery;
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
    UniPageControl1: TUniPageControl;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    gFormula: TUniStringGrid;
    cLog: TUniMemo;
    FichaEstoque: TFDQuery;
    FichaInventario: TFDQuery;
    dstFormulasTotais: TDataSource;
    tFormulasTotais: TFDQuery;
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
    bDetalhe: TUniBitBtn;
    bSerial: TUniBitBtn;
    ProdutosCodigo: TIntegerField;
    ProdutosDescricao: TStringField;
    ProdutosNCM: TStringField;
    ProdutosValor_Venda: TFMTBCDField;
    ProdutosValor_ConsumidorFinal: TFMTBCDField;
    ProdutosValor_CustoMedio: TFMTBCDField;
    ProdutosValor_Entrada: TFMTBCDField;
    ProdutosAliquota_IPI: TFMTBCDField;
    ProdutosValor_IPI: TFMTBCDField;
    ProdutosAliquota_II: TFMTBCDField;
    ProdutosValor_II: TFMTBCDField;
    ProdutosAliquota_PIS: TFMTBCDField;
    ProdutosAliquota_COFINS: TFMTBCDField;
    ProdutosAliquota_PISEntrada: TFMTBCDField;
    ProdutosAliquota_COFINSEntrada: TFMTBCDField;
    ProdutosAliquota_PISSaida: TFMTBCDField;
    ProdutosAliquota_COFINSSaida: TFMTBCDField;
    ProdutosReducao_PIS: TFMTBCDField;
    ProdutosReducao_COFINS: TFMTBCDField;
    ProdutosCSTPIS_AliquotaUM: TBooleanField;
    ProdutosCSTPIS_Monofasica: TBooleanField;
    ProdutosCSTPIS_AliquotaZero: TBooleanField;
    ProdutosCSTPIS_Isenta: TBooleanField;
    ProdutosCSTPIS_SemIncidencia: TBooleanField;
    ProdutosCSTPIS_Suspensao: TBooleanField;
    ProdutosCSTPIS_Outras: TBooleanField;
    ProdutosOrigem: TSmallintField;
    ProdutosICMS_ForaEstadoEnt: TFMTBCDField;
    ProdutosICMS_ForaEstadoSai: TFMTBCDField;
    ProdutosICMS_DentroEstadoEnt: TFMTBCDField;
    ProdutosICMS_DentroEstadoSai: TFMTBCDField;
    ProdutosICMS_DentroEstadoSimples: TFMTBCDField;
    ProdutosAliquota_IBS: TFMTBCDField;
    ProdutosTabela_CAMEX: TBooleanField;
    ProdutosCSTICMS_Entrada: TStringField;
    ProdutosCSTICMS_Saida: TStringField;
    ProdutosBeneficio_FiscalEnt: TStringField;
    ProdutosBeneficio_FiscalSai: TStringField;
    ProdutosCodigo_Fabricante: TStringField;
    ProdutosUM: TStringField;
    ProdutosPeso_Liquido: TFMTBCDField;
    ProdutosPeso_Bruto: TFMTBCDField;
    ProdutosEstoque_Minimo: TFMTBCDField;
    ProdutosEstoque_Navio: TBooleanField;
    PedidosNFItensPedido: TIntegerField;
    PedidosNFItensItem: TSmallintField;
    PedidosNFItensEmpresa: TStringField;
    PedidosNFItensES: TSmallintField;
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
    PedidosNFItensCSTICMS_TabA: TStringField;
    PedidosNFItensCSTICMS_TabB: TStringField;
    PedidosNFItensAdicao: TSmallintField;
    PedidosNFItensQuantidade: TFMTBCDField;
    PedidosNFItensPeso_Liquido: TFMTBCDField;
    PedidosNFItensPeso_Bruto: TFMTBCDField;
    PedidosNFItensMovimenta_Inventario: TBooleanField;
    PedidosNFItensMovimenta_Estoque: TBooleanField;
    PedidosNFItensMovimenta_EstoqueRep: TBooleanField;
    PedidosNFItensMovimenta_EstoqueInd: TBooleanField;
    PedidosNFItensModalidade_BCICMS: TSmallintField;
    PedidosNFItensModalidade_BCICMSST: TSmallintField;
    PedidosNFItensProcesso: TStringField;
    PedidosNFItensRateio_ICMSProcesso: TFMTBCDField;
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
    PedidosNFItensCEST: TStringField;
    PedidosNFItensPO: TStringField;
    PedidosNFItensOrdem: TIntegerField;
    PedidosNFItensAliquota_ICMSSTAnt: TFMTBCDField;
    PedidosNFItensFator_Cambio: TFMTBCDField;
    PedidosNFItensOrigem_Mercadoria: TSmallintField;
    PedidosNFItensEmbarque: TIntegerField;
    PedidosNFItensNumero_BL: TStringField;
    PedidosNFItensCodigo_CredPres: TStringField;
    PedidosNFItensSequencia: TIntegerField;
    PedidosNFItensValor_BCDIFAL: TFMTBCDField;
    PedidosNFItensValor_BCDIFALST: TFMTBCDField;
    PedidosNFItensValor_BCICMSMono: TFMTBCDField;
    PedidosNFItensValor_BCICMSMonoRet: TFMTBCDField;
    PedidosNFItensValor_BCICMSPresumido: TFMTBCDField;
    PedidosNFItensValor_COFINSST: TFMTBCDField;
    PedidosNFItensValor_ICMSMono: TFMTBCDField;
    PedidosNFItensValor_ICMSMonoRet: TFMTBCDField;
    PedidosNFItensValor_ICMSPresumido: TFMTBCDField;
    PedidosNFItensValor_PISST: TFMTBCDField;
    PedidosNFItensFator_Produto: TFMTBCDField;
    PedidosNFItensValor_Unitario: TFMTBCDField;
    PedidosNFItensValor_BCIPI: TFMTBCDField;
    PedidosNFItensAliquota_IPI: TFMTBCDField;
    PedidosNFItensValor_IPI: TFMTBCDField;
    PedidosNFItensAliquota_II: TFMTBCDField;
    PedidosNFItensValor_II: TFMTBCDField;
    PedidosNFItensValor_BCICMSOp: TFMTBCDField;
    PedidosNFItensAliquota_ICMSOp: TFMTBCDField;
    PedidosNFItensValor_ICMSOp: TFMTBCDField;
    PedidosNFItensAliquota_ICMSEntrada: TFMTBCDField;
    PedidosNFItensValor_BCICMSST: TFMTBCDField;
    PedidosNFItensAliquota_ICMSST: TFMTBCDField;
    PedidosNFItensValor_ICMSST: TFMTBCDField;
    PedidosNFItensValor_BCMVA: TFMTBCDField;
    PedidosNFItensAliquota_MVA: TFMTBCDField;
    PedidosNFItensValor_MVA: TFMTBCDField;
    PedidosNFItensAliquota_ICMSOpRed: TFMTBCDField;
    PedidosNFItensValor_ICMSOpRed: TFMTBCDField;
    PedidosNFItensAliquota_PIS: TFMTBCDField;
    PedidosNFItensValor_BCPIS: TFMTBCDField;
    PedidosNFItensValor_PIS: TFMTBCDField;
    PedidosNFItensAliquota_COFINS: TFMTBCDField;
    PedidosNFItensValor_BCCOFINS: TFMTBCDField;
    PedidosNFItensValor_COFINS: TFMTBCDField;
    PedidosNFItensValor_Frete: TFMTBCDField;
    PedidosNFItensValor_Seguro: TFMTBCDField;
    PedidosNFItensValor_Despesa: TFMTBCDField;
    PedidosNFItensValor_BCFCPST: TFMTBCDField;
    PedidosNFItensValor_FCPST: TFMTBCDField;
    PedidosNFItensValor_BCFCP: TFMTBCDField;
    PedidosNFItensValor_FCP: TFMTBCDField;
    PedidosNFItensValor_BCICMSDest: TFMTBCDField;
    PedidosNFItensAliquota_ICMSDest: TFMTBCDField;
    PedidosNFItensValor_ICMSDest: TFMTBCDField;
    PedidosNFItensValor_DIFAL: TFMTBCDField;
    PedidosNFItensPercentual_DIFALOrig: TFMTBCDField;
    PedidosNFItensValor_DIFALOrig: TFMTBCDField;
    PedidosNFItensPercentual_DIFALDest: TFMTBCDField;
    PedidosNFItensValor_DIFALDest: TFMTBCDField;
    PedidosNFItensValor_DIFALST: TFMTBCDField;
    PedidosNFItensAliquota_FCP: TFMTBCDField;
    PedidosNFItensValor_FCPDest: TFMTBCDField;
    PedidosNFItensPercentual_FCPICMSOrig: TFMTBCDField;
    PedidosNFItensValor_FCPICMSDest: TFMTBCDField;
    PedidosNFItensValor_ICMSDesonerado: TFMTBCDField;
    PedidosNFItensValor_BCICMSSTAnt: TFMTBCDField;
    PedidosNFItensValor_ICMSSTAnt: TFMTBCDField;
    PedidosNFItensValor_ICMSAnt: TFMTBCDField;
    PedidosNFItensValor_CIF: TFMTBCDField;
    PedidosNFItensValor_Pauta: TFMTBCDField;
    PedidosNFItensValor_AFRMM: TFMTBCDField;
    PedidosNFItensValor_BCII: TFMTBCDField;
    PedidosNFItensValor_IsentasICMS: TFMTBCDField;
    PedidosNFItensValor_OutrasICMS: TFMTBCDField;
    PedidosNFItensValor_IsentasIPI: TFMTBCDField;
    PedidosNFItensValor_OutrasIPI: TFMTBCDField;
    PedidosNFItensValor_BCICMSApuracao: TFMTBCDField;
    PedidosNFItensValor_ICMSApuracao: TFMTBCDField;
    PedidosNFItensValor_MediaBCR: TFMTBCDField;
    PedidosNFItensValor_TotalNota: TFMTBCDField;
    PedidosNFItensValor_Impostos: TFMTBCDField;
    PedidosNFItensValor_Inventario: TFMTBCDField;
    PedidosNFItensValor_Dumping: TFMTBCDField;
    PedidosNFItensPercentual_Lucro: TFMTBCDField;
    PedidosNFItensValor_Lucro: TFMTBCDField;
    PedidosNFItensValor_PIS2: TFMTBCDField;
    PedidosNFItensValor_COFINS2: TFMTBCDField;
    PedidosNFItensAliquota_IRPJ: TFMTBCDField;
    PedidosNFItensValor_IRPJ: TFMTBCDField;
    PedidosNFItensAliquota_CSLL: TFMTBCDField;
    PedidosNFItensValor_CSLL: TFMTBCDField;
    PedidosNFItensRateio_FreteTerrNac: TFMTBCDField;
    PedidosNFItensPercentual_Desconto: TFMTBCDField;
    PedidosNFItensValor_Desconto: TFMTBCDField;
    PedidosNFItensAliquota_PISRed: TFMTBCDField;
    PedidosNFItensAliquota_COFINSRed: TFMTBCDField;
    PedidosNFItensAliquota_ICMSOpIntegral: TFMTBCDField;
    PedidosNFItensRateio_SISCOMEX: TFMTBCDField;
    PedidosNFItensPercentual_Comissao: TFMTBCDField;
    PedidosNFItensValor_Comissao: TFMTBCDField;
    PedidosNFItensPercentual_RedICMSST: TFMTBCDField;
    PedidosNFItensAliquota_ICMSDif: TFMTBCDField;
    PedidosNFItensValor_ICMSDif: TFMTBCDField;
    PedidosNFItensAliquota_ICMSPresumido: TFMTBCDField;
    PedidosNFItensAliquota_ICMSOPRed2: TFMTBCDField;
    PedidosNFItensPercentual_Beneficio: TFMTBCDField;
    PedidosNFItensPercentual_ICMSMono: TFMTBCDField;
    PedidosNFItensPercentual_ICMSMonoRet: TFMTBCDField;
    PedidosNFItensValor_BCIBS: TFMTBCDField;
    PedidosNFItensAliquota_IBS: TFMTBCDField;
    PedidosNFItensValor_IBS: TFMTBCDField;
    PedidosNFItensValor_BCCBS: TFMTBCDField;
    PedidosNFItensAliquota_CBS: TFMTBCDField;
    PedidosNFItensValor_CBS: TFMTBCDField;
    PedidosNFItensValor_BCIS: TFMTBCDField;
    PedidosNFItensAliquota_IS: TFMTBCDField;
    PedidosNFItensValor_IS: TFMTBCDField;
    PedidosNFItensCSTIBS: TStringField;
    PedidosNFItensCSTCBS: TStringField;
    PedidosNFItensBL: TStringField;
    PedidosNFItensValor_BCICMSDif: TFMTBCDField;
    PedidosNFItensValor_IPIDevol: TFMTBCDField;
    PedidosNFItensPercentual_IPIDevol: TFMTBCDField;
    PedidosNFItensBeneficio_Fiscal: TStringField;
    PedidosNFItensDeclaracao: TStringField;
    PedidosNFItensItem_Declaracao: TSmallintField;
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
          sql.add('      ,CodigoTrib_TabA  = isnull(CodigoTrib_TabA , 0)');
          sql.add('      ,CodigoTrib_TabA2 = isnull(CodigoTrib_TabA2, 0)');
          sql.add('      ,CodigoTrib_TabA3 = isnull(CodigoTrib_TabA3, 0)');
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
                fieldbyname('Valor_Unitario').value    := CalculaMacro(self, tFormulasItens.fieldbyname('Formula').AsString, 'Vaor_Unitario');
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
{          
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
}
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
          sql.add('select p.Pedido');
          sql.add('      ,p.Empresa');
          sql.add('      ,p.ES');
          sql.add('      ,p.Operacao');
          sql.add('      ,Dentro_Fora = iif(p.Destinatario_Estado = e.Estado, ''D'' , ''F'')');
          sql.add('      ,p.Destinatario');
          sql.add('      ,p.Destinatario_Estado');
          sql.add('      ,p.Valor_Produtos ');
          sql.add('from PedidosNF p');
          sql.add('left join Empresas e on e.CNPJ = p.Destinatario_CNPJ_CPF');
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
          sql.add('select p.Codigo');
          sql.Add('      ,p.Codigo_Fabricante');
          sql.Add('      ,Descricao = p.Descricao_Reduzida');
          sql.Add('      ,p.NCM');
          sql.Add('      ,p.UM');
          sql.Add('      ,p.Peso_Liquido');
          sql.Add('      ,p.Peso_Bruto');
          sql.Add('      ,p.Valor_Venda');
          sql.Add('      ,p.Valor_ConsumidorFinal');
          sql.Add('      ,p.Valor_CustoMedio');
          sql.Add('      ,p.Valor_Entrada');
          sql.Add('      ,p.Aliquota_IPI');
          sql.Add('      ,p.Valor_IPI');
          sql.Add('      ,p.Aliquota_II');
          sql.Add('      ,p.Valor_II');
          sql.Add('      ,p.Aliquota_PIS');
          sql.Add('      ,p.Aliquota_COFINS');
          sql.Add('      ,p.Aliquota_PISEntrada');
          sql.Add('      ,p.Aliquota_COFINSEntrada');
          sql.Add('      ,p.Aliquota_PISSaida');
          sql.Add('      ,p.Aliquota_COFINSSaida');
          sql.Add('      ,p.Reducao_PIS');
          sql.Add('      ,p.Reducao_COFINS');
          sql.add('      ,p.CSTPIS_AliquotaUM');
          sql.add('      ,p.CSTPIS_Monofasica');
          sql.add('      ,p.CSTPIS_AliquotaZero');
          sql.add('      ,p.CSTPIS_Isenta');
          sql.add('      ,p.CSTPIS_SemIncidencia');
          sql.add('      ,p.CSTPIS_Suspensao');
          sql.add('      ,p.CSTPIS_Outras');
          sql.add('      ,p.Origem');
          sql.add('      ,p.ICMS_ForaEstadoEnt');
          sql.add('      ,p.ICMS_ForaEstadoSai');
          sql.add('      ,p.ICMS_DentroEstadoEnt');
          sql.add('      ,p.ICMS_DentroEstadoSai');
          sql.add('      ,p.ICMS_DentroEstadoSimples');
          sql.add('      ,p.Tabela_CAMEX');
          sql.add('      ,p.CSTICMS_Entrada');
          sql.add('      ,p.CSTICMS_Saida');
          sql.add('      ,p.Aliquota_IBS');
          sql.add('      ,p.Beneficio_FiscalEnt');
          sql.add('      ,p.Beneficio_FiscalSai');
          sql.add('      ,p.Estoque_Minimo');
          sql.add('      ,p.Estoque_Navio');
          sql.add('from Produtos p');
          sql.add('where isnull(p.Desativado, 0) = 0');
          sql.add('and isnull(p.NCM, '''') <> '''' ');
          sql.add('and exists (select 1 from NCM n where n.NCM = p.NCM)');
          sql.Add('order by Descricao');
          //sql.savetofile('c:\temp\Pedidos_Itens_Produtos.sql');
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
          sql.add('select Processo');
          sql.Add('      ,ICMS_Diferido');
          if OPFiscal.fieldbyname('Destino_Origem').asstring = 'I' then begin
             sql.Add('      ,Declaracao = DUIMP');
             sql.add('from ProcessosImp');
             sql.add('where isnull(DUIMP, '''') <> '''' ');
          end;
          if OPFiscal.fieldbyname('Destino_Origem').asstring = 'E' then begin
             sql.Add('      ,Declaracao = DUE');
             sql.Add('from ProcessosExp');
             sql.Add('where isnull(DUE, '''') <> '''' ');
          end;
          sql.add('and Processo_Fechamento is not null');
          sql.add('order by Processo');
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
                fieldbyname('Valor_Unitario').Value := ProdutosValor_Venda.ascurrency * (1-(fieldbyname('Desconto').Value/100));
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
