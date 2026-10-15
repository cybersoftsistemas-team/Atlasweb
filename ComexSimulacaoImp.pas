unit ComexSimulacaoImp;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Client, Math, System.Variants, Vcl.Dialogs, uniGUIClasses, uniGUIBaseClasses, uniGUIFrame, uniPanel,
  uniPageControl, uniDBGrid, uniDBNavigator, uniDBEdit, uniDBMemo, uniDBCheckBox, uniDBComboBox, uniDBDateTimePicker, uniDBLookUpComboBox, uniButton, uniSpeedButton, uniLabel,
  uniGroupBox, uniMemo, uniEdit, uniDateTimePicker, uniCheckBox, uniComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniBitBtn, uniBasicGrid, uniMultiItem, Vcl.Controls, Vcl.Forms, CalcExpress,
  Graphics;

type
  TfComexSimulacaoImp = class(TUniFrame)
    Pasta: TUniPageControl;
    TabSheet1: TUniTabSheet;
    Panel5: TUniPanel;
    Label3: TUniLabel;
    cNumero: TUniDBEdit;
    cFornecedor: TUniDBEdit;
    DBEdit11: TUniDBEdit;
    DBEdit17: TUniDBEdit;
    DBEdit18: TUniDBEdit;
    DBEdit20: TUniDBEdit;
    cTaxaMoeda: TUniDBEdit;
    DBEdit24: TUniDBEdit;
    DBEdit25: TUniDBEdit;
    DBEdit32: TUniDBEdit;
    cDataRegistro_DI: TUniDBDateTimePicker;
    RxDBLookupCombo1: TUniDBLookupComboBox;
    cBeneficio: TUniDBLookupComboBox;
    DBEdit1: TUniDBEdit;
    StaticText40: TUniLabel;
    DBEdit2: TUniDBEdit;
    DBEdit4: TUniDBEdit;
    DBEdit8: TUniDBEdit;
    DBEdit28: TUniDBEdit;
    DBEdit29: TUniDBEdit;
    cVia: TUniDBComboBox;
    cPais_Origem: TUniDBLookupComboBox;
    cPais_Destino: TUniDBLookupComboBox;
    cCidade_Origem: TUniDBEdit;
    cCidade_Destino: TUniDBEdit;
    DBEdit36: TUniDBEdit;
    RxDBLookupCombo5: TUniDBLookupComboBox;
    DBEdit37: TUniDBEdit;
    DBComboBox1: TUniDBComboBox;
    cOperacao_Entrada: TUniDBLookupComboBox;
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
    cINCOTERM: TUniDBLookupComboBox;
    cProcesso: TUniDBEdit;
    cTipo_Produto: TUniDBEdit;
    DBEdit22: TUniDBEdit;
    cOperacao_Saida: TUniDBLookupComboBox;
    StaticText60: TUniLabel;
    DBEdit40: TUniDBEdit;
    DBEdit41: TUniDBEdit;
    StaticText61: TUniLabel;
    cModalidade: TUniDBLookupComboBox;
    cProduto_Destinado: TUniDBEdit;
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
    DBEdit54: TUniDBEdit;
    RxDBLookupCombo6: TUniDBLookupComboBox;
    DBEdit21: TUniDBEdit;
    cSeguro: TUniDBEdit;
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
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    ClassificacaoFinanceira: TFDQuery;
    dsClassificacaoFinanceira: TDataSource;
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
    SimulaImp: TFDQuery;
    dsSimulaImp: TDataSource;
    SimulaProdutos: TFDQuery;
    dsSimulaProdutos: TDataSource;
    SimulaDespesas: TFDQuery;
    dsSimulaDespesas: TDataSource;
    TiposProcesso: TFDQuery;
    dsTiposProcesso: TDataSource;
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
    mMacro: TCalcExpress;
    pBarraNav: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    bAdicionar_: TUniSpeedButton;
    bEditar_: TUniSpeedButton;
    bExcluir_: TUniSpeedButton;
    bCancelar_: TUniSpeedButton;
    bSalvar_: TUniSpeedButton;
    bFechar_: TUniSpeedButton;
    Panel1: TUniPanel;
    bCalcular: TUniSpeedButton;
    bImprimir: TUniButton;
    Navega: TUniDBNavigator;
    bExcel: TUniButton;
    bDuplicar: TUniButton;
    bImpHor: TUniButton;
    Modalidades: TFDQuery;
    dsModalidades: TDataSource;
    dsOperSair: TDataSource;
    OperSai: TFDQuery;
    SimulaImpRegistro: TFDAutoIncField;
    SimulaImpEmpresa: TStringField;
    SimulaImpNumero: TIntegerField;
    SimulaImpData: TDateField;
    SimulaImpModalidade: TSmallintField;
    SimulaImpFornecedor: TStringField;
    SimulaImpBeneficio: TSmallintField;
    SimulaImpPeso_Bruto: TFMTBCDField;
    SimulaImpFOB: TFMTBCDField;
    SimulaImpValor_II: TFMTBCDField;
    SimulaImpValor_IPI: TFMTBCDField;
    SimulaImpModalidade_Frete: TStringField;
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
    SimulaImpTipo_Container: TStringField;
    SimulaImpMoeda_Frete: TStringField;
    SimulaImpTaxa_Frete: TFMTBCDField;
    SimulaImpMoeda_Seguro: TStringField;
    SimulaImpTaxa_Seguro: TFMTBCDField;
    SimulaImpTaxa_FOB: TFMTBCDField;
    SimulaImpMoeda_FOB: TStringField;
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
    SimulaImpPais_OrigemNome: TStringField;
    SimulaImpPais_DestinoNome: TStringField;
    SimulaImpModal_Nome: TStringField;
    SimulaImpBeneficio_Nome: TStringField;
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
    procedure CarregarDados;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bFechar_Click(Sender: TObject);
  public
    mUnitario, mTotal, mBCPIS, mValor, mValorTotal, mPeso, mII,
    mFatorPIS, mFatorCOFINS, mFatorDespesa, mFatorSeguro, mFator,
    mFatorFrete: Real;
  end;

