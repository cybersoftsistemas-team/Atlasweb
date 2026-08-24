unit FiscalNFTerceiros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker,
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMemo, uniRadioGroup, uniCheckBox, uniMultiItem,
  uniDBComboBox, uniLabel, uniImage, uniDBRadioGroup, Dialogo, Dateutils, uniFileUpload, uniStringGrid, System.AnsiStrings;

type
  TfFiscalNFTerceiros = class(TuniFrame)
    Pasta: TUniPageControl;
    TabCapa: TUniTabSheet;
    Panel2: TUniPanel;
    Transportador: TFDQuery;
    TransportadorCodigo: TIntegerField;
    TransportadorNome: TStringField;
    TransportadorCNPJ: TStringField;
    dsTransportador: TDataSource;
    TabSerial: TUniTabSheet;
    TabLote: TUniTabSheet;
    GradeSerial: TUniDBGrid;
    GradeLote: TUniDBGrid;
    TabManif: TUniTabSheet;
    GradeManif: TUniDBGrid;
    bSelTodos: TUniButton;
    bSelNehum: TUniButton;
    bManifestar: TUniButton;
    Panel4: TUniPanel;
    cJustificativa: TUniEdit;
    cMotivo: TUniComboBox;
    cSit: TUniRadioGroup;
    cMensagens: TUniMemo;
    bManiFora: TUniButton;
    Button1: TUniButton;
    tTmp: TFDQuery;
    Armazem: TFDQuery;
    dsArmazem: TDataSource;
    ArmazemCodigo: TIntegerField;
    ArmazemNome: TStringField;
    ArmazemCNPJ: TStringField;
    Navega: TUniDBNavigator;
    ItensNavios: TFDQuery;
    Itens: TFDQuery;
    Beneficios: TFDQuery;
    Modelos: TFDQuery;
    Operacao: TFDQuery;
    TiposDoc: TFDQuery;
    ModalPgto: TFDQuery;
    Empresas: TFDQuery;
    ProcessoImp: TFDQuery;
    Fornecedores: TFDQuery;
    Notas: TFDQuery;
    CFOP: TFDQuery;
    pBarraNav: TUniPanel;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    dsCFOP: TDataSource;
    dsNotas: TDataSource;
    dsFornecedores: TDataSource;
    dsProcessoImp: TDataSource;
    dsEmpresas: TDataSource;
    dsModalPgto: TDataSource;
    dsTiposDoc: TDataSource;
    dsOperacao: TDataSource;
    dsModelos: TDataSource;
    dsBeneficios: TDataSource;
    dsItens: TDataSource;
    dsItensNavios: TDataSource;
    Ficha: TUniPanel;
    cNota: TUniDBEdit;
    cDataEmissao: TUniDBDateTimePicker;
    cDataEntrada: TUniDBDateTimePicker;
    cSerie: TUniDBEdit;
    cSubSerie: TUniDBEdit;
    cObservacao: TUniDBMemo;
    cChave: TUniDBEdit;
    cModelo: TUniDBLookupComboBox;
    cOperacao: TUniDBLookupComboBox;
    cFornecedor: TUniDBLookupComboBox;
    DBCheckBox1: TUniDBCheckBox;
    cTransportador: TUniDBLookupComboBox;
    cBeneficio: TUniDBLookupComboBox;
    DBCheckBox2: TUniDBCheckBox;
    cArmazem: TUniDBLookupComboBox;
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
    cTotalDesconto: TUniDBFormattedNumberEdit;
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
    TabItem: TUniTabSheet;
    TabLista: TUniTabSheet;
    Grade: TUniDBGrid;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    cEmpresa: TUniDBLookupComboBox;
    cModalFrete: TUniDBLookupComboBox;
    ModalFrete: TFDQuery;
    dsModalFrete: TDataSource;
    NaturezaFrete: TFDQuery;
    dsNaturezaFrete: TDataSource;
    cNaturezaFrete: TUniDBLookupComboBox;
    cTipoPgto: TUniDBRadioGroup;
    BarraItens: TUniPanel;
    bAddItens: TUniSpeedButton;
    bEditItens: TUniSpeedButton;
    bExcItens: TUniSpeedButton;
    bCancItens: TUniSpeedButton;
    bGravItens: TUniSpeedButton;
    bExcTodosItens: TUniSpeedButton;
    bNFRef: TUniSpeedButton;
    GradeItens: TUniDBGrid;
    UniDBMemo1: TUniDBMemo;
    bXML: TUniButton;
    TabXML: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    bArquivos: TUniFileUploadButton;
    bXMLSair: TUniSpeedButton;
    UniContainerPanel1: TUniContainerPanel;
    cDataEnt: TUniDateTimePicker;
    cOper: TUniDBLookupComboBox;
    cRamo: TUniDBLookupComboBox;
    cTipoProd: TUniDBLookupComboBox;
    cCCusto: TUniDBLookupComboBox;
    cProcImp: TUniDBLookupComboBox;
    cProcExp: TUniDBLookupComboBox;
    cEmb: TUniDBLookupComboBox;
    cOrig: TUniDBLookupComboBox;
    cClassMerc: TUniDBLookupComboBox;
    cEscala: TUniCheckBox;
    UniGroupBox1: TUniGroupBox;
    cImoAliq: TUniFormattedNumberEdit;
    cImoBC: TUniFormattedNumberEdit;
    cImoValor: TUniFormattedNumberEdit;
    cUso: TUniComboBox;
    cSubst: TUniCheckBox;
    cPreco: TUniGroupBox;
    cLucro: TUniFormattedNumberEdit;
    cComissao: TUniFormattedNumberEdit;
    cCustoFin: TUniFormattedNumberEdit;
    cCustoFixo: TUniFormattedNumberEdit;
    cMargem: TUniFormattedNumberEdit;
    gPerfil: TUniGroupBox;
    cIsento: TUniCheckBox;
    cZona_Franca: TUniCheckBox;
    cInscricaoST: TUniCheckBox;
    cMicro: TUniCheckBox;
    UniContainerPanel2: TUniContainerPanel;
    cLog: TUniStringGrid;
    RamosAtv: TFDQuery;
    dsRamo: TDataSource;
    CentroCusto: TFDQuery;
    dsCentroCusto: TDataSource;
    Origem: TFDQuery;
    dsOrigem: TDataSource;
    TipoProd: TFDQuery;
    dsTipoProd: TDataSource;
    ClassProd: TFDQuery;
    dsClassProd: TDataSource;
    ProcessoExp: TFDQuery;
    dsProcessoExp: TDataSource;
    Embarques: TFDQuery;
    dsEmbarques: TDataSource;
    NotasNota_id: TIntegerField;
    NotasEmpresa: TStringField;
    NotasNota: TIntegerField;
    NotasChave: TStringField;
    NotasData_Emissao: TDateField;
    NotasHora_Emissao: TTimeField;
    NotasES: TSmallintField;
    NotasData_ES: TDateField;
    NotasHora_ES: TTimeField;
    NotasOperacao: TSmallintField;
    NotasEmissao: TStringField;
    NotasPedido: TIntegerField;
    NotasSerie: TStringField;
    NotasModelo: TStringField;
    NotasLucro: TFMTBCDField;
    NotasLucro_Valor: TFMTBCDField;
    NotasDeclaracao_Numero: TStringField;
    NotasDeclaracao_Data: TDateField;
    NotasInscricao_Substituto: TStringField;
    NotasInf_Compl: TMemoField;
    NotasInf_Compl2: TMemoField;
    NotasTransportador_Codigo: TIntegerField;
    NotasModalidade_Frete: TSmallintField;
    NotasVolume_Quantidade: TFMTBCDField;
    NotasVolume_Especie: TStringField;
    NotasVolume_Marca: TStringField;
    NotasVolume_Numero: TStringField;
    NotasVolume_PesoLiquido: TFMTBCDField;
    NotasVolume_PesoBruto: TFMTBCDField;
    NotasModalidade_Pgto: TSmallintField;
    NotasDesconto_Percentual: TFMTBCDField;
    NotasDesconto_Tipo: TStringField;
    NotasCancelada: TBooleanField;
    NotasDenegada: TBooleanField;
    NotasComplementar: TBooleanField;
    NotasDevolucao: TBooleanField;
    NotasAjuste: TBooleanField;
    NotasMotivo_Cancelamento: TStringField;
    NotasNota_Ref: TSmallintField;
    NotasData_Ref: TSQLTimeStampField;
    NotasChave_Ref: TStringField;
    NotasNFe_Lote: TFMTBCDField;
    NotasNFe_Recibo: TStringField;
    NotasNfe_DataRecibo: TSQLTimeStampField;
    NotasNFe_Protocolo: TStringField;
    NotasNFe_DataProtocolo: TSQLTimeStampField;
    NotasDPEC: TBooleanField;
    NotasDPEC_Protocolo: TStringField;
    NotasDPEC_DataProtocolo: TSQLTimeStampField;
    NotasOperacao_Veiculo: TStringField;
    NotasTaxa_Cambio: TFMTBCDField;
    NotasBeneficio_Fiscal: TSmallintField;
    NotasRepresentante: TSmallintField;
    NotasRepresentante_Comissao: TFMTBCDField;
    NotasImportacao: TBooleanField;
    NotasData_Cancelamento: TDateField;
    NotasProtocolo_Cancelamento: TStringField;
    NotasCalcula_Volumes: TBooleanField;
    NotasDestinatario: TIntegerField;
    NotasDestinatario_CNPJ_CPF: TStringField;
    NotasDestinatario_Nome: TStringField;
    NotasDestinatario_Rua: TStringField;
    NotasDestinatario_RuaNumero: TStringField;
    NotasDestinatario_Complemento: TStringField;
    NotasDestinatario_Bairro: TStringField;
    NotasDestinatario_Municipio: TFMTBCDField;
    NotasDestinatario_MunicipioNome: TStringField;
    NotasDestinatario_Estado: TStringField;
    NotasDestinatario_CEP: TStringField;
    NotasDestinatario_Pais: TStringField;
    NotasDestinatario_Telefone1: TStringField;
    NotasDestinatario_IE: TStringField;
    NotasDestinatario_Juridica: TBooleanField;
    NotasPedido_Nota: TIntegerField;
    NotasReducao_ICMSOper: TFMTBCDField;
    NotasApuracao_PISCOFINS: TBooleanField;
    NotasBaixa_Estoque: TBooleanField;
    NotasICMS_Destacar: TBooleanField;
    NotasAliquota_IRPJ: TFMTBCDField;
    NotasAliquota_CSLL: TFMTBCDField;
    NotasComissao: TFMTBCDField;
    NotasPedido_Representante: TStringField;
    NotasManifesto_Protocolo: TStringField;
    NotasManifesto_DataProtocolo: TSQLTimeStampField;
    NotasManifesto_Motivo: TSmallintField;
    NotasManifesto_Justificativa: TMemoField;
    NotasNatureza_Correcao: TStringField;
    NotasAtendente: TSmallintField;
    NotasIndicador_Presenca: TSmallintField;
    NotasVeiculo_Restricao: TStringField;
    NotasRatear_Despesa: TBooleanField;
    NotasNFE_Estorno: TBooleanField;
    NotasRepresentante_ComissaoGer: TFMTBCDField;
    NotasVendedor: TStringField;
    NotasTipo_Pagamento: TSmallintField;
    NotasForma_Pagamento: TSmallintField;
    NotasLote: TStringField;
    NotasEntrega_Retirada: TStringField;
    NotasCTE: TBooleanField;
    NotasTipo_Processo: TStringField;
    NotasIndicador_Intermediario: TSmallintField;
    NotasDescricao_Forma: TStringField;
    NotasIntermediador: TSmallintField;
    NotasEnvio_Armazem: TBooleanField;
    NotasAtendente_Comissao: TFMTBCDField;
    NotasValor_Inventario: TFMTBCDField;
    NotasValor_ICMSDesonerado: TFMTBCDField;
    NotasValor_PIS: TFMTBCDField;
    NotasValor_COFINS: TFMTBCDField;
    NotasAliquota_ICMSOper: TFMTBCDField;
    NotasValor_BCICMS: TFMTBCDField;
    NotasValor_ICMS: TFMTBCDField;
    NotasAliquota_ICMSSub: TFMTBCDField;
    NotasValor_BCICMSST: TFMTBCDField;
    NotasValor_ICMSST: TFMTBCDField;
    NotasValor_Produtos: TFMTBCDField;
    NotasValor_Frete: TFMTBCDField;
    NotasValor_Seguro: TFMTBCDField;
    NotasValor_Despesas: TFMTBCDField;
    NotasValor_BCIPI: TFMTBCDField;
    NotasValor_IPI: TFMTBCDField;
    NotasValor_TotalNota: TFMTBCDField;
    NotasValor_RateioDespesas: TFMTBCDField;
    NotasValor_MVA: TFMTBCDField;
    NotasValor_ICMSReducao: TFMTBCDField;
    NotasValor_II: TFMTBCDField;
    NotasValor_DUMPING: TFMTBCDField;
    NotasValor_Descontos: TFMTBCDField;
    NotasValor_IsentasICMS: TFMTBCDField;
    NotasValor_OutrasICMS: TFMTBCDField;
    NotasValor_IsentasIPI: TFMTBCDField;
    NotasValor_OutrasIPI: TFMTBCDField;
    NotasValor_BCMVA: TFMTBCDField;
    NotasValor_BCICMSApuracao: TFMTBCDField;
    NotasValor_ICMSApuracao: TFMTBCDField;
    NotasValor_MediaBCR: TFMTBCDField;
    NotasValor_PIS2: TFMTBCDField;
    NotasValor_COFINS2: TFMTBCDField;
    NotasValor_BCPIS: TFMTBCDField;
    NotasValor_IRPJ: TFMTBCDField;
    NotasValor_CSLL: TFMTBCDField;
    NotasValor_Comissao: TFMTBCDField;
    NotasTotal_Impostos: TFMTBCDField;
    NotasValor_BCICMSDest: TFMTBCDField;
    NotasValor_ICMSDest: TFMTBCDField;
    NotasValor_DIFAL: TFMTBCDField;
    NotasValor_DIFALOrig: TFMTBCDField;
    NotasValor_DIFALDest: TFMTBCDField;
    NotasValor_FCPDest: TFMTBCDField;
    NotasValor_FCPICMSDest: TFMTBCDField;
    NotasValor_FCPICMSOrig: TFMTBCDField;
    NotasValor_CIF: TFMTBCDField;
    NotasDIFAL_AliqInterna: TFMTBCDField;
    NotasValor_BCFCPST: TFMTBCDField;
    NotasValor_FCPST: TFMTBCDField;
    NotasAliquota_FCPST: TFMTBCDField;
    NotasValor_BCFCP: TFMTBCDField;
    NotasAliquota_FCP: TFMTBCDField;
    NotasValor_FCP: TFMTBCDField;
    NotasValor_AFRMM: TFMTBCDField;
    NotasValor_BCDIFAL: TFMTBCDField;
    NotasValor_BCDIFALST: TFMTBCDField;
    NotasValor_BCICMSMono: TFMTBCDField;
    NotasValor_BCICMSMonoRet: TFMTBCDField;
    NotasValor_BCICMSPresumido: TFMTBCDField;
    NotasValor_BCII: TFMTBCDField;
    NotasValor_COFINSST: TFMTBCDField;
    NotasValor_ICMSDif: TFMTBCDField;
    NotasValor_ICMSMono: TFMTBCDField;
    NotasValor_ICMSMonoRet: TFMTBCDField;
    NotasValor_ICMSPresumido: TFMTBCDField;
    NotasValor_PISST: TFMTBCDField;
    NotasValor_BCIBS: TFMTBCDField;
    NotasValor_IBS: TFMTBCDField;
    NotasValor_BCCBS: TFMTBCDField;
    NotasValor_CBS: TFMTBCDField;
    NotasValor_BCIS: TFMTBCDField;
    NotasValor_IS: TFMTBCDField;
    NotasValor_IsentasICMSST: TFMTBCDField;
    NotasValor_OutrasICMSST: TFMTBCDField;
    NotasValor_ProdutosOrig: TFMTBCDField;
    NotasAliquota_ICMSPresumido: TFMTBCDField;
    NotasModalidade: TSmallintField;
    NotasArmazem: TSmallintField;
    NotasArmazem_CNPJ: TStringField;
    NotasArmazem_Endereco: TStringField;
    NotasArmazem_IE: TStringField;
    NotasArmazem_Nome: TStringField;
    NotasCancelada_ForaPrazo: TBooleanField;
    NotasCCe: TBooleanField;
    NotasExonerada: TBooleanField;
    NotasIncentivo_Codigo: TIntegerField;
    NotasMedia_BCR: TFMTBCDField;
    NotasRemessa: TBooleanField;
    NotasCentro_Custo: TStringField;
    NotasSubSerie: TStringField;
    NotasProvisoria: TBooleanField;
    NotasDesdobramento: TBooleanField;
    NotasManifestada: TBooleanField;
    NotasNatureza_Frete: TSmallintField;
    NotasOrigem_Mercadoria: TSmallintField;
    NotasLancamento_Financeiro: TIntegerField;
    ItensNota_id: TIntegerField;
    ItensItem: TSmallintField;
    ItensCodigo_Mercadoria: TIntegerField;
    ItensDescricao_Mercadoria: TMemoField;
    ItensNCM: TStringField;
    ItensUM: TStringField;
    ItensQuantidade: TFMTBCDField;
    ItensValor_Unitario: TFMTBCDField;
    ItensEmpresa: TStringField;
    ItensCFOP: TStringField;
    procedure bSairClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure bItensClick(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cOperacaoCloseUp(Sender: TObject);
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
    procedure bDuplicatasClick(Sender: TObject);
    procedure bImportaXMLNFeClick(Sender: TObject);
    procedure bEfetivarClick(Sender: TObject);
    function  Baixado: boolean;
    procedure bImportaXMLCTeClick(Sender: TObject);
    procedure cNotaChange(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure cSitClick(Sender: TObject);
    procedure bManifestarClick(Sender: TObject);
    procedure cMotivoChange(Sender: TObject);
    procedure BuscarSefaz;
    procedure Button1Click(Sender: TObject);
    procedure bManiForaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bVincularClick(Sender: TObject);
    procedure NotasBeforeDelete(DataSet: TDataSet);
    procedure NotasBeforePost(DataSet: TDataSet);
    procedure bAddItensClick(Sender: TObject);
    procedure bCancItensClick(Sender: TObject);
    procedure bEditItensClick(Sender: TObject);
    procedure bExcItensClick(Sender: TObject);
    procedure bGravItensClick(Sender: TObject);
    procedure bArquivosMultiCompleted(Sender: TObject; Files: TUniFileInfoArray);
    procedure bXMLClick(Sender: TObject);
    procedure bXMLSairClick(Sender: TObject);
    procedure bExcTodosItensClick(Sender: TObject);
  private
    function PeriodoBloqueado: boolean;
    function Movimentado: boolean;
    procedure LigaBotoesItens(Estado: boolean);
    function VerBloqueios: boolean;
    procedure FrameFilhoFechou(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    mDataEmi_Antes,
    mDataEnt_Antes: TDate;
    mDest_Antes,
    mOper_Antes: Integer;
    mProcesso_Antes: String;
    mProvisoria: Boolean;
    mNomeAba: string;
  end;

implementation

uses MainModule, Main, ValidaCRUD, FiscalNFTerceirosItens, ImportaNFe;

var
  FrameItem: TfFiscalNFTerceirosItens;

{$R *.dfm}

procedure TfFiscalNFTerceiros.bSairClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFiscalNFTerceiros.bArquivosMultiCompleted(Sender: TObject; Files: TUniFileInfoArray);
var
  i: Integer;
  Importador: TImportadorNFe;
  Param: TImportaNFeParams;            
begin
     Importador := TImportadorNFe.Create(UniMainModule.Conecta);
     Param      := TImportaNFeParams.Create;     
                               
     Importador.NFe.Operacao   := Operacao.fieldbyname('Codigo').asinteger;
     Importador.NFe.MovInv     := Operacao.fieldbyname('Movimenta_Inventario').asboolean;
     Importador.NFe.MovEst     := Operacao.fieldbyname('Movimenta_Estoque').asboolean;
     Importador.NFe.MovEstRep  := Operacao.fieldbyname('Movimenta_EstoqueRep').asboolean;
     Importador.NFe.Empresa    := Empresas.FieldByName('CNPJ').asstring;
     Importador.NFe.dEntrada   := cDataEnt.DateTime;
     Importador.NFe.hEntrada   := time;
     Importador.NFe.EmitRamo   := RamosAtv.fieldbyname('Codigo').asinteger;
     Importador.NFe.EmitIsento := cIsento.Checked;
     Importador.NFe.EmitZonaF  := cZona_Franca.Checked;
     Importador.NFe.EmitIST    := cInscricaoST.Checked;
     Importador.NFe.EmitMicro  := cMicro.Checked;
     Importador.NFe.CentCus    := CentroCusto.fieldbyname('Codigo').asstring;
     if trim(cProcImp.text) <> '' then begin
        Importador.NFe.ProcImp    := ProcessoImp.fieldbyname('Processo').asstring;
        Importador.NFe.Declaracao := ProcessoImp.fieldbyname('Declaracao').asstring;
     end;
     if trim(cProcExp.text) <> '' then begin
        Importador.NFe.ProcExp    := ProcessoExp.fieldbyname('Processo').asstring;
        Importador.NFe.Declaracao := ProcessoExp.fieldbyname('Declaracao').asstring;
     end;

     Param.SubstNF   := cSubst.Checked;
     Param.Origem    := Origem.fieldbyname('Codigo').asinteger;
     Param.TipoProd  := TipoProd.fieldbyname('Codigo').asinteger;
     Param.ClassProd := ClassProd.fieldbyname('Codigo').asinteger;
     
     try
        for i := 0 to high(Files) do begin
            cLog.RowCount := cLog.RowCount+1;
            try
               Param.Arquivo := Files[i].CacheFile;
               Importador.ImportarXML(Param);
               
               cLog.cells[0, i] := Files[i].OriginalFileName;
               clog.cells[1, i] := 'SUCESSO';
            except
               on E: Exception do begin
                  cLog.Cells[0, i] := Files[i].OriginalFileName;
                  clog.cells[1, i] := 'ERRO: '+E.Message;
               end;
            end;
        end;
     finally
        Importador.Free;
     end;
end;

procedure TfFiscalNFTerceiros.bXMLClick(Sender: TObject);
var
  i: integer;
begin
     for i := 0 to pred(Pasta.PageCount) do begin
         Pasta.Pages[i].Enabled := false;
     end;
     pBarraNav.Enabled := false;
     TabXML.TabVisible := true;
     TabXML.Enabled    := true;
     Pasta.ActivePage  := TabXML;
     cDataEnt.DateTime := now;
end;

procedure TfFiscalNFTerceiros.UniFrameCreate(Sender: TObject);
var
  i:integer;
  larq: string;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to pred(ComponentCount) do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;
      cLog.ColWidths[0] := 400;
      cLog.ColWidths[1] := 546;

      with Notas do begin
           sql.clear;
           sql.Add('select *');
           sql.add('from NotasFiscais');
           sql.add('where Emissao = ''T'' ');
           sql.add('and Empresa = :pEmpresa');
           sql.Add('order by Data_ES, Nota');
           parambyname('pEmpresa').value := UniMainModule.mEmpresaAtiva;
           Open;
      end;
      with Itens do begin
           sql.Clear;
           sql.Add('select Nota_id');
           sql.add('      ,Item');
           sql.add('      ,Codigo_Mercadoria');
           sql.add('      ,Descricao_Mercadoria');
           sql.add('      ,NCM');
           sql.add('      ,UM');
           sql.add('      ,Quantidade');
           sql.add('      ,Valor_Unitario');
           sql.add('      ,Empresa');
           sql.add('      ,CFOP');
           sql.add('      ,Estoque_Minimo = isnull((select Estoque_MinimoPerc from Produtos where Codigo = Codigo_Mercadoria), 0)');
           sql.add('from NotasItens');
           sql.add('order by Empresa, Nota_id, Item');
           open;
      end;
      with Empresas do begin
           sql.Clear;
           sql.Add('select CNPJ');
           sql.add('      ,Razao_Social');
           sql.add('      ,Filial');
           sql.add('      ,Estado');
           sql.add('from Empresas');
           sql.add('where substring(CNPJ, 1, 8) = '+ quotedstr(copy(UniMainModule.mEmpresaAtiva, 1, 8)));
           sql.add('order by CNPJ, Filial');
           open;
           cEmpresa.KeyValue := Empresas.fieldbyname('CNPJ').value;
      end;
      with Beneficios do begin
           sql.Clear;
           sql.Add('select Codigo, Nome from BeneficioFiscal order by Nome');
           Open;
      end;
      with Operacao do begin
           sql.add('select Codigo');
           sql.add('      ,Destino_Origem');
           sql.add('      ,Descricao');
           sql.add('      ,Movimenta_Estoque');
           sql.add('      ,Movimenta_EstoqueRep');
           sql.add('      ,Movimenta_Inventario');
           sql.add('      ,CST_ICMS');
           sql.add('from OperacaoFiscal');
           sql.add('where Emissao = ''T'' ');
           sql.add('order by Descricao');
           open;
      end;
      with Fornecedores do begin
           sql.Clear;
           sql.Add('select Codigo');
           sql.add('      ,CNPJ');
           sql.add('      ,CPF');
           sql.add('      ,Nome');
           sql.add('      ,Estado');
           sql.add('from Destinatarios');
           sql.add('where Fornecedor = 1');
           sql.add('order by Nome');
           Open;
      end;
      with Transportador do begin
           sql.Clear;
           sql.Add('select Codigo');
           sql.add('      ,CNPJ');
           sql.add('      ,Nome');
           sql.add('from Destinatarios');
           sql.add('where Transportador = 1');
           sql.add('order by Nome');
           Open;
      end;
      with Armazem do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,CNPJ');
           sql.add('      ,Nome');
           sql.add('from Destinatarios');
           sql.add('where Armazem = 1');
           sql.add('order by Nome');
           Open;
      end;
      with Modelos do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao, Eletronico from ModelosDocumentos order by Codigo');
           Open;
      end;
      with ProcessoImp do begin
           sql.Clear;
           sql.add('select Processo');
           sql.add('      ,Declaracao = DUIMP');
           sql.add('from ProcessosImp');
           sql.add('where Desativado <> 1');
           sql.add('and Data_Encerramento is null');
           sql.add('and Empresa = :pEmp');
           ParamByName('pEmp').asstring := Empresas.fieldbyname('CNPJ').asstring;
           open;
      end;
      with ProcessoExp do begin
           sql.Clear;
           sql.add('select Processo');
           sql.add('      ,Declaracao = DUE');
           sql.add('from ProcessosExp');
           sql.add('where Desativado <> 1');
           sql.add('and Data_Encerramento is null');
           sql.add('and Empresa = :pEmp');
           ParamByName('pEmp').asstring := Empresas.fieldbyname('CNPJ').asstring;
           open;
      end;
      with ModalFrete do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from ModalidadesFrete order by Descricao');
           Open;
      end;
      with NaturezaFrete do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from NaturezaFrete order by Descricao');
           Open;
      end;
      with RamosAtv do begin
           sql.clear;
           sql.add('select Codigo, Descricao from RamoAtividade where isnull(Comissionado, 0) <> 1 order by Descricao');
           Open;
      end;
      with CentroCusto do begin
           sql.clear;
           sql.add('select Codigo, Nome from CentroCusto where Empresa = :pEmp order by Codigo');
           ParamByName('pEmp').asstring := Empresas.fieldbyname('CNPJ').asstring;
           Open;
      end;
      with Origem do begin
           sql.clear;
           sql.add('select Codigo, Descricao from OrigemMercadoria order by Codigo');
           Open;
      end;
      with TipoProd do begin
           sql.clear;
           sql.add('select Codigo, Descricao from TipoProduto order by Codigo');
           Open;
      end;
      with ClassProd do begin
           sql.clear;
           sql.add('select Codigo, Descricao from ClassificacaoProduto order by Codigo');
           Open;
      end;
      with Embarques do begin
           sql.clear;  
           sql.add('select Codigo');
           sql.add('      ,Navio');
           sql.add('      ,Navio_Nome = (select Nome from Navios where Codigo = Navio)');
           sql.add('      ,Processo');
           sql.add('      ,Empresa');
           sql.add('from Embarques');
           sql.add('where Empresa = :pEmp');
           sql.add('and Status = ''ATIVO'' ');
           ParamByName('pEmp').asstring := Empresas.fieldbyname('CNPJ').asstring;
           open;
      end;
end;

procedure TfFiscalNFTerceiros.bItensClick(Sender: TObject);
begin
(*
      FiscalNFTerceirosItens := TfFiscalNFTerceirosItens.Create(Self);
      FiscalNFTerceirosItens.Caption := Caption;
      FiscalNFTerceirosItens.ShowModal;
      bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
      ContaItens;
*)
end;

procedure TfFiscalNFTerceiros.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
//var
//   mQtdeUni: Integer;
//   mItens:widestring;
begin
{(*
            If (Button = nbEdit) or (Button = nbDelete) or (Button = nbPost) then begin
            If (Button = nbPost) then begin

               // Atualiza os itens da nota fiscal com os dados da capa.
               If (NotasTerceiros.State = dsEdit) then begin
                  Screen.Cursor := crSQLWait;

                 sql.Clear;
                 sql.Add('update NotasTerceirosItens SET  Data_Entrada         = :pEntrada');
                 sql.Add('                               ,Data_Emissao         = :pEmissao');
                 sql.Add('                               ,Natureza_Codigo      = :pNatureza');
                 sql.Add('                               ,Processo             = :pProcesso');
                 sql.Add('                               ,Fornecedor           = :pFornecedor');
                 sql.Add('                               ,Tipo                 = :pTipo');
                 sql.Add('                               ,Referencia_Fiscal    = :pReferencia');
                 sql.Add('                               ,CST_IPI              = :pCSTIPI');
                 sql.Add('                               ,CST_PIS              = :pCSTPIS');
                 sql.Add('                               ,CST_COFINS           = :pCSTCOFINS');
                 sql.Add('                               ,CodigoTrib_TabA      = :pTabA');
                 sql.Add('                               ,CodigoTrib_TabB      = :pTabB');
                 sql.Add('                               ,Movimenta_Estoque    = :pEstoque');
                 sql.Add('                               ,Movimenta_Inventario = :pInventario');
                 sql.Add('                               ,Apuracao_PISCOFINS   = :pPisCofins');
                 sql.Add('                               ,Nota                 = :pNota');
                 sql.Add('where (Nota = :pNotaAntes) and (Data_Emissao = :pData) and (Fornecedor = :pFornecedorAnt) and (Natureza_Codigo = :pNaturezaAnt)');
                 ParamByName('pNota').AsInteger          := NotasTerceirosNota.AsInteger;
                 ParamByName('pData').AsDate             := mDataEmiAntiga;
                 ParamByName('pFornecedorAnt').AsInteger := mFornecedorAntigo;
                 ParamByName('pEntrada').AsDate          := NotasTerceirosData_Entrada.Value;
                 ParamByName('pEmissao').AsDate          := NotasTerceirosData_Emissao.Value;
                 ParamByName('pNatureza').AsString       := NotasTerceirosNatureza_Codigo.Value;
                 ParamByName('pNaturezaAnt').AsString    := mNaturezaAntiga;
                 ParamByName('pProcesso').AsString       := NotasTerceirosProcesso.Value;
                 ParamByName('pFornecedor').AsInteger    := NotasTerceirosFornecedor.Value;
                 ParamByName('pTipo').AsString           := NotasTerceirosTipo.Value;
                 ParamByName('pReferencia').AsInteger    := ReferenciasFiscaisCodigo.AsInteger;
                 ParamByName('pCSTIPI').AsString         := ReferenciasFiscaisCSTIPI.AsString;
                 ParamByName('pCSTPIS').AsString         := ReferenciasFiscaisCSTPIS.AsString;
                 ParamByName('pCSTCOFINS').AsString      := ReferenciasFiscaisCSTCOFINS.AsString;
                 ParamByName('pTabA').AsString           := Copy(ReferenciasFiscaisCSTICMS.AsString,1,1);
                 ParamByName('pTabB').AsString           := Copy(ReferenciasFiscaisCSTICMS.AsString,2,2);
                 ParamByName('pEstoque').AsBoolean       := ReferenciasFiscaisMovimenta_Estoque.AsBoolean;
                 ParamByName('pInventario').AsBoolean    := ReferenciasFiscaisMovimenta_Inventario.AsBoolean;
                 ParamByName('pPisCofins').AsBoolean     := Dados.ReferenciasFiscaisApuracao_PISCOFINS.AsBoolean;
                 ParamByName('pNotaAntes').AsInteger     := mNotaAntes;
     with //NotasTerceirosItens do begin
                 sql.SaveToFile('c:\temp\NotasTerceiros_Ateração.sql');
                 Execute;

                 sql.Clear;
                 sql.Add('select * from NotasTerceirosItens where (Nota = :pNota) and (Data_Emissao = :pData) and (Fornecedor = :pFornecedor) and (Natureza_Codigo = :pNatureza)');
                 ParamByName('pNota').AsInteger       := NotasTerceirosNota.AsInteger;
                 ParamByName('pData').AsDate          := mDataEmiAntiga;
                 ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 ParamByName('pNatureza').AsString    := NotasTerceirosNatureza_Codigo.Value;
                 Open;
     end;
                 First;

                  Screen.Cursor := crDefault;
               End;
            End;

            If Button = nbDelete then begin
               // Verifica se existe lancamento financeiro baixado da nota fiscal.
               VerBaixa;
               
               IfRecordCount > 0 then begin
                  MessageDlg('Esta nota fiscal não pode ser excluída, pois existe lançamento financeiro baixado'+#13+#13+
                             'Estorne primeiro a baixa para poder excluir esta nota Fiscal.'+#13+#13+
                             'Título: '+FieldByName('Titulo').AsString + '   Vencimento: '+FieldByName('Vencimento').AsString, mtConfirmation, [mbOK], 0);
                  Abort;
               End;
               // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (NF DE SAIDA).
               if Dados.ReferenciasFiscaisMovimenta_Estoque.asboolean then begin
                  mItens := '';
                  with NotasTerceirosItens do begin
                       sql.Clear;
                       sql.Add('select * from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pEmissao and Fornecedor = :pFornecedor');
                       ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                       ParamByName('pEmissao').AsDate       := NotasTerceirosData_Emissao.Value;
                       ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                       Open;
                       First;
                       while not eof do begin
                             if (EstoqueProduto(FieldByName('Codigo_Mercadoria').AsInteger) - FieldByName('Quantidade').AsFloat) < 0 then begin
                                mItens := mItens + FieldByName('Codigo_Mercadoria').AsString+#13;
                             end;
                             next;
                       end;
                  end;
                  if mItens <> '' then begin
                     MessageDlg('Nota Fiscal não pode ser "Excluída" !'+#13+#13+'Os seguintes produtos já foram movimentados e ficarão com estoque negativo.'+#13+#13+mItens, mtError, [mbOK], 0);
                     Abort;
                  end;
               end;

               // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (PEDIDOS).
              sql.Clear;
              sql.Add('select COUNT(Pedido) as Qtde');
              sql.Add('from   PedidosItens');
              sql.Add('where Codigo_Mercadoria IN(select distinct Codigo_Mercadoria from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn)');
              sql.Add('  and Saida_Entrada=1');
              ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
              ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
              ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
              Open;
               ifFieldByName('Qtde').AsInteger > 0 then begin
                  MessageDlg('Nota Fiscal não pode ser "Excluída" !'+#13+#13+'Alguns produtos constam em pedidos de nota fiscal existentes.', mtError, [mbOK], 0);
                  Abort;
               end;

               // Verifica se houve movimentação dos produtos com data superior a data de entrada da nota fiscal (TRANSFERÊNCIAS).
              sql.Clear;
              sql.Add('select COUNT(Produto_Saida) as Qtde');
              sql.Add('from   ProdutosTransferencia');
              sql.Add('where  Produto_Saida IN(select distinct Codigo_Mercadoria from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn)');
              sql.Add('  and  Data_Transferencia >= :pData ');
              ParamByName('pNota').AsInteger := NotasTerceirosNota.AsInteger;
              ParamByName('pData').AsDate    := NotasTerceirosData_Entrada.AsDateTime;
              ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
              Open;
               ifFieldByName('Qtde').AsInteger > 0 then begin
                  MessageDlg('Nota Fiscal não pode ser "Excluída" !'+#13+#13+'Existem transferências feitas com alguns produtos que constam da nota fiscal.', mtError, [mbOK], 0);
                  Abort;
               end;

               If MessageDlg('Deseja realmente excluir esta nota fiscal?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
                  Screen.Cursor := crSQLWait;
                 sql.Clear;
                 sql.Add('select * from NotasTerceirosItens where (Nota = :pNota) and (Data_Emissao = :pData) and (Fornecedor = :pFornecedor)');
                 ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
                 ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 Open;

     with Produtos do begin
                 sql.Clear;
                 sql.Add('select * from Produtos where Codigo IN((select Codigo_Mercadoria from NotasTerceirosItens WHERE(Nota = :pNota) and (Data_Emissao = :pData) and (Fornecedor = :pFornecedor)))');
                 ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
                 ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 Open;
     end;

                 sql.Clear;
                 sql.Add('select * from NotasFiscais');
                 sql.Add('where  (Numero IN(select distinct Nota_Referencia from NotasTerceirosItens where (Nota = :pNota) and (Data_Entrada = :pData) and (Fornecedor = :pFornecedor) ))');
                 sql.Add('       and (Data_Emissao IN(select distinct Data_Referencia from NotasTerceirosItens where (Nota = :pNota) and (Data_Entrada = :pData) and (Fornecedor = :pFornecedor) ))');
                 ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate          := NotasTerceirosData_Entrada.Value;
                 ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                 Open;

     with NotasItens do begin
                 sql.Clear;
                 sql.Add('select * from NotasItens');
                 sql.Add('where  (Nota IN(select distinct Nota_Referencia from NotasTerceirosItens where (Nota = :pNota) and (Data_Entrada = :pData) and (Fornecedor = :pFornecedor) ))');
                 sql.Add('  and  (Data IN(select distinct Data_Referencia from NotasTerceirosItens where (Nota = :pNota) and (Data_Entrada = :pData) and (Fornecedor = :pFornecedor) ))');
                 ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate          := NotasTerceirosData_Entrada.Value;
                 ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                 Open;
     end;

     with Adicoes do begin
                 sql.Clear;
                 sql.Add('select * from Adicoes');
                 sql.Add('where  DI IN( select distinct DI from NotasFiscais');
                 sql.Add('              where (Numero IN(select distinct Nota_Referencia from NotasTerceirosItens where (Nota = :pNota) and (Fornecedor = :pFornecedor) and (Data_Entrada = :pData) )) ) and (DI <> '''' )' );
                 ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate          := NotasTerceirosData_Entrada.Value;
                 ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                 Open;
     end;

                  Janela_Processamento := TJanela_Processamento.Create(Self);
                  Janela_Processamento.lProcesso.Caption  := 'Removendo todos os itens do nota...Aguarde.';
                  Janela_Processamento.Progresso.Max      :=RecordCount;
                  Janela_Processamento.Progresso.Position := 0;
                  Janela_Processamento.Show;

                  mItens := '';
                 First;
                  While not Eof do begin
                        // Procura pelo item na adição para liberar o estoque.
                        mQtdeUni := 0;
                        If Locate('Codigo', NotasTerceirosItensCodigo_Mercadoria.Value, [loCaseInsensitive]) = true then begin
                           mQtdeUni := ProdutosQuantidade_Unidade.AsInteger;
                        End;

                        IfLocate('Registro', NotasTerceirosItensRegistro_Adicao.Value, [loCaseInsensitive] ) then begin
                          Edit;
                                   AdicoesLancado_Saida.Value := (AdicoesLancado_Saida.Value - (NotasTerceirosItensQuantidade.Value * mQtdeUni));
                                   If ReferenciasFiscaisFinalidade_Mercadoria.Value = 4 then begin
                                      AdicoesLancado_Terceiros.Value := (AdicoesLancado_Terceiros.Value + (NotasTerceirosItensQuantidade.Value * mQtdeUni));
                                      If AdicoesLancado_Terceiros.Value < 0 then AdicoesLancado_Terceiros.Value := 0;
                                   End;
                          Post;
                        End;

                        // Reprocessa o valor do estoque minímo do produto por percentual caso esteja informado o percentual minímo no cadastro.
                        If ProdutosEstoque_MinimoPerc.AsFloat > 0 then begin
                          Edit;
                                    ProdutosEstoque_Minimo.Value := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger)-NotasTerceirosItensQuantidade.AsFloat, ProdutosEstoque_MinimoPerc.AsFloat);
                          Post;
                        End;

                        // Pegando a lista de itens da nota fiscal antes de excluir, para reprocessar as fischas de Estoque/Inventario.
                        mItens := mItens + NotasTerceirosItensCodigo_Mercadoria.asstring+',';

                       Next;
                        Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                        Application.ProcessMessages;
                  End;
                  mItens := Copy(mItens, 1, Length(mItens)-1);

                  // Indisponibiliza todos os chassis ou seriais com a nota.
     with tDeletaItens do begin
                 sql.Clear;
                 sql.Add('UPDATE ProdutosSeriais SET Disponivel = 0');
                 sql.Add('                          ,Nota_Retorno = null');
                 sql.Add('                          ,Data_Retorno = null');
                 sql.Add('where Nota_Retorno = :pNota and Data_Retorno = :pData and Produto_Codigo IN(select Codigo_Mercadoria from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn)');
                 ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                 ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 Execute;
                 sql.Clear;
                 sql.Add('DELETE from ProdutosSeriaisNotas');
                 sql.Add('where  Nota = :pNota and Data = :pData and Produto_Codigo IN(select Codigo_Mercadoria from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn)');
                 ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                 ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 Execute;
                 sql.Clear;
                 sql.Add('DELETE from ProdutosSeriais');
                 sql.Add('where (select COUNT(*) from ProdutosSeriaisNotas PSN where PSN.Produto_Codigo =Produto_Codigo) = 0');
                 Execute;
                  
                  // Delete as entrada dos lotes pela nota.
                 sql.Clear;
                 sql.Add('DELETE from ProdutosDetalhe');
                 sql.Add('where  Nota_Entrada = :pNota and Data_Entrada = :pData and Produto_Codigo IN(select Codigo_Mercadoria from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pForn)');
                 ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
                 ParamByName('pForn').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 Execute;

                  // Apaga todos os itens da nota fiscal.
                 sql.Clear;
                 sql.Add('DELETE from NotasTerceirosItens where Nota = :pNota and Data_Emissao = :pData and Fornecedor = :pFornecedor');
                 ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate          := NotasTerceirosData_Emissao.Value;
                 ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.AsInteger;
                 Execute;

                 EnableControls;
                  Janela_Processamento.Close;
                  Screen.Cursor := crDefault;

                  // Apaga todas as parcelas do CIAP da nota fiscal.
     with CIAP do begin
                 sql.Clear;
                 sql.Add('DELETE from CIAP where (Nota = :pNota) and (Data_Nota = :pData) and (Fornecedor = :pFornecedor)');
                 ParamByName('pNota').AsInteger       := NotasTerceirosNota.Value;
                 ParamByName('pData').AsDate          := NotasTerceirosData_Entrada.Value;
                 ParamByName('pFornecedor').AsInteger := NotasTerceirosFornecedor.Value;
                 Execute;
                 sql.Clear;
                 sql.Add('select * from CIAP');

                  // Apaga os lançamentos do financeiro.
     with PagarReceber do begin
                 sql.Clear;
                 sql.Add('DELETE from PagarReceber where (Data_Documento = :pData) and (Documento = :pDocumento) and (Numero_Documento = :pNumeroDOC) and (Tipo_Nota = :pTipo)');
                 ParamByName('pData').AsDate        := NotasTerceirosData_Emissao.Value;
                 ParamByName('pDocumento').AsString := NotasTerceirosTipo.Value;
                 ParamByName('pNumeroDOC').AsString := NotasTerceirosNota.AsString;
                 ParamByName('pTipo').AsString      := 'NT';
                 Execute;

                  // Ajusta o controle de navios em caso de devolução.
                  with tTmp do begin
                       // Reduz a quantidade devolvida da nota de referência ja importada para evitar duplicar.
                       sql.clear;
                       sql.add('select distinct Nota_Referencia, Data_Referencia, DI from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Saida_Entrada = 0 and Emissor = ''T'' ');
                       parambyname('pNota').Value := NotasTerceirosNota.AsInteger;
                       parambyname('pData').Value := NotasTerceirosData_Emissao.value;
                       open;
     end;
                  end;
                  with tTmp2 do begin
                       sql.clear;
                       sql.add('update NotasItensNavios set Quantidade_Devol = Quantidade_Devol - (select isnull(Quantidade,0) from NotasItensNavios nir where nir.Nota_Referencia = nin.Nota and nir.Data_Emissao = nin.Data_Emissao and nir.DI = nin.DI)');
                       sql.add('from NotasItensNavios as nin');
                       sql.add('where Nota = :pNota');
                       sql.add('and Data_Emissao = :pData');
                       sql.add('and Saida_Entrada = 1');
                       sql.add('and Emissor = ''P'' ');
                       parambyname('pNota').Value := tTmp.fieldbyname('Nota_Referencia').AsInteger;
                       parambyname('pData').Value := tTmp.fieldbyname('Data_Referencia').value;
                       execute;
                       // Deleta a nota ja importada.
                       sql.clear;
                       sql.add('delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Saida_Entrada = 0 and Emissor = ''T'' ');
                       parambyname('pNota').value := NotasTerceirosItensNota.asinteger;
                       parambyname('pData').value := NotasTerceirosItensData_Emissao.Value;
                       execute;
                  end;

                  // Apaga os lançamentos da contabilidade.
                  (*
     with Lancamentos do begin
                 sql.Clear;
                 sql.Add('DELETE from Lancamentos where (Data = :pData) and (Numero = :pNumero) and (Tipo_Documento = :pTipo)' );
                 ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.Value;
                 ParamByName('pNumero').AsInteger := NotasTerceirosLancamento_Nota.Value;
                 ParamByName('pTipo').AsString    := 'NT';
                 Execute;
                  *)
                  // Deleta os itens da ficha de estoque e de inventario.
                  // Ficha de Estoque.
                  If ReferenciasFiscaisMovimenta_Estoque.AsBoolean then begin
     with FichaEstoque do begin
                    sql.Clear;
                    sql.Add('DELETE from FichaEstoque where Nota = :pNota and Data = :pData and Destinatario_Codigo = :pDest');
                    ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                    ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                    ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                    Execute;
                    sql.Clear;
                    sql.Add('select * from FichaEstoque where Nota = :pNota and Data = :pData and Destinatario_Codigo = :pDest');
                    ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                    ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                    ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                    Open;
     end;

                     // Reprocessa os saldos da ficha de estoque.
                     AtualizaEst(mItens);
                  End;
                  // Ficha de inventario.
                  If ReferenciasFiscaisMovimenta_Inventario.AsBoolean then begin
     with FichaInventario do begin
                    sql.Clear;
                    sql.Add('DELETE from FichaInventario where Nota = :pNota and Data = :pData and Destinatario_Codigo = :pDest');
                    ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                    ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                    ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                    Execute;
                    sql.Clear;
                    sql.Add('select * from FichaInventario where Nota = :pNota and Data = :pData and Destinatario_Codigo = :pDest');
                    ParamByName('pNota').AsInteger   := NotasTerceirosNota.AsInteger;
                    ParamByName('pData').AsDate      := NotasTerceirosData_Entrada.AsDateTime;
                    ParamByName('pDest').AsInteger   := NotasTerceirosFornecedor.AsInteger;
                    Open;
     end;

                     // Reprocessa os saldos da ficha de inventario.
                     AtualizaInv(mItens);
                  End;
                  Screen.Cursor := crDefault;
               end else begin
                  Abort;
               End;
            End;
       end;
       bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
       Screen.Cursor := crDefault;
*)
}
end;

procedure TfFiscalNFTerceiros.cOperacaoCloseUp(Sender: TObject);
begin
(*
   begin
           NotasTerceirosTipo.Value := ReferenciasFiscaisEspecie.Value;
           If NotasTerceirosFornecedor.Value > 0 then begin
              If (FornecedoresEstado.Value = EmpresasEstado.Value) then begin
                 NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Dentro.Value;
              end else begin
                 NotasTerceirosNatureza_Codigo.Value := ReferenciasFiscaisNatureza_Fora.Value;
              End;
           End;
      End;
*)
end;

procedure TfFiscalNFTerceiros.bDuplicatasClick(Sender: TObject);
begin
(*
      ModalidadePgto_Parcelas := TModalidadePgto_Parcelas.Create(Self);
      ModalidadePgto_Parcelas.mTipo   := 'P';
      ModalidadePgto_Parcelas.mTipoNF := 1;
      ModalidadePgto_Parcelas.ShowModal;
*)
end;

procedure TfFiscalNFTerceiros.bImportaXMLNFeClick(Sender: TObject);
Var
  I: Integer;
  mNotaXML: TuniEdit;
begin
(*
   begin
          If mProvisoria = false then begin
             cXML.Execute;
             If cXML.Files.Count > 0 then begin
                Utilitarios_Importar_NFe_Terceiros := TUtilitarios_Importar_NFe_Terceiros.Create(Self);
                Utilitarios_Importar_NFe_Terceiros.Caption := Caption;

                // Preenchendo o vetor com os nomes dos arquivos "XML".
                For I := 0 to cXML.Files.Count-1 do begin
                    Utilitarios_Importar_NFe_Terceiros.mArquivos[I] := cXML.Files.Strings[I];
                End;
                Utilitarios_Importar_NFe_Terceiros.mTamanho := cXML.Files.Count;
                Utilitarios_Importar_NFe_Terceiros.ShowModal;

     with NotasTerceiros do begin
               sql.Clear;
               sql.Add('select * from NotasTerceiros WHERE(Servico IS NULL) and (ISNULL(Provisoria,0) <> 1)');
               sql.Add('order by Data_Entrada, Nota');
               Open;
     end;

                mNotaXML         := TEdit.Create(FiscalNFTerceiros);
                mNotaXML.Visible := False;
                mNotaXML.Parent  := FiscalNFTerceiros;
                mNotaXML.PasteFromClipboard;

               Locate('Nota', mNotaXML.Text, [loCaseInsensitive]);
                mNotaXML.Destroy;
             End;
             bDuplicatas.Enabled := (dmFiscal.NotasTerceirosValor_TotalNota.Value > 0);
          end else begin
             cXML.Options := [ofHideReadOnly,ofNoChangeDir,ofEnableSizing];
             cXML.Execute;
             If cXML.Files.Count > 0 then begin
                Utilitarios_Importar_NFe_TerceirosProv := TUtilitarios_Importar_NFe_TerceirosProv.Create(Self);
                Utilitarios_Importar_NFe_TerceirosProv.Caption := Caption;

                //Preenchendo o vetor com os nomes dos arquivos "XML".
                For I := 0 to cXML.Files.Count-1 do begin
                    Utilitarios_Importar_NFe_TerceirosProv.mArquivos[I] := cXML.Files.Strings[I];
                End;
                Utilitarios_Importar_NFe_TerceirosProv.mTamanho  := cXML.Files.Count;
                Utilitarios_Importar_NFe_TerceirosProv.ShowModal;
             End;
          End;
     end;

     ContaItens;
     bItens.Enabled := dmFiscal.NotasTerceiros.RecordCount > 0;
*)
end;

procedure TfFiscalNFTerceiros.bImportaXMLCTeClick(Sender: TObject);
var
   i:integer;
begin
(*
     cXML.Execute;
     if trim(cXML.FileName) <> '' then begin
        Utilitarios_Importar_CTe_Terceiros := TUtilitarios_Importar_CTe_Terceiros.Create(Self);
        Utilitarios_Importar_CTe_Terceiros.Caption := Caption;
        // Preenchendo o vetor com os nomes dos arquivos "XML".
        for i := 0 to cXML.Files.Count-1 do begin
            Utilitarios_Importar_CTe_Terceiros.cArquivos.Items.Add(cXML.Files.Strings[i]);
        end;
        Utilitarios_Importar_CTe_Terceiros.ShowModal;
     end;
*)
end;

procedure TfFiscalNFTerceiros.bEfetivarClick(Sender: TObject);
begin
(*
      FiscalNFTerceirosEfetivar := TfFiscalNFTerceirosEfetivar.Create(Self);
      FiscalNFTerceirosEfetivar.Caption := Caption;
      FiscalNFTerceirosEfetivar.ShowModal;
*)
end;

function TfFiscalNFTerceiros.Baixado: boolean;
begin
     with ttmp do begin
          sql.clear;
          sql.add('select Titulo');
          sql.add('      ,Data');
          sql.add('from PagarReceberBaixas');
          sql.add('where Titulo in(select Titulo from PagarReceber where Titulo = :pTitulo)');
          parambyname('pTitulo').value := NotasLancamento_Financeiro.asinteger;
          open;
          Baixado := fieldbyname('Titulo').asinteger > 0;
     end;
end;

function TfFiscalNFTerceiros.Movimentado: boolean;
begin
     with ttmp do begin
          sql.clear;
          sql.add('select Qtde = (select isnull(count(Nota), 0)');
          sql.add('               from NotasItens ni');
          sql.add('               where ni.ES = 1');
          sql.add('               and ni.Data_Emissao >= :pData');
          sql.add('               and Codigo_Mercadoria in(select Codigo_Mercadoria from NotasItens where Empresa = :pEmpresa and Nota = :pNota and Data_Emissao >= :pData)) +');
          sql.add('              (select isnull(count(Pedido), 0)');
          sql.add('               from PedidosNFItens pi');
          sql.add('               where pi.ES = 1');
          sql.add('               and Codigo_Mercadoria in(select Codigo_Mercadoria from NotasItens where Empresa = :pEmpresa and Nota = :pNota and Data_Emissao >= :pData)) +');
          sql.add('              (select isnull(count(Produto_Saida), 0)');
          sql.add('               from EstoqueTransferencia');
          sql.add('               where Produto_Saida in(select Codigo_Mercadoria from NotasItens where Empresa = :pEmpresa and Nota = :pNota and Data_Emissao >= :pData)');
          sql.add('               and Data_Transferencia >= :pData)');
          parambyname('pNota').value    := NotasNota.asinteger;
          parambyname('pData').asdate   := NotasData_ES.value;
          parambyname('pEmpresa').value := NotasEmpresa.value;
          //sql.savetofile('c:\temp\Notas_Terceiros_Movimentado.sql');
          open;
          Movimentado := fieldbyname('Qtde').asinteger > 0;
     end;
end;

procedure TfFiscalNFTerceiros.cNotaChange(Sender: TObject);
begin
(*
   begin
     with ProdutosSeriais do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from  ProdutosSeriais');
          sql.Add('where Numero IN(select distinct Numero from ProdutosSeriaisNotas where Nota = :pNota and Data = :pData) and ISNULL(Temp, 0) = 0');
          sql.Add('order by Produto_Codigo, Numero');
          ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
          ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
          Open;
     end;

           TabSheet3.Caption := 'Seriais/Chassis ['+ InttoStr(ProdutosSeriais.RecordCount)+']';
     with ProdutosDetalhe do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from  ProdutosDetalhe');
          sql.Add('where Nota_Entrada = :pNota and Data_Entrada = :pData');
          sql.Add('order by Produto_Codigo, Lote');
          ParamByName('pNota').AsInteger := NotasTerceirosNota.Value;
          ParamByName('pData').AsDate    := NotasTerceirosData_Emissao.Value;
          Open;
     end;
           TabSheet4.Caption := 'Lotes ['+ InttoStr(ProdutosDetalhe.RecordCount)+']';
      end;
*)
end;

procedure TfFiscalNFTerceiros.bAlterarClick(Sender: TObject);
begin
(*
      FiscalNFTerceirosAlteraChassi := TfFiscalNFTerceirosAlteraChassi.Create(Self);
      FiscalNFTerceirosAlteraChassi.Caption := Caption;
      FiscalNFTerceirosAlteraChassi.Showmodal;
*)
end;

procedure TfFiscalNFTerceiros.cSitClick(Sender: TObject);
begin
(*
      with tManifesto do begin
           sql.Clear;
           sql.Add('select Nota');
           sql.Add('      ,Data_Emissao');
           sql.Add('      ,NFe_cNF');
           sql.Add('      ,Fornecedor = (select Nome from Fornecedores where Codigo = Fornecedor)');
           sql.Add('from NotasTerceiros');
           sql.Add('where Modelo IN(''55'') ');
           sql.Add('and   isnull(Servico, '''') = '''' ');
           sql.Add('and   isnull(Desdobramento, 0) = 0');
           if cSit.Itemindex = 0 then
              sql.Add('and   ISNULL(Manifestada, 0) = 0 ')
           else
              sql.Add('and   ISNULL(Manifestada, 0) = 1');
           sql.Add('order by Data_Emissao, Nota');
           Open;
      end;
*)
end;

procedure TfFiscalNFTerceiros.bManifestarClick(Sender: TObject);
var
   mSel,
   tpAmb,
   cStat: Integer;
//   Util: NFe_Util_2G_Interface;
   Certificado,
   SiglaWS,
   RetWS,
   Licenca,
   Versao,
   Proxy,
   Usuario,
   Protocolo,
   ProtocoloData,
   ProcEvento,
   Resultado,
   DataHora,
   mPasta,
   Senha: WideString;
   xmlProtocolo:TuniMemo;
begin
(*
      If not Internet then begin
         MessageDlg('Erro de comunicação!'+#13+#13+'Você esta sem conexão com a Internet.', mtError, [mbOK], 0);
         Abort;
      End;
      If DataLimpa(cData.Text) then begin
         MessageDlg('Erro!'+#13+#13+'Data é campo obrigatório.', mtError, [mbOK], 0);
         cData.SetFocus;
         Abort;
      End;
      If Trim(RemoveCaracter(':', '', cHora.Text)) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Hora é campo obrigatório.', mtError, [mbOK], 0);
         cHora.SetFocus;
         Abort;
      End;
      If Trim(cMotivo.Text) = '' then begin
         MessageDlg('Erro!'+#13+#13+'Motivo da manifestação é campo obrigatório.', mtError, [mbOK], 0);
         cMotivo.SetFocus;
         Abort;
      End;
      If (cMotivo.ItemIndex = 3) and (Trim(cJustificativa.Text) = '') then begin
         MessageDlg('Erro!'+#13+#13+'Para o motivo = "03" "Registro da Operação não Realizada" é obrigatório informar a justificativa.', mtError, [mbOK], 0);
         cJustificativa.SetFocus;
         Abort;
      End;
      If (cMotivo.ItemIndex = 3) and (Length(Trim(cJustificativa.Text)) < 15) then begin
         MessageDlg('Erro!'+#13+#13+'Para o motivo = "03" "Registro da Operação não Realizada" A justificativa deve ter pelo menos 15 caracteres.', mtError, [mbOK], 0);
         cJustificativa.SetFocus;
         Abort;
      End;
      if GradeManif.SelectedRows.Count <= 0 then begin
         MessageDlg('Erro!'+#13+#13+'Nenhuma nota selecionada para manifestar.', mtError, [mbOK], 0);
         GradeManif.SetFocus;
         Abort;
      end;

      Screen.Cursor := crHourGlass;
      cMensagens.clear;

      Panel2.Enabled    := false;

      cMensagens.Clear;
      cMensagens.Lines.Add('Comunicando-se com o servidor da SEFAZ...Aguarde.');
      cMensagens.Lines.Add('');
      cMensagens.Lines.Add('1. Enviando manifestação.');

      Application.ProcessMessages;

   begin
           mPasta := Trim(ConfiguracaoPasta_NFE.Value) + '\'+removecaracter('/', '', Trim(EmpresasRazao_Social.AsString));
           If EmpresasMatriz_Filial.AsBoolean = true then
              mPasta := mPasta + '_Matriz'
           else
              mPasta := mPasta + '_Filial'+PoeZero(2, EmpresasNumero_Filial.AsInteger);

           mPasta := mPasta + '\Manifesto';
           If not DirectoryExists(mPasta) then ForceDirectories(mPasta);
           
           for mSel := 0 to GradeManif.SelectedRows.Count-1 do begin
               GradeManif.DataSource.DataSet.GotoBookMark((GradeManif.SelectedRows.Items[mSel]));

               cMensagens.Lines.Add('   '+tManifesto.FieldByName('NFE_cNF').asstring);

               Util        := CoUtil.Create;
               Certificado := Trim(EmpresasCertificado_Digital.AsString);
               SiglaWS     := Trim(EmpresasUF_WebServiceManifesto.AsString);
               RetWS       := '';
               tpAmb       := Menu_Principal.Amb_Producao;
               Licenca     := Trim(EmpresasLicensa_NFe_Util.Value);
               Versao      := Trim(EmpresasManifesto_Layout.Value);
               Proxy       := Trim(ConfiguracaoServidor_Proxy.AsString);
               Usuario     := Trim(ConfiguracaoUsuario_Proxy.AsString);
               Senha       := Trim(ConfiguracaoSenha_Proxy.AsString);
               DataHora    := FormatDateTime('yyyy-mm-dd "" hh:mm:ss', StrtoDateTime(cData.Text+cHora.Text));
               cJustificativa.Text := RemoveCaracterXML(cJustificativa.Text);

               ProcEvento := Util.EnviaManDest(SiglaWS                    777
                                              ,tpAmb
                                              ,Certificado
                                              ,Versao
                                              ,MsgDados
                                              ,RetWS
                                              ,cStat
                                              ,Resultado
                                              ,tManifesto.FieldbyName('NFe_cNF').asstring
                                              ,EmpresasCNPJ.AsString                                    
                                              ,DataHora
                                              ,cMotivo.ItemIndex
                                              ,cJustificativa.Text
                                              ,Protocolo
                                              ,ProtocoloData
                                              ,Proxy
                                              ,Usuario
                                              ,Senha
                                              ,Licenca);

               // 135 - Evento registrado e vinculado a NF-e.
               // 136 - Evento registrado, mas nao vinculado a NF-e.
               if (cStat = 135) or (cStat = 136) then begin
                  cMensagens.Lines.Add('2.'+Resultado);
                  cMensagens.Lines.Add('3. Número do Protocolo de homologação : '+Protocolo + '   Data :'+ProtocoloData);
                  cMensagens.Lines.Add('4. Salvando Protocolo no banco de dados.');

                 sql.Clear;
                 sql.Add('select * from NotasTerceiros where NFe_cNF = :pChave');
                 ParamByName('pChave').AsString := tManifesto.FieldbyName('NFe_cNF').asstring;
                 Open;
                 Edit;
                                 NotasTerceirosManifesto_Protocolo.Value     := Protocolo;
                                 NotasTerceirosManifesto_DataProtocolo.Value := StrtoDateTime(Copy(ProtocoloData,9,2)+'/'+Copy(ProtocoloData,6,2)+'/'+Copy(ProtocoloData,1,4)+' '+Copy(ProtocoloData,12,11));
                                 NotasTerceirosManifesto_Motivo.Value        := cMotivo.ItemIndex;
                                 NotasTerceirosManifesto_Justificativa.Value := cJustificativa.Text;
                                 NotasTerceirosManifestada.Value             := true; 
                 Post;

                  // Salvando o XML do protocolo da manifestação.
                  try
                      cMensagens.Lines.Add('5. Salvando arquivo XML do Protocolo no disco.');
                      xmlProtocolo         := TMemo.Create(FiscalNFTerceiros);
                      xmlProtocolo.Visible := False;
                      xmlProtocolo.Parent  := FiscalNFTerceiros;
                      xmlProtocolo.Lines.Clear;
                      xmlProtocolo.Lines.Add(MsgDados);
                      xmlProtocolo.Lines.SaveToFile(mPasta+'\NFe_'+tManifesto.FieldbyName('NFe_cNF').asstring+'_Manifestacao'+PoeZero(2,cMotivo.ItemIndex)+'.xml');

                      xmlProtocolo.Lines.Clear;
                      xmlProtocolo.Lines.Add(RetWS);
                      xmlProtocolo.Lines.SaveToFile(mPasta+'\NFe_'+tManifesto.FieldbyName('NFe_cNF').asstring+'_ManifestacaoProtocolo'+PoeZero(2,cMotivo.ItemIndex)+'.xml');
                  except
                      cMensagens.Lines.Add('   Erro ao salvar os arquivos no disco, verifique se as pastas estão corretas nas configurações do sistema.');
                  end;
               end else begin
                  If cStat < 1000 then begin
                     if cStat = 573 then begin // Quando a nota fiscal já foi manifestada.
                       sql.Clear;
                       sql.Add('select * from NotasTerceiros where NFe_cNF = :pChave');
                       ParamByName('pChave').AsString := tManifesto.FieldbyName('NFe_cNF').asstring;
                       Open;
                       Edit;
                                       if trim(NotasTerceirosManifesto_Protocolo.asstring) = '' then
                                          NotasTerceirosManifesto_Protocolo.Value     := '000000000000000';
                                       NotasTerceirosManifesto_DataProtocolo.Value := Date;
                                       NotasTerceirosManifesto_Motivo.Value        := cMotivo.ItemIndex;
                                       NotasTerceirosManifesto_Justificativa.Value := cJustificativa.Text;
                                       NotasTerceirosManifestada.Value             := true; 
                       Post;
                     end;
                     cMensagens.Lines.Add('2. Evento de Manifestação do destinatário rejeitado pelo WS...');
                     cMensagens.Lines.Add('   '+Resultado);
                  end else begin
                     cMensagens.Lines.Add('2. Falha na chamada do WS...');
                     cMensagens.Lines.Add('   '+Resultado);
                  end;
               end;
           end;
      end;
      tManifesto.close;
      Panel2.Enabled := true;
      tManifesto.Open;
      Screen.Cursor := crDefault;
*)
end;

procedure TfFiscalNFTerceiros.cMotivoChange(Sender: TObject);
begin
(*
     if cMotivo.ItemIndex < 3 then cJustificativa.clear;
*)
end;

procedure TfFiscalNFTerceiros.BuscarSefaz;
var
//   Util: NFe_Util_2G_Interface;
   RetWS,
   Resultado,
   msgDados,
   ultNSURec,
   verAplic,
   dhResp,
   maxNSU,
   ultNSU,
   NSUXML,
   schemaXML,
   NSU,
   Evento: widestring;

   qtDocto,
   cStat: Integer;
begin
(*

   begin
         RetWS     := '';
         ultNSURec := '0';

        Locate('Codigo',  Empresas.fieldByName('Estado').asstring, [loCaseInsensitive]);

         Util   := CoUtil.Create;
         {
         Evento := Util.distNSU(
                                'AN'
                                ,Menu_Principal.Amb_Producao
                                ,Trim(EmpresasCertificado_Digital.AsString)
                                ,Trim(EmpresasNFEletronica_Layout.Value)
                                ,msgDados
                                ,msgRetWS
                                ,cStat
                                ,Resultado
                                ,Empresas.FieldByName('CNPJ').asstring
                                ,Estados.fieldByName('Numero').asstring
                                ,ultNSURec
                                ,verAplic
                                ,dhResp
                                ,ultNSU
                                ,maxNSU
                                ,qtDocto
                                ,Trim(ConfiguracaoServidor_Proxy.AsString)
                                ,Trim(ConfiguracaoUsuario_Proxy.AsString)
                                ,Trim(ConfiguracaoSenha_Proxy.AsString)
                                ,Trim(EmpresasLicensa_NFe_Util.Value)
                               );
         mBusca.lines.add('Ultimo NSU Rec: '+ultNSURec);
         mBusca.lines.add('Ultimo NSU    : '+ultNSU);
         mBusca.lines.add('Maximo NSU    : '+maxNSU);
         }

         Evento := Util.consNSU('AN'
                          ,Menu_Principal.Amb_Producao
                          ,Trim(EmpresasCertificado_Digital.AsString)
                          ,Trim(EmpresasNFEletronica_Layout.Value)
                          ,msgDados
                          ,msgRetWS
                          ,cStat
                          ,msgResultado
                          ,Empresas.FieldByName('CNPJ').asstring
                          ,Estados.fieldByName('Numero').asstring
                          ,'5443'
                          ,verAplic
                          ,dhResp
                          ,ultNSU
                          ,maxNSU
                          ,NSUXML
                          ,schemaXML
                          ,Trim(ConfiguracaoServidor_Proxy.AsString)
                          ,Trim(ConfiguracaoUsuario_Proxy.AsString)
                          ,Trim(ConfiguracaoSenha_Proxy.AsString)
                          ,Trim(EmpresasLicensa_NFe_Util.Value)
                          );

         //mBusca.lines.add('Retorno Status: '+inttostr(cStat));
         //mBusca.lines.add('');
         cMensagens.lines.add('Ultimo NSU Rec: '+ultNSURec);
         cMensagens.lines.add('Ultimo NSU    : '+ultNSU);
         cmensagens.lines.add('Maximo NSU    : '+maxNSU);

//         mXML.Lines.Add(NSUXml);
//         mXML.Lines.Add('***************************************************************************************************');
//         mXML.Lines.Add(NSUXML);
//         mXML.lines.Savetofile('c:\temp\Retorno_XML.xml');
    end;

*)
end;

{(*
procedure TfFiscalNFTerceiros.BuscarSefaz;
var
   Util: OleVariant;            
   _msgResultado: widestring;
   _resultado,
   resposta: integer;

   siglaWS: widestring;           // sigla do WS: AN para AmbienteNacional ou RS
   siglaUF:widestring;            // sigla da UF do destinatário
   tipoAmbiente: integer;         // Ambiente: 1-Produção e 2-Homologação
   nomeCertificado: widestring;   // campo assunto do certificado digital
   versao: widestring;            // versão= 1.01
   CNPJ: widestring;              // CNPJ do desinatário

   indNFe: integer;               // 0-todas as notas,
                                  // 1-somente as que não tiveram manifestação concluisva
                                  // 2-todas as que tiveram manifestação

   indEmi: integer;               // 0-todas as NF-e,
                                  // 1-somente as NF-e que não tenham destinatário/remetente
                                  //   com a mesma raiz CNPJ

   ultNSU: widestring;            // último NSU recebido pela empresa
   proxy: widestring;             // IP e porta do proxy, informar se existir proxy
   usuario: widestring;           // usuario do proxy
   senha: widestring;             // senha do proxy
   licenca: widestring;           // licenca de uso, necessário informar para produção
   
   //          DECLARAÇÃO DE PARÂMETROS DE RETORNO DA FUNCIONALIDADE
   msgDados: widestring;          // retorna o XML enviado ao WS
   msgRetWS: widestring;          // retorna o XML de resposta do WS
   cStat:integer;                 // retorna o código do resultado da chamada
   msgResultado: widestring;      // retorna o literal do resultado da chamada
   dhResp: widestring;            // retorna a data e hora da resposta
   indCont: integer;              // retorna o indicador de continuação
                                  //   0-não existem mais NF-e
                                  //   1-existem mais NF-e

   ultNSUConsultado: widestring;  // retorna o Último NSU pesquisado na SEFAZ.
                                  // Se for o caso, o solicitante pode continuar a consulta
                                  // a partir deste NSU para obter novos resultados.

   txtNFe: widestring;            // retorna o TXT com as informações das notas localizadas
   txtNFetemp: widestring;        // string de trabalho

begin
(*
      Screen.Cursor := CrHourGlass;

      siglaWS          := 'AN';
      siglaUF          := 'SC';  // 42
      tipoAmbiente     := 2;
      nomeCertificado  := Trim(Dados.EmpresasCertificado_Digital.AsString);
      versao           := '1.01';
      msgDados         := '';
      msgRetWS         := '';
      cStat            := 0;
      msgResultado     := '';
      CNPJ             := Dados.Empresas.FieldByName('CNPJ').asstring;
      indNFe           := 0;
      indEmi           := 0;
      ultNSU           := '0';
      proxy            := '';
      usuario          := '';
      senha            := '';
      licenca          := Trim(Dados.EmpresasLicensa_NFe_Util.Value);
      dhResp           := '';
      indCont          := 1;
      ultNSUConsultado := '0';
      txtNFe           := '';
      _resultado       := 0;
      _msgResultado    := '';

      Util := CoUtil.Create;

      Repeat
           txtNFeTemp := Util.ConsultaNFDest(siglaWS, siglaUF, tipoAmbiente, nomeCertificado, versao, msgDados, msgRetWS, cStat, msgResultado, CNPJ, indNFe, indEmi, ultNSU, dhResp, indCont, ultNSUConsultado, proxy, usuario, senha, licenca);

           mBusca.lines.add('Codigo Retorno: '+inttostr(cStat) );
           mBusca.lines.add(msgResultado);

           // 137 - Nenhum documento localizado para o destinatário	WS	-
           // 138 - Documento localizado para o destinatário
           if cStat = 138 then begin
              txtNFe := txtNFe + txtNFeTemp;        // acumula txt /   a implementar - caso o usuário queira trabalhar com o XML /  tratar o msgRetWS que tem o XML com a lista de NF-e e eventos.
           end else
             Break;
             if cStat > 1000 then begin
                MessageDlg( 'Falha na chamada do WS...'+#13+#13+msgResultado, mtError, [mbOk], 0);
                indCont := 1;             // para sair do loop
             end else
               if cStat = 656 then begin  //  trata consumo indevido
                  resposta := MessageDlg( 'Ocorreu consumo indevido, necessário aguardar 3 minutos, deseja aguardar 3 minutos ou não? ...'+#13+#13 +msgResultado, mtError, [mbYes,mbNo], 0);
                  if resposta = mrYes then
                     Sleep(180000)
                  else begin
                     MessageDlg( 'Pedido de consulta de NF-e destinadas rejeitada pelo WS...'+#13+#13 +msgResultado, mtError, [mbOk], 0);
                     indCont := 1;             // para sair do loop
                  end;
               end else
                 if cStat <> 137 then begin
                    MessageDlg( 'Pedido de consulta de NF-e destinadas rejeitada pelo WS...'+#13+#13 +msgResultado, mtError, [mbOk], 0);
                    indCont := 1;             // para sair do loop
                 end;

             ultNSU := ultNSUConsultado;                      // atualiza ultNSU com o ultNSUConsultado para persistir na pesquisa
      until indCont <> 1;

      Screen.Cursor := CrDefault;

      //rtfDadosMsg.Text       := Util.IdentaXML(msgDados,_resultado, _msgResultado);
      //rtfRetWs.Text          := Util.IdentaXML(msgRetWS,_resultado, _msgResultado);
      //edUltNSU.Text          := ultNSUConsultado;  // atualiza último NSU Consultado
      //edResultado.Text       := msgResultado;

      //137 - Nenhum documento localizado para o destinatário	WS	-
      //138 - Documento localizado para o destinatário
      if length(txtNFe) > 0 then begin
         mXML.Text := txtNfe;
      end;
*)
end;
*)}
procedure TfFiscalNFTerceiros.Button1Click(Sender: TObject);
begin
(*
     BuscarSefaz;
*)
end;

procedure TfFiscalNFTerceiros.Button2Click(Sender: TObject);
//var
//   Util: NFe_Util_2G_Interface;
begin
(*
     {
     string EnviaCancPrestDesacordo(
                                    string siglaWS
                                   , int tipoAmbiente
                                   , string nomeCertificado
                                   , string versao
                                   , out string msgDados
                                   , out string msgRetWS
                                   , out int cStat
                                   , out string msgResultado
                                   , string chaveCTe
                                   , string CNPJTomador
                                   , string nProtEvPrestDes
                                   , string dhEvento
                                   , out string nProtocolo
                                   , out string dProtocolo
                                   , string proxy
                                   , string usuario
                                   , string senha
                                   , string licenca
                                   )
      }
*)
end;

procedure TfFiscalNFTerceiros.bVincularClick(Sender: TObject);
begin
(*
     FiscalNFTerceirosVinculo := TfFiscalNFTerceirosVinculo.create(self);
     FiscalNFTerceirosVinculo.caption := caption;
     FiscalNFTerceirosVinculo.showmodal;
*)
end;

procedure TfFiscalNFTerceiros.bXMLSairClick(Sender: TObject);
var
  i: integer;
begin
     TabXML.TabVisible := false;
     for i := 0 to pred(Pasta.PageCount) do begin
         Pasta.Pages[i].Enabled := true;
     end;
     Pasta.ActivePage  := TabCapa;
     pBarraNav.Enabled := true;
     Notas.Refresh;
end;

procedure TfFiscalNFTerceiros.bManiForaClick(Sender: TObject);
var
   mSel:integer;
begin
(*
   begin
          if MessageDlg('Deseja realmente  manifestar a(s) Nota(s) selecionada(s)?', mtConfirmation, [mbyes, mbno], 0) = mryes then begin
             for mSel := 0 to GradeManif.SelectedRows.Count-1 do begin
                 GradeManif.DataSource.DataSet.GotoBookMark((GradeManif.SelectedRows.Items[mSel]));

                 if Strtoint(difdias(tManifesto.FieldByName('Data_Emissao').Value, Date)) > 180 then begin
                    cMensagens.Lines.Add('   '+tManifesto.FieldByName('NFE_cNF').asstring);

                   sql.Clear;
                   sql.Add('select * from NotasTerceiros where NFe_cNF = :pChave');
                   ParamByName('pChave').AsString := tManifesto.FieldbyName('NFe_cNF').asstring;
                   Open;

                    if (NotasTerceiros.FieldByName('Manifesto_Protocolo').Asstring = '000000000000000') or (NotasTerceiros.FieldByName('Manifesto_Protocolo').Asstring = '') then begin
                       if notFieldByName('Manifestada').AsBoolean then begin
                         Edit;
                                        FieldByName('Manifestada').AsBoolean            := true;
                                        FieldByName('Manifesto_Protocolo').Asstring     := '000000000000000';
                                        FieldByName('Manifesto_DataProtocolo').Asstring := DatetoStr(Date);
                                        FieldByName('Manifesto_Motivo').Asinteger       := 0;
                                        FieldByName('Manifesto_Justificativa').Asstring := 'Manifesto de Nota Fiscal fora do prazo.';
                         Post;
                       end else begin
                         Edit;
                                        FieldByName('Manifestada').AsBoolean := false;
                                        FieldByName('Manifesto_Protocolo').clear;
                                        FieldByName('Manifesto_DataProtocolo').clear;
                                        FieldByName('Manifesto_Motivo').clear;
                                        FieldByName('Manifesto_Justificativa').clear;
                         Post;
                       end;
                    end;
                 end else begin
                    cMensagens.Lines.Add('Nota Fiscal '+PoeZero(9, tManifesto.FieldByName('Nota').Asinteger)+': Dentro do prazo de 6 meses, utilize a manifestação oficial.');
                 end;
             end;
             tManifesto.close;
             tManifesto.Open;
          end;
     end;
*)
end;

procedure TfFiscalNFTerceiros.bAddItensClick(Sender: TObject);
begin
     // Se estiver bloqueado não deixa alterar.
     if VerBloqueios then abort;
     try
         LigaBotoesItens(false);
         pBarraNav.Enabled   := false;
         FrameItem           := TfFiscalNFTerceirosItens.create(TabItem, UniMainModule.mEmpresaAtiva, NotasNota_id.asinteger, 0, 'Adicionar', Operacao.fieldbyname('Destino_Origem').asstring);
         FrameItem.Parent    := TabItem;
         FrameItem.Align     := alClient;
         FrameItem.OnDestroy := FrameFilhoFechou;
     except on E: Exception do
        MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
     end;
end;

procedure TfFiscalNFTerceiros.bAdicionarClick(Sender: TObject);
begin
     with Notas do begin
          try
              Pasta.ActivePageIndex := 1; 
              LigaBotoes(false);
              cNota.Enabled        := true;
              cChave.Enabled       := true;
              cDataEmissao.Enabled := true;
              cDataEntrada.Enabled := true;
              cNota.SetFocus;
               
              Append;
                   NotasEmpresa.value          := UniMainModule.mEmpresaAtiva;
                   NotasES.value               := 0;
                   NotasDesdobramento.value    := false;
                   NotasEmissao.value          := 'T';
                   NotasComplementar.value     := false;
                   NotasTipo_Pagamento.value   := 0;
                   NotasData_ES.value          := date;
                   NotasModalidade_Frete.value := 6;
                   NotasNatureza_Frete.value   := 9;
          except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfFiscalNFTerceiros.bExcItensClick(Sender: TObject);
var
  mitem: integer;
begin
     // Se estiver bloqueado não deixa alterar.
     if VerBloqueios then abort;
     
     MessageDlg('Deseja realmente excluir o item ['+ItensItem.asstring+'] da nota fiscal: ', mtConfirmation,mbYesNo,
                 procedure(Comp:TComponent; ARes: Integer)
                 begin
                      if ARes = mrYes then begin
                         try 
                            with ttmp do begin 
                                 mItem := ItensItem.asinteger;
                                 sql.clear;
                                 sql.add('delete from NotasItens where Nota_Id = :pid and Item = :pItem');
                                 parambyname('pid').value   := ItensNota_id.asinteger;
                                 parambyname('pitem').value := ItensItem.asinteger;
                                 execute;
                            end;
                            Itens.Refresh;
                            TfDialogo.Execute(UniApplication, 'Sucesso', 'Item ['+inttostr(mItem)+'] excluído da nota fiscal');  
                         except on E: Exception do
                            TfDialogo.Execute(UniApplication, 'Erro', E.Message);
                         end;
                      end;
                 end);
end;

procedure TfFiscalNFTerceiros.bExcluirClick(Sender: TObject);
var
  mEstMin: real;
begin
     // Se estiver bloqueada não deixa exluir. 
     if VerBloqueios then Abort;
     
     with Notas do begin
          MessageDlg('Deseja realmente excluir esta nota fiscal: '+#13+#13+NotasChave.value, mtConfirmation,mbYesNo,
                      procedure(Comp:TComponent; ARes: Integer)
                      begin
                            if ARes = mrYes then begin
                               try
                                  with ttmp do begin
                                       // Indisponibiliza todos os chassis ou seriais com a nota.
                                       sql.Clear;
                                       sql.Add('update ProdutosSeriais set Disponivel = 0');
                                       sql.Add('where Empresa = :pEmp');
                                       sql.add('and Produto in(select Codigo_Mercadoria from NotasItens where Nota = :pNota and Data_Emissao = :pData and Destinatario = :pDest)');
                                       ParamByName('pEmp').value  := NotasEmpresa.value;
                                       ParamByName('pNota').value := NotasNota.value;
                                       ParamByName('pData').AsDate:= NotasData_Emissao.value;
                                       ParamByName('pDest').value := NotasDestinatario.value;
                                       execute;
                                       
                                       sql.Clear;
                                       sql.Add('delete from ProdutosSeriaisNotas');
                                       sql.Add('where Empresa = :pEmp');
                                       sql.Add('and Emissao = ''T'' ');
                                       sql.add('and Nota = :pNota');
                                       sql.add('and Data = :pData');
                                       sql.add('and Produto in(select Codigo_Mercadoria from NotasItens where Nota = :pNota and Data_Emissao = :pData and Destinatario = :pDest and Emissao = ''T'')');
                                       ParamByName('pNota').value  := NotasNota.Value;
                                       ParamByName('pEmp').value   := NotasEmpresa.Value;
                                       ParamByName('pData').AsDate := NotasData_Emissao.Value;
                                       ParamByName('pDest').value  := NotasDestinatario.value;
                                       Execute;
                                       
                                       sql.Clear;
                                       sql.Add('delete from ProdutosSeriais');
                                       sql.Add('where (select count(*) from ProdutosSeriaisNotas psn where psn.Produto = ProdutosSeriais.Produto) = 0');
                                       execute;
                  
                                       // Delete as entrada dos lotes pela nota.
                                       sql.Clear;
                                       sql.Add('delete from ProdutosDetalhe');
                                       sql.Add('where Empresa = :pEmp and Nota_Entrada = :pNota and Data_Entrada = :pData and Produto in(select Codigo_Mercadoria from NotasItens where Nota = :pNota and Data_Emissao = :pData and Destinatario = :pDest)');
                                       ParamByName('pEmp').value   := NotasEmpresa.Value;
                                       ParamByName('pNota').value  := NotasNota.Value;
                                       ParamByName('pData').AsDate := NotasData_Emissao.Value;
                                       ParamByName('pDest').value  := NotasDestinatario.value;
                                       execute;

                                       // Apaga todas as parcelas do Imobilizado da nota fiscal.
                                       sql.clear;
                                       sql.add('delete from Imobilizado where Empresa = :pEmp and Nota = :pNota and Data_Nota = :pData and Fornecedor = :pForn');
                                       ParamByName('pEmp').value      := NotasEmpresa.Value;
                                       ParamByName('pNota').AsInteger := NotasNota.Value;
                                       ParamByName('pData').AsDate    := NotasData_ES.Value;
                                       ParamByName('pForn').AsInteger := NotasDestinatario.Value;
                                       execute;
                                       
                                        // Delete as entrada dos lotes pela nota.
                                       sql.Clear;
                                       sql.Add('delete from ProdutosDetalhe');
                                       sql.Add('where Empresa = :pEmp');
                                       sql.add('and Nota_Entrada = :pNota');
                                       sql.add('and Data_Entrada = :pData');
                                       sql.add('and Produto in(select Codigo_Mercadoria from NotasItens where Empresa = :pEmp and Nota = :pNota and Data_Emissao = :pData and Destinatario = :pForn)');
                                       ParamByName('pEmp').value      := NotasEmpresa.Value;
                                       ParamByName('pNota').AsInteger := NotasNota.Value;
                                       ParamByName('pData').AsDate    := NotasData_Emissao.Value;
                                       ParamByName('pForn').AsInteger := NotasDestinatario.AsInteger;
                                       execute;

                                       // Exclui os lançamentos gerados pela nota fiscal do financeiro.
                                       sql.Clear;
                                       sql.Add('delete from PagarReceber where Documento_Numero = :pNum and Documento_Data = :pData and Origem = :pOrig and Beneficiario = :pBene');
                                       ParamByName('pData').AsDate:= NotasData_Emissao.Value;
                                       ParamByName('pNum').value  := NotasNota.AsString;
                                       ParamByName('pOrig').value := 'NFT';
                                       ParamByName('pBene').value := NotasDestinatario.asinteger;
                                       execute;
                                       
                                       // Ajustando o percentual do estoque mínimo no cadastro do produto.
                                       sql.clear;
                                       Itens.first;
                                       while not Itens.eof do begin
                                             if Itens.fieldbyname('Estoque_Minimo').asfloat > 0 then begin
                                                mEstMin := Percentual(EstoqueProduto(Itens.fieldbyname('Codigo_Mercadoria').AsInteger)-Itens.fieldbyname('Quantidade').AsFloat, Itens.fieldbyname('Estoque_Minimo').AsFloat);
                                                sql.add('update Produtos set Estoque_Minimo = '+floattostr(mEstMin)+' where Codigo = '+Itens.fieldbyname('Codigo_Mercadoria').asstring );
                                             end;
                                             Itens.next;
                                       end;
                                       if trim(sql.Text) <> '' then execute;

                                       // Deleta os itens da tabela de itens de embarques.
                                       sql.clear;
                                       sql.add('delete from NotasItensNavios where Nota = :pNota and Data_Emissao = :pData and Saida_Entrada = 0 and Emissor = ''T'' ');
                                       parambyname('pNota').value := NotasNota.asinteger;
                                       parambyname('pData').value := NotasData_Emissao.Value;
                                       execute;

                                       // Atualizando a ficha de estoque.
                                       sql.Clear;
                                       sql.Add('delete from FichaEstoque where Nota = :pNota and Data = :pData and Destinatario_Codigo = :pDest');
                                       ParamByName('pNota').value  := NotasNota.value;
                                       ParamByName('pData').AsDate := NotasData_ES.AsDateTime;
                                       ParamByName('pDest').value  := NotasDestinatario.value;
                                       execute;
                                       //AtualizaEst(mItens);
                                       
                                       // Ficha de inventario.
                                       sql.Clear;
                                       sql.Add('delete from FichaInventario where Nota = :pNota and Data = :pData and Destinatario_Codigo = :pDest');
                                       ParamByName('pNota').value  := NotasNota.value;
                                       ParamByName('pData').AsDate := NotasData_ES.AsDateTime;
                                       ParamByName('pDest').value  := NotasDestinatario.value;
                                       execute;
                                       //AtualizaInv(mItens);
                                       

                                       // Apaga os lançamentos da contabilidade.
                                       sql.clear;
                                       sql.Add('delete from Lancamentos where Origem = :pOrig and Origem_Numero = :pNum and Beneficiario = :pBene and Data = :pData');
                                       ParamByName('pOrig').value  := 'NFT';
                                       ParamByName('pNum').value   := NotasNota.Value;
                                       ParamByName('pBene').value  := NotasDestinatario.Value;
                                       ParamByName('pData').AsDate := NotasData_ES.Value;
                                       execute;
                                       
                                       // Excluindo os itens da nota iscal.
                                       sql.clear;
                                       sql.add('delete from NotasItens where Empresa = :pEmp and Nota = :pNota and Data_Emissao = :pData and Destinatario = :pDest');
                                       parambyname('pEmp').value  := NotasEmpresa.value;
                                       parambyname('pNota').value := NotasNota.value;
                                       parambyname('pData').value := NotasData_Emissao.value;
                                       parambyname('pDest').value := NotasDestinatario.value;
                                       execute;
                                  end;
                                  
                                  Delete;
                                  TfDialogo.Execute(UniApplication, 'Sucesso', 'Registro excluído do banco de dados');  
                               except on E: Exception do
                                  //MessageDlgN('Falha desconhecida, não pode excluir a nota fiscal!'+#13+E.Message, mtError, [mbOK]);
                                  TfDialogo.Execute(UniApplication, 'Erro', E.Message);
                               end;
                            end;
                      end);
     end;
end;

procedure TfFiscalNFTerceiros.bExcTodosItensClick(Sender: TObject);
begin
     // Se estiver bloqueado não deixa alterar.
     if VerBloqueios then abort;
     
     MessageDlg('Deseja realmente excluir todos os itens da nota fiscal: ', mtConfirmation,mbYesNo,
                 procedure(Comp:TComponent; ARes: Integer)
                 begin
                      if ARes = mrYes then begin
                         try 
                            with ttmp do begin 
                                 sql.clear;
                                 sql.add('delete from NotasItens where Nota_Id = :pid');
                                 parambyname('pid').value := ItensNota_id.asinteger;
                                 execute;
                            end;
                            TfDialogo.Execute(UniApplication, 'Sucesso', 'Todos os itens foram excluídos da nota fiscal');  
                         except on E: Exception do
                            TfDialogo.Execute(UniApplication, 'Erro', E.Message);
                         end;
                      end;
                 end);
end;

procedure TfFiscalNFTerceiros.bSalvarClick(Sender: TObject);
begin
     if VerBloqueios then abort;

     cChave.tag := 0;
     if Modelos.fieldbyname('Eletronico').asboolean then cChave.Tag := 1;
     if not TValidaCRUD.ValidarFormulario(Ficha) then abort;

     // Verificando se nota ja foi cadastrada
     if Notas.State = dsInsert then begin
        with ttmp do begin
             sql.clear;
             sql.add('select count(*) as Qtde from NotasFiscais where Empresa = :pEmp and Nota = :pNota and Data_Emissao = :pData and Destinatario = :pDest and Emissao = ''T'' ');
             parambyname('pEmp').value  := UniMainModule.mEmpresaAtiva;
             ParamByName('pNota').value := NotasNota.value;
             ParamByName('pData').value := NotasData_Emissao.value;
             ParamByName('pDest').value := NotasDestinatario.value;
             open;   
             if fieldbyname('Qtde').asinteger > 0 then begin             
                TfDialogo.Execute(UniApplication, 'Existe', 'Não pode salvar, nota fiscal ja cadastrada.');
                abort;
             end;
        end;
     end;
     
     try
        // Ajusta os itens da nota fiscal.
        with ttmp do begin
             sql.clear;
             sql.add('update NotasItens set Data_Emissao = :pEmissao');
             sql.add('                     ,Data_ES      = :pEntrada');            
             sql.add('                     ,Operacao     = :pOperacao');
             sql.add('                     ,Destinatario = :pDest');
             sql.add('where Nota = :pNota');
             sql.add('and Data_Emissao = :pData');
             sql.add('and Destinatario = :pDest');
             ParamByName('pNota').value     := NotasNota.value;
             ParamByName('pData').value     := NotasData_Emissao.value;
             ParamByName('pDest').value     := NotasDestinatario.value;
             ParamByName('pEmissao').asdate := mDataEmi_Antes;
             ParamByName('pEntrada').asdate := NotasData_ES.Value;
             ParamByName('pOperacao').value := mOper_Antes;
             //sql.SaveToFile('c:\temp\NotasTerceiros_Ateração.sql');
             execute;
        end;
        
        NotasDestinatario_CNPJ_CPF.value := trim(Fornecedores.fieldbyname('CNPJ').asstring)+trim(Fornecedores.fieldbyname('CPF').asstring);
        
        if Notas.State = dsInsert then begin
           NotasNota_id.value := GeraCodigo('NotasFiscais', 'Nota_id');
        end;
   
        Notas.Post;
        LigaBotoes(true);
        TfDialogo.Execute(UniApplication, 'Sucesso', 'Nota fiscal salva no banco de dados');  
     except on E: Exception do
        TfDialogo.Execute(UniApplication, 'Erro', E.Message);
     end;
end;

procedure TfFiscalNFTerceiros.bCancelarClick(Sender: TObject);
begin
     Notas.Cancel;
     LigaBotoes(true);
end;     

procedure TfFiscalNFTerceiros.bCancItensClick(Sender: TObject);
begin
     FrameItem.ItensNF.Cancel;
     FreeAndNil(FrameItem);
     LigaBotoesItens(true);
end;

procedure TfFiscalNFTerceiros.bEditarClick(Sender: TObject);
begin
     // Se estiver bloqueado não deixa alterar.
     if VerBloqueios then abort;
     
     try
         Pasta.ActivePageIndex := 1; 
         LigaBotoes(false);
         cNota.Enabled        := false;
         cChave.Enabled       := false;
         cDataEmissao.Enabled := false;
         cDataEntrada.Enabled := false;
      
         // Guardando as informações em caso de alteração para ajustar os itens.
         mDataEmi_Antes  := NotasData_Emissao.value;
         mDataEnt_Antes  := NotasData_ES.value;
         mDest_Antes     := NotasDestinatario.AsInteger;
         mOper_Antes     := NotasOperacao.AsInteger;

         Notas.Edit;
         cBeneficio.setfocus;
     except on E: Exception do
         MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;

procedure TfFiscalNFTerceiros.bEditItensClick(Sender: TObject);
begin
     // Se estiver bloqueado não deixa alterar.
     if VerBloqueios then abort;
{     
     try
         LigaBotoesItens(false);
//         mNomeAba  := 'ITEMS DA NOTA FISCAL: '+FormatFloat('0000', Notas.fieldbyname('Nota').asinteger)+' ('+NotasDestinatario_Nome.asstring+')';
         FrameItem := TfFiscalNFTerceirosItens.create(TabItem, UniMainModule.mEmpresaAtiva);
         with FrameItem do begin
              Parent := TabItem;
              Align  := alClient;
              with ItensNF do begin
                   sql.clear;
                   sql.add('select *');
                   sql.add('from NotasItens');
                   sql.add('where Nota_id = :ID');
                   sql.add('and Item = :Item');
                   parambyname('ID').Value  := NotasNota_id.value;
                   parambyname('Item').Value  := ItensItem.asinteger;
                   open;
                   edit;
              end;
         end;
     except on E: Exception do 
         begin
            MessageDlgN('Falha desconhecida, não pode editar o registro!'+#13+E.Message, mtError, [mbOK]);
            FrameItem.ItensNF.Cancel;
            FreeAndNil(FrameItem);
            LigaBotoesItens(true);
            abort;
         end;
     end;
}
     try
         LigaBotoesItens(false);
         pBarraNav.Enabled   := false;
         FrameItem           := TfFiscalNFTerceirosItens.create(TabItem, UniMainModule.mEmpresaAtiva, NotasNota_id.asinteger, 0, 'Editar', Operacao.fieldbyname('Destino_Origem').asstring);
         FrameItem.Parent    := TabItem;
         FrameItem.Align     := alClient;
         FrameItem.OnDestroy := FrameFilhoFechou;
     except on E: Exception do
        MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
     end;
     
end;

// Verifica se o período fiscal esta bloqueado.
function TfFiscalNFTerceiros.PeriodoBloqueado: boolean;
begin
     with ttmp do begin
          sql.clear;
          sql.add('select count(*) as Qtde from FechamentoFiscal where Ano = :pAno and Mes = :pMes and Fechado = 1');
          parambyname('pAno').AsInteger := YearOf(NotasData_ES.Value);
          parambyname('pMes').AsInteger := MonthOf(NotasData_ES.Value);
          open;
     end;
end;
 
procedure TfFiscalNFTerceiros.UniFrameDestroy(Sender: TObject);
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

procedure TfFiscalNFTerceiros.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bSalvar.Enabled    := not Estado;
     Ficha.Enabled      := not Estado;
end;

procedure TfFiscalNFTerceiros.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFiscalNFTerceiros.bGravItensClick(Sender: TObject);
begin
     with FrameItem do begin 
          // Validação de todos os campos.
          CampoVazio(cProduto,'"Produto" é obrigatório!');
          CampoVazio(cCFOP,'"CFOP" é obrigatório!');
          if (MatchText(Operacao.FieldByName('Destino_Origem').asstring, ['I', 'E'])) then begin 
             CampoVazio(cProcesso,'"Processo" é obrigatório para esse tipo de operação!');
          end;
//          if not OpFiscal.fieldbyname('Complementar').AsBoolean and (PedidosNFItens.fieldbyname('Quantidade').asfloat <= 0) then begin
//             CampoVazio(cQtde,'"Quantidade" do item inválida!');
//          end;
//          CampoVazio(cValor_Unitario,'"Valor Unitario" do item inválido!"');
//          
//          // Verifica Estoque.
//          if OpFiscal.fieldbyname('Movimenta_Estoque').asboolean and (PedidosNF.FieldByName('ES').AsInteger = 1) then begin
//             if not Produtos.fieldbyname('Estoque_Navio').asboolean then begin
//                mEstoque := EstoqueProduto(PedidosNFItens.fieldbyname('Codigo_Mercadoria').asinteger);
//             end else begin
//                mEstoque := EstoqueProdutoEmb(PedidosNFItens.fieldbyname('Codigo_Mercadoria').asinteger, PedidosNFItens.fieldbyname('Embarque').asinteger);
//             end;
//          end;
//          if PedidosNFItens.state = dsEdit then mEstoque := mEstoque + mQtde;
//          if ValidaCampo(cQtde, PedidosNFItens.fieldbyname('Quantidade').asfloat, mEstoque, '>', 'Quantidade maior que a disponível para este item'+#13+#13+'Estoque Disponível: '+FormatFloat(',##0.000', mEstoque), 'SEM ESTOQUE') then Abort;
//
//          // Verifica Inventario.
//          if OpFiscal.fieldbyname('Movimenta_Inventario').asboolean and (PedidosNF.FieldByName('ES').AsInteger = 1) then begin
//             if not Produtos.fieldbyname('Estoque_Navio').asboolean then begin
//                mEstoque := InventarioProduto(PedidosNFItens.fieldbyname('Codigo_Mercadoria').asinteger);
//             end;
//          end;
//          if PedidosNFItens.state = dsEdit then mEstoque := mEstoque + mQtde;
//          if ValidaCampo(cQtde, PedidosNFItens.fieldbyname('Quantidade').asfloat, mEstoque, '>', 'Quantidade maior que a disponível para este item'+#13+#13+'Inventario Disponível: '+FormatFloat(',##0.000', mEstoque), 'SEM INVENTÁRIO') then Abort;

     
          try
             with NCM do begin
                  sql.Clear;
                  sql.Add('select Codigo_EXTIPI');
                  sql.add('from NCM');
                  sql.add('where NCM = :pNCM');
                  parambyname('pNCM').value := Produtos.fieldbyname('NCM').value;
                  open;
             end;
             if ItensNF.State = dsInsert then begin
                with ttmp do begin
                     sql.clear;
                     sql.Add('select isnull(max(Item), 0)+1 as Item from NotasItens where Nota_Id = :pID');
                     parambyname('pID').Value  := NotasNota_id.value;
                     Open;
                     ItensNFItem.Value := fieldbyname('Item').AsInteger;
                end;
             end;                        
             ItensNFNota_id.value              := NotasNota_id.value;
             ItensNFEmpresa.value              := NotasEmpresa.value;
             ItensNFES.value                   := 0;
             ItensNFCodigo_Fabricante.value    := Produtos.fieldbyname('Codigo_Fabricante').value;
             ItensNFDescricao_Mercadoria.value := Produtos.fieldbyname('Descricao').value;
             ItensNFNCM.value                  := Produtos.fieldbyname('NCM').value;
             ItensNFUM.asstring                := Produtos.fieldbyname('UM').asstring;
             ItensNFEXTIPI.value               := NCM.fieldbyname('Codigo_EXTIPI').asinteger;
             ItensNF.post; 
             
             TfDialogo.Execute(UniApplication, 'Sucesso', 'Item salvo na nota fiscal.');  
          except on E: Exception do
             TfDialogo.Execute(UniApplication, 'Erro', E.Message);
          end;
     end;
     FreeAndNil(FrameItem);
     Itens.Cancel;
     Itens.Refresh;
     LigaBotoesItens(true);
end;

procedure TfFiscalNFTerceiros.bPesquisaClick(Sender: TObject);
begin
     Notas.Cancel;
     LigaBotoes(true);
     with Notas do begin
          sql.Clear;
          sql.add('select * from NotasFiscais where Emissao = ''T'' and Nota like '+quotedstr('%'+cPesquisa.text+'%'));
          Open;
          if recordcount = 0 then begin
             MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOK]);
          end;
     end;
end;

procedure TfFiscalNFTerceiros.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisaClick(self);
      end;
end;
 
procedure TfFiscalNFTerceiros.NotasBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, NotasChave.value, 'Delete');
end;

procedure TfFiscalNFTerceiros.NotasBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, 'Entrada de Nota Fiscal de Terceiros: '+NotasNota.asstring+ '  '+NotasChave.value + ' de '+NotasData_ES.asstring, EstadoTabela(DataSet));
end;

procedure TfFiscalNFTerceiros.LigaBotoesItens(Estado:boolean);
begin
     pBarraNav.Enabled      := Estado;
     bAdditens.Enabled      := Estado;
     bEditItens.Enabled     := Estado and (Itens.RecordCount > 0);
     bExcitens.Enabled      := Estado and (Itens.RecordCount > 0);
     bExcTodosItens.Enabled := Estado and (Itens.RecordCount > 0);
     bCancItens.Enabled     := not Estado;
     bGravItens.Enabled     := not Estado;
     bNFRef.Enabled         := Estado;
     BarraItens.Enabled     := BarraItens.Visible;
end;

function TfFiscalNFTerceiros.VerBloqueios: boolean;
begin
     result := false;
     with ttmp do begin
          // Fechamento Fiscal.
          sql.clear;
          sql.add('select Qtde = count(*) from FechamentoFiscal where Ano = :pAno and Mes = :pMes and Fechado = 1');
          parambyname('pAno').AsInteger := YearOf(NotasData_ES.Value);
          parambyname('pMes').AsInteger := MonthOf(NotasData_ES.Value);
          open;
          if fieldbyname('Qtde').asinteger > 0 then begin
             result := true;   
             if Notas.State in[dsEdit, dsInsert] then begin
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Não pode salvar, data da nota fiscal esta dentro de um período fiscal fechado.');
             end else begin
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Não pode alterar, data da nota fiscal esta dentro de um período fiscal fechado.');
             end;
          end;
          // Fechamento Contabil.
          sql.clear;
          sql.add('select Qtde = count(*) from FechamentoContabil where Ano = :pAno and Mes = :pMes and Fechado = 1');
          parambyname('pAno').AsInteger := YearOf(NotasData_ES.Value);
          parambyname('pMes').AsInteger := MonthOf(NotasData_ES.Value);
          open;
          if fieldbyname('Qtde').asinteger > 0 then begin
             result := true;   
             if Notas.State in[dsEdit, dsInsert] then begin
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Não pode salvar, data da nota fiscal, Esta dentro de um período contabil fechado');
             end else begin
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Esta nota fiscal não pode ser alterada, Esta dentro de um período contabil fechado');
             end;
          end;
          // Lançamento financeiro bachado.
          if not result and (NotasLancamento_Financeiro.asinteger > 0) then begin
             sql.clear;
             sql.add('select Qtde = count(*) from PagarReceberBaixas where Titulo in(select Titulo from PagarReceber where Titulo = :pTitulo)');
             parambyname('pTitulo').value := NotasLancamento_Financeiro.asinteger;
             open;
             if fieldbyname('Qtde').asinteger > 0 then begin
                result := true;   
                TfDialogo.Execute(UniApplication, 'Baixado', 'Esta nota fiscal não pode ser Alterada ou Excluída, Lançamento financeiro baixado, estorne a baixa primeiro');
             end;
          end;
          // Item movimentado posterior a data da nota.
          if result = false then begin
             sql.clear;
             sql.add('select Codigo_Mercadoria');
             sql.add('  from NotasItens ni');
             sql.add('  inner join NotasFiscais nf on nf.Nota_id = ni.Nota_id');
             sql.add('  where ni.Codigo_Mercadoria = :Cod');
             sql.add('  and nf.Data_Emissao >= :Data');
             sql.add('  and nf.Empresa = :Emp');
             sql.add('union all');
             sql.add('  select Codigo_Mercadoria');
             sql.add('  from PedidosNFItens pi');
             sql.add('  where pi.Codigo_Mercadoria = :Cod');
             sql.add('  and pi.Empresa = :Emp');
             sql.add('union all');
             sql.add('  select Produto_Saida');
             sql.add('  from EstoqueTransferencia et');
             sql.add('  where et.Produto_Saida = :Cod');
             sql.add('  and et.Data_Transferencia >= :Data');
             sql.add('  and et.Empresa = :Emp');
             parambyname('Data').asdate := NotasData_ES.value;
             parambyname('Emp').value   := NotasEmpresa.value;
             parambyname('Cod').value   := ItensCodigo_Mercadoria.asinteger;
             open;
             if recordcount > 0 then begin
                result := true;
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Nota fiscal não pode ser alterada, alguns itens foram movimentados com data igual ou posterior.');
             end;
          end;
     end;
end;

procedure TfFiscalNFTerceiros.FrameFilhoFechou(Sender: TObject);
begin
    // Restaurar estado original
    GradeItens.show;
    BarraItens.show;
    pBarraNav.Enabled := true;
end;

     
          
end.
