unit FiscalNFTerceirosItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniCheckBox, uniDBCheckBox, 
  uniDateTimePicker, uniDBDateTimePicker, uniButton, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniEdit, uniPanel, uniGUIBaseClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniSpeedButton, uniBitBtn;

type
  TfFiscalNFTerceirosItens = class(TUniFrame)
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
    cCSTCBS: TUniDBLookupComboBox;
    cTotalCBS: TUniFormattedNumberEdit;
    cValor_CBS: TUniDBFormattedNumberEdit;
    cValor_BCCBS: TUniDBFormattedNumberEdit;
    cAliquota_CBS: TUniDBFormattedNumberEdit;
    cCSTIBS: TUniDBLookupComboBox;
    cTotalIBS: TUniFormattedNumberEdit;
    cValor_IBS: TUniDBFormattedNumberEdit;
    cValor_BCIBS: TUniDBFormattedNumberEdit;
    cAliquota_IBS: TUniDBFormattedNumberEdit;
    UniPanel13: TUniPanel;
    cQtde: TUniDBFormattedNumberEdit;
    cValor_Desconto: TUniDBFormattedNumberEdit;
    cProduto: TUniDBLookupComboBox;
    cCFOP: TUniDBLookupComboBox;
    cProcesso: TUniDBLookupComboBox;
    cValor_Unitario: TUniDBFormattedNumberEdit;
    cNCM: TUniDBEdit;
    cPeso_Liquido: TUniDBFormattedNumberEdit;
    cPeso_Bruto: TUniDBFormattedNumberEdit;
    UniPanel5: TUniPanel;
    cValor_BCICMSOp: TUniDBFormattedNumberEdit;
    cValor_ICMS: TUniDBFormattedNumberEdit;
    cTotalICMSOp: TUniFormattedNumberEdit;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    cCSTICMS: TUniDBLookupComboBox;
    cAliquota_ICMSOp: TUniDBFormattedNumberEdit;
    cValor_ICMSST: TUniDBFormattedNumberEdit;
    cTotalICMSST: TUniFormattedNumberEdit;
    cValor_BCICMSST: TUniDBFormattedNumberEdit;
    cAliquota_ICMSST: TUniDBFormattedNumberEdit;
    cAliquota_MVA: TUniDBFormattedNumberEdit;
    cValor_BCMVA: TUniDBFormattedNumberEdit;
    cValor_MVA: TUniDBFormattedNumberEdit;
    cTotalMVA: TUniFormattedNumberEdit;
    cValor_OutrasICMS: TUniDBFormattedNumberEdit;
    cValor_IsentasICMS: TUniDBFormattedNumberEdit;
    cTotalOutrasICMS: TUniFormattedNumberEdit;
    cTotalIsentasICMS: TUniFormattedNumberEdit;
    UniPanel6: TUniPanel;
    cValor_BCPIS: TUniDBFormattedNumberEdit;
    cTotalPIS: TUniFormattedNumberEdit;
    cValor_PIS: TUniDBFormattedNumberEdit;
    cAliquota_PIS: TUniDBFormattedNumberEdit;
    cCSTPIS: TUniDBLookupComboBox;
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
    UniPanel9: TUniPanel;
    cValor_BCCOFINS: TUniDBFormattedNumberEdit;
    cTotalCOFINS: TUniFormattedNumberEdit;
    cValor_COFINS: TUniDBFormattedNumberEdit;
    cAliquota_COFINS: TUniDBFormattedNumberEdit;
    cCSTCOFINS: TUniDBLookupComboBox;
    UniContainerPanel2: TUniContainerPanel;
    cEmbarque: TUniDBLookupComboBox;
    Itens: TFDQuery;
    ItensEmpresa: TStringField;
    ItensNota: TIntegerField;
    ItensData_Emissao: TDateField;
    ItensDestinatario: TSmallintField;
    ItensES: TSmallintField;
    ItensEmissao: TStringField;
    ItensItem: TSmallintField;
    ItensCodigo_Mercadoria: TIntegerField;
    ItensCodigo_Fabricante: TStringField;
    ItensDescricao_Mercadoria: TMemoField;
    ItensNCM: TStringField;
    ItensEXTIPI: TSmallintField;
    ItensUnidade_Medida: TStringField;
    ItensQuantidade: TBCDField;
    ItensCSTICMS_TabA: TStringField;
    ItensCSTICMS_TabB: TStringField;
    ItensCSTIPI: TStringField;
    ItensCSTPIS: TStringField;
    ItensCSTCOFINS: TStringField;
    ItensAdicao: TSmallintField;
    ItensPeso_Liquido: TBCDField;
    ItensPeso_Bruto: TBCDField;
    ItensVeiculo: TBooleanField;
    ItensMovimenta_Inventario: TBooleanField;
    ItensMovimenta_Estoque: TBooleanField;
    ItensDevolucao: TBooleanField;
    ItensICMSST_Anterior: TBooleanField;
    ItensApuracao_PISCOFINS: TBooleanField;
    ItensMovimenta_EstoqueRep: TBooleanField;
    ItensCancelada: TBooleanField;
    ItensDenegada: TBooleanField;
    ItensModalidade_BCICMS: TSmallintField;
    ItensModalidade_BCICMSST: TSmallintField;
    ItensProcesso: TStringField;
    ItensFinalidade_Mercadoria: TSmallintField;
    ItensQuantidade_Original: TBCDField;
    ItensUnidade_Original: TStringField;
    ItensReducao_ICMSST: TBCDField;
    ItensNota_Referencia: TStringField;
    ItensData_Referencia: TSQLTimeStampField;
    ItensNumero_Referencia: TIntegerField;
    ItensCEST: TStringField;
    ItensPO: TStringField;
    ItensOrdem: TIntegerField;
    ItensChave: TStringField;
    ItensBeneficio_Fiscal: TStringField;
    ItensBL: TStringField;
    ItensEmbarque: TIntegerField;
    ItensPercentual_Beneficio: TBCDField;
    ItensPercentual_ICMSMono: TBCDField;
    ItensPercentual_ICMSMonoRet: TBCDField;
    ItensFator_Produto: TBCDField;
    ItensValor_Unitario: TBCDField;
    ItensValor_Total: TBCDField;
    ItensAliquota_IPI: TBCDField;
    ItensValor_IPI: TBCDField;
    ItensTotal_IPI: TBCDField;
    ItensAliquota_II: TBCDField;
    ItensValor_II: TBCDField;
    ItensValor_BCICMSOp: TBCDField;
    ItensAliquota_ICMSOp: TBCDField;
    ItensValor_ICMSOp: TBCDField;
    ItensValor_BCICMSST: TBCDField;
    ItensAliquota_ICMSST: TBCDField;
    ItensValor_ICMSST: TBCDField;
    ItensAliquota_MVA: TBCDField;
    ItensValor_MVA: TBCDField;
    ItensAliquota_ICMSReducao: TBCDField;
    ItensValor_ICMSReducao: TBCDField;
    ItensValor_Seguro: TBCDField;
    ItensValor_Frete: TBCDField;
    ItensValor_Despesa: TBCDField;
    ItensAliquota_PIS: TBCDField;
    ItensValor_PIS: TBCDField;
    ItensAliquota_COFINS: TBCDField;
    ItensValor_COFINS: TBCDField;
    ItensValor_IsentasICMS: TBCDField;
    ItensValor_OutrasICMS: TBCDField;
    ItensValor_IsentasIPI: TBCDField;
    ItensValor_OutrasIPI: TBCDField;
    ItensLucro: TBCDField;
    ItensLucro_Valor: TBCDField;
    ItensValor_BCIPI: TBCDField;
    ItensRateio_ICMSProcesso: TBCDField;
    ItensDesconto: TBCDField;
    ItensAliquota_PISRed: TBCDField;
    ItensAliquota_COFINSRed: TBCDField;
    ItensAliquota_ICMSIntegral: TBCDField;
    ItensValor_BCMVA: TBCDField;
    ItensValor_Dumping: TBCDField;
    ItensTotal_Item: TBCDField;
    ItensRateio_SISCOMEX: TBCDField;
    ItensValor_BCICMSOperApuracao: TBCDField;
    ItensValor_ICMSOperApuracao: TBCDField;
    ItensMedia_BCR: TBCDField;
    ItensValor_PIS2: TBCDField;
    ItensValor_COFINS2: TBCDField;
    ItensValor_DespesasOutros: TBCDField;
    ItensValor_BCPIS: TBCDField;
    ItensTotal_Impostos: TBCDField;
    ItensAliquota_IRPJ: TBCDField;
    ItensValor_IRPJ: TBCDField;
    ItensAliquota_CSLL: TBCDField;
    ItensValor_CSLL: TBCDField;
    ItensComissao: TBCDField;
    ItensComissao_Valor: TBCDField;
    ItensValor_Inventario: TBCDField;
    ItensValor_BCICMSDest: TBCDField;
    ItensAliquota_ICMSDest: TBCDField;
    ItensValor_ICMSDest: TBCDField;
    ItensDIFAL_Valor: TBCDField;
    ItensDIFAL_PercOrig: TBCDField;
    ItensDIFAL_ValorOrig: TBCDField;
    ItensDIFAL_PercDest: TBCDField;
    ItensDIFAL_ValorDest: TBCDField;
    ItensFCP_Aliquota: TBCDField;
    ItensFCP_ValorDest: TBCDField;
    ItensFCP_ICMSOrig: TBCDField;
    ItensFCP_ICMSDest: TBCDField;
    ItensValor_BCFCPST: TBCDField;
    ItensValor_FCPST: TBCDField;
    ItensValor_BCFCP: TBCDField;
    ItensValor_FCP: TBCDField;
    ItensValor_ICMSDesonerado: TBCDField;
    ItensValor_ICMSSubAnt: TBCDField;
    ItensAliquota_ICMSSubAnt: TBCDField;
    ItensValor_ICMSAnt: TBCDField;
    ItensValor_CIF: TBCDField;
    ItensFator_Cambio: TBCDField;
    ItensAliquota_ICMSEntrada: TBCDField;
    ItensValor_Pauta: TBCDField;
    ItensValor_AFRMM: TBCDField;
    ItensRateio_FreteTerrNac: TBCDField;
    ItensValor_BCII: TBCDField;
    ItensAliquota_ICMSDif: TBCDField;
    ItensAliquota_ICMSPresumido: TBCDField;
    ItensAliquota_ICMSReducao2: TBCDField;
    ItensCodigo_CredPres: TStringField;
    ItensDIFAL_ValorST: TBCDField;
    ItensValor_BCDIFAL: TBCDField;
    ItensValor_BCDIFALST: TBCDField;
    ItensValor_BCICMSMono: TBCDField;
    ItensValor_BCICMSMonoRet: TBCDField;
    ItensValor_BCICMSPresumido: TBCDField;
    ItensValor_COFINSST: TBCDField;
    ItensValor_ICMSDif: TBCDField;
    ItensValor_ICMSMono: TBCDField;
    ItensValor_ICMSMonoRet: TBCDField;
    ItensValor_ICMSPresumido: TBCDField;
    ItensValor_PISST: TBCDField;
    ItensValor_BCIBS: TBCDField;
    ItensAliquota_IBS: TBCDField;
    ItensValor_IBS: TBCDField;
    ItensValor_BCCBS: TBCDField;
    ItensAliquota_CBS: TBCDField;
    ItensValor_CBS: TBCDField;
    ItensValor_BCIS: TBCDField;
    ItensAliquota_IS: TBCDField;
    ItensValor_IS: TBCDField;
    ItensConsumo_Energia: TBCDField;
    ItensCIAP_BCICMS: TBCDField;
    ItensCIAP_AliquotaICMS: TBCDField;
    ItensCIAP_ValorICMS: TBCDField;
    ItensCIAP_Parcela: TBCDField;
    ItensValor_ICMSOpOrig: TBCDField;
    ItensValor_ICMSSTOrig: TBCDField;
    ItensValor_PISOrig: TBCDField;
    ItensValor_COFINSOrig: TBCDField;
    ItensValor_IPIOrig: TBCDField;
    ItensValor_BCCOFINS: TBCDField;
    ItensAliquota_PISOrig: TBCDField;
    ItensAliquota_COFINSOrig: TBCDField;
    ItensValor_BCICMSSTOrig: TBCDField;
    ItensTrava_ValorInv: TBCDField;
    ItensValor_UnitarioOrig: TBCDField;
    ItensCIAP_TipoItem: TSmallintField;
    ItensInventario_Terceiros: TBooleanField;
    ItensItem_Referencia: TSmallintField;
    ItensOperacao: TSmallintField;
    ItensCFOP: TStringField;
    ItensEstoque_Minimo: TBCDField;
    ItensData_ES: TDateField;
    ItensDeclaracao: TStringField;
    ItensItem_Declaracao: TSmallintField;
    dsItens: TDataSource;
    ItensComplementar: TBooleanField;
    ItensCSTCBS: TStringField;
    ItensCSTIBS: TStringField;
    ItensValor_Desconto: TBCDField;
    ItensValor_TotalNota: TFMTBCDField;
    cValor_UnitarioOrig: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    bDetalhe: TUniBitBtn;
    bSerial: TUniBitBtn;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
    mOper: string;
    mNota
   ,mForn
   ,mItem: integer;
   mData: TDate;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pNota, pforn, pItem: integer; pData: TDate; pOper: string); reintroduce;
  end;

