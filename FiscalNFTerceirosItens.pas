unit FiscalNFTerceirosItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniCheckBox, uniDBCheckBox, 
  uniDateTimePicker, uniDBDateTimePicker, uniButton, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniEdit, uniPanel, uniGUIBaseClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniSpeedButton, uniBitBtn, uniBasicGrid, uniDBGrid;

type
  TfFiscalNFTerceirosItens = class(TUniFrame)
    Painel: TUniContainerPanel;
    Ficha: TUniPanel;
    UniPanel11: TUniPanel;
    cCIAP_AliquotaICMS: TUniDBFormattedNumberEdit;
    cCIAP_BCICMS: TUniDBFormattedNumberEdit;
    cCIAP_ValorICMS: TUniDBFormattedNumberEdit;
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
    cCFOP: TUniDBLookupComboBox;
    cProcesso_Imp: TUniDBLookupComboBox;
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
    dsItensNF: TDataSource;
    cValor_UnitarioOrig: TUniDBFormattedNumberEdit;
    cValor_Total: TUniDBFormattedNumberEdit;
    bDetalhe: TUniBitBtn;
    bSerial: TUniBitBtn;
    cValor_Inventario: TUniDBFormattedNumberEdit;
    cCIAP_TipoItem: TUniDBFormattedNumberEdit;
    cConsumo_Energia: TUniDBFormattedNumberEdit;
    Produtos: TFDQuery;
    dsProdutos: TDataSource;
    CFOP: TFDQuery;
    dsCFOP: TDataSource;
    ProcessoImp: TFDQuery;
    dsProcessoImp: TDataSource;
    ProcessoExp: TFDQuery;
    dsProcessoExp: TDataSource;
    cProcesso_Exp: TUniDBLookupComboBox;
    NCM: TFDQuery;
    dsNCM: TDataSource;
    ItensNF: TFDQuery;
    ItensNFEmpresa: TStringField;
    ItensNFNota: TIntegerField;
    ItensNFChave: TStringField;
    ItensNFData_Emissao: TDateField;
    ItensNFData_ES: TDateField;
    ItensNFES: TSmallintField;
    ItensNFEmissao: TStringField;
    ItensNFDestinatario: TSmallintField;
    ItensNFOperacao: TSmallintField;
    ItensNFItem: TSmallintField;
    ItensNFCodigo_Mercadoria: TIntegerField;
    ItensNFCodigo_Fabricante: TStringField;
    ItensNFDescricao_Mercadoria: TMemoField;
    ItensNFNCM: TStringField;
    ItensNFEXTIPI: TSmallintField;
    ItensNFUM: TStringField;
    ItensNFQuantidade: TBCDField;
    ItensNFCSTICMS_TabA: TStringField;
    ItensNFCSTICMS_TabB: TStringField;
    ItensNFCSTIPI: TStringField;
    ItensNFCSTPIS: TStringField;
    ItensNFCSTCOFINS: TStringField;
    ItensNFCSTCBS: TStringField;
    ItensNFCSTIBS: TStringField;
    ItensNFAdicao: TSmallintField;
    ItensNFPeso_Liquido: TBCDField;
    ItensNFPeso_Bruto: TBCDField;
    ItensNFVeiculo: TBooleanField;
    ItensNFMovimenta_Inventario: TBooleanField;
    ItensNFMovimenta_Estoque: TBooleanField;
    ItensNFMovimenta_EstoqueRep: TBooleanField;
    ItensNFDevolucao: TBooleanField;
    ItensNFICMSST_Anterior: TBooleanField;
    ItensNFApuracao_PISCOFINS: TBooleanField;
    ItensNFCancelada: TBooleanField;
    ItensNFDenegada: TBooleanField;
    ItensNFModalidade_BCICMS: TSmallintField;
    ItensNFModalidade_BCICMSST: TSmallintField;
    ItensNFDeclaracao: TStringField;
    ItensNFItem_Declaracao: TSmallintField;
    ItensNFProcesso_Imp: TStringField;
    ItensNFProcesso_Exp: TStringField;
    ItensNFFinalidade_Mercadoria: TSmallintField;
    ItensNFQuantidade_Original: TBCDField;
    ItensNFUnidade_Original: TStringField;
    ItensNFReducao_ICMSST: TBCDField;
    ItensNFNota_Referencia: TStringField;
    ItensNFData_Referencia: TSQLTimeStampField;
    ItensNFNumero_Referencia: TIntegerField;
    ItensNFCEST: TStringField;
    ItensNFCFOP: TStringField;
    ItensNFPO: TStringField;
    ItensNFOrdem: TIntegerField;
    ItensNFBeneficio_Fiscal: TStringField;
    ItensNFBL: TStringField;
    ItensNFEmbarque: TIntegerField;
    ItensNFPercentual_Beneficio: TBCDField;
    ItensNFPercentual_ICMSMono: TBCDField;
    ItensNFPercentual_ICMSMonoRet: TBCDField;
    ItensNFFator_Produto: TBCDField;
    ItensNFValor_Unitario: TBCDField;
    ItensNFValor_UnitarioOrig: TBCDField;
    ItensNFValor_Total: TBCDField;
    ItensNFAliquota_IPI: TBCDField;
    ItensNFValor_IPI: TBCDField;
    ItensNFTotal_IPI: TBCDField;
    ItensNFAliquota_II: TBCDField;
    ItensNFValor_II: TBCDField;
    ItensNFValor_BCICMSOp: TBCDField;
    ItensNFAliquota_ICMSOp: TBCDField;
    ItensNFValor_ICMSOp: TBCDField;
    ItensNFValor_BCICMSST: TBCDField;
    ItensNFAliquota_ICMSST: TBCDField;
    ItensNFValor_ICMSST: TBCDField;
    ItensNFAliquota_MVA: TBCDField;
    ItensNFValor_MVA: TBCDField;
    ItensNFAliquota_ICMSReducao: TBCDField;
    ItensNFValor_ICMSReducao: TBCDField;
    ItensNFValor_Seguro: TBCDField;
    ItensNFValor_Frete: TBCDField;
    ItensNFValor_Despesa: TBCDField;
    ItensNFAliquota_PIS: TBCDField;
    ItensNFValor_PIS: TBCDField;
    ItensNFAliquota_COFINS: TBCDField;
    ItensNFValor_COFINS: TBCDField;
    ItensNFValor_IsentasICMS: TBCDField;
    ItensNFValor_OutrasICMS: TBCDField;
    ItensNFValor_IsentasIPI: TBCDField;
    ItensNFValor_OutrasIPI: TBCDField;
    ItensNFLucro: TBCDField;
    ItensNFLucro_Valor: TBCDField;
    ItensNFValor_BCIPI: TBCDField;
    ItensNFRateio_ICMSProcesso: TBCDField;
    ItensNFDesconto: TBCDField;
    ItensNFValor_Desconto: TBCDField;
    ItensNFAliquota_PISRed: TBCDField;
    ItensNFAliquota_COFINSRed: TBCDField;
    ItensNFAliquota_ICMSIntegral: TBCDField;
    ItensNFValor_BCMVA: TBCDField;
    ItensNFValor_Dumping: TBCDField;
    ItensNFTotal_Item: TBCDField;
    ItensNFRateio_SISCOMEX: TBCDField;
    ItensNFValor_BCICMSOperApuracao: TBCDField;
    ItensNFValor_ICMSOperApuracao: TBCDField;
    ItensNFMedia_BCR: TBCDField;
    ItensNFValor_PIS2: TBCDField;
    ItensNFValor_COFINS2: TBCDField;
    ItensNFValor_DespesasOutros: TBCDField;
    ItensNFValor_BCPIS: TBCDField;
    ItensNFTotal_Impostos: TBCDField;
    ItensNFAliquota_IRPJ: TBCDField;
    ItensNFValor_IRPJ: TBCDField;
    ItensNFAliquota_CSLL: TBCDField;
    ItensNFValor_CSLL: TBCDField;
    ItensNFComissao: TBCDField;
    ItensNFComissao_Valor: TBCDField;
    ItensNFValor_Inventario: TBCDField;
    ItensNFValor_BCICMSDest: TBCDField;
    ItensNFAliquota_ICMSDest: TBCDField;
    ItensNFValor_ICMSDest: TBCDField;
    ItensNFDIFAL_Valor: TBCDField;
    ItensNFDIFAL_PercOrig: TBCDField;
    ItensNFDIFAL_ValorOrig: TBCDField;
    ItensNFDIFAL_PercDest: TBCDField;
    ItensNFDIFAL_ValorDest: TBCDField;
    ItensNFFCP_Aliquota: TBCDField;
    ItensNFFCP_ValorDest: TBCDField;
    ItensNFFCP_ICMSOrig: TBCDField;
    ItensNFFCP_ICMSDest: TBCDField;
    ItensNFValor_BCFCPST: TBCDField;
    ItensNFValor_FCPST: TBCDField;
    ItensNFValor_BCFCP: TBCDField;
    ItensNFValor_FCP: TBCDField;
    ItensNFValor_ICMSDesonerado: TBCDField;
    ItensNFValor_ICMSSubAnt: TBCDField;
    ItensNFAliquota_ICMSSubAnt: TBCDField;
    ItensNFValor_ICMSAnt: TBCDField;
    ItensNFValor_CIF: TBCDField;
    ItensNFFator_Cambio: TBCDField;
    ItensNFAliquota_ICMSEntrada: TBCDField;
    ItensNFValor_Pauta: TBCDField;
    ItensNFValor_AFRMM: TBCDField;
    ItensNFRateio_FreteTerrNac: TBCDField;
    ItensNFValor_BCII: TBCDField;
    ItensNFAliquota_ICMSDif: TBCDField;
    ItensNFAliquota_ICMSPresumido: TBCDField;
    ItensNFAliquota_ICMSReducao2: TBCDField;
    ItensNFCodigo_CredPres: TStringField;
    ItensNFDIFAL_ValorST: TBCDField;
    ItensNFValor_BCDIFAL: TBCDField;
    ItensNFValor_BCDIFALST: TBCDField;
    ItensNFValor_BCICMSMono: TBCDField;
    ItensNFValor_BCICMSMonoRet: TBCDField;
    ItensNFValor_BCICMSPresumido: TBCDField;
    ItensNFValor_COFINSST: TBCDField;
    ItensNFValor_ICMSDif: TBCDField;
    ItensNFValor_ICMSMono: TBCDField;
    ItensNFValor_ICMSMonoRet: TBCDField;
    ItensNFValor_ICMSPresumido: TBCDField;
    ItensNFValor_PISST: TBCDField;
    ItensNFValor_BCIBS: TBCDField;
    ItensNFAliquota_IBS: TBCDField;
    ItensNFValor_IBS: TBCDField;
    ItensNFValor_BCCBS: TBCDField;
    ItensNFAliquota_CBS: TBCDField;
    ItensNFValor_CBS: TBCDField;
    ItensNFValor_BCIS: TBCDField;
    ItensNFAliquota_IS: TBCDField;
    ItensNFValor_IS: TBCDField;
    ItensNFConsumo_Energia: TBCDField;
    ItensNFCIAP_BCICMS: TBCDField;
    ItensNFCIAP_AliquotaICMS: TBCDField;
    ItensNFCIAP_ValorICMS: TBCDField;
    ItensNFCIAP_Parcela: TBCDField;
    ItensNFValor_ICMSOpOrig: TBCDField;
    ItensNFValor_ICMSSTOrig: TBCDField;
    ItensNFValor_PISOrig: TBCDField;
    ItensNFValor_COFINSOrig: TBCDField;
    ItensNFValor_IPIOrig: TBCDField;
    ItensNFValor_BCCOFINS: TBCDField;
    ItensNFValor_TotalNota: TFMTBCDField;
    ItensNFAliquota_PISOrig: TBCDField;
    ItensNFAliquota_COFINSOrig: TBCDField;
    ItensNFValor_BCICMSSTOrig: TBCDField;
    ItensNFTrava_ValorInv: TBCDField;
    ItensNFCIAP_TipoItem: TSmallintField;
    ItensNFInventario_Terceiros: TBooleanField;
    ItensNFItem_Referencia: TSmallintField;
    ItensNFComplementar: TBooleanField;
    cProduto: TUniDBLookupComboBox;
    ItensNFNota_id: TIntegerField;
    procedure UniFrameCreate(Sender: TObject);
    procedure cProcesso_ImpExit(Sender: TObject);
    procedure cProcesso_ExpExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(aOwner: TComponent); reintroduce;
  end;

