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
    cProduto: TUniDBLookupComboBox;
    Embarques: TFDQuery;
    dsEmbarques: TDataSource;
    CSTICMSTabA: TFDQuery;
    dsCSTICMSTabA: TDataSource;
    dsCSTICMSTabB: TDataSource;
    CSTICMSTabB: TFDQuery;
    CSTIPI: TFDQuery;
    dsCSTIPI: TDataSource;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    CSTCBS: TFDQuery;
    dsCSTCBS: TDataSource;
    CSTIBS: TFDQuery;
    dsCSTIBS: TDataSource;
    CSTPIS: TFDQuery;
    dsCSTPIS: TDataSource;
    CSTCOFINS: TFDQuery;
    dsCSTCOFINS: TDataSource;
    ItensNFNota_id: TIntegerField;
    ItensNFEmpresa: TStringField;
    ItensNFES: TSmallintField;
    ItensNFItem: TSmallintField;
    ItensNFCodigo_Mercadoria: TIntegerField;
    ItensNFCodigo_Fabricante: TStringField;
    ItensNFDescricao_Mercadoria: TMemoField;
    ItensNFNCM: TStringField;
    ItensNFEXTIPI: TSmallintField;
    ItensNFUM: TStringField;
    ItensNFQuantidade: TFMTBCDField;
    ItensNFCSTICMS_Terceiros: TStringField;
    ItensNFCSTICMS_TabA: TStringField;
    ItensNFCSTICMS_TabB: TStringField;
    ItensNFCSTIPI: TStringField;
    ItensNFCSTPIS: TStringField;
    ItensNFCSTCOFINS: TStringField;
    ItensNFCSTCBS: TStringField;
    ItensNFCSTIBS: TStringField;
    ItensNFAdicao: TSmallintField;
    ItensNFPeso_Liquido: TFMTBCDField;
    ItensNFPeso_Bruto: TFMTBCDField;
    ItensNFVeiculo: TBooleanField;
    ItensNFICMSST_Anterior: TBooleanField;
    ItensNFModalidade_BCICMS: TSmallintField;
    ItensNFModalidade_BCICMSST: TSmallintField;
    ItensNFDeclaracao: TStringField;
    ItensNFProcesso_Imp: TStringField;
    ItensNFProcesso_Exp: TStringField;
    ItensNFReducao_ICMSST: TFMTBCDField;
    ItensNFNota_Referencia: TStringField;
    ItensNFData_Referencia: TSQLTimeStampField;
    ItensNFNumero_Referencia: TIntegerField;
    ItensNFCEST: TStringField;
    ItensNFCFOP: TStringField;
    ItensNFPO: TStringField;
    ItensNFOrdem: TIntegerField;
    ItensNFBL: TStringField;
    ItensNFEmbarque: TIntegerField;
    ItensNFPercentual_Beneficio: TFMTBCDField;
    ItensNFPercentual_ICMSMono: TFMTBCDField;
    ItensNFPercentual_ICMSMonoRet: TFMTBCDField;
    ItensNFFator_Produto: TFMTBCDField;
    ItensNFValor_Unitario: TFMTBCDField;
    ItensNFValor_UnitarioOrig: TFMTBCDField;
    ItensNFValor_Total: TFMTBCDField;
    ItensNFAliquota_IPI: TFMTBCDField;
    ItensNFValor_IPI: TFMTBCDField;
    ItensNFAliquota_II: TFMTBCDField;
    ItensNFValor_II: TFMTBCDField;
    ItensNFValor_BCICMSOp: TFMTBCDField;
    ItensNFAliquota_ICMSOp: TFMTBCDField;
    ItensNFValor_ICMSOp: TFMTBCDField;
    ItensNFValor_BCICMSST: TFMTBCDField;
    ItensNFAliquota_ICMSST: TFMTBCDField;
    ItensNFValor_ICMSST: TFMTBCDField;
    ItensNFAliquota_MVA: TFMTBCDField;
    ItensNFValor_MVA: TFMTBCDField;
    ItensNFAliquota_ICMSReducao: TFMTBCDField;
    ItensNFValor_ICMSReducao: TFMTBCDField;
    ItensNFValor_Seguro: TFMTBCDField;
    ItensNFValor_Frete: TFMTBCDField;
    ItensNFValor_Despesa: TFMTBCDField;
    ItensNFAliquota_PIS: TFMTBCDField;
    ItensNFValor_PIS: TFMTBCDField;
    ItensNFAliquota_COFINS: TFMTBCDField;
    ItensNFValor_COFINS: TFMTBCDField;
    ItensNFValor_IsentasICMS: TFMTBCDField;
    ItensNFValor_OutrasICMS: TFMTBCDField;
    ItensNFValor_IsentasIPI: TFMTBCDField;
    ItensNFValor_OutrasIPI: TFMTBCDField;
    ItensNFLucro: TFMTBCDField;
    ItensNFLucro_Valor: TFMTBCDField;
    ItensNFValor_BCIPI: TFMTBCDField;
    ItensNFRateio_ICMSProcesso: TFMTBCDField;
    ItensNFDesconto: TFMTBCDField;
    ItensNFValor_Desconto: TFMTBCDField;
    ItensNFAliquota_PISRed: TFMTBCDField;
    ItensNFAliquota_COFINSRed: TFMTBCDField;
    ItensNFAliquota_ICMSIntegral: TFMTBCDField;
    ItensNFValor_BCMVA: TFMTBCDField;
    ItensNFValor_Dumping: TFMTBCDField;
    ItensNFTotal_Item: TFMTBCDField;
    ItensNFRateio_SISCOMEX: TFMTBCDField;
    ItensNFValor_BCICMSOperApuracao: TFMTBCDField;
    ItensNFValor_ICMSOperApuracao: TFMTBCDField;
    ItensNFMedia_BCR: TFMTBCDField;
    ItensNFValor_PIS2: TFMTBCDField;
    ItensNFValor_COFINS2: TFMTBCDField;
    ItensNFValor_DespesasOutros: TFMTBCDField;
    ItensNFValor_BCPIS: TFMTBCDField;
    ItensNFTotal_Impostos: TFMTBCDField;
    ItensNFAliquota_IRPJ: TFMTBCDField;
    ItensNFValor_IRPJ: TFMTBCDField;
    ItensNFAliquota_CSLL: TFMTBCDField;
    ItensNFValor_CSLL: TFMTBCDField;
    ItensNFComissao: TFMTBCDField;
    ItensNFComissao_Valor: TFMTBCDField;
    ItensNFValor_Inventario: TFMTBCDField;
    ItensNFValor_BCICMSDest: TFMTBCDField;
    ItensNFAliquota_ICMSDest: TFMTBCDField;
    ItensNFValor_ICMSDest: TFMTBCDField;
    ItensNFDIFAL_Valor: TFMTBCDField;
    ItensNFDIFAL_PercOrig: TFMTBCDField;
    ItensNFDIFAL_ValorOrig: TFMTBCDField;
    ItensNFDIFAL_PercDest: TFMTBCDField;
    ItensNFDIFAL_ValorDest: TFMTBCDField;
    ItensNFFCP_Aliquota: TFMTBCDField;
    ItensNFFCP_ValorDest: TFMTBCDField;
    ItensNFFCP_ICMSOrig: TFMTBCDField;
    ItensNFFCP_ICMSDest: TFMTBCDField;
    ItensNFValor_BCFCPST: TFMTBCDField;
    ItensNFValor_FCPST: TFMTBCDField;
    ItensNFValor_BCFCP: TFMTBCDField;
    ItensNFValor_FCP: TFMTBCDField;
    ItensNFValor_ICMSDesonerado: TFMTBCDField;
    ItensNFValor_ICMSSubAnt: TFMTBCDField;
    ItensNFAliquota_ICMSSubAnt: TFMTBCDField;
    ItensNFValor_ICMSAnt: TFMTBCDField;
    ItensNFValor_CIF: TFMTBCDField;
    ItensNFFator_Cambio: TFMTBCDField;
    ItensNFAliquota_ICMSEntrada: TFMTBCDField;
    ItensNFValor_Pauta: TFMTBCDField;
    ItensNFValor_AFRMM: TFMTBCDField;
    ItensNFRateio_FreteTerrNac: TFMTBCDField;
    ItensNFValor_BCII: TFMTBCDField;
    ItensNFAliquota_ICMSDif: TFMTBCDField;
    ItensNFAliquota_ICMSPresumido: TFMTBCDField;
    ItensNFAliquota_ICMSReducao2: TFMTBCDField;
    ItensNFCodigo_CredPres: TStringField;
    ItensNFDIFAL_ValorST: TFMTBCDField;
    ItensNFValor_BCDIFAL: TFMTBCDField;
    ItensNFValor_BCDIFALST: TFMTBCDField;
    ItensNFValor_BCICMSMono: TFMTBCDField;
    ItensNFValor_BCICMSMonoRet: TFMTBCDField;
    ItensNFValor_BCICMSPresumido: TFMTBCDField;
    ItensNFValor_COFINSST: TFMTBCDField;
    ItensNFValor_ICMSDif: TFMTBCDField;
    ItensNFValor_ICMSMono: TFMTBCDField;
    ItensNFValor_ICMSMonoRet: TFMTBCDField;
    ItensNFValor_ICMSPresumido: TFMTBCDField;
    ItensNFValor_PISST: TFMTBCDField;
    ItensNFValor_BCIBS: TFMTBCDField;
    ItensNFAliquota_IBS: TFMTBCDField;
    ItensNFValor_IBS: TFMTBCDField;
    ItensNFValor_BCCBS: TFMTBCDField;
    ItensNFAliquota_CBS: TFMTBCDField;
    ItensNFValor_CBS: TFMTBCDField;
    ItensNFValor_BCIS: TFMTBCDField;
    ItensNFAliquota_IS: TFMTBCDField;
    ItensNFValor_IS: TFMTBCDField;
    ItensNFConsumo_Energia: TFMTBCDField;
    ItensNFCIAP_BCICMS: TFMTBCDField;
    ItensNFCIAP_AliquotaICMS: TFMTBCDField;
    ItensNFCIAP_ValorICMS: TFMTBCDField;
    ItensNFCIAP_Parcela: TFMTBCDField;
    ItensNFValor_ICMSOpOrig: TFMTBCDField;
    ItensNFValor_ICMSSTOrig: TFMTBCDField;
    ItensNFValor_PISOrig: TFMTBCDField;
    ItensNFValor_COFINSOrig: TFMTBCDField;
    ItensNFValor_IPIOrig: TFMTBCDField;
    ItensNFValor_BCCOFINS: TFMTBCDField;
    ItensNFValor_TotalNota: TFMTBCDField;
    ItensNFAliquota_PISOrig: TFMTBCDField;
    ItensNFAliquota_COFINSOrig: TFMTBCDField;
    ItensNFValor_BCICMSSTOrig: TFMTBCDField;
    ItensNFCIAP_TipoItem: TSmallintField;
    ItensNFItem_Referencia: TSmallintField;
    procedure UniFrameCreate(Sender: TObject);
    procedure cProcesso_ImpExit(Sender: TObject);
    procedure cProcesso_ExpExit(Sender: TObject);
  private
    { Private declarations }
    mEmpresa: string;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent; pEmpresa: string); reintroduce;
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