implementation

{$R *.dfm}

uses ServerModule;

constructor TfFiscalNFTerceirosItens.Create(aOwner: TComponent; pNota, pForn, pItem: integer; pData: TDate; pOper: string);
begin
    inherited Create(AOwner);
    mNota := pNota;
    mForn := pForn;
    mItem := pItem;
    mData := pData;
    mOper := pOper;
end;

procedure TfFiscalNFTerceirosItens.UniFrameCreate(Sender: TObject);
var
   lArq: string;
begin
     lArq := UniServerModule.FilesFolder +'images\icones\DetalheProduto.bmp';
     if FileExists(lArq) then bDetalhe.Glyph.LoadFromFile(lArq);
     lArq := UniServerModule.FilesFolder +'images\icones\SerialProduto.bmp';
     if FileExists(lArq) then bSerial.Glyph.LoadFromFile(lArq);

     with Itens do begin
          sql.Clear;
          sql.Add('select *');
          sql.add('      ,Estoque_Minimo = isnull((select Estoque_MinimoPerc from Produtos where Codigo = Codigo_Mercadoria), 0)');
          sql.add('from NotasItens');
          sql.add('order by Empresa, Chave');
          open;
     end;
     if mOper = 'Adicionar' then begin
        Itens.append; 
     end else begin
        Itens.edit;
     end;
end;



end.