implementation

uses MainModule, Funcoes, Main;

{$R *.dfm}

procedure TfComexSimulacaoImp.UniFrameCreate(Sender: TObject);
var
  i: Integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to pred(ComponentCount) do begin
         if (Components[i] is TUniPanel) then begin
            if TuniPanel(Components[i]).Tag <> 1 then begin 
               TuniPanel(Components[i]).Top   := 30;
               TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
               TuniPanel(Components[i]).Color := clNone
            end;
         end;
     end;
     Pasta.ActivePageIndex := 0;

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
          sql.add('select CNPJ, Razao_Social, Estado from Empresas where CNPJ = '+quotedstr(uniMainModule.mEmpresaAtiva));
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
          sql.add('order by Numero');
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

     {
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
     with Estados do begin
          SQL.Clear;
          SQL.Add('select * from Estados order by Codigo');
          Open;
     end;
     with Campos do begin
          SQL.Clear;
          //SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(SimulaImportacao.FieldByName('Tipo_Nota').AsInteger, 0)+') ORDER BY Tabela');
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
           Value := (SimulaProdutos.FieldByName('Quantidade').AsFloat * SimulaProdutos.FieldByName('Valor_ICMSSaida').AsCurrency);
      end;
end;

procedure TfComexSimulacaoImp.lIPISaiCalc(Sender: TObject; var Value: Variant);
begin
      begin
           Value := (SimulaProdutos.FieldByName('Quantidade').AsFloat * SimulaProdutos.FieldByName('Valor_IpiSai').AsCurrency);
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
      with Dados, SimulaProdutos do begin
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
}      
end;

procedure TfComexSimulacaoImp.Ambos1Click(Sender: TObject);
begin
      with SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value       := true;
                SimulaDespesasCusto_Saida.Value := true;
           Post;
           SomaDespesas;
      end;
end;

