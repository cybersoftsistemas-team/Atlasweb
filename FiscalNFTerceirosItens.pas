unit FiscalNFTerceirosItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniCheckBox, uniDBCheckBox, 
  uniDateTimePicker, uniDBDateTimePicker, uniButton, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniEdit, uniPanel, uniGUIBaseClasses,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, System.StrUtils, DateUtils,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniSpeedButton, uniBitBtn, uniBasicGrid, uniDBGrid, uniMemo, uniSweetAlert, uniStringGrid, uniPageControl;

type
  TfFiscalNFTerceirosItens = class(TUniFrame)
    dsItensNF: TDataSource;
    Produtos: TFDQuery;
    dsProdutos: TDataSource;
    CFOP: TFDQuery;
    dsCFOP: TDataSource;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    ProcessoExp: TFDQuery;
    dsProcessoExp: TDataSource;
    NCM: TFDQuery;
    dsNCM: TDataSource;
    Embarques: TFDQuery;
    dsEmbarques: TDataSource;
    CSTICMSTabA: TFDQuery;
    dsCSTICMSTabA: TDataSource;
    dsCSTICMSTabB: TDataSource;
    CSTICMSTabB: TFDQuery;
    CSTIPI: TFDQuery;
    dsCSTIPI: TDataSource;
    CSTCBS: TFDQuery;
    dsCSTCBS: TDataSource;
    CSTIBS: TFDQuery;
    dsCSTIBS: TDataSource;
    CSTPIS: TFDQuery;
    dsCSTPIS: TDataSource;
    CSTCOFINS: TFDQuery;
    dsCSTCOFINS: TDataSource;
    NotasItens: TFDQuery;
    NotasItensNota_id: TIntegerField;
    NotasItensEmpresa: TStringField;
    NotasItensES: TSmallintField;
    NotasItensItem: TSmallintField;
    NotasItensCodigo_Mercadoria: TIntegerField;
    NotasItensCodigo_Fabricante: TStringField;
    NotasItensDescricao_Mercadoria: TMemoField;
    NotasItensNCM: TStringField;
    NotasItensEXTIPI: TSmallintField;
    NotasItensUM: TStringField;
    NotasItensQuantidade: TFMTBCDField;
    NotasItensCSTICMS_Terceiros: TStringField;
    NotasItensCSTICMS_TabA: TStringField;
    NotasItensCSTICMS_TabB: TStringField;
    NotasItensCSTIPI: TStringField;
    NotasItensCSTPIS: TStringField;
    NotasItensCSTCOFINS: TStringField;
    NotasItensCSTCBS: TStringField;
    NotasItensCSTIBS: TStringField;
    NotasItensAdicao: TSmallintField;
    NotasItensPeso_Liquido: TFMTBCDField;
    NotasItensPeso_Bruto: TFMTBCDField;
    NotasItensVeiculo: TBooleanField;
    NotasItensICMSST_Anterior: TBooleanField;
    NotasItensModalidade_BCICMS: TSmallintField;
    NotasItensModalidade_BCICMSST: TSmallintField;
    NotasItensDeclaracao: TStringField;
    NotasItensReducao_ICMSST: TFMTBCDField;
    NotasItensNota_Referencia: TStringField;
    NotasItensData_Referencia: TSQLTimeStampField;
    NotasItensNumero_Referencia: TIntegerField;
    NotasItensCEST: TStringField;
    NotasItensCFOP: TStringField;
    NotasItensPO: TStringField;
    NotasItensOrdem: TIntegerField;
    NotasItensBL: TStringField;
    NotasItensEmbarque: TIntegerField;
    NotasItensPercentual_Beneficio: TFMTBCDField;
    NotasItensPercentual_ICMSMono: TFMTBCDField;
    NotasItensPercentual_ICMSMonoRet: TFMTBCDField;
    NotasItensFator_Produto: TFMTBCDField;
    NotasItensValor_Unitario: TFMTBCDField;
    NotasItensValor_UnitarioOrig: TFMTBCDField;
    NotasItensValor_Total: TFMTBCDField;
    NotasItensAliquota_IPI: TFMTBCDField;
    NotasItensValor_IPI: TFMTBCDField;
    NotasItensAliquota_II: TFMTBCDField;
    NotasItensValor_II: TFMTBCDField;
    NotasItensValor_BCICMSOp: TFMTBCDField;
    NotasItensAliquota_ICMSOp: TFMTBCDField;
    NotasItensValor_ICMSOp: TFMTBCDField;
    NotasItensValor_BCICMSST: TFMTBCDField;
    NotasItensAliquota_ICMSST: TFMTBCDField;
    NotasItensValor_ICMSST: TFMTBCDField;
    NotasItensAliquota_MVA: TFMTBCDField;
    NotasItensValor_MVA: TFMTBCDField;
    NotasItensAliquota_ICMSReducao: TFMTBCDField;
    NotasItensValor_ICMSReducao: TFMTBCDField;
    NotasItensValor_Seguro: TFMTBCDField;
    NotasItensValor_Frete: TFMTBCDField;
    NotasItensValor_Despesa: TFMTBCDField;
    NotasItensAliquota_PIS: TFMTBCDField;
    NotasItensValor_PIS: TFMTBCDField;
    NotasItensAliquota_COFINS: TFMTBCDField;
    NotasItensValor_COFINS: TFMTBCDField;
    NotasItensValor_IsentasICMS: TFMTBCDField;
    NotasItensValor_OutrasICMS: TFMTBCDField;
    NotasItensValor_IsentasIPI: TFMTBCDField;
    NotasItensValor_OutrasIPI: TFMTBCDField;
    NotasItensLucro: TFMTBCDField;
    NotasItensLucro_Valor: TFMTBCDField;
    NotasItensValor_BCIPI: TFMTBCDField;
    NotasItensRateio_ICMSProcesso: TFMTBCDField;
    NotasItensDesconto: TFMTBCDField;
    NotasItensValor_Desconto: TFMTBCDField;
    NotasItensAliquota_PISRed: TFMTBCDField;
    NotasItensAliquota_COFINSRed: TFMTBCDField;
    NotasItensAliquota_ICMSIntegral: TFMTBCDField;
    NotasItensValor_BCMVA: TFMTBCDField;
    NotasItensValor_Dumping: TFMTBCDField;
    NotasItensTotal_Item: TFMTBCDField;
    NotasItensRateio_SISCOMEX: TFMTBCDField;
    NotasItensValor_BCICMSOperApuracao: TFMTBCDField;
    NotasItensValor_ICMSOperApuracao: TFMTBCDField;
    NotasItensMedia_BCR: TFMTBCDField;
    NotasItensValor_PIS2: TFMTBCDField;
    NotasItensValor_COFINS2: TFMTBCDField;
    NotasItensValor_DespesasOutros: TFMTBCDField;
    NotasItensValor_BCPIS: TFMTBCDField;
    NotasItensTotal_Impostos: TFMTBCDField;
    NotasItensAliquota_IRPJ: TFMTBCDField;
    NotasItensValor_IRPJ: TFMTBCDField;
    NotasItensAliquota_CSLL: TFMTBCDField;
    NotasItensValor_CSLL: TFMTBCDField;
    NotasItensComissao: TFMTBCDField;
    NotasItensComissao_Valor: TFMTBCDField;
    NotasItensValor_Inventario: TFMTBCDField;
    NotasItensValor_BCICMSDest: TFMTBCDField;
    NotasItensAliquota_ICMSDest: TFMTBCDField;
    NotasItensValor_ICMSDest: TFMTBCDField;
    NotasItensDIFAL_Valor: TFMTBCDField;
    NotasItensDIFAL_PercOrig: TFMTBCDField;
    NotasItensDIFAL_ValorOrig: TFMTBCDField;
    NotasItensDIFAL_PercDest: TFMTBCDField;
    NotasItensDIFAL_ValorDest: TFMTBCDField;
    NotasItensFCP_Aliquota: TFMTBCDField;
    NotasItensFCP_ValorDest: TFMTBCDField;
    NotasItensFCP_ICMSOrig: TFMTBCDField;
    NotasItensFCP_ICMSDest: TFMTBCDField;
    NotasItensValor_BCFCPST: TFMTBCDField;
    NotasItensValor_FCPST: TFMTBCDField;
    NotasItensValor_BCFCP: TFMTBCDField;
    NotasItensValor_FCP: TFMTBCDField;
    NotasItensValor_ICMSDesonerado: TFMTBCDField;
    NotasItensValor_ICMSSubAnt: TFMTBCDField;
    NotasItensAliquota_ICMSSubAnt: TFMTBCDField;
    NotasItensValor_ICMSAnt: TFMTBCDField;
    NotasItensValor_CIF: TFMTBCDField;
    NotasItensFator_Cambio: TFMTBCDField;
    NotasItensAliquota_ICMSEntrada: TFMTBCDField;
    NotasItensValor_Pauta: TFMTBCDField;
    NotasItensValor_AFRMM: TFMTBCDField;
    NotasItensRateio_FreteTerrNac: TFMTBCDField;
    NotasItensValor_BCII: TFMTBCDField;
    NotasItensAliquota_ICMSDif: TFMTBCDField;
    NotasItensAliquota_ICMSPresumido: TFMTBCDField;
    NotasItensAliquota_ICMSReducao2: TFMTBCDField;
    NotasItensCodigo_CredPres: TStringField;
    NotasItensDIFAL_ValorST: TFMTBCDField;
    NotasItensValor_BCDIFAL: TFMTBCDField;
    NotasItensValor_BCDIFALST: TFMTBCDField;
    NotasItensValor_BCICMSMono: TFMTBCDField;
    NotasItensValor_BCICMSMonoRet: TFMTBCDField;
    NotasItensValor_BCICMSPresumido: TFMTBCDField;
    NotasItensValor_COFINSST: TFMTBCDField;
    NotasItensValor_ICMSDif: TFMTBCDField;
    NotasItensValor_ICMSMono: TFMTBCDField;
    NotasItensValor_ICMSMonoRet: TFMTBCDField;
    NotasItensValor_ICMSPresumido: TFMTBCDField;
    NotasItensValor_PISST: TFMTBCDField;
    NotasItensValor_BCIBS: TFMTBCDField;
    NotasItensAliquota_IBS: TFMTBCDField;
    NotasItensValor_IBS: TFMTBCDField;
    NotasItensValor_BCCBS: TFMTBCDField;
    NotasItensAliquota_CBS: TFMTBCDField;
    NotasItensValor_CBS: TFMTBCDField;
    NotasItensValor_BCIS: TFMTBCDField;
    NotasItensAliquota_IS: TFMTBCDField;
    NotasItensValor_IS: TFMTBCDField;
    NotasItensConsumo_Energia: TFMTBCDField;
    NotasItensCIAP_BCICMS: TFMTBCDField;
    NotasItensCIAP_AliquotaICMS: TFMTBCDField;
    NotasItensCIAP_ValorICMS: TFMTBCDField;
    NotasItensCIAP_Parcela: TFMTBCDField;
    NotasItensValor_ICMSOpOrig: TFMTBCDField;
    NotasItensValor_ICMSSTOrig: TFMTBCDField;
    NotasItensValor_PISOrig: TFMTBCDField;
    NotasItensValor_COFINSOrig: TFMTBCDField;
    NotasItensValor_IPIOrig: TFMTBCDField;
    NotasItensValor_BCCOFINS: TFMTBCDField;
    NotasItensValor_TotalNota: TFMTBCDField;
    NotasItensAliquota_PISOrig: TFMTBCDField;
    NotasItensAliquota_COFINSOrig: TFMTBCDField;
    NotasItensValor_BCICMSSTOrig: TFMTBCDField;
    NotasItensCIAP_TipoItem: TSmallintField;
    NotasItensItem_Referencia: TSmallintField;
    NotasItensProcesso: TStringField;
    Operacao: TFDQuery;
    dsOperacao: TDataSource;
    Alerta: TUniSweetAlert;
    PastaItens: TUniPageControl;
    Painel: TUniTabSheet;
    UniContainerPanel2: TUniContainerPanel;
    Ficha: TUniPanel;
    UniPanel11: TUniPanel;
    cCIAP_AliquotaICMS: TUniDBFormattedNumberEdit;
    cCIAP_BCICMS: TUniDBFormattedNumberEdit;
    cCIAP_ValorICMS: TUniDBFormattedNumberEdit;
    cCIAP_TipoItem: TUniDBFormattedNumberEdit;
    UniPanel12: TUniPanel;
    cTotalCBS: TUniFormattedNumberEdit;
    cValor_CBS: TUniDBFormattedNumberEdit;
    cValor_BCCBS: TUniDBFormattedNumberEdit;
    cAliquota_CBS: TUniDBFormattedNumberEdit;
    cCSTIBS: TUniDBLookupComboBox;
    cTotalIBS: TUniFormattedNumberEdit;
    cValor_IBS: TUniDBFormattedNumberEdit;
    cValor_BCIBS: TUniDBFormattedNumberEdit;
    cAliquota_IBS: TUniDBFormattedNumberEdit;
    cCSTCBS: TUniDBLookupComboBox;
    UniPanel13: TUniPanel;
    cQtde: TUniDBFormattedNumberEdit;
    cValor_Desconto: TUniDBFormattedNumberEdit;
    cCFOP: TUniDBLookupComboBox;
    cProcesso: TUniDBLookupComboBox;
    cValor_Unitario: TUniDBFormattedNumberEdit;
    cNCM: TUniDBEdit;
    cPeso_Liquido: TUniDBFormattedNumberEdit;
    cPeso_Bruto: TUniDBFormattedNumberEdit;
    cEmbarque: TUniDBLookupComboBox;
    cValor_UnitarioOrig: TUniDBFormattedNumberEdit;
    cValor_Total: TUniDBFormattedNumberEdit;
    bDetalhe: TUniBitBtn;
    bSerial: TUniBitBtn;
    cValor_Inventario: TUniDBFormattedNumberEdit;
    cConsumo_Energia: TUniDBFormattedNumberEdit;
    cProduto: TUniDBLookupComboBox;
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
    UniTabSheet2: TUniTabSheet;
    gFormula: TUniStringGrid;
    cLog: TUniMemo;
    ttmp: TFDQuery;
    Imobilizado: TFDQuery;
    Config: TFDQuery;
    Nota: TFDQuery;
    procedure UniFrameCreate(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
  private
    { Private declarations }
    mID
   ,mItem: integer;
    mAcao: string;
//    procedure SalvaImobilizado;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent; pEmpresa: string; pID, pItem: integer; pAcao: string; pOper: integer); reintroduce;
    procedure Salvar;
  end;

implementation

{$R *.dfm}

uses ServerModule, Funcoes, ValidaCRUD, FiscalNFTerceiros;

procedure TfFiscalNFTerceirosItens.cProdutoExit(Sender: TObject);
begin
     with ttmp do begin
          sql.clear;
          sql.add('select top 1 1 from OperacaoFiscalFormulas where Operacao = :pOper and Campo = ''Valor_Inventario'' ');
          parambyname('pOper').asinteger := Nota.FieldByName('Operacao').AsInteger;
          open;
          if not IsEmpty then begin
             // Executa o cálculo do valor do inventario se tiver formula informada ou busca o valor da ficha de estoque.
             CalculaTudo(Nota.fieldbyname('Operacao').asinteger, 'Item', gFormula, cLog, NotasItens, self, nil);
          end;
     end;
end;

constructor TfFiscalNFTerceirosItens.Create(aOwner: TComponent; pEmpresa: string; pID, pItem: integer; pAcao: string; pOper: integer);
begin
    inherited Create(aOwner);
    mID      := pID;
    mItem    := pItem;
    mAcao    := pAcao;
end;

procedure TfFiscalNFTerceirosItens.Salvar;
begin
     // Verifica todos os campos obrigatórios que estão com a propriedade "Tag = 1".
     if not TValidaCRUD.ValidarFormulario(Ficha) then abort;
     
     // Validação de campos com vínculos em outros campos.
     if MatchText(Operacao.FieldByName('Destino_Origem').asstring, ['I', 'E']) then begin 
        CampoVazio(cProcesso,'"Processo" é obrigatório para esse tipo de operação!');
     end;
     if not Operacao.fieldbyname('Complementar').AsBoolean and (NotasItens.fieldbyname('Quantidade').asfloat <= 0) then begin
        CampoVazio(cQtde,'"Quantidade" do item inválida!');
     end;
     try
        mItem := NotasItensItem.AsInteger;
        if NotasItens.state = dsInsert then begin 
           mItem := GeraItem('NotasItens', 'Item', 'Empresa = '+Nota.fieldbyname('Empresa').asstring+' and Nota_id = '+inttostr(mid));
        end;
        // Dados do item.
        NotasItensNota_id.value              := mid;
        NotasItensEmpresa.value              := Nota.fieldbyname('Empresa').asstring;
        NotasItensItem.value                 := mItem;
        NotasItensES.value                   := 0;
        NotasItensCodigo_Fabricante.value    := Produtos.fieldbyname('Codigo_Fabricante').value;
        NotasItensDescricao_Mercadoria.value := Produtos.fieldbyname('Descricao').value;
        NotasItensNCM.value                  := Produtos.fieldbyname('NCM').value;
        NotasItensUM.asstring                := Produtos.fieldbyname('UM').asstring;
        NotasItensEXTIPI.value               := Produtos.fieldbyname('Codigo_EXTIPI').asinteger;
        
        NotasItens.post; 
        
        // Processa a ficha de Estoque/Inventario do item modificado.
        FichasEstInv(Nota.fieldbyname('Empresa').asstring, 0, '', '', 0, mid, NotasItensCodigo_Mercadoria.asstring, 'NFT');

        // Ativo imobilizado.
        if CFOP.fieldbyname('Imobilizado').asboolean and (NotasItensValor_Unitario.ascurrency > Config.fieldbyname('Valor_Imobilizado').ascurrency) then begin
           SalvaImobilizado(Nota.Fieldbyname('Nota_id').asinteger, Nota.Fieldbyname('Nota_id').asinteger, Config.fieldbyname('Parcelas_Imobilizado').AsInteger);
        end;

        Alerta.Text      := 'Item salvo na nota fiscal.';
        Alerta.Title     := 'Sucesso!';
        Alerta.AlertType := atSuccess;
        Alerta.Execute;
     except on E: Exception do
        begin
           Alerta.Text      := 'Erro ao salvar o item.'+#13+E.Message;
           Alerta.Title     := 'Erro!';
           Alerta.AlertType := atError;
           Alerta.Execute;
        end;
     end;
end;

procedure TfFiscalNFTerceirosItens.UniframeCreate(Sender: TObject);
var
   lArq: string;
begin
     // Alinhando todas as fichas de dados ao centro do componente pai.
     Ficha.Top   := 30;
     Ficha.Left  := (Ficha.Parent.Width - Ficha.Width) div 2;
     Ficha.Color := clNone;

     lArq := UniServerModule.FilesFolder +'images\icones\DetalheProduto.bmp';
     if FileExists(lArq) then bDetalhe.Glyph.LoadFromFile(lArq);
     lArq := UniServerModule.FilesFolder +'images\icones\SerialProduto.bmp';
     if FileExists(lArq) then bSerial.Glyph.LoadFromFile(lArq);

     with NotasItens do begin
          sql.clear;
          sql.add('select *');
          sql.add('from NotasItens');
          sql.add('where Nota_id = :pID');
          sql.add('and Item = :pItem');
          parambyname('pID').Value   := mID;
          parambyname('pItem').Value := mItem;
          open;
          if mAcao = 'Adicionar' then begin
             Append;
                  NotasItensNota_id.value := mID;
                  NotasItensEmpresa.value := Nota.fieldbyname('Empresa').asstring;
          end;
          if mAcao = 'Editar' then Edit;;
         // UniSession.Synchronize;                            
     end;
     with Nota do begin
          sql.clear;
          sql.add('select Empresa');
          sql.add('      ,Nota_id');
          sql.add('      ,Nota');
          sql.add('      ,Data_Emissao');
          sql.add('      ,Data_ES');
          sql.add('      ,Operacao');
          sql.add('      ,Destinatario');
          sql.add('      ,Modelo');
          sql.add('      ,Serie');
          sql.add('from NotasFiscais');
          sql.add('where Nota_id = :pID');
          parambyname('pID').Value   := mID;
          open;
     end;
     with Produtos do begin
          sql.clear;
          sql.add('select prd.Codigo');
          sql.add('      ,prd.Codigo_Fabricante');
          sql.add('      ,prd.NCM');
          sql.add('      ,prd.Descricao');
          sql.add('      ,prd.Descricao_Reduzida');
          sql.add('      ,prd.UM');
          sql.add('      ,NCM.Codigo_EXTIPI');
          sql.add('from Produtos prd');
          sql.add('inner join NCM on prd.NCM = NCM.NCM');
          sql.add('where prd.Desativado <> 1');
          sql.add('order by prd.Codigo');
          //sql.savetofile('c:\temp\Atlas_NotasTerceirosItens_Produtos.sql');
          open;
     end;
     with CFOP do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('      ,Imobilizado');
          sql.add('from CFOP');
          sql.add('where Desativada <> 1');
          sql.add('and ES = 0');
          sql.add('and Servico <> 1');
          sql.add('order by Descricao');
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
          sql.add('      ,Complementar');
          sql.add('from OperacaoFiscal');
          sql.add('where Codigo = :pCod');
          parambyname('pCod').asinteger := Nota.fieldbyname('Operacao').asinteger;
          open;
     end;
     with Processos do begin
          sql.clear;
          if Operacao.fieldbyname('Destino_Origem').asstring = 'I' then begin
             sql.add('select Processo');
             sql.Add('      ,Declaracao = DUIMP');
             sql.add('from ProcessosImp');
             sql.add('where isnull(DUIMP, '''') <> '''' ');
             sql.add('and emb.Empresa = :pEmp');
             sql.add('and Processo_Fechamento is not null');
             sql.add('order by Processo');
             parambyname('pEmp').value := Nota.fieldbyname('Empresa').asstring;
          end;
          if Operacao.fieldbyname('Destino_Origem').asstring = 'E' then begin
             sql.add('select Processo');
             sql.Add('      ,Declaracao = DUE');
             sql.Add('from ProcessosExp');
             sql.Add('where isnull(DUE, '''') <> '''' ');
             sql.add('and emb.Empresa = :pEmp');
             sql.add('and Processo_Fechamento is not null');
             sql.add('order by Processo');
             parambyname('pEmp').value := Nota.fieldbyname('Empresa').asstring;
          end;
          if Operacao.fieldbyname('Destino_Origem').asstring = 'D' then begin
             sql.add('select Processo = null');
             sql.Add('      ,Declaracao = null');
          end;
          //sql.savetofile('c:\temp\Atlas_NotasTerceirosItens_Processos.sql');
          open;
     end;
     with Embarques do begin
          sql.clear;
          sql.add('select emb.Codigo');
          sql.add('      ,emb.Navio');
          sql.add('      ,Navio_Nome = nav.Nome');
          sql.add('      ,emb.Processo');
          sql.add('from Embarques emb');                                                            
          sql.add('inner join Navios nav on nav.Codigo = emb.Navio');
          sql.add('where emb.Empresa = :pEmp');
          sql.add('order by Processo, Navio');
          parambyname('pEmp').value := Nota.fieldbyname('Empresa').asstring;
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
          sql.add('from CSTICMSTabB');                                                            
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
     with Config do begin
          sql.clear;
          sql.add('select Valor_Imobilizado');
          sql.add('      ,Parcelas_Imobilizado');
          sql.add('from Config ');                                                            
          sql.add('where Empresa = :pEmp');
          parambyname('pEmp').value := Nota.fieldbyname('Empresa').asstring;
          open;
     end;
     cProduto.SetFocus;
end;
(*
procedure TfFiscalNFTerceirosItens.SalvaImobilizado;
begin
     // Cadastrando o item no Imobilizado.
     with ttmp do begin 
          sql.Clear;
          sql.Add('delete from Imobilizado where Codigo_Mercadoria = :pCod and Nota_id = :pid');
          parambyname('pCod').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
          parambyname('pid').AsInteger  := NotasItensNota_id.AsInteger;
          execsql;
     end;
     with Imobilizado do begin 
          sql.clear;
          sql.Add('select * from Imobilizado where Codigo_Mercadoria = :pCod and Nota_id = :pid');
          parambyname('pCod').AsInteger := NotasItensCodigo_Mercadoria.AsInteger;
          parambyname('pid').AsInteger  := NotasItensNota_id.AsInteger;
          open;

          // Verifica se houve faturamento no mês para atualiza o campo "AnoMes_Faturamento" e o campo "Apropriacao".
          with ttmp do begin
               sql.clear;
               sql.add('select top 1 1 from NotasFiscais where year(Data_Emissao) = :pAno and month(Data_Emissao) = :pMes and ES = 1 and Valor_ICMS > 0 and Cancelada <> 1 and Denegada <> 1');
               paramByName('pAno').AsInteger := yearof(Nota.fieldbyname('Data_ES').AsDateTime);
               paramByName('pMes').AsInteger := monthof(Nota.fieldbyname('Data_ES').AsDateTime);
               open;
               if not IsEmpty then begin
                  Imobilizado.fieldbyname('AnoMes_Faturamento').Value := Format('%.2d', [yearof(Nota.fieldbyname('Data_ES').AsDateTime)]) + Format('%.2d', [monthof(Nota.fieldbyname('Data_ES').AsDateTime)]);
                  Imobilizado.fieldbyname('Apropriadas').Value        := 1;
               end;
               close;
          end;
          append;
                fieldbyname('Empresa').value           := Nota.fieldbyname('Empresa').Value;
                fieldbyname('Data_Nota').value         := Nota.fieldbyname('Data_ES').Value;
                fieldbyname('Codigo_Mercadoria').value := NotasItensCodigo_Mercadoria.Value;
                fieldbyname('Fornecedor').value        := Nota.fieldbyname('Destinatario').asinteger;
                fieldbyname('Nota_id').value           := Nota.fieldbyname('Nota_id').asinteger;
                fieldbyname('Nota').value              := Nota.fieldbyname('Nota').asinteger;
                fieldbyname('Valor_Aquisicao').value   := NotasItensValor_Unitario.ascurrency;
                fieldbyname('Valor_Depreciacao').value := NotasItensValor_Unitario.ascurrency - NotasItensValor_ICMSOp.ascurrency;
                fieldbyname('ICMS_Proprio').value      := NotasItensCIAP_ValorICMS.AsCurrency;
                fieldbyname('ICMS_ST').value           := NotasItensValor_ICMSST.AsCurrency;
                fieldbyname('ICMS_Frete').value        := 0;
                fieldbyname('ICMS_Dif_Aliquota').value := 0;
                fieldbyname('Valor_Credito').value     := (NotasItensCIAP_ValorICMS.ascurrency+ NotasItensValor_ICMSST.ascurrency);
                fieldbyname('Apropriadas').value       := 0;
                fieldbyname('Tipo_Item').value         := NotasItensCIAP_TipoItem.Value;
                fieldbyname('Vida_Util').value         := 0;
                fieldbyname('Parcelas').value          := Config.fieldbyname('Parcelas_Imobilizado').Value;
                fieldbyname('Ordem_Item').value        := NotasItensItem.Value;
                fieldbyname('Tipo_Movimentacao').Value := iif(NotasItensCIAP_TipoItem.AsInteger = 1, 'IM', 'IA');
                fieldbyname('Serie').value             := Nota.fieldbyname('Serie').asstring;
                fieldbyname('Modelo').value            := Nota.fieldbyname('Modelo').Value;
                fieldbyname('Centro_Custo').value      := Nota.fieldbyname('Centro_Custo').Value;
                fieldbyname('Descricao').value         := Trim(NotasItensDescricao_Mercadoria.AsString);
          Post;
     end;

     {
     If (NotasItens.State = dsEdit) and (NaturezaImobilizado.Value = True) then begin
        // Verificando se foi utilizado alguma parcela.
        CIAP.Close;
        CIAP.SQL.Clear;
        CIAP.SQL.Add('SELECT * FROM CIAP');
        CIAP.SQL.Add('WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota) AND (Utilizacao IS NOT NULL)');
        CIAP.ParamByName('pMercadoria').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
        CIAP.ParamByName('pNota').AsInteger       := NotasTerceirosItensNota.Value;
        CIAP.Open;
        If CIAP.RecordCount <> 0 then begin
           mOpcao := MessageDlg('Atenção!'+#13+'Você esta alterando um item que ja teve '+InttoStr(CIAP.RecordCount)+' parcela(s) utilizada(s) no CIAP.'+#13+'Alterar também as parcelas utilizadas?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
           If mOpcao = 6 then begin  // Opção 6 = "SIM'
              CIAP.SQL.Clear;
              CIAP.SQL.Add('SELECT * FROM CIAP WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota)' );
           End;
           If mOpcao = 7 then begin  // Opção 7 = "NÃO'
              CIAP.SQL.Clear;
              CIAP.SQL.Add('SELECT * FROM CIAP WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota) AND (Utilizacao IS NULL)' );
           End;
           If mOpcao = 2 then begin  // Opção 2 = "CANCELAR'
              Navega.BtnClick(nbCancel);
              Abort;
           End;
        end else begin
           CIAP.SQL.Clear;
           CIAP.SQL.Add('SELECT * FROM CIAP WHERE (Codigo_Mercadoria = :pMercadoria) AND (Nota = :pNota)' );
        end;
        CIAP.ParamByName('pMercadoria').AsInteger := NotasTerceirosItensCodigo_Mercadoria.Value;
        CIAP.ParamByName('pNota').AsInteger       := NotasTerceirosItensNota.Value;
        CIAP.Open;

     end;
     }
end;
*)



end.