constructor TfFiscalNFTerceirosItens.Create(aOwner: TComponent; pEmpresa: string);
begin
    inherited Create(aOwner);
    mEmpresa := pEmpresa;
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
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CFOP');
          sql.add('where Desativada <> 1');
          sql.add('and ES = 0');
          sql.add('and Servico <> 1');
          sql.add('order by Descricao');
          open;
     end;
     with ProcessoImp do begin
          sql.clear;
          sql.add('select Processo');
          sql.add('      ,DUIMP');
          sql.add('from ProcessosImp');
          sql.add('where Empresa = :pEmp');
          sql.add('and Desativado <> 1');
          sql.add('order by Processo');
          parambyname('pEmp').value := mEmpresa;
          open;
     end;
     with ProcessoExp do begin
          sql.clear;
          sql.add('select Processo');
          sql.add('      ,DUE');
          sql.add('from ProcessosExp');
          sql.add('where Empresa = :pEmp');
          sql.add('and Desativado <> 1');
          sql.add('order by Processo');
          parambyname('pEmp').value := mEmpresa;
          open;
     end;
     with Embarques do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Navio');
          sql.add('      ,Navio_Nome = (select Nome from Navios where Codigo = Navio)');
          sql.add('      ,Processo');
          sql.add('from Embarques');                                                            
          sql.add('where Empresa = :pEmp');
          sql.add('order by Processo, Navio');
          parambyname('pEmp').value := mEmpresa;
          open;
     end;
     with CSTICMSTabA do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CSTICMSTabA');                                                            
          sql.add('order by Codigo');
          open;
     end;
     with CSTICMSTabB do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CSTICMSTabA');                                                            
          sql.add('order by Codigo');
          open;
     end;
     with CSTIPI do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CSTIPI');                                                            
          sql.add('where ES in(0, 2)');
          sql.add('order by Codigo');
          open;
     end;
     with CSTCBS do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CSTCBS');                                                            
          sql.add('order by Codigo');
          open;
     end;
     with CSTIBS do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CSTIBS');                                                            
          sql.add('order by Codigo');
          open;
     end;
     with CSTPIS do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CSTPIS');                                                            
          sql.add('order by Codigo');
          open;
     end;
     with CSTCOFINS do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CSTCOFINS');                                                            
          sql.add('order by Codigo');
          open;
     end;

     cProcesso_Imp.Enabled := cProcesso_Exp.Text = '';
     cProcesso_Exp.Enabled := cProcesso_Imp.Text = '';
     cProduto.SetFocus;
end;



end.