procedure TfComexSimulacaoImp.bRemoveTudoClick(Sender: TObject);
begin
{
      if SimulaDespesas.RecordCount > 0 then begin
         if MessageDlg('Remover todas as despesas desta simulação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            begin
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
}      
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

procedure TfComexSimulacaoImp.cDespesaKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      PegaValor;
end;

procedure TfComexSimulacaoImp.PegaValor;
begin
{
      with Dados, tDespesa do begin
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
     with Dados, dmFiscal do begin
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
     end;
     }
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
}      
end;

procedure TfComexSimulacaoImp.cNumeroChange(Sender: TObject);
begin
{
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
}
end;

procedure TfComexSimulacaoImp.SomaDespesas;
begin
      // Totaliza as despesas.
      begin
           with tSomaDespesas do begin
                sql.Clear;
                SQL.Add('select Despesas_Entrada = sum(case when Custo       = 1 then Valor else 0 end)');
                SQL.Add('      ,Despesas_Saida   = sum(case when Custo_Saida = 1 then Valor else 0 end)');
                SQL.Add('from   SimulaDespesas');
                SQL.Add('where  Simulacao = :pSimul');
                ParamByName('pSimul').AsInteger := SimulaImpNumero.AsInteger;
                Open;
                cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
                cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
           end;
      end;
end;

procedure TfComexSimulacaoImp.cUnitarioExit(Sender: TObject);
begin
     cUnitarioReal.Value := SimulaProdutosValor_UnitarioME.AsFloat * SimulaImpTaxa_FOB.AsFloat;
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
     begin
          cDespNac.Value := SimulaDespesas.FieldByName('Valor').ascurrency;
          cValorME.Value := SimulaDespesas.FieldByName('Valor_ME').ascurrency;
          cTaxa.Value    := SimulaDespesas.FieldByName('Taxa').asfloat;
     end;
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

procedure TfComexSimulacaoImp.cProdutoChange(Sender: TObject);
begin
     begin
          cUnitarioReal.Value := SimulaProdutosValor_UnitarioME.AsFloat * SimulaImpTaxa_FOB.AsFloat;
     End;
end;

procedure TfComexSimulacaoImp.CalculaEntrada;
var
   mUnitImp
  ,mSeguro
  ,mTotalFOB: Real;