implementation

{$R *.dfm}

uses ServerModule;

procedure TfFiscalNFTerceirosItens.cProcesso_ExpExit(Sender: TObject);
begin
     cProcesso_Imp.Enabled := cProcesso_Exp.Text = '';
end;

procedure TfFiscalNFTerceirosItens.cProcesso_ImpExit(Sender: TObject);
begin
     cProcesso_Exp.Enabled := cProcesso_Imp.Text = '';
end;

constructor TfFiscalNFTerceirosItens.Create(aOwner: TComponent);
begin
    inherited Create(aOwner);
end;

procedure TfFiscalNFTerceirosItens.UniFrameCreate(Sender: TObject);
var
   lArq: string;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     Ficha.Top   := 30;
     Ficha.Left  := (Painel.width - Ficha.width) div 2;
     Ficha.Color := clNone;

     lArq := UniServerModule.FilesFolder +'images\icones\DetalheProduto.bmp';
     if FileExists(lArq) then bDetalhe.Glyph.LoadFromFile(lArq);
     lArq := UniServerModule.FilesFolder +'images\icones\SerialProduto.bmp';
     if FileExists(lArq) then bSerial.Glyph.LoadFromFile(lArq);

     with Produtos do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Codigo_Fabricante');
          sql.add('      ,NCM');
          sql.add('      ,Descricao');
          sql.add('      ,Descricao_Reduzida');
          sql.add('      ,UM');
          sql.add('from Produtos');
          sql.add('where Desativado <> 1');
          sql.add('order by Codigo');
          open;
     end;
     with CFOP do begin
          sql.Clear;
          sql.Add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CFOP');
          sql.add('where Desativada <> 1');
          sql.add('and ES = 0');
          sql.add('and Servico <> 1');
          sql.add('order by Descricao');
          open;
     end;
     with ProcessoImp do begin
          sql.Clear;
          sql.Add('select Processo');
          sql.add('      ,DUIMP');
          sql.add('from ProcessosImp');
          sql.add('where Desativado <> 1');
          sql.add('order by Processo');
          open;
     end;
     with ProcessoExp do begin
          sql.Clear;
          sql.Add('select Processo');
          sql.add('      ,DUE');
          sql.add('from ProcessosExp');
          sql.add('where Desativado <> 1');
          sql.add('order by Processo');
          open;
     end;

     cProcesso_Imp.Enabled := cProcesso_Exp.Text = '';
     cProcesso_Exp.Enabled := cProcesso_Imp.Text = '';
     cProduto.SetFocus;
end;



end.
