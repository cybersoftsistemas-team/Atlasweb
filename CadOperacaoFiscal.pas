unit CadOperacaoFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, 
  uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, 
  uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniSweetAlert, Data.DB, Vcl.Menus, uniMainMenu, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniRadioGroup, 
  uniMemo, uniMultiItem, uniDBComboBox, uniCheckBox, uniDBRadioGroup, Funcoes, uniSyntaxEditorBase, uniSyntaxEditor, uniListBox, uniDBListBox, uniDBLookupListBox, CalcExpress, unimMemo;

type
  TfCadOperacaoFiscal = class(TUniFrame)
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    pBarraPesq: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    Pasta: TUnipageControl;
    Alerta: TUniSweetAlert;
    dstClassificacao: TDataSource;
    tClassificacao: TFDQuery;
    tCodigo: TFDQuery;
    tCopia: TFDQuery;
    tNotas: TFDQuery;
    tQtde: TFDQuery;
    tCodigoCodigo: TIntegerField;
    mnVariavel: TPopupMenu;
    Grade: TuniDBGrid;
    Clientes1: TuniMenuItem;
    DEVOLUO1: TuniMenuItem;
    FORNECEDORES1: TuniMenuItem;
    PROCESSO1: TuniMenuItem;
    PROCESSOAdiantamento1: TuniMenuItem;
    PROCESSOImpostos1: TuniMenuItem;
    TabSheet1: TuniTabSheet;
    TabSheet2: TuniTabSheet;
    TabSheet4: TuniTabSheet;
    TabSheet5: TuniTabSheet;
    OperacaoFiscal: TFDQuery;
    dsOperacaoFiscal: TDataSource;
    bDuplicar: TUniButton;
    UniScrollBox1: TUniScrollBox;
    pFicha1: TUniPanel;
    cCodigo: TUniDBEdit;
    cDescricao: TUniDBEdit;
    cRateio_PISCOFINSEntrada: TUniDBRadioGroup;
    cSaida_Entrada: TUniDBRadioGroup;
    cOrigem_ValorUnitario: TUniDBRadioGroup;
    cOrigem_AliquotaICMS: TUniDBRadioGroup;
    GroupBox3: TUniGroupBox;
    cVisiveis_ICMSOper: TUniDBCheckBox;
    cVisiveis_ICMSSub: TUniDBCheckBox;
    cVisiveis_Frete: TUniDBCheckBox;
    cVisiveis_Seguro: TUniDBCheckBox;
    cVisiveis_Desconto: TUniDBCheckBox;
    cVisiveis_Despesas: TUniDBCheckBox;
    cVisiveis_IPI: TUniDBCheckBox;
    cVisiveis_QuantidadeItem: TUniDBCheckBox;
    cVisiveis_DIFAL: TUniDBCheckBox;
    cVisiveis_AFRMM: TUniDBCheckBox;
    cFinalidade_Mercadoria_Mercadoria: TUniDBRadioGroup;
    GroupBox2: TUniGroupBox;
    cNota_Referencia: TUniDBCheckBox;
    cApuracao_PISCOFINS: TUniDBCheckBox;
    cGerar_Financeiro: TUniDBCheckBox;
    cComplementar: TUniDBCheckBox;
    cReceita: TUniDBCheckBox;
    cRelatorio_Vendas: TUniDBCheckBox;
    cRelatorio_DestaqueICMS: TUniDBCheckBox;
    cBaixa_Estoque: TUniDBCheckBox;
    cICMS_Destacar: TUniDBCheckBox;
    cEmail_NFE: TUniDBCheckBox;
    cNFE_Estorno: TUniDBCheckBox;
    cTransferencia: TUniDBCheckBox;
    cDados_Veiculo: TUniDBCheckBox;
    cBloqueio_Lucro: TUniDBCheckBox;
    cCalculo_CST: TUniDBCheckBox;
    cFormula_Produto: TUniDBCheckBox;
    cMostrar_Despesas: TUniDBCheckBox;
    UniTabSheet1: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    pFicha2: TUniPanel;
    cCST: TUniGroupBox;
    clCST_PIS: TUniDBLookupComboBox;
    clCST_COFINS: TUniDBLookupComboBox;
    cTipoCredito: TUniDBLookupComboBox;
    GrupoPIS: TUniGroupBox;
    cCSTPIS_AliquotaUM: TUniDBCheckBox;
    cCSTPIS_Monofasica: TUniDBCheckBox;
    cCSTPIS_AliquotaZero: TUniDBCheckBox;
    cCSTPIS_Isenta: TUniDBCheckBox;
    cCSTPIS_Suspensao: TUniDBCheckBox;
    cCSTPIS_SemIncidencia: TUniDBCheckBox;
    cCSTPIS_Outras: TUniDBCheckBox;
    GrupoCOFINS: TUniGroupBox;
    cCSTCOFINS_AliquotaUM: TUniDBCheckBox;
    cCSTCOFINS_Monofasica: TUniDBCheckBox;
    cCSTCOFINS_AliquotaZero: TUniDBCheckBox;
    cCSTCOFINS_Isenta: TUniDBCheckBox;
    cCSTCOFINS_Suspensao: TUniDBCheckBox;
    cCSTCOFINS_SemIncidencia: TUniDBCheckBox;
    cCSTCOFINS_Outras: TUniDBCheckBox;
    GroupBox4: TUniGroupBox;
    cImune_IPI: TUniDBCheckBox;
    cNao_Tributada_IPI: TUniDBCheckBox;
    cSuspensao_IPI: TUniDBCheckBox;
    cIsencao_IPI: TUniDBCheckBox;
    GroupBox6: TUniGroupBox;
    RxDBLookupCombo1: TUniDBLookupComboBox;
    RxDBLookupCombo2: TUniDBLookupComboBox;
    cEnquadra: TUniDBLookupComboBox;
    UniScrollBox3: TUniScrollBox;
    pFicha5: TUniPanel;
    GroupBox5: TUniGroupBox;
    cClassificacao_Saida: TUniDBLookupComboBox;
    clTipo_Documento: TUniDBLookupComboBox;
    clCentro_Custo: TUniDBLookupComboBox;
    clModalidade_Pagamento: TUniDBLookupComboBox;
    UniScrollBox4: TUniScrollBox;
    pFicha3: TUniPanel;
    UniScrollBox6: TUniScrollBox;
    pFicha4: TUniPanel;
    cInf_Complementares: TUniDBMemo;
    UniDBRadioGroup1: TUniDBRadioGroup;
    cAtivo: TUniDBCheckBox;
    UniTabSheet3: TUniTabSheet;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    tBeneficio: TFDQuery;
    dstBeneficio: TDataSource;
    tServicos: TFDQuery;
    dstServicos: TDataSource;
    UniScrollBox7: TUniScrollBox;
    pFicha7: TUniPanel;
    cConta: TUniDBLookupComboBox;
    tCFOP: TFDQuery;
    dstCFOP: TDataSource;
    cCFOPDentro: TUniDBLookupComboBox;
    tEnqIPI: TFDQuery;
    dstEnqIPI: TDataSource;
    tCSTPIS: TFDQuery;
    dstCSTPIS: TDataSource;
    tCSTCOFINS: TFDQuery;
    dstCSTCOFINS: TDataSource;
    tBCCredito: TFDQuery;
    dstBCCredito: TDataSource;
    tCSTTabelaB: TFDQuery;
    dstCSTTabelaB: TDataSource;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    tTipoDoc: TFDQuery;
    dstTipoDoc: TDataSource;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniDBCheckBox9: TUniDBCheckBox;
    UniDBCheckBox10: TUniDBCheckBox;
    UniDBCheckBox19: TUniDBCheckBox;
    UniDBCheckBox17: TUniDBCheckBox;
    tPlano: TFDQuery;
    dstPlano: TDataSource;
    tCentroCusto: TFDQuery;
    dstCentroCusto: TDataSource;
    tModalidade: TFDQuery;
    dstModalidade: TDataSource;
    UniDBListBox1: TUniDBListBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    OperacaoFiscalFinalidade: TStringField;
    OperacaoFiscalCodigo: TIntegerField;
    OperacaoFiscalDescricao: TStringField;
    OperacaoFiscalInf_Complementares: TMemoField;
    OperacaoFiscalLinhas_Itens: TSmallintField;
    OperacaoFiscalLinhas: TSmallintField;
    OperacaoFiscalColunas: TSmallintField;
    OperacaoFiscalMovimenta_Estoque: TBooleanField;
    OperacaoFiscalMovimenta_Inventario: TBooleanField;
    OperacaoFiscalNota_Referencia: TBooleanField;
    OperacaoFiscalApuracao_PISCOFINS: TBooleanField;
    OperacaoFiscalNao_Tributada_ICMS: TBooleanField;
    OperacaoFiscalNao_Tributada_IPI: TBooleanField;
    OperacaoFiscalImune_IPI: TBooleanField;
    OperacaoFiscalTamanho_Fonte: TStringField;
    OperacaoFiscalConta_ICMSOper_D: TStringField;
    OperacaoFiscalConta_ICMSOper_C: TStringField;
    OperacaoFiscalHistorico_ICMSOper: TSmallintField;
    OperacaoFiscalConta_ICMSST_D: TStringField;
    OperacaoFiscalConta_ICMSST_C: TStringField;
    OperacaoFiscalHistorico_ICMSST: TSmallintField;
    OperacaoFiscalConta_IPI_D: TStringField;
    OperacaoFiscalConta_IPI_C: TStringField;
    OperacaoFiscalHistorico_IPI: TSmallintField;
    OperacaoFiscalConta_Seguro_D: TStringField;
    OperacaoFiscalConta_Seguro_C: TStringField;
    OperacaoFiscalHistorico_Seguro: TSmallintField;
    OperacaoFiscalConta_Frete_D: TStringField;
    OperacaoFiscalConta_Frete_C: TStringField;
    OperacaoFiscalHistorico_Frete: TSmallintField;
    OperacaoFiscalConta_Despesas_D: TStringField;
    OperacaoFiscalConta_Despesas_C: TStringField;
    OperacaoFiscalHistorico_Despesas: TSmallintField;
    OperacaoFiscalConta_PIS_D: TStringField;
    OperacaoFiscalConta_PIS_C: TStringField;
    OperacaoFiscalHistorico_PIS: TSmallintField;
    OperacaoFiscalConta_COFINS_D: TStringField;
    OperacaoFiscalConta_COFINS_C: TStringField;
    OperacaoFiscalHistorico_COFINS: TSmallintField;
    OperacaoFiscalConta_II_D: TStringField;
    OperacaoFiscalConta_II_C: TStringField;
    OperacaoFiscalHistorico_II: TSmallintField;
    OperacaoFiscalConta_FOB_Fornecedor_D: TStringField;
    OperacaoFiscalHistorico_FOB_Fornecedor: TSmallintField;
    OperacaoFiscalConta_FOB_Processo_D: TStringField;
    OperacaoFiscalHistorico_FOB_Processo: TSmallintField;
    OperacaoFiscalConta_TotalProdutos_D: TStringField;
    OperacaoFiscalConta_TotalProdutos_C: TStringField;
    OperacaoFiscalHistorico_TotalProdutos: TSmallintField;
    OperacaoFiscalConta_FOB_Fornecedor_C: TStringField;
    OperacaoFiscalConta_FOB_Processo_C: TStringField;
    OperacaoFiscalConta_Estoque_D: TStringField;
    OperacaoFiscalConta_Estoque_C: TStringField;
    OperacaoFiscalHistorico_Estoque: TSmallintField;
    OperacaoFiscalConta_Desconto_D: TStringField;
    OperacaoFiscalConta_Desconto_C: TStringField;
    OperacaoFiscalHistorico_Desconto: TSmallintField;
    OperacaoFiscalConta_TotalNota_C: TStringField;
    OperacaoFiscalConta_TotalNota_D: TStringField;
    OperacaoFiscalHistorico_TotalNota: TSmallintField;
    OperacaoFiscalVisiveis_ICMSOper: TBooleanField;
    OperacaoFiscalVisiveis_ICMSSub: TBooleanField;
    OperacaoFiscalVisiveis_Frete: TBooleanField;
    OperacaoFiscalVisiveis_Seguro: TBooleanField;
    OperacaoFiscalVisiveis_Desconto: TBooleanField;
    OperacaoFiscalVisiveis_Despesas: TBooleanField;
    OperacaoFiscalVisiveis_IPI: TBooleanField;
    OperacaoFiscalClassificacao_Saida: TStringField;
    OperacaoFiscalTipo_Documento: TStringField;
    OperacaoFiscalGerar_Financeiro: TBooleanField;
    OperacaoFiscalCentro_Custo: TStringField;
    OperacaoFiscalCST_PIS: TStringField;
    OperacaoFiscalCST_COFINS: TStringField;
    OperacaoFiscalIPI_Imune: TBooleanField;
    OperacaoFiscalFinalidade_Mercadoria: TSmallintField;
    OperacaoFiscalComplementar: TBooleanField;
    OperacaoFiscalSuspensao_ICMS: TBooleanField;
    OperacaoFiscalReceita: TBooleanField;
    OperacaoFiscalSuspensao_IPI: TBooleanField;
    OperacaoFiscalModalidade_Pagamento: TSmallintField;
    OperacaoFiscalIsencao_ICMS: TBooleanField;
    OperacaoFiscalRelatorio_Vendas: TBooleanField;
    OperacaoFiscalCSTPIS_AliquotaUM: TBooleanField;
    OperacaoFiscalCSTPIS_Monofasica: TBooleanField;
    OperacaoFiscalCSTPIS_AliquotaZero: TBooleanField;
    OperacaoFiscalCSTPIS_Isenta: TBooleanField;
    OperacaoFiscalCSTPIS_Suspensao: TBooleanField;
    OperacaoFiscalCSTPIS_SemIncidencia: TBooleanField;
    OperacaoFiscalCSTCOFINS_AliquotaUM: TBooleanField;
    OperacaoFiscalCSTCOFINS_Monofasica: TBooleanField;
    OperacaoFiscalCSTCOFINS_AliquotaZero: TBooleanField;
    OperacaoFiscalCSTCOFINS_Isenta: TBooleanField;
    OperacaoFiscalCSTCOFINS_Suspensao: TBooleanField;
    OperacaoFiscalCSTCOFINS_SemIncidencia: TBooleanField;
    OperacaoFiscalCSTPIS_Outras: TBooleanField;
    OperacaoFiscalCSTCOFINS_Outras: TBooleanField;
    OperacaoFiscalValoracao_Produto: TBooleanField;
    OperacaoFiscalRelatorio_DestaqueICMS: TBooleanField;
    OperacaoFiscalTipo_Credito: TSmallintField;
    OperacaoFiscalRateio_PISCOFINSEntrada: TSmallintField;
    OperacaoFiscalOrigem_AliquotaICMS: TSmallintField;
    OperacaoFiscalMedia_BCR: TBooleanField;
    OperacaoFiscalOrigem_ValorUnitario: TSmallintField;
    OperacaoFiscalVisiveis_QuantidadeItem: TBooleanField;
    OperacaoFiscalBaixa_Estoque: TBooleanField;
    OperacaoFiscalICMS_Destacar: TBooleanField;
    OperacaoFiscalEmail_NFE: TBooleanField;
    OperacaoFiscalNFE_Estorno: TBooleanField;
    OperacaoFiscalImune_ICMS: TBooleanField;
    OperacaoFiscalCSOSN_Entrada: TStringField;
    OperacaoFiscalCSOSN_Saida: TStringField;
    OperacaoFiscalMovimenta_EstoqueRep: TBooleanField;
    OperacaoFiscalEnquadramento_IPI: TStringField;
    OperacaoFiscalIsencao_IPI: TBooleanField;
    OperacaoFiscalTransferencia: TBooleanField;
    OperacaoFiscalVisiveis_DIFAL: TBooleanField;
    OperacaoFiscalFator_ICMS: TBooleanField;
    OperacaoFiscalFator_PIS: TBooleanField;
    OperacaoFiscalFator_COFINS: TBooleanField;
    OperacaoFiscalFator_IRPJ: TBooleanField;
    OperacaoFiscalFator_CSLL: TBooleanField;
    OperacaoFiscalFator_Lucro: TBooleanField;
    OperacaoFiscalDados_Veiculo: TBooleanField;
    OperacaoFiscalBloqueio_Lucro: TBooleanField;
    OperacaoFiscalCalculo_CST: TBooleanField;
    OperacaoFiscalArredondar_unitario: TBooleanField;
    OperacaoFiscalUtilizar_FormulaProduto: TBooleanField;
    OperacaoFiscalVisiveis_AFRMM: TBooleanField;
    OperacaoFiscalVisivel_AFRMM: TBooleanField;
    OperacaoFiscalEmpresa: TStringField;
    OperacaoFiscalAliquota_ISS: TFloatField;
    OperacaoFiscalPlano_COFINS: TStringField;
    OperacaoFiscalPlano_ICMSOper: TStringField;
    OperacaoFiscalPlano_ICMSST: TStringField;
    OperacaoFiscalPlano_IPI: TStringField;
    OperacaoFiscalPlano_ISS: TStringField;
    OperacaoFiscalPlano_PIS: TStringField;
    OperacaoFiscalPlano_TotalNota: TStringField;
    OperacaoFiscalPlano_TotalProdutos: TStringField;
    OperacaoFiscalCodigo_CSLL: TSmallintField;
    OperacaoFiscalCodigo_IRPJ: TSmallintField;
    OperacaoFiscalConta_ICMSSub_C: TStringField;
    OperacaoFiscalConta_ICMSSub_D: TStringField;
    OperacaoFiscalCSTCOFINS_Dif: TStringField;
    OperacaoFiscalCST_ICMS: TStringField;
    OperacaoFiscalCST_IPI: TStringField;
    OperacaoFiscalCSTPIS_Dif: TStringField;
    OperacaoFiscalEspecie: TStringField;
    OperacaoFiscalHistorico_ICMSSub: TSmallintField;
    OperacaoFiscalBeneficio_Fiscal: TSmallintField;
    OperacaoFiscalInventario_Estoque: TBooleanField;
    OperacaoFiscalInventario_Terceiros: TBooleanField;
    OperacaoFiscalMovimenta_EstoqueInd: TBooleanField;
    OperacaoFiscalCFOP_Dentro: TStringField;
    OperacaoFiscalCFOP_Fora: TStringField;
    OperacaoFiscalCFOP_IndEntrada: TStringField;
    OperacaoFiscalCFOP_IndSaida: TStringField;
    OperacaoFiscalProduto_NCM: TBooleanField;
    OperacaoFiscalRelaciona_Adicoes: TBooleanField;
    OperacaoFiscalRelaciona_Produtos: TBooleanField;
    OperacaoFiscalServico: TSmallintField;
    OperacaoFiscalSomar_ICMSST: TBooleanField;
    OperacaoFiscalSomar_ImpostosServico: TBooleanField;
    OperacaoFiscalZerar_IPI: TBooleanField;
    OperacaoFiscalMostrar_Despesas: TBooleanField;
    OperacaoFiscalEmissao: TStringField;
    OperacaoFiscalDesativado: TBooleanField;
    OperacaoFiscalEmissao_Descricao: TStringField;
    OperacaoFiscalES_Descricao: TStringField;
    cPesqInf: TUniEdit;
    GradeInf: TUniDBGrid;
    tOperCtb: TFDQuery;
    dstOperCtb: TDataSource;
    GrupoCtb: TUniGroupBox;
    UniDBEdit2: TUniDBEdit;
    cContaD_Ctb: TUniDBLookupComboBox;
    cContaC_Ctb: TUniDBLookupComboBox;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    cHistCtb: TUniDBLookupComboBox;
    cCampoCtb: TUniDBComboBox;
    tHistorico: TFDQuery;
    dstHistorico: TDataSource;
    UniPanel1: TUniPanel;
    NavegaCtb: TUniDBNavigator;
    bEdCtb: TUniSpeedButton;
    bDelCtb: TUniSpeedButton;
    bCanCtb: TUniSpeedButton;
    bSavCtb: TUniSpeedButton;
    bAddCtb: TUniSpeedButton;
    GradeCtb: TUniDBGrid;
    tTmp: TFDQuery;
    OperacaoFiscalES: TSmallintField;
    UniDBCheckBox11: TUniDBCheckBox;
    OperacaoFiscalTransportador: TBooleanField;
    UniTabSheet4: TUniTabSheet;
    UniScrollBox8: TUniScrollBox;
    tOpFormulas: TFDQuery;
    dstOpFormulas: TDataSource;
    Navega: TUniDBNavigator;
    tCampos: TFDQuery;
    dstCampos: TDataSource;
    UniPanel4: TUniPanel;
    gFormulas: TUniDBGrid;
    UniPanel3: TUniPanel;
    bNavegaFormula: TUniDBNavigator;
    bEditFormula: TUniSpeedButton;
    bExcluirFormula: TUniSpeedButton;
    UniDBRadioGroup2: TUniDBRadioGroup;
    OperacaoFiscalDestino_Origem: TStringField;
    cFormula: TUniMemo;
    UniGroupBox1: TUniGroupBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    UniDBCheckBox8: TUniDBCheckBox;
    OperacaoFiscalMonofasico_Comb: TBooleanField;
    OperacaoFiscalMonofasico_CombRetencao: TBooleanField;
    OperacaoFiscalMonofasico_CombDiferido: TBooleanField;
    OperacaoFiscalMonofasico_CombAnterior: TBooleanField;
    UniDBCheckBox12: TUniDBCheckBox;
    UniDBCheckBox13: TUniDBCheckBox;
    OperacaoFiscalDiferido_ICMS: TBooleanField;
    UniDBMemo1: TUniDBMemo;
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
    procedure OperacaoFiscalBeforePost(DataSet: TDataSet);
    procedure OperacaoFiscalBeforeDelete(DataSet: TDataSet);
    procedure cSaida_EntradaChange(Sender: TObject);
    procedure OperacaoFiscalCalcFields(DataSet: TDataSet);
    procedure GradeInfDblClick(Sender: TObject);
    procedure bAddCtbClick(Sender: TObject);
    procedure bSavCtbClick(Sender: TObject);
    procedure bCanCtbClick(Sender: TObject);
    procedure OperacaoFiscalAfterScroll(DataSet: TDataSet);
    procedure bEditFormulaClick(Sender: TObject);
    procedure bExcluirFormulaClick(Sender: TObject);
    procedure tOpFormulasAfterScroll(DataSet: TDataSet);
    procedure gFormulasDblClick(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
  private
    { Private declarations }
    procedure LigaBotoesCtb(Estado: boolean);
    procedure FiltraTabCtb;
    procedure Duplica;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, CadOperacaoFiscalFormula;

procedure TfCadOperacaoFiscal.bAdicionarClick(Sender: TObject);
begin
      with OperacaoFiscal do begin
           try
               LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfCadOperacaoFiscal.bExcluirClick(Sender: TObject);
begin
     with OperacaoFiscal do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadOperacaoFiscal.bExcluirFormulaClick(Sender: TObject);
begin
     with tOpFormulas do begin
          MessageDlg('Deseja realmente excluir esta formula?'+#13+#13+FieldByName('Campo').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Formula excluída do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfCadOperacaoFiscal.bGravarClick(Sender: TObject);
begin
      with OperacaoFiscal do begin
           if (State = dsInsert) and (Existe(OperacaoFiscal, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Descricao').AsString) = '' then begin
              MessageDlg('O campo "Descricao" não pode ficar em branco!', mtError, [mbOK]);
              cDescricao.SetFocus;
              Abort;
           end;
           try
               // Gera o código novo em caso de inclusão.
               if State = dsInsert then begin
                  FieldByName('Codigo').Value := GeraCodigo('OperacaoFiscal', 'Codigo');
               end;

               Post;
               
               LigaBotoes(true);
               Alerta.AlertType := atSuccess;
               Alerta.width     := 450;
               Alerta.Title     := '';
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except
               On E: Exception do
                  MessageDlgN('Ocorreu um erro.'+#13+
                              'Por favor, entre em contato com o administrador do sistema.'+#13+#13+
                              'Mensagem de erro: '+#13+
                               E.Message, mtError, [] );
           end;
      end;
end;

procedure TfCadOperacaoFiscal.bCancelarClick(Sender: TObject);
begin
      OperacaoFiscal.Cancel;
      LigaBotoes(true);
end;

procedure TfCadOperacaoFiscal.bCanCtbClick(Sender: TObject);
begin
      tOperCtb.Cancel;
      LigaBotoesCtb(true);
end;

procedure TfCadOperacaoFiscal.bDuplicarClick(Sender: TObject);
Var
    i: integer;
begin
     MessageDlg('Deseja realmente duplicar esta Operação Fiscal?', mtConfirmation,mbYesNo,
               procedure(Comp:TComponent; ARes: Integer)
               begin
                    if ARes = mrYes then begin
                       Duplica;
                       Alerta.Text := 'Operação fiscal duplicata.';
                       Alerta.Execute;
                    end;
               end);
end;

procedure TfCadOperacaoFiscal.Duplica;
Var
    i: integer;
begin
     Screen.Cursor := crSQLWait;
     with tCopia do begin
          sql.Clear;
          sql.Add('select * from OperacaoFiscal where Codigo = :pCodigo');
          paramByName('pCodigo').AsInteger := OperacaoFiscal.fieldbyname('Codigo').asinteger;
          open;
     end;
     with tTmp do begin
          sql.Clear;
          sql.Add('select * from OperacaoFiscal where Codigo is null');
          open;
          Append;
               for i := 0 to pred(tCopia.FieldCount) do begin
                   //fields[i].Value := tCopia.FieldByName(Fields[i].FieldName).Value;
                   fields[i].Value := tCopia.Fields[i].value;
               end;
               with tCodigo do begin
                    sql.Clear;
                    sql.Add('select max(codigo)+1 as Codigo from OperacaoFiscal');
                    open;
               end;
               fieldbyname('Codigo').Value     := tCodigo.FieldByName('Codigo').AsInteger;
               fieldbyname('Desativado').Value := false;
               fieldbyname('Descricao').Value  := Trim(fieldbyname('Descricao').Value) + ' (CÓPIA)';
          Post;
     end;

     OperacaoFiscal.Refresh;
     Screen.Cursor := crDefault;
end;

procedure TfCadOperacaoFiscal.bEditarClick(Sender: TObject);
begin
      try
         LigaBotoes(false);
         OperacaoFiscal.Edit;
         cCodigo.setfocus;
      except
         MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
      end;
end;

procedure TfCadOperacaoFiscal.bEditFormulaClick(Sender: TObject);
begin
      fCadOperacaoFiscalFormula.mCodOper := OperacaoFiscal.fieldbyname('Codigo').asinteger;
      fCadOperacaoFiscalFormula.mCodigoCampo := tOpFormulas.FieldByName('Codigo').AsInteger;
      fCadOperacaoFiscalFormula.ShowModal;
      tOpFormulas.Refresh;
end;

procedure TfCadOperacaoFiscal.UniFrameDestroy(Sender: TObject);
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

procedure TfCadOperacaoFiscal.bSavCtbClick(Sender: TObject);
begin
      with tOperCtb do begin
           if Trim(FieldByName('Campo').AsString) = '' then begin
              MessageDlg('Campo "Lançamento" deve ser informado!', mtError, [mbOK]);
              cCampoCtb.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Conta_Debito').AsString)+Trim(FieldByName('Conta_Credito').AsString) = '' then begin
              MessageDlg('Ao menos uma "Conta Débito/Crédito" deve ser informada!', mtError, [mbOK]);
              cContaD_Ctb.SetFocus;
              Abort;
           end;
           if FieldByName('Historico').Asinteger <= 0 then begin
              MessageDlg('Campo "Histórico" deve ser informado!', mtError, [mbOK]);
              cHistCtb.SetFocus;
              Abort;
           end;
           try
               FieldByName('Operacao_Fiscal').Value := OperacaoFiscal.FieldByName('Codigo').AsInteger;
               Post;
               
               LigaBotoes(true);
               Alerta.AlertType := atSuccess;
               Alerta.width     := 450;
               Alerta.Title     := '';
               Alerta.Text      := 'Parâmetrização contabil salva no banco de dados!'; 
               Alerta.Execute;
           except
               on E: Exception do
                  MessageDlgN('Ocorreu um erro.'+#13+
                              'Por favor, entre em contato com o administrador do sistema.'+#13+#13+
                              'Mensagem de erro: '+#13+
                               E.Message, mtError, [] );
           end;
      end;
end;

procedure TfCadOperacaoFiscal.bAddCtbClick(Sender: TObject);
begin
     with tOperCtb do begin
          try
              LigaBotoesCtb(false);
              Append;
          except
              MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
          end;
     end;
end;

procedure TfCadOperacaoFiscal.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadOperacaoFiscal.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled       := Estado;
     bEditar.Enabled      := Estado;
     bExcluir.Enabled     := Estado;
     bAdicionar.Enabled   := Estado;
     TabSheet4.TabVisible := Estado;
     bCancelar.Enabled    := not Estado;
     bGravar.Enabled      := not Estado;
     pFicha1.Enabled      := not Estado;
     pFicha2.Enabled      := not Estado;
     pFicha3.Enabled      := not Estado;
     pFicha5.Enabled      := not Estado;
     pFicha7.Enabled      := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfCadOperacaoFiscal.LigaBotoesCtb(Estado:boolean);
begin
     NavegaCtb.Enabled := Estado;
     bEdCtb.Enabled    := Estado;
     bDelCtb.Enabled   := Estado;
     bAddCtb.Enabled   := Estado;
     bCanCtb.Enabled   := not Estado;
     bSavCtb.Enabled   := not Estado;
     GrupoCtb.Enabled  := not Estado;
end;

procedure TfCadOperacaoFiscal.GradeInfDblClick(Sender: TObject);
begin
      with OperacaoFiscal.fieldbyname('Inf_Complementares') do begin
           value := trim(value) + trim(tCampos.FieldByName('Campo').AsString);
      end;
end;

procedure TfCadOperacaoFiscal.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;
      with OperacaoFiscal do begin
           sql.clear;
           sql.Add('select *');
           sql.add('from OperacaoFiscal');
           sql.add('order by ES, Emissao, Descricao');
           open;
      end;
      with tBeneficio do begin
           sql.clear;
           sql.Add('select Codigo, Nome');
           sql.add('from BeneficioFiscal');
           sql.add('order by Nome');
           open;
      end;
      with tServicos do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from Servicos');
           sql.add('order by Descricao');
           open;
      end;
      with tCFOP do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from CFOP');
           sql.Add('where isnull(Desativada, 0) = 0');
           sql.add('order by Codigo');
           open;
      end;
      with tEnqIPI do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from EnquadramentoIPI');
           sql.add('order by Codigo');
           open;
      end;
      with tCSTPIS do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from CSTPIS');
           sql.add('order by Codigo');
           open;
      end;
      with tCSTCOFINS do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from CSTCOFINS');
           sql.add('order by Codigo');
           open;
      end;
      with tBCCredito do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from BCCredito');
           sql.add('order by Codigo');
           open;
      end;
      with tTipoDoc do begin
           sql.clear;
           sql.Add('select Codigo, Nome');
           sql.add('from TiposDocumentos');
           sql.add('order by Codigo');
           open;
      end;
      with tBCCredito do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from BCCredito');
           sql.add('order by Codigo');
           open;
      end;
      with tPlano do begin
           sql.clear;
           sql.Add('select Conta, Nome_Financeiro, Nome_Contabil');
           sql.add('from PlanoContas');
           sql.add('where isnull(Sintetica, 0) = 0');
           sql.add('order by Nome_Financeiro');
           open;
      end;
      with tCentroCusto do begin
           sql.clear;
           sql.Add('select Codigo, Nome');
           sql.add('from CentroCusto');
           sql.add('order by Nome');
           open;
      end;
      with tModalidade do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from ModalidadesPagamento');
           sql.add('order by Descricao');
           open;
      end;
      with tHistorico do begin
           sql.clear;
           sql.Add('select * ');
           sql.add('from Historicos');
           sql.add('order by Codigo');
           open;
      end;

      FiltraTabCtb;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;
end;

procedure TfCadOperacaoFiscal.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadOperacaoFiscal.bPesquisaClick(Sender: TObject);
begin
     OperacaoFiscal.Cancel;
     LigaBotoes(true);
     Pesquisa(OperacaoFiscal,'OperacaoFiscal','Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadOperacaoFiscal.OperacaoFiscalBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadOperacaoFiscal.OperacaoFiscalCalcFields(DataSet: TDataSet);
begin
     with Dataset do begin
          fieldbyname('Emissao_Descricao').Value := iif(fieldbyname('Emissao').Value = 'P', 'PRÓPRIA', 'TERCEIROS');
          fieldbyname('ES_Descricao').Value      := iif(fieldbyname('ES').Value = 0, 'ENTRADA', 'SAÍDA');
          case fieldbyname('Finalidade_Mercadoria').asinteger of
               0:fieldbyname('Finalidade').value := 'Revenda';
               1:fieldbyname('Finalidade').value := 'Consumo';
               2:fieldbyname('Finalidade').value := 'Devolução';
               3:fieldbyname('Finalidade').value := 'Exportação';
               4:fieldbyname('Finalidade').value := 'Própria em Poder de Terceiros';
               5:fieldbyname('Finalidade').value := 'Terceiros em Poder da Empresa';
               6:fieldbyname('Finalidade').value := 'Imobilizado';
               9:fieldbyname('Finalidade').value := 'Outras';
          end;
     end;
end;

procedure TfCadOperacaoFiscal.tOpFormulasAfterScroll(DataSet: TDataSet);
begin
     cFormula.Text := tOpFormulas.FieldByName('Formula').AsString;
end;

procedure TfCadOperacaoFiscal.OperacaoFiscalAfterScroll(DataSet: TDataSet);
begin
     with tOpFormulas do begin
          sql.clear;
          sql.Add('select * ');
          sql.add('from OperacaoFiscalFormulas');
          sql.Add('where Operacao = :pOp');
          sql.add('order by Tipo, Ordem_Calculo, Campo');
          parambyname('pOp').AsInteger := OperacaoFiscal.FieldByName('Codigo').AsInteger;
          open;
          cFormula.Text := FieldByName('Formula').AsString;
     end;
end;

procedure TfCadOperacaoFiscal.OperacaoFiscalBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, 'Delete');
end;

procedure TfCadOperacaoFiscal.cSaida_EntradaChange(Sender: TObject);
begin
//      With Dados do begin
//           cRelatorioVendas.Enabled := TipoNotaSaida_Entrada.Value = 1;
//           cCST.Enabled             := TipoNotaSaida_Entrada.Value = 0;
//           cCSTPIS.Enabled          := TipoNotaSaida_Entrada.Value = 0;
//           cCSTCOFINS.Enabled       := TipoNotaSaida_Entrada.Value = 0;
//           lCSTPIS.Enabled          := TipoNotaSaida_Entrada.Value = 0;
//           lCSTCOFINS.Enabled       := TipoNotaSaida_Entrada.Value = 0;
//
//           CSTPIS.SQL.Clear;
//           CSTCOFINS.SQL.Clear;
//           If TipoNotaSaida_Entrada.AsInteger = 0 then begin
//              CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo > 49) ORDER BY Codigo');
//              CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo > 49) ORDER BY Codigo');
//           end else begin
//              CSTPIS.SQL.Add('SELECT * FROM CSTPIS WHERE(Codigo <= 49) ORDER BY Codigo');
//              CSTCOFINS.SQL.Add('SELECT * FROM CSTCOFINS WHERE(Codigo <= 49) ORDER BY Codigo');
//           End;
//           CSTPIS.Open;
//           CSTCOFINS.Open;
//
//           If TipoNotaSaida_Entrada.Value = 0 then begin
//              lPIS.Caption    := 'PIS Importação';
//              lCOFINS.Caption := 'COFINS Importação';
//           end else begin
//              lPIS.Caption    := 'PIS s/Faturam.';
//              lCOFINS.Caption := 'COFINS s/Faturam.';
//           End;
//      End;
end;

//
//procedure TConfig_TipoNota.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
//begin
//     With dmFiscal, Dados do begin
//          If (Button = nbPost) and (Dados.TipoNota.State = dsEdit) then begin
//              TipoNotaObs_Logo.Value := cLogo.FileName;
//          End;    
//
//          If (Button = nbPost) and (Dados.TipoNota.State = dsEdit) then begin
//             NotasItens.SQL.Clear;
//             NotasItens.SQL.Add('UPDATE NotasItens SET Movimenta_Inventario  = :pInventario,');
//             NotasItens.SQL.Add('                      Apuracao_PISCOFINS    = :pApuracao,');
//             NotasItens.SQL.Add('                      Finalidade_Mercadoria = :pFinalidade,');
//             NotasItens.SQL.Add('                      Movimenta_EstoqueRep  = :pEstoqueRep');
//             NotasItens.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
//             NotasItens.ParamByName('pTipoNota').AsInteger   := TipoNotaCodigo.AsInteger;
//             NotasItens.ParamByName('pInventario').AsBoolean := cInventario.Checked;
//             NotasItens.ParamByName('pApuracao').AsBoolean   := cApuracaoPISCOFINS.Checked;
//             NotasItens.ParamByName('pFinalidade').AsInteger := StrtoInt(cFinalidade.Values[cFinalidade.ItemIndex]);
//             NotasItens.ParamByName('pEstoqueRep').AsBoolean := cEstoqueRep.Checked;
//             NotasItens.Execute;
//             NotasItens.SQL.Clear;
//             NotasItens.SQL.Add('SELECT * FROM NotasItens');
//
//             PedidosItens.SQL.Clear;
//             PedidosItens.SQL.Add('UPDATE PedidosItens SET Movimenta_EstoqueRep  = :pEstoqueRep,');
//             PedidosItens.SQL.Add('                        Apuracao_PISCOFINS    = :pApuracao,');
//             PedidosItens.SQL.Add('                        Finalidade_Mercadoria = :pFinalidade,');
//             PedidosItens.SQL.Add('                        Movimenta_Inventario  = :pInventario');
//             PedidosItens.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
//             PedidosItens.ParamByName('pTipoNota').AsInteger   := TipoNotaCodigo.AsInteger;
//             PedidosItens.ParamByName('pEstoqueRep').AsBoolean := cEstoqueRep.Checked;
//             PedidosItens.ParamByName('pApuracao').AsBoolean   := cApuracaoPISCOFINS.Checked;
//             PedidosItens.ParamByName('pInventario').AsBoolean := cInventario.Checked;
//             PedidosItens.ParamByName('pFinalidade').Value     := cFinalidade.Value;
//             PedidosItens.Execute;
//             PedidosItens.SQL.Clear;
//             PedidosItens.SQL.Add('SELECT * FROM PedidosItens');
//
//             Notas.SQL.Clear;
//             Notas.SQL.Add('UPDATE NotasFiscais SET Apuracao_PISCOFINS = :pApuracao,');
//             Notas.SQL.Add('                        Complementar       = :pCompl,');
//             Notas.SQL.Add('                        ICMS_Destacar      = :pDestacar');
//             Notas.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
//             Notas.ParamByName('pTipoNota').AsInteger := TipoNotaCodigo.AsInteger;
//             Notas.ParamByName('pApuracao').AsBoolean := cApuracaoPISCOFINS.Checked;
//             Notas.ParamByName('pCompl').AsBoolean    := cComplementar.Checked;
//             Notas.ParamByName('pDestacar').AsBoolean := cICMSDestacar.Checked;
//             Notas.Execute;
//             Notas.SQL.Clear;
//             Notas.SQL.Add('SELECT * FROM NotasFiscais');
//
//             Pedidos.SQL.Clear;
//             Pedidos.SQL.Add('UPDATE Pedidos SET Apuracao_PISCOFINS = :pApuracao,');
//             Pedidos.SQL.Add('                   Complementar       = :pCompl,');
//             Pedidos.SQL.Add('                   ICMS_Destacar      = :pDestacar');
//             Pedidos.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
//             Pedidos.ParamByName('pTipoNota').AsInteger := TipoNotaCodigo.AsInteger;
//             Pedidos.ParamByName('pApuracao').AsBoolean := cApuracaoPISCOFINS.Checked;
//             Pedidos.ParamByName('pCompl').AsBoolean    := cComplementar.Checked;
//             Pedidos.ParamByName('pDestacar').AsBoolean := cICMSDestacar.Checked;
//             Pedidos.Execute;
//             Pedidos.SQL.Clear;
//             Pedidos.SQL.Add('SELECT * FROM Pedidos');
//          End;
//
//          If (Button = nbDelete) then begin
//             // Verifica se o tipo de nota foi utilizado.
//             If MessageDlg('Confirma excluir este tipo de nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
//
//             tQtde.SQL.Clear;
//             tQtde.SQL.Add('SELECT COUNT(Tipo_Nota) AS Utilizado FROM NotasFiscais WHERE(Tipo_Nota = :pTipo)');
//             tQtde.ParamByName('pTipo').AsInteger := TipoNotaCodigo.AsInteger;
//             tQtde.Open;
//             If tQtde.FieldByName('Utilizado').AsInteger > 0 then begin
//                MessageDlg('Registro Bloqueado!'+#13+#13+'Este tipo de nota já foi utilizado e não pode ser excluído.', mtInformation, [mbOK], 0);
//                Abort;
//             End;
//          End;
//     End;
//end;

//procedure TfConfigOperacaoFiscal.GradeCamposDblClick(Sender: TObject);
//Var
//    mLin   : Integer;
//    mPos   : Integer;
//    mReg   : TBookMark;
//    mLinha : string;
//begin
//     mReg   := Dados.Campos.GetBookmark;
//     mLinha := InputBox('Inserir campo', 'Número da Linha:', mLinha );
//     If mLinha <> '' then begin
//        mLin := StrtoInt(mLinha)-1;
//        cInf_Complementares.Lines.Strings[mLin] := Trim(cInf_Complementares.Lines.Strings[mLin]) + ' '+Dados.CamposCampo.Value+' ';
//
//        Dados.Campos.First;
//        While not Dados.Campos.Eof do begin
//              mPos := cInf_Complementares.FindText((Dados.CamposCampo.Value),0,Length(cInf_Complementares.Text),[stMatchCase]);
//              If mPos <> -1 then begin
//                 cInf_Complementares.SelStart            := mPos;
//                 cInf_Complementares.SelLength           := Length(Dados.CamposCampo.Value);
//                 cInf_Complementares.SelAttributes.Color := clGreen;
//                 cInf_Complementares.SelAttributes.Style := [fsBold];
//              End;
//              cInf_Complementares.SelStart            := mPos+Length(Dados.CamposCampo.Value)+3;
//              cInf_Complementares.SelLength           := 0;
//              cInf_Complementares.SelAttributes.Color := clBlack;
//              cInf_Complementares.SelAttributes.Style := [];
//              Dados.Campos.Next;
//        End;
//        Dados.Campos.GotoBookmark(mReg);
//        Dados.Campos.FreeBookmark(mReg);
//     End;
//End;
//
//procedure TConfig_TipoNota.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
//begin
//     With dmFiscal, Dados do begin
//          If (Button = nbPost) and (Dados.TipoNota.State = dsEdit) then begin
//              TipoNotaObs_Logo.Value := cLogo.FileName;
//          End;    
//
//          If (Button = nbPost) and (Dados.TipoNota.State = dsEdit) then begin
//             NotasItens.SQL.Clear;
//             NotasItens.SQL.Add('UPDATE NotasItens SET Movimenta_Inventario  = :pInventario,');
//             NotasItens.SQL.Add('                      Apuracao_PISCOFINS    = :pApuracao,');
//             NotasItens.SQL.Add('                      Finalidade_Mercadoria = :pFinalidade,');
//             NotasItens.SQL.Add('                      Movimenta_EstoqueRep  = :pEstoqueRep');
//             NotasItens.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
//             NotasItens.ParamByName('pTipoNota').AsInteger   := TipoNotaCodigo.AsInteger;
//             NotasItens.ParamByName('pInventario').AsBoolean := cInventario.Checked;
//             NotasItens.ParamByName('pApuracao').AsBoolean   := cApuracaoPISCOFINS.Checked;
//             NotasItens.ParamByName('pFinalidade').AsInteger := StrtoInt(cFinalidade.Values[cFinalidade.ItemIndex]);
//             NotasItens.ParamByName('pEstoqueRep').AsBoolean := cEstoqueRep.Checked;
//             NotasItens.Execute;
//             NotasItens.SQL.Clear;
//             NotasItens.SQL.Add('SELECT * FROM NotasItens');
//
//             PedidosItens.SQL.Clear;
//             PedidosItens.SQL.Add('UPDATE PedidosItens SET Movimenta_EstoqueRep  = :pEstoqueRep,');
//             PedidosItens.SQL.Add('                        Apuracao_PISCOFINS    = :pApuracao,');
//             PedidosItens.SQL.Add('                        Finalidade_Mercadoria = :pFinalidade,');
//             PedidosItens.SQL.Add('                        Movimenta_Inventario  = :pInventario');
//             PedidosItens.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
//             PedidosItens.ParamByName('pTipoNota').AsInteger   := TipoNotaCodigo.AsInteger;
//             PedidosItens.ParamByName('pEstoqueRep').AsBoolean := cEstoqueRep.Checked;
//             PedidosItens.ParamByName('pApuracao').AsBoolean   := cApuracaoPISCOFINS.Checked;
//             PedidosItens.ParamByName('pInventario').AsBoolean := cInventario.Checked;
//             PedidosItens.ParamByName('pFinalidade').Value     := cFinalidade.Value;
//             PedidosItens.Execute;
//             PedidosItens.SQL.Clear;
//             PedidosItens.SQL.Add('SELECT * FROM PedidosItens');
//
//             Notas.SQL.Clear;
//             Notas.SQL.Add('UPDATE NotasFiscais SET Apuracao_PISCOFINS = :pApuracao,');
//             Notas.SQL.Add('                        Complementar       = :pCompl,');
//             Notas.SQL.Add('                        ICMS_Destacar      = :pDestacar');
//             Notas.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
//             Notas.ParamByName('pTipoNota').AsInteger := TipoNotaCodigo.AsInteger;
//             Notas.ParamByName('pApuracao').AsBoolean := cApuracaoPISCOFINS.Checked;
//             Notas.ParamByName('pCompl').AsBoolean    := cComplementar.Checked;
//             Notas.ParamByName('pDestacar').AsBoolean := cICMSDestacar.Checked;
//             Notas.Execute;
//             Notas.SQL.Clear;
//             Notas.SQL.Add('SELECT * FROM NotasFiscais');
//
//             Pedidos.SQL.Clear;
//             Pedidos.SQL.Add('UPDATE Pedidos SET Apuracao_PISCOFINS = :pApuracao,');
//             Pedidos.SQL.Add('                   Complementar       = :pCompl,');
//             Pedidos.SQL.Add('                   ICMS_Destacar      = :pDestacar');
//             Pedidos.SQL.Add('WHERE (Tipo_Nota = :pTipoNota)');
//             Pedidos.ParamByName('pTipoNota').AsInteger := TipoNotaCodigo.AsInteger;
//             Pedidos.ParamByName('pApuracao').AsBoolean := cApuracaoPISCOFINS.Checked;
//             Pedidos.ParamByName('pCompl').AsBoolean    := cComplementar.Checked;
//             Pedidos.ParamByName('pDestacar').AsBoolean := cICMSDestacar.Checked;
//             Pedidos.Execute;
//             Pedidos.SQL.Clear;
//             Pedidos.SQL.Add('SELECT * FROM Pedidos');
//          End;
//
//          If (Button = nbDelete) then begin
//             // Verifica se o tipo de nota foi utilizado.
//             If MessageDlg('Confirma excluir este tipo de nota fiscal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
//
//             tQtde.SQL.Clear;
//             tQtde.SQL.Add('SELECT COUNT(Tipo_Nota) AS Utilizado FROM NotasFiscais WHERE(Tipo_Nota = :pTipo)');
//             tQtde.ParamByName('pTipo').AsInteger := TipoNotaCodigo.AsInteger;
//             tQtde.Open;
//             If tQtde.FieldByName('Utilizado').AsInteger > 0 then begin
//                MessageDlg('Registro Bloqueado!'+#13+#13+'Este tipo de nota já foi utilizado e não pode ser excluído.', mtInformation, [mbOK], 0);
//                Abort;
//             End;
//          End;
//     End;
//end;

procedure TfCadOperacaoFiscal.FiltraTabCtb;
begin
      with tOperCtb do begin
           sql.clear;
           sql.Add('select * ');
           sql.add('      ,Historico_Desc = (select Descricao from Historicos where Codigo = Historico)');
           sql.add('from  OperacaoFiscalCtb');
           sql.add('where Operacao_Fiscal = :pOper');
           sql.add('order by Campo');
           parambyname('pOper').AsInteger := OperacaoFiscal.FieldByName('Codigo').AsInteger;
           open;
      end;
end;

procedure TfCadOperacaoFiscal.gFormulasDblClick(Sender: TObject);
begin
     bEditFormula.Click;
end;

end.