begin
     // Calcula todos os impostos dos itens.
     {
     with SimulaProdutos do begin
          TipoNota.locate('Codigo', SimulaImpTipo_Nota.asinteger, [loCaseInsensitive]);

          with Dados, tSomaDespesas do begin
               sql.Clear;
               SQL.Add('select Despesas_Entrada = isnull(sum(case when Custo       = 1 then Valor end), 0)');
               SQL.Add('      ,Despesas_Saida   = isnull(sum(case when Custo_Saida = 1 then Valor end), 0)');
               SQL.Add('from   SimulaDespesas');
               SQL.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImpNumero.AsInteger;
               Open;
               cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
               cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
          end;
          with Dados, tProdutos do begin
               sql.Clear;
               SQL.Add('select FOB = isnull(sum(Valor_UnitarioME*Quantidade), 0)');
               SQL.Add('from   SimulaProdutos');
               SQL.Add('where  Simulacao = :pSimul');
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
               SQL.Add('select * from SimulaImp where Numero = :pNumero');
               parambyname('pNumero').AsInteger := SimulaImp.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               Connection := Banco_Empresas;
               sql.clear;
               SQL.Add('select * from SimulaImp where Numero = (select isnull(max(numero), 0)+1 from SimulaImp)');
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
               SQL.Add('select * from SimulaProdutos where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := SimulaImp.FieldByName('Numero').AsInteger;
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
               SQL.Add('select * from SimulaDespesas where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := SimulaImp.FieldByName('Numero').AsInteger;
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

          SimulaImp.Refresh;
          SimulaImp.Locate('Numero', mSimula, [loCaseInsensitive]);
     end;
     tOrig.Free;
     tDest.Free;
}     
end;

procedure TfComexSimulacaoImp.bDuplicarItemClick(Sender: TObject);
var
   mInput:string;
   mQtde, i, q, mItem:integer;
   tDest, tOrig: TFDQuery;
begin
     mQtde := 0;
     {
     begin
          if InputQuery('Quantidade','Informe a quantidade de cópias', mInput) then begin
             try
                mQtde := strtoint(mInput);
             except
                MessageDlg('Quantidade invalída.'+#13+#13+'Informe apenas números inteiros.', mtError, [mbok], 0);
                Abort;
             end;
          end else begin
             Abort;
          end;
          if mQtde < 1 then begin
             MessageDlg('Quantidade miníma permitida de cópias é 1.', mtInformation, [mbok], 0);
             Abort;
          end;
          if mQtde > 100 then begin
             MessageDlg('Quantidade maxíma permitida de cópias é 100.', mtInformation, [mbok], 0);
             Abort;
          end;
          if  MessageDlg('Deseja realmente duplicar este item?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
              Abort;
          end;
          
          tOrig := TFDQuery.Create(nil);
          with tOrig do begin
               Connection := Banco_Empresas;
               sql.clear;
               SQL.Add('select * from SimulaProdutos where Simulacao = :pSimula and Item = :pItem');
               parambyname('pSimula').AsInteger := SimulaProdutosSimulacao.asinteger;
               parambyname('pItem').AsInteger   := SimulaProdutosItem.asinteger;
               open;
          end;
          
          tDest := TFDQuery.Create(nil);
          with tDest do begin
               Connection := Banco_Empresas;
               sql.clear;
               SQL.Add('select * from SimulaProdutos where Simulacao = :pSimula and Item is null');
               parambyname('pSimula').AsInteger := SimulaProdutosSimulacao.asinteger;
               open;
               tItens.SQL.Clear;
               tItens.SQL.Add('select isnull(max(Item), 0)+1 as Item from SimulaProdutos where Simulacao = :pSimula');
               tItens.ParamByName('pSimula').AsInteger := SimulaImpNumero.AsInteger;
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
          tDest.Free;
          SimulaProdutos.Refresh;
     end;
     }
end;

procedure TfComexSimulacaoImp.bExcelClick(Sender: TObject);
begin
      // ReportBuilder: impressão adiada.
      // Exportacao XLSX pendente: nao usar automacao COM no servidor.
end;

procedure TfComexSimulacaoImp.bFechar_Click(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
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
(*
     with SimulaProdutos do begin
          // Totaliza as despesas.
          TipoNota.locate('Codigo', SimulaImpTipo_NotaSai.asinteger, [loCaseInsensitive]);

          with tSomaDespesas do begin
               sql.Clear;
               sql.Clear;
               SQL.Add('select Despesas_Entrada = sum(case when Custo       = 1 then Valor end)');
               SQL.Add('      ,Despesas_Saida   = sum(case when Custo_Saida = 1 then Valor end)');
               SQL.Add('from   SimulaDespesas');
               SQL.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImpNumero.AsInteger;
               Open;
               cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
               cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
          end;
          with tProdutos do begin
               sql.Clear;
               SQL.Add('select FOB = isnull(sum(Valor_UnitarioME*Quantidade), 0)');
               SQL.Add('from   SimulaProdutos');
               SQL.Add('where  Simulacao = :pSimul');
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
     (*
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
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Valor_SemAdValorem]', formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImpTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Valor_UnitarioReal]', formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImpTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Unitario]'       ,  formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImpTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);
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
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro]'                , formatfloat('##0.00'    , SimulaImp.FieldByName('Taxa_Adiministrativa').asfloat) , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro_Valor]'          , formatfloat('##0.00'    , 0), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSSub]'     , formatfloat('##0.00'    , FieldByName('Aliquota_ICMSST').asfloat)                       , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCICMSSub]'      , formatfloat('##0.000000', FieldByName('BCICMSST').asfloat)                              , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro_Valor]'          , formatfloat('##0.000000', 0)                                                            , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Lucro]'                     , formatfloat('##0.000000', 0)                                                            , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalII]'             , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_II').asCurrency)          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Percentual_Beneficio]' , formatfloat('##0.000000', Beneficios.fieldbyname('Percentual_Beneficio').AsFloat), [rfReplaceAll, rfIgnoreCase]);
                 
                 if TipoNota.FieldByName('Saida_Entrada').asinteger = 0 then begin
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCICMSOper]', formatfloat('##0.000000', FieldByName('Valor_BCICMSEnt').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Total]'     , formatfloat('##0.0000'  , FieldByName('Valor_CIFReal').ascurrency)                                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_PIS]'    , formatfloat('##0.00'    , FieldByName('Aliquota_PIS').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_COFINS]' , formatfloat('##0.00'    , FieldByName('Aliquota_COFINS').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCPIS]'     , formatfloat('##0.000000', FieldByName('Valor_BCPISEnt').asfloat)                                   , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Total_IPI]'       , formatfloat('##0.000000', FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat) , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_ICMSOper]'  , formatfloat('##0.00'    , FieldByName('Valor_ICMSEntrada').asfloat)                                , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_PIS]'            , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_PIS').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_COFINS]'         , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_COFINS').ascurrency)                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalIPI]'       , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_IPI').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_OutrasDespesas]' , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_Despesas').ascurrency)               , [rfReplaceAll, rfIgnoreCase]);
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
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_PIS]'            , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_PISSai').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_COFINS]'         , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_COFINSSai').ascurrency)                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalIPI]'       , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_IPISai').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_OutrasDespesas]' , formatfloat('##0.000000', SimulaImp.FieldByName('Valor_DespesasSai').ascurrency)               , [rfReplaceAll, rfIgnoreCase]);
                 end;

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_PIS]'   , formatfloat('##0.000000', mFatorPIS * FieldByName('Valor_UnitarioME').ascurrency)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_COFINS]', formatfloat('##0.000000', mFatorCOFINS * FieldByName('Valor_UnitarioME').ascurrency), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Produtos_[Reducao_PIS]', '0'                                                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Produtos_[PIS_Nota]'   , formatfloat('##0.00', FieldByName('Aliquota_PIS').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Produtos_[COFINS_Nota]', formatfloat('##0.00', FieldByName('Aliquota_COFINS').asfloat), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalProdutos]'   , formatfloat('##0.000000', SimulaImp.FieldByName('Total_Produtos').ascurrency), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Total_Frete]'           , formatfloat('##0.000000', 0)                                                        , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_Dumping]'         , '0'                                                                                 , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Dumping]'    , '0'                                                                                 , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_MVA]'     , formatfloat('##0.00', FieldByName('Aliquota_MVA').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCMVA]'      , formatfloat('##0.000000', FieldByName('Valor_BCMVA').asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_MVA]'        , formatfloat('##0.000000', FieldByName('Valor_MVA').asfloat)  , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Pedidos_[Total_Descontos]'       , '0'                                                                           , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[ValorICMS_Substitutivo]', formatfloat('##0.00', SimulaImp.FieldByName('Valor_ICMSST').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_ICMS]'            , formatfloat('##0.00', SimulaImp.FieldByName('Valor_ICMSSaida').asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Aliquota_CSLL]'         , formatfloat('##0.00', SimulaImp.FieldByName('Aliquota_CSLL').asfloat)  , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Aliquota_IRPJ]'         , formatfloat('##0.00', SimulaImp.FieldByName('Aliquota_IRPJ').asfloat)  , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Taxa_Cambio]'           , formatfloat('##0.00', SimulaImp.FieldByName('Taxa_FOB').asfloat)       , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_AFRMM]'           , formatfloat('##0.00', SimulaImp.FieldByName('Valor_AFRMM').asfloat)    , [rfReplaceAll, rfIgnoreCase]);

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
*)
     lista.Free;
     listafun.free;
end;





end.
