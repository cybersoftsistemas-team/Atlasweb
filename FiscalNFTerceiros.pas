unit FiscalNFTerceiros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, 
  uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, 
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, uniMemo, uniRadioGroup, uniCheckBox, uniMultiItem, uniDBComboBox, uniLabel, uniImage, uniDBRadioGroup, Dialogo, Dateutils, uniFileUpload, 
  uniStringGrid, System.AnsiStrings, FiscalNFTerceirosItens, Dialogs;

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
    ItensEstoque_Minimo: TFMTBCDField;
    ItensValor_Total: TFMTBCDField;
    tSaldo: TFDQuery;
    FichaEstoque: TFDQuery;
    cCentro_Custo: TUniDBLookupComboBox;
    Config: TFDQuery;
    procedure bSairClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
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
    function  Baixado: boolean;
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
    procedure GradeItensDblClick(Sender: TObject);
  private
    { Private declarations }
    function PeriodoBloqueado: boolean;
    function Movimentado: boolean;
    function VerBloqueios: boolean;
    procedure LigaBotoesItens(Estado: boolean);
    procedure FrameFilhoFechou(Sender: TObject);
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

uses MainModule, Main, ValidaCRUD, ImportaNFe;

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
  mCodigos: widestring;
  mNotasID: widestring;
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
     Importador.NFe.CentCus    := iif(cCCusto.Text <> '', CentroCusto.fieldbyname('Codigo').asstring, '');
     
     if trim(cProcImp.text) <> '' then begin
        Importador.NFe.Proc       := ProcessoImp.fieldbyname('Processo').asstring;
        Importador.NFe.Declaracao := ProcessoImp.fieldbyname('Declaracao').asstring;
     end;
     if trim(cProcExp.text) <> '' then begin
        Importador.NFe.Proc       := ProcessoExp.fieldbyname('Processo').asstring;
        Importador.NFe.Declaracao := ProcessoExp.fieldbyname('Declaracao').asstring;
     end;

     Param.SubstNF   := cSubst.Checked;
     Param.Origem    := Origem.fieldbyname('Codigo').asinteger;
     Param.TipoProd  := TipoProd.fieldbyname('Codigo').asinteger;
     Param.ClassProd := ClassProd.fieldbyname('Codigo').asinteger;
     Param.EmpresaUF := Empresas.fieldbyname('Estado').AsString;
     
     try
        for i := 0 to high(Files) do begin
            cLog.RowCount := cLog.RowCount+1;
            try
               Param.Arquivo := Files[i].CacheFile;
               Importador.ImportarXML(Param);
               {
               // Fichas de Estoque/Inventario.
               with ttmp do begin
                    sql.clear;  
                    sql.add('select Codigos = string_agg(convert(nvarchar(max), isnull(Codigo_Mercadoria, '''')), '','')');
                    sql.add('within group (order by Codigo_Mercadoria)');
                    sql.add('from NotasItens');
                    sql.add('where Nota_id = :pid');
                    parambyname('pid').asinteger := Importador.NFe.Notaid;
                    open;
                    mCodigos := fieldbyname('Codigos').asstring;
               end;
               FichasEstInv(Importador.NFe.Empresa
                           ,Importador.NFe.EmitCod
                           ,Importador.NFe.EmitNome
                           ,Importador.NFe.EmitCNPJ
                           ,0
                           ,Importador.NFe.NotaIDAntes
                           ,mCodigos
                           ,'NFT');

               // Ativo imobilizado.
               try
                  with CFOP do begin
                       sql.clear;
                       sql.add('select Imobilizado from CFOP where Codigo = :pCod');
                       parambyname('pCod').asstring := Importador.Item.CFOP;
                       open;
                  end;
               except on E: Exception do 
                  begin
                     MessageDlg('Erro ao abrir tabela CFOP!'+#13+E.Message, mtError, [mbOK]);
                  end;
               end;
               if CFOP.fieldbyname('Imobilizado').asboolean and (Importador.Item.vUnitario > Config.fieldbyname('Valor_Imobilizado').ascurrency) then begin
                  SalvaImobilizado(Importador.NFe.NotaIDAntes, Importador.NFe.NotaID, Config.fieldbyname('Parcelas_Imobilizado').AsInteger);
               end;
               }
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
             TuniPanel(Components[i]).Color := clNone;
          end;
      end;

      Pasta.ActivePageIndex := 0;
      cLog.ColWidths[0]     := 400;
      cLog.ColWidths[1]     := 546;
      
      with Notas do begin
           sql.clear;
           sql.add('select *');
           sql.add('from NotasFiscais');
           sql.add('where Empresa = :pEmpresa');
           sql.add('and Emissao = ''T'' ');
           sql.Add('order by Data_ES, Nota');
           parambyname('pEmpresa').value := UniMainModule.mEmpresaAtiva;
           open;
      end;
      with Itens do begin
           sql.clear;
           sql.add('select ni.Nota_id');
           sql.add('      ,ni.Item');
           sql.add('      ,ni.Codigo_Mercadoria');
           sql.add('      ,ni.Descricao_Mercadoria');
           sql.add('      ,ni.NCM');
           sql.add('      ,ni.UM');
           sql.add('      ,ni.Quantidade');
           sql.add('      ,ni.Valor_Unitario');
           sql.add('      ,Valor_Total = round(ni.Valor_Unitario, 2) * ni.Quantidade');
           sql.add('      ,ni.Empresa');
           sql.add('      ,ni.CFOP');
           sql.add('      ,isnull(p.Estoque_MinimoPerc, 0) as Estoque_Minimo');
           sql.add('from NotasItens ni');
           sql.add('inner join NotasFiscais nf on nf.Nota_id = ni.Nota_id');
           sql.add('left join Produtos p on p.Codigo = ni.Codigo_Mercadoria');
           sql.add('where nf.Emissao = ''T''');
           sql.add('order by ni.Empresa, ni.Nota_id, ni.Item');
           open;
      end;
      with Empresas do begin
           sql.clear;
           sql.add('select CNPJ');
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
           sql.clear;
           sql.add('select Codigo, Nome from BeneficioFiscal order by Nome');
           open;
      end;
      with Operacao do begin
           sql.clear;
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
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,CNPJ');
           sql.add('      ,CPF');
           sql.add('      ,Nome');
           sql.add('      ,Estado');
           sql.add('from Destinatarios');
           sql.add('where Fornecedor = 1');
           sql.add('order by Nome');
           open;
      end;
      with Transportador do begin
           sql.clear;
           sql.Add('select Codigo');
           sql.add('      ,CNPJ');
           sql.add('      ,Nome');
           sql.add('from Destinatarios');
           sql.add('where Transportador = 1');
           sql.add('order by Nome');
           open;
      end;
      with Armazem do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,CNPJ');
           sql.add('      ,Nome');
           sql.add('from Destinatarios');
           sql.add('where Armazem = 1');
           sql.add('order by Nome');
           open;
      end;
      with Modelos do begin
           sql.clear;
           sql.add('select Codigo, Descricao, Eletronico from ModelosDocumentos order by Codigo');
           open;
      end;
      with ModalFrete do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from ModalidadesFrete order by Descricao');
           open;
      end;
      with NaturezaFrete do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from NaturezaFrete order by Descricao');
           open;
      end;
      with RamosAtv do begin
           sql.clear;
           sql.add('select Codigo, Descricao from RamoAtividade where isnull(Comissionado, 0) <> 1 order by Descricao');
           open;
      end;
      with CentroCusto do begin
           sql.clear;
           sql.add('select Codigo, Nome from CentroCusto where Empresa = :pEmp order by Codigo');
           ParamByName('pEmp').asstring := Empresas.fieldbyname('CNPJ').asstring;
           open;
      end;
      with Origem do begin
           sql.clear;
           sql.add('select Codigo, Descricao from OrigemMercadoria order by Codigo');
           open;
      end;
      with TipoProd do begin
           sql.clear;
           sql.add('select Codigo, Descricao from TipoProduto order by Codigo');
           open;
      end;
      with ClassProd do begin
           sql.clear;
           sql.add('select Codigo, Descricao from ClassificacaoProduto order by Codigo');
           open;
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
      with Config do begin
           sql.clear;
           sql.add('select Valor_Imobilizado');
           sql.add('      ,Parcelas_Imobilizado');
           sql.add('from Config ');                                                            
           sql.add('where Empresa = :pEmp');
           ParamByName('pEmp').asstring := Empresas.fieldbyname('CNPJ').asstring;
           open;
      end;
      LigaBotoes(true);
      LigaBotoesItens(true);
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

procedure TfFiscalNFTerceiros.bAddItensClick(Sender: TObject);
begin
     // Se estiver bloqueado não deixa alterar.
     if VerBloqueios then abort;
     try
         LigaBotoesItens(false);
         pBarraNav.Enabled   := false;
         FrameItem           := TfFiscalNFTerceirosItens.create(TabItem
                                                               ,UniMainModule.mEmpresaAtiva
                                                               ,NotasNota_id.asinteger
                                                               ,0
                                                               ,'Adicionar'
                                                               ,Operacao.fieldbyname('Codigo').asinteger);
                                                               
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
  mItem: integer;
  mCodigo: string;
begin
     // Se estiver bloqueado não deixa alterar.
     if VerBloqueios then abort;
     
     MessageDlg('Deseja realmente excluir o item ['+ItensItem.asstring+'] da nota fiscal: ', mtConfirmation,mbYesNo,
                 procedure(Comp:TComponent; ARes: Integer)
                 begin
                      if ARes = mrYes then begin
                         try 
                            mCodigo := ItensCodigo_Mercadoria.asstring;
                            with ttmp do begin 
                                 mItem := ItensItem.asinteger;
                                 sql.clear;
                                 sql.add('delete from NotasItens where Nota_Id = :pid and Item = :pItem');
                                 parambyname('pid').value   := ItensNota_id.asinteger;
                                 parambyname('pitem').value := ItensItem.asinteger;
                                 execute;
                            end;
                            Itens.Refresh;
                            
                            // Processa a ficha de Estoque/Inventario do item modificado.
                            FichasEstInv(Notas.fieldbyname('Empresa').asstring
                                                           ,0
                                                           ,''
                                                           ,''
                                                           ,0
                                                           ,Notas.fieldbyname('Nota_id').asinteger
                                                           ,mCodigo
                                                           ,'NFT');
                            
                            // Ativo imobilizado.
//                            if CFOP.fieldbyname('Imobilizado').asboolean and (NotasItensValor_Unitario.ascurrency > Config.fieldbyname('Valor_Imobilizado').ascurrency) then begin
//                               SalvaImobilizado(Nota.Fieldbyname('Nota_id').asinteger, Nota.Fieldbyname('Nota_id').asinteger, Config.fieldbyname('Parcelas_Imobilizado').AsInteger);
//                            end;

                            TfDialogo.Execute(UniApplication, 'Sucesso', 'Sucesso', 'Item ['+inttostr(mItem)+'] excluído da nota fiscal');  
                         except on E: Exception do
                            TfDialogo.Execute(UniApplication, 'Erro', 'Erro ao Excluir!', E.Message);
                         end;
                      end;
                 end);
end;

procedure TfFiscalNFTerceiros.bExcluirClick(Sender: TObject);
var
  mEstMin: real;
  msql: TStringList;
  mProdutos: widestring;
begin
     // Se estiver bloqueada não deixa exluir. 
     if VerBloqueios then Abort;
     
     with Notas do begin
          MessageDlg('Deseja realmente excluir esta nota fiscal: '+#13+#13+'Número: '+NotasNota.asstring + #13 + 'Chave: '+NotasChave.value, mtConfirmation,mbYesNo,
                      procedure(Comp:TComponent; ARes: Integer)
                      begin
                            if ARes = mrYes then begin
                               try
                                  with ttmp do begin
                                       sql.clear;
                                       sql.add('-- INDISPONIBILIZA TODOS OS CHASSIS OU SERIAIS DOS PRODUTOS DA NOTA.');
                                       sql.add('update ProdutosSeriais set Disponivel = 0');
                                       sql.add('where Empresa = :pEmp');
                                       sql.add('and Produto in(select Codigo_Mercadoria from NotasItens where Empresa = :pEmp and Nota_id = :pid);');
                                       sql.add('-- EXCLUI O VÍNCULO DOS CHASSIS/SERIAIS COM A NOTA.');
                                       sql.add('delete from ProdutosSeriaisNotas where Empresa = :pEmp and Nota_id = :pid;');
                                       //sql.add('-- EXCLUI PRODUTOS SERIAIS QUE NÃO POSSUEM MAIS VÍNCULOS.');
                                       //sql.add('delete from ProdutosSeriais');
                                       //sql.add('where not exists(select 1 from ProdutosSeriaisNotas psn where psn.Produto = ProdutosSeriais.Produto);');
                                       sql.add('-- EXCLUI OS DETALHES DOS PRODUTOS DA NOTA.');
                                       sql.add('delete from ProdutosDetalhe where Empresa = :pEmp and Nota_id = :pid;');
                                       sql.add('-- EXCLUI O IMOBILIZADO RELACIONADO À NOTA.');
                                       sql.add('delete from Imobilizado where Empresa = :pEmp and Nota_id = :pid;');
                                       sql.add('-- EXCLUI CONTAS A PAGAR/RECEBER.');
                                       sql.add('delete from PagarReceber where Nota_id = :pid;');
                                       sql.add('-- EXCLUI OS ITENS DE NAVIOS RELACIONADOS À NOTA.');
                                       sql.add('delete from NotasItensNavios where Nota_id = :pid;');
                                       sql.add('-- EXCLUI A FICHA DE ESTOQUE.');
                                       sql.add('delete from FichaEstoque where Empresa = :pEmp and Nota_id = :pid;');
                                       sql.add('-- EXCLUI A FICHA DE INVENTÁRIO.');
                                       sql.add('delete from FichaInventario where Empresa = :pEmp and Nota_id = :pid;');
                                       sql.add('-- EXCLUI OS LANÇAMENTOS.');
                                       sql.add('delete from Lancamentos where Empresa = :pEmp and Nota_id = :pid;');
                                       sql.add('-- POR ÚLTIMO, EXCLUI OS ITENS DA NOTA.');
                                       sql.add('delete from NotasItens where Empresa = :pEmp and Nota_id = :pid;');
                                       // Ajustando o percentual do estoque mínimo no cadastro do produto.
                                       msql := TStringList.create;
                                       Itens.first;
                                       while not Itens.eof do begin
                                             if Itens.fieldbyname('Estoque_Minimo').asfloat > 0 then begin
                                                mEstMin := Percentual(EstoqueProduto(Itens.fieldbyname('Codigo_Mercadoria').AsInteger)-Itens.fieldbyname('Quantidade').AsFloat, Itens.fieldbyname('Estoque_Minimo').AsFloat);
                                                msql.add('update Produtos set Estoque_Minimo = '+floattostr(mEstMin)+' where Codigo = '+Itens.fieldbyname('Codigo_Mercadoria').asstring);
                                             end;
                                             mProdutos := mProdutos + Itens.fieldbyname('Codigo_Mercadoria').asstring;
                                             Itens.next;
                                             if not itens.eof then begin
                                                mProdutos := mProdutos + ',';
                                             end;
                                       end;
                                       if trim(msql.text) <> '' then sql.add(msql.Text);
                                       // Parâmetros.
                                       parambyName('pEmp').asstring := NotasEmpresa.asstring;
                                       parambyName('pid').asinteger := NotasNota_id.asinteger;
                                       //sql.savetofile('c:\temp\Atlas_Delete_NFTerceiros.sql');

                                       UniMainModule.Conecta.StartTransaction;
                                       try
                                         ExecSQL;
                                         UniMainModule.Conecta.Commit;
                                       except
                                         UniMainModule.Conecta.Rollback;
                                         raise;
                                       end;                                         
                                  end;
                                  
                                  Delete;
                                  
                                  TfDialogo.Execute(UniApplication, 'Sucesso', 'Sucesso', 'Registro excluído do banco de dados');  
                               except on E: Exception do
                                  TfDialogo.Execute(UniApplication, 'Erro', 'Erro ao excluir!', E.Message);
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
                            TfDialogo.Execute(UniApplication, 'Sucesso', 'Sucesso', 'Todos os itens foram excluídos da nota fiscal');  
                         except on E: Exception do
                            TfDialogo.Execute(UniApplication, 'Erro', 'Erro ao excluir', E.Message);
                         end;
                      end;
                 end);
end;

procedure TfFiscalNFTerceiros.bSalvarClick(Sender: TObject);
begin
     if VerBloqueios then abort;

     cChave.tag := 0;
     if Modelos.fieldbyname('Eletronico').asboolean then cChave.Tag := 1;

     // Verifica todos os campos obrigatório, o campo obrigatório deve estar com a propriedade "Tag = 1".
     if not TValidaCRUD.ValidarFormulario(Ficha) then abort;

     // Verificando se nota ja foi cadastrada.
     if Notas.State = dsInsert then begin
        with ttmp do begin
             sql.clear;
             sql.add('if exists (select 1 from NotasFiscais where Empresa = :pEmp and Nota = :pNota and Data_Emissao = :pData and Destinatario = :pDest and Emissao = ''T'')');
             sql.add('   select 1 as Existe;');
             sql.add('else');
             sql.add('   select 0 as Existe;');
             parambyname('pEmp').value  := UniMainModule.mEmpresaAtiva;
             ParamByName('pNota').value := NotasNota.value;
             ParamByName('pData').value := NotasData_Emissao.value;
             ParamByName('pDest').value := NotasDestinatario.value;
             open;   
             if fieldbyname('Existe').asinteger = 1 then begin             
                TfDialogo.Execute(UniApplication, 'Existe', 'Não pode salvar!', 'Nota Fiscal ja cadastrada');
                abort;
             end;
        end;
     end;
     
     try
        NotasDestinatario_CNPJ_CPF.value := trim(Fornecedores.fieldbyname('CNPJ').asstring)+trim(Fornecedores.fieldbyname('CPF').asstring);
        Notas.Post;

        LigaBotoes(true);
        TfDialogo.Execute(UniApplication, 'Sucesso', 'Sucesso', 'Nota fiscal salva no banco de dados');  
     except on E: Exception do
        TfDialogo.Execute(UniApplication, 'Erro', 'Erro ao salvar!', E.Message);
     end;
end;

procedure TfFiscalNFTerceiros.bCancelarClick(Sender: TObject);
begin
     Notas.Cancel;
     LigaBotoes(true);
end;     

procedure TfFiscalNFTerceiros.bCancItensClick(Sender: TObject);
begin
    if Assigned(FrameItem) then begin 
     FrameItem.NotasItens.Cancel;
     FreeAndNil(FrameItem);
     LigaBotoesItens(true);
    end;
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
     
     try
         LigaBotoesItens(false);
         pBarraNav.Enabled   := false;
         FrameItem           := TfFiscalNFTerceirosItens.create(TabItem
                                                               ,UniMainModule.mEmpresaAtiva
                                                               ,NotasNota_id.asinteger
                                                               ,Itens.fieldbyname('Item').asinteger
                                                               ,'Editar'
                                                               ,Operacao.fieldbyname('Codigo').asinteger);
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
    if Assigned(FrameItem) then begin 
       // Salvar os dados do item da Nota. 
       FrameItem.Salvar; 
       
       FreeAndNil(FrameItem);
       Itens.Refresh;
       LigaBotoesItens(true);
    end;
end;

procedure TfFiscalNFTerceiros.bPesquisaClick(Sender: TObject);
begin
     Notas.Cancel;
     LigaBotoes(true);
     with Notas do begin
          sql.Clear;
          sql.add('select * from NotasFiscais where Emissao = ''T'' and Nota like '+quotedstr('%'+cPesquisa.text+'%'));
          open;
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
end;

function TfFiscalNFTerceiros.VerBloqueios: boolean;
begin
     result := false;
     with ttmp do begin
          // Fechamento Fiscal.
          sql.clear;
          sql.add('select case when exists(select 1 from FechamentoFiscal where Empresa = :pEmp and Ano = :pAno and Mes = :pMes and Fechado = 1) then 1 else 0 end as Fechado');
          parambyname('pAno').AsInteger := YearOf(NotasData_ES.Value);
          parambyname('pMes').AsInteger := MonthOf(NotasData_ES.Value);
          parambyname('pEmp').value     := UniMainModule.mEmpresaAtiva;
          open;
          if fieldbyname('Fechado').asinteger = 1 then begin
             result := true;   
             if Notas.State in[dsEdit, dsInsert] then begin
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Bloqueio', 'Não pode salvar, data da nota fiscal esta dentro de um período fiscal fechado.');
             end else begin
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Bloqueio', 'Não pode alterar, data da nota fiscal esta dentro de um período fiscal fechado.');
             end;
          end;
          // Fechamento Contabil.
          sql.clear;
          sql.add('select case when exists(select 1 from FechamentoContabil where Empresa = :pEmp and Ano = :pAno and Mes = :pMes and Fechado = 1) then 1 else 0 end as Fechado');
          parambyname('pAno').AsInteger := YearOf(NotasData_ES.Value);
          parambyname('pMes').AsInteger := MonthOf(NotasData_ES.Value);
          parambyname('pEmp').value     := UniMainModule.mEmpresaAtiva;
          open;
          if fieldbyname('Fechado').asinteger = 1 then begin
             result := true;   
             if Notas.State in[dsEdit, dsInsert] then begin
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Bloqueio', 'Não pode salvar, data da nota fiscal, Esta dentro de um período contabil fechado');
             end else begin
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Bloqueio', 'Esta nota fiscal não pode ser alterada, Esta dentro de um período contabil fechado');
             end;
          end;
          // Lançamento financeiro bachado.
          if not result and (NotasLancamento_Financeiro.asinteger > 0) then begin
             sql.clear;
             sql.add('create index IX_PagarReceberBaixas_Empresa_Titulo on PagarReceberBaixas (Empresa, Titulo);');
             sql.add('select Baixado = case when exists(select 1 from PagarReceberBaixas where Empresa = :pEmp and Titulo = :pTitulo) then 1 else 0 end;');
             parambyname('pTitulo').value := NotasLancamento_Financeiro.asinteger;
             parambyname('pEmp').value    := UniMainModule.mEmpresaAtiva;
             open;
             if fieldbyname('Baixado').asinteger = 1 then begin
                result := true;   
                TfDialogo.Execute(UniApplication, 'Baixado', 'Financeiro', 'Esta nota fiscal não pode ser Alterada ou Excluída, Lançamento financeiro baixado, estorne a baixa primeiro');
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
                TfDialogo.Execute(UniApplication, 'Bloqueado', 'Bloqueio', 'Nota fiscal não pode ser alterada, alguns itens foram movimentados com data igual ou posterior.');
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
          
procedure TfFiscalNFTerceiros.GradeItensDblClick(Sender: TObject);
begin
    bEditItens.Click;
end;

end.
