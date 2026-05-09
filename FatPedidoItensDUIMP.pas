unit FatPedidoItensDUIMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniButton, uniBitBtn,
  uniSpeedButton, uniGUIBaseClasses, uniPanel, uniLabel, uniDBText, uniEdit, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniCheckBox, uniGroupBox, uniBasicGrid, uniDBGrid, Datasnap.DBClient, FireDAC.Stan.StorageBin, uniMemo, uniSweetAlert, uniPageControl, CalcExpress, uniDateTimePicker, uniDBDateTimePicker, uniStringGrid;

type
  TfFatPedidoItensDUIMP = class(TUniForm)
    UniPanel3: TUniPanel;
    bSair: TUniSpeedButton;
    CFOP: TFDQuery;
    PedidosNF: TFDQuery;
    PedidosNFItens: TFDQuery;
    Empresas: TFDQuery;
    OpFiscal: TFDQuery;
    ProcessosImpItens: TFDQuery;
    DUIMP: TFDQuery;
    Embarques: TFDQuery;
    bAddItem: TUniSpeedButton;
    tCambio: TFDQuery;
    tProcesso: TFDQuery;
    tTmp: TFDQuery;
    tNCM: TFDQuery;
    tBeneficios: TFDQuery;
    Produtos: TFDQuery;
    CSTIPI: TFDQuery;
    CSTPIS: TFDQuery;
    CSTCOFINS: TFDQuery;
    CSTICMS: TFDQuery;
    TabPISCOFINS: TFDQuery;
    Destinatarios: TFDQuery;
    dsPedidosNFItens: TDataSource;
    Alerta: TUniSweetAlert;
    dsProcessosImpItens: TDataSource;
    dsDUIMP: TDataSource;
    dsCFOP: TDataSource;
    dsEmbarques: TDataSource;
    Processos: TFDQuery;
    tNCMICMS: TFDQuery;
    bAddTudo: TUniSpeedButton;
    bRemItem: TUniSpeedButton;
    tFormulas: TFDQuery;
    dstFormulas: TDataSource;
    Macro: TCalcExpress;
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
    PedidosNFItensQuantidade: TBCDField;
    PedidosNFItensPeso_Liquido: TBCDField;
    PedidosNFItensPeso_Bruto: TBCDField;
    PedidosNFItensMovimenta_Inventario: TBooleanField;
    PedidosNFItensMovimenta_Estoque: TBooleanField;
    PedidosNFItensMovimenta_EstoqueRep: TBooleanField;
    PedidosNFItensMovimenta_EstoqueInd: TBooleanField;
    PedidosNFItensModalidade_BCICMS: TSmallintField;
    PedidosNFItensModalidade_BCICMSST: TSmallintField;
    PedidosNFItensProcesso: TStringField;
    PedidosNFItensRateio_ICMSProcesso: TBCDField;
    PedidosNFItensApuracao_PISCOFINS: TBooleanField;
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
    PedidosNFItensAliquota_ICMSSTAnt: TBCDField;
    PedidosNFItensFator_Cambio: TBCDField;
    PedidosNFItensOrigem_Mercadoria: TSmallintField;
    PedidosNFItensEmbarque: TIntegerField;
    PedidosNFItensNumero_BL: TStringField;
    PedidosNFItensCodigo_CredPres: TStringField;
    PedidosNFItensValor_BCDIFAL: TBCDField;
    PedidosNFItensValor_BCDIFALST: TBCDField;
    PedidosNFItensValor_BCICMSMono: TBCDField;
    PedidosNFItensValor_BCICMSMonoRet: TBCDField;
    PedidosNFItensValor_BCICMSPresumido: TBCDField;
    PedidosNFItensValor_COFINSST: TBCDField;
    PedidosNFItensValor_ICMSMono: TBCDField;
    PedidosNFItensValor_ICMSMonoRet: TBCDField;
    PedidosNFItensValor_ICMSPresumido: TBCDField;
    PedidosNFItensValor_PISST: TBCDField;
    PedidosNFItensFator_Produto: TBCDField;
    PedidosNFItensValor_Unitario: TBCDField;
    PedidosNFItensValor_BCIPI: TBCDField;
    PedidosNFItensAliquota_IPI: TBCDField;
    PedidosNFItensValor_IPI: TBCDField;
    PedidosNFItensAliquota_II: TBCDField;
    PedidosNFItensValor_II: TBCDField;
    PedidosNFItensValor_BCICMSOp: TBCDField;
    PedidosNFItensAliquota_ICMSOp: TBCDField;
    PedidosNFItensValor_ICMSOp: TBCDField;
    PedidosNFItensAliquota_ICMSEntrada: TBCDField;
    PedidosNFItensValor_BCICMSST: TBCDField;
    PedidosNFItensAliquota_ICMSST: TBCDField;
    PedidosNFItensValor_ICMSST: TBCDField;
    PedidosNFItensValor_BCMVA: TBCDField;
    PedidosNFItensAliquota_MVA: TBCDField;
    PedidosNFItensValor_MVA: TBCDField;
    PedidosNFItensAliquota_ICMSOpRed: TBCDField;
    PedidosNFItensValor_ICMSOpRed: TBCDField;
    PedidosNFItensAliquota_PIS: TBCDField;
    PedidosNFItensValor_BCPIS: TBCDField;
    PedidosNFItensValor_PIS: TBCDField;
    PedidosNFItensAliquota_COFINS: TBCDField;
    PedidosNFItensValor_BCCOFINS: TBCDField;
    PedidosNFItensValor_COFINS: TBCDField;
    PedidosNFItensValor_Frete: TBCDField;
    PedidosNFItensValor_Seguro: TBCDField;
    PedidosNFItensValor_Despesa: TBCDField;
    PedidosNFItensValor_BCFCPST: TBCDField;
    PedidosNFItensValor_FCPST: TBCDField;
    PedidosNFItensValor_BCFCP: TBCDField;
    PedidosNFItensValor_FCP: TBCDField;
    PedidosNFItensValor_BCICMSDest: TBCDField;
    PedidosNFItensAliquota_ICMSDest: TBCDField;
    PedidosNFItensValor_ICMSDest: TBCDField;
    PedidosNFItensValor_DIFAL: TBCDField;
    PedidosNFItensPercentual_DIFALOrig: TBCDField;
    PedidosNFItensValor_DIFALOrig: TBCDField;
    PedidosNFItensPercentual_DIFALDest: TBCDField;
    PedidosNFItensValor_DIFALDest: TBCDField;
    PedidosNFItensValor_DIFALST: TBCDField;
    PedidosNFItensAliquota_FCP: TBCDField;
    PedidosNFItensValor_FCPDest: TBCDField;
    PedidosNFItensPercentual_FCPICMSOrig: TBCDField;
    PedidosNFItensValor_FCPICMSDest: TBCDField;
    PedidosNFItensValor_ICMSDesonerado: TBCDField;
    PedidosNFItensValor_BCICMSSTAnt: TBCDField;
    PedidosNFItensValor_ICMSSTAnt: TBCDField;
    PedidosNFItensValor_ICMSAnt: TBCDField;
    PedidosNFItensValor_CIF: TBCDField;
    PedidosNFItensValor_Pauta: TBCDField;
    PedidosNFItensValor_AFRMM: TBCDField;
    PedidosNFItensValor_BCII: TBCDField;
    PedidosNFItensValor_IsentasICMS: TBCDField;
    PedidosNFItensValor_OutrasICMS: TBCDField;
    PedidosNFItensValor_IsentasIPI: TBCDField;
    PedidosNFItensValor_OutrasIPI: TBCDField;
    PedidosNFItensValor_BCICMSApuracao: TBCDField;
    PedidosNFItensValor_ICMSApuracao: TBCDField;
    PedidosNFItensValor_MediaBCR: TBCDField;
    PedidosNFItensValor_TotalNota: TBCDField;
    PedidosNFItensValor_TotalImpostos: TBCDField;
    PedidosNFItensValor_Inventario: TBCDField;
    PedidosNFItensValor_Dumping: TBCDField;
    PedidosNFItensPercentual_Lucro: TBCDField;
    PedidosNFItensValor_Lucro: TBCDField;
    PedidosNFItensValor_PIS2: TBCDField;
    PedidosNFItensValor_COFINS2: TBCDField;
    PedidosNFItensAliquota_IRPJ: TBCDField;
    PedidosNFItensValor_IRPJ: TBCDField;
    PedidosNFItensAliquota_CSLL: TBCDField;
    PedidosNFItensValor_CSLL: TBCDField;
    PedidosNFItensRateio_FreteTerrNac: TBCDField;
    PedidosNFItensPercentual_Desconto: TBCDField;
    PedidosNFItensValor_Desconto: TBCDField;
    PedidosNFItensAliquota_PISRed: TBCDField;
    PedidosNFItensAliquota_COFINSRed: TBCDField;
    PedidosNFItensAliquota_ICMSOpIntegral: TBCDField;
    PedidosNFItensRateio_SISCOMEX: TBCDField;
    PedidosNFItensPercentual_Comissao: TBCDField;
    PedidosNFItensValor_Comissao: TBCDField;
    PedidosNFItensPercentual_RedICMSST: TBCDField;
    PedidosNFItensAliquota_ICMSDif: TBCDField;
    PedidosNFItensValor_ICMSDif: TBCDField;
    PedidosNFItensAliquota_ICMSPresumido: TBCDField;
    PedidosNFItensAliquota_ICMSOPRed2: TBCDField;
    PedidosNFItensPercentual_Beneficio: TBCDField;
    PedidosNFItensPercentual_ICMSMono: TBCDField;
    PedidosNFItensPercentual_ICMSMonoRet: TBCDField;
    PedidosNFItensValor_BCIBS: TBCDField;
    PedidosNFItensAliquota_IBS: TBCDField;
    PedidosNFItensValor_IBS: TBCDField;
    PedidosNFItensValor_BCCBS: TBCDField;
    PedidosNFItensAliquota_CBS: TBCDField;
    PedidosNFItensValor_CBS: TBCDField;
    PedidosNFItensValor_BCIS: TBCDField;
    PedidosNFItensAliquota_IS: TBCDField;
    PedidosNFItensValor_IS: TBCDField;
    PedidosNFItensCSTIBS: TStringField;
    PedidosNFItensCSTCBS: TStringField;
    PedidosNFItensBL: TStringField;
    PedidosNFItensValor_BCICMSDif: TBCDField;
    PedidosNFItensValor_IPIDevol: TBCDField;
    PedidosNFItensPercentual_IPIDevol: TBCDField;
    PedidosNFItensBeneficio_Fiscal: TStringField;
    PedidosNFItensDeclaracao: TStringField;
    PedidosNFItensValor_Produtos: TBCDField;
    PedidosNFItensValor_FCPICMSOrig: TBCDField;
    ProcessosImpItensCodigo_Mercadoria: TIntegerField;
    ProcessosImpItensDescricao: TStringField;
    ProcessosImpItensQuantidade: TBCDField;
    ProcessosImpItensValor_UnitarioReal: TBCDField;
    ProcessosImpItensNCM: TStringField;
    ProcessosImpItensPeso_Liquido: TBCDField;
    ProcessosImpItensItem: TSmallintField;
    ProcessosImpItensDisponivel: TBCDField;
    ProcessosImpItensValor_UnitarioME: TBCDField;
    UniContainerPanel4: TUniContainerPanel;
    UniPanel2: TUniPanel;
    Pasta: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniContainerPanel3: TUniContainerPanel;
    UniPanel4: TUniPanel;
    cQtdePerc: TUniFormattedNumberEdit;
    cValorUnitario: TUniFormattedNumberEdit;
    cFracionar: TUniCheckBox;
    cLucroPerc: TUniFormattedNumberEdit;
    cLucroValor: TUniFormattedNumberEdit;
    cDescPerc: TUniFormattedNumberEdit;
    cDescValor: TUniFormattedNumberEdit;
    cCalcVol: TUniCheckBox;
    cICMSAnt: TUniCheckBox;
    UniCheckBox1: TUniCheckBox;
    UniTabSheet2: TUniTabSheet;
    cLog: TUniMemo;
    UniPanel1: TUniPanel;
    cDUIMP: TUniDBLookupComboBox;
    cCFOP: TUniDBLookupComboBox;
    cEmbarque: TUniDBLookupComboBox;
    bRemTudo: TUniSpeedButton;
    PedidosNFItensItem_DUIMP: TIntegerField;
    ProcessosImpItensPedido: TStringField;
    PedidosNFItensFinalidade_Mercadoria: TStringField;
    ProcessosImpItensAdicao: TSmallintField;
    ProcessosImpItensRegistro: TFDAutoIncField;
    PedidosNFItensRegistro_Adicao: TIntegerField;
    ProcessosImpItensOrdem: TIntegerField;
    gFormula: TUniStringGrid;
    tImpostos: TFDMemTable;
    tImpostosOrdem_Calculo: TSmallintField;
    tImpostosDescricao: TStringField;
    tImpostosCampo: TStringField;
    tImpostosAliquota: TBCDField;
    tImpostosValor: TBCDField;
    tImpostosTotal: TBCDField;
    tImpostosCST: TStringField;
    tFormulasItens: TFDQuery;
    Campos: TFDQuery;
    CSTICMSA: TFDQuery;
    CSTICMSB: TFDQuery;
    CSTIBS: TFDQuery;
    CSTCBS: TFDQuery;
    gItens: TUniDBGrid;
    gAdicoes: TUniDBGrid;
    ProcessosImpItensDUIMP: TStringField;
    UniSpeedButton1: TUniSpeedButton;
    tFOB: TFDQuery;
    procedure bSairClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure cCFOPChange(Sender: TObject);
    procedure cDUIMPChange(Sender: TObject);
    procedure bAddItemClick(Sender: TObject);
    procedure bRemTudoClick(Sender: TObject);
    procedure PedidosNFItensAfterRefresh(DataSet: TDataSet);
    procedure bRemItemClick(Sender: TObject);
    procedure ProcessosImpItensAfterRefresh(DataSet: TDataSet);
    procedure bAddTudoClick(Sender: TObject);
  private
    procedure AddItem;
    procedure LigaBotoes;
    function CalculaCampos(Formula: widestring): real;
    function CalculaMacro(pForm: TComponent; pFormula: String): Real;
    procedure FiltraTabelas(pProduto: integer);
    
    { Private declarations }
  public
    { Public declarations }
    mPedido
   ,mOperacao: integer;
    mEstado: string;
    mDescricao: widestring;
    SelSerial: boolean;
    mValorInformado
   ,mQtdeInformado: real;
  end;

function fFatPedidoItensDUIMP: TfFatPedidoItensDUIMP;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Funcoes, FatPedidoNF, FatPedidoItensDUIMPItem;

function fFatPedidoItensDUIMP: TfFatPedidoItensDUIMP;
begin
     Result := TfFatPedidoItensDUIMP(UniMainModule.GetFormInstance(TfFatPedidoItensDUIMP));
end;

procedure TfFatPedidoItensDUIMP.ProcessosImpItensAfterRefresh(DataSet: TDataSet);
begin
     LigaBotoes;
end;

procedure TfFatPedidoItensDUIMP.bAddItemClick(Sender: TObject);
begin
     SelSerial       := false;
     mValorInformado := 0;
     mQtdeInformado  := 0;
     fFatPedidoItensDUIMPItem.mProduto   := ProcessosImpItens.FieldByName('Codigo_Mercadoria').asinteger;
     fFatPedidoItensDUIMPItem.mDescricao := ProcessosImpItens.FieldByName('Descricao').asstring;
     fFatPedidoItensDUIMPItem.mProcesso  := DUIMP.fieldbyname('Processo').asstring;
     fFatPedidoItensDUIMPItem.mPedido    := mPedido;
     fFatPedidoItensDUIMPItem.ShowModal;

     if SelSerial then begin
        FiltraTabelas(ProcessosImpItens.FieldByName('Codigo_Mercadoria').Value);
        AddItem;
        ProcessosImpItens.Refresh;
        PedidosNFItens.Refresh;
     end;
end;

procedure TfFatPedidoItensDUIMP.bAddTudoClick(Sender: TObject);
begin
     with ProcessosImpItens do begin
          FiltraTabelas(0);
          first;
          while not eof do begin
                Additem;
                next;
          end;
          refresh;
     end;
end;

procedure TfFatPedidoItensDUIMP.FiltraTabelas(pProduto: integer);
begin
     with Produtos do begin
          sql.Clear;
          sql.Add('select Codigo');
          sql.Add('      ,Codigo_Fabricante');
          sql.Add('      ,Descricao');
          sql.Add('      ,Peso_Bruto');
          sql.Add('      ,UM');
          sql.Add('      ,Valor_IPI');
          sql.Add('      ,Aliquota_PISSaida');
          sql.add('      ,CSTPIS_Entrada');
          sql.add('      ,CSTPIS_AliquotaUM');
          sql.add('      ,CSTPIS_Monofasica');
          sql.add('      ,CSTPIS_AliquotaZero');
          sql.add('      ,CSTPIS_Isenta');
          sql.add('      ,CSTPIS_Suspensao');
          sql.add('      ,CSTPIS_SemIncidencia');
          sql.add('      ,CSTPIS_Outras');
          sql.add('      ,CSTICMS_Saida');
          sql.add('      ,Origem');
          sql.add('      ,NCM');
          sql.Add('from Produtos prd');
          if pProduto <> 0 then begin
             sql.Add('where prd.Codigo = :pCod');
             ParamByName('pCod').asinteger := ProcessosImpItens.FieldByName('Codigo_Mercadoria').Value;
          end else begin
             sql.add('where prd.Codigo in(select distinct Codigo_Mercadoria from ProcessosImpItens pii where pii.DUIMP = :pDUIMP)');
             ParamByName('pDUIMP').value := ProcessosImpItens.FieldByName('DUIMP').asstring;
          end;
          open;
     end;
     // Totalizando os contratos de câmbio para gerar o fator de rateio do valor unitário pelo câmbio.
     with tCambio do begin
          sql.clear;
          sql.add('select Fator = isnull(sum((Valor_ME * Taxa_Cambial)) / sum(Valor_ME), 0)');
          sql.add('from ContratoCambioItens');
          sql.add('where Processo = :pProcesso');
          parambyName('pProcesso').AsString := tProcesso.fieldbyname('Processo').asstring;
          open;
     end;
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
          if pProduto <> 0 then begin
             sql.Add('where NCM = :pNCM');
             ParamByName('pNCM').value := ProcessosImpItens.fieldbyname('NCM').AsString;
          end else begin
             sql.add('where NCM in(select distinct NCM from ProcessosImpItens pii where pii.DUIMP = :pDUIMP)');
             ParamByName('pDUIMP').value := ProcessosImpItens.FieldByName('DUIMP').asstring;
          end;
          open;
     end;
     with tBeneficios do begin
          sql.Clear;
          sql.Add('select Percentual_Beneficio from BeneficioFiscal where Codigo = :pCod');
          ParamByName('pCod').AsInteger := PedidosNF.FieldByName('Beneficio_Fiscal').Value;
          open;
     end;
end;

procedure TfFatPedidoItensDUIMP.bRemItemClick(Sender: TObject);
begin
     with PedidosNFItens do begin
          MessageDlg('Deseja realmente remover o item do Pedido?', mtConfirmation, mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             with ttmp do begin 
                                  sql.Clear;
                                  sql.Add('update ProdutosSeriais set Pedido = null where Produto = :pProduto and Pedido = :pPedido');
                                  parambyname('pProduto').Value := PedidosNFItens.fieldbyname('Codigo_Mercadoria').AsInteger;
                                  parambyname('pPedido').Value  := PedidosNFItens.fieldbyname('Pedido').AsInteger;
                                  execute;
                             end;
                             delete;
                             Alerta.Text := 'Itens removido do Pedido!';
                             Alerta.Execute;
                             Refresh;
                             if ProcessosImpItens.State = dsBrowse then ProcessosImpItens.Refresh;
                          end;
                    end);
     end;
end;

procedure TfFatPedidoItensDUIMP.bRemTudoClick(Sender: TObject);
begin
     with ttmp do begin
          MessageDlg('Deseja realmente remover todos os itens do Pedido?', mtConfirmation, mbYesNo,
                    procedure(Comp:TComponent; aRes: Integer)
                    begin
                          if aRes = mrYes then begin
                             sql.clear;
                             sql.Add('delete from PedidosNFItens where Pedido = :pPedido');
                             parambyname('pPedido').Value := PedidosNF.FieldByName('Pedido').AsInteger;
                             execute;
                             PedidosNFItens.Refresh;
                             if ProcessosImpItens.State = dsBrowse then ProcessosImpItens.Refresh;
                             Alerta.Text := 'Todos os itens foram removidos do Pedido!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfFatPedidoItensDUIMP.bSairClick(Sender: TObject);
begin
    close;
end;

procedure TfFatPedidoItensDUIMP.cCFOPChange(Sender: TObject);
begin
     LigaBotoes;
end;

procedure TfFatPedidoItensDUIMP.cDUIMPChange(Sender: TObject);
begin
     if cDUIMP.text <> '' then begin
        with ProcessosImpItens do begin
             sql.clear;
             sql.add('select Registro');
             sql.add('      ,Item');
             sql.add('      ,Codigo_Mercadoria');
             sql.add('      ,Descricao = (select Descricao from Produtos prd where prd.Codigo = pii.Codigo_Mercadoria)');
             sql.add('      ,Quantidade');
             sql.add('      ,Disponivel = case :pES ');
             sql.add('                         when 0 then ');
             sql.add('                              pii.Quantidade -');
             sql.add('                              (select isnull(sum(Quantidade), 0) from NotasItens nfi          where nfi.Declaracao = pii.DUIMP and nfi.Codigo_Mercadoria = pii.Codigo_Mercadoria and nfi.ES = 0');
             sql.add('                                      and nfi.Item_DUIMP = pii.Item and Cancelada <> 1 and Denegada <> 1) -');
             sql.add('                              (select isnull(sum(Quantidade), 0) from PedidosNFItens pni      where pni.Declaracao = pii.DUIMP and pni.Codigo_Mercadoria = pii.Codigo_Mercadoria and pni.ES = 0 and pni.Item_DUIMP = pii.Item) -');
             sql.add('                              (select isnull(sum(Quantidade), 0) from NotasTerceirosItens nti where nti.Declaracao = pii.DUIMP and nti.Codigo_Mercadoria = pii.Codigo_Mercadoria and nti.Item_DUIMP = pii.Item');
             sql.add('                                      and (select Finalidade_Mercadoria from OperacaoFiscal opf where opf.Codigo = nti.Operacao) = :pFinalidade)');
             sql.add('                         when 1 then');
             sql.add('                              (select isnull(sum(Quantidade), 0) from NotasItens nfi          where nfi.Declaracao = pii.DUIMP and nfi.Codigo_Mercadoria = pii.Codigo_Mercadoria');
             sql.add('                                      and nfi.Item_DUIMP = pii.Item  and nfi.ES = 0 and Cancelada <> 1 and Denegada <> 1) +');
             sql.add('                              (select isnull(sum(Quantidade), 0) from NotasTerceirosItens nti where nti.Declaracao = pii.DUIMP and nti.Codigo_Mercadoria = pii.Codigo_Mercadoria');
             sql.add('                                      and nti.Item_DUIMP = pii.Item  and (select Finalidade_Mercadoria from OperacaoFiscal opf where opf.Codigo = nti.Operacao) = :pFinalidade)');
             sql.add('                    end');
             sql.add('      ,Valor_UnitarioME');
             sql.add('      ,Valor_UnitarioReal');
             sql.add('      ,NCM');
             sql.add('      ,Peso_Liquido');
             sql.add('      ,Pedido');
             sql.add('      ,Ordem');
             sql.add('      ,Adicao');
             sql.add('      ,DUIMP');
             sql.add('from ProcessosImpItens pii');
             sql.Add('where pii.DUIMP = '+quotedstr(DUIMP.FieldByName('DUIMP').AsString));
             sql.Add('and pii.Exportador = '+DUIMP.FieldByName('Exportador').asstring);
             sql.add('and pii.Codigo_Mercadoria not in(select Codigo_Mercadoria from PedidosNFItens pni where pni.Codigo_Mercadoria = pii.Codigo_Mercadoria and pni.Quantidade = pii.Quantidade)');
             sql.add('order by Item');
             parambyname('pES').Value         := PedidosNF.FieldByName('ES').AsInteger;
             parambyname('pFinalidade').Value := 'Devolução de Importação';
             //sql.SaveToFile('c:\temp\Pedidos_Itens_ProcessosImpItens.sql');
             open;
        end;
        with tProcesso do begin
             sql.clear;
             sql.add('select Processo');
             sql.add('      ,DUIMP');
             sql.add('from ProcessosImp');
             sql.Add('where DUIMP = '+quotedstr(DUIMP.FieldByName('DUIMP').AsString));
             //sql.SaveToFile('c:\temp\Pedidos_Itens_Processo.sql');
             open;
        end;

        // Totalizando as despesas de custo do processo no financeiro.
        // Totalizando o FOB_ME dos produtos com despesas seletiva.
        {
        tProcessoMestre.SQL.Clear;
        tProcessoMestre.SQL.Add('SELECT Numero_Declaracao FROM ProcessosDocumentos WHERE Processo = :pMestre');
        tProcessoMestre.ParamByName('pMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
        tProcessoMestre.Open;
        }
        (*
        with tFOB do begin
             sql.Clear;
             sql.Add('select FOB_Total       = isnull((select round(sum(Valor_SemAdValorem * Quantidade), 2) from ProcessosImpItens where (DI = :pDI)), 0) ');
             sql.Add('      ,FOB_Seletivo    = isnull((select round(sum(Valor_SemAdValorem * Quantidade), 2) from ProcessosImpItens where DI = :pDI and (select Custo_Seletivo from NCM where(NCM.NCM = ProcessosImpItens.NCM)) = 1), 0)');
             sql.Add('      ,FOB_Mestre      = isnull((select round(sum(Valor_SemAdValorem * Quantidade), 2) from ProcessosImpItens where DI = :pDIMestre), 0)');
             sql.Add('      ,CIF_Total       = isnull((select sum(FOB + Frete + Seguro + II) from ProcessosDocumentos where Numero_Declaracao = :pDI), 0)');
             sql.Add('      ,CIF_Mestre      = nullif(0,(select sum(FOB + Frete + Seguro + II) from ProcessosDocumentos where Processo = :pProcessoMestre))');
             sql.Add('      ,FOBPISCOFINS_ME = isnull((select sum(ad.Valor_Unitario * ad.Quantidade) from ProcessosImpItens ad where ad.DI = :pDI and Valor_PIS <> 0), 1)');
             paramByName('pDI').AsString             := ProcessosDOCNumero_Declaracao.AsString;
             paramByName('pDIMestre').AsString       := tProcessoMestre.FieldByName('Numero_Declaracao').AsString;
             paramByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.AsString;
             //sqL.SaveToFile('c:\temp\Pedidos_Itens_tFOB.sql');
             open;
        end;
        // Totalizando as despesas de custo do processo no financeiro.
        tDespesas.SQL.Clear;
        If PedidosSaida_Entrada.Value = 0 then begin
           If ProcessosDOCEntreposto.AsBoolean = true then begin
              // Pegando o FOB_ME do Processo MESTRE.
              with tProcessoMestre do begin
                   sql.clear;
                   sql.add('select FOB_ME = isnull(FOB_ME,0)');
                   sql.add('      ,Seguro_ME = isnull(Seguro_ME,0)');
                   sql.add('      ,Frete_ME = isnull(Frete_ME,0)');
                   sql.add('      ,Ad_Valorem = isnull(Ad_Valorem,0)');
                   sql.add('      ,Taxa_FOB = isnull(Taxa_FOB,0)');
                   sql.add('from ProcessosDocumentos pd');
                   sql.add('where pd.Processo = :pProcesso');
                   paramByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                   open;
              end;
              
              // Somando as despesas do processo "MESTRE e do FILHO".
              If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                 tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.Custo_Entrada = 1)), 0)               AS Valor_DespesasMestre');
              end else begin
                 tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.Custo_Entrada = 1)), 0)               AS Valor_DespesasMestre');
              End;

              tDespesas.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
           end else begin
              If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                 tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                 tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
              end else begin
                 tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros  = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Entrada<> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                 tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
              End;
           End;
        end else begin
           If ProcessosDOCEntreposto.AsBoolean = true then begin
              // Pegando o FOB_ME do Processo MESTRE.
              with tProcessoMestre do begin
                   sql.clear;
                   sql.add('select FOB_ME = isnull(FOB_ME,0)');
                   sql.add('      ,Seguro_ME = isnull(Seguro_ME,0)');
                   sql.add('      ,Frete_ME = isnull(Frete_ME,0)');
                   sql.add('      ,Ad_Valorem = isnull(Ad_Valorem,0)');
                   sql.add('      ,Taxa_FOB = isnull(Taxa_FOB,0)');
                   sql.add('from ProcessosDocumentos pd');
                   sql.add('where pd.Processo = :pProcesso');
                   paramByName('pProcesso').AsString := ProcessosDOCProcesso_Mestre.Value;
                   open;
              end;
               
              // Somando as despesas do processo "MESTRE e do FILHO".
              If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                 tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1)), 0) AS Valor_DespesasMestre');
              end else begin
                 tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso      ) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcessoMestre) AND (Tipo = ''P'') AND (LTRIM(RTRIM(Processo)) <> '''') AND (PagarReceber.CustoConta = 1)), 0) AS Valor_DespesasMestre');
              End;

              tDespesas.ParamByName('pProcessoMestre').AsString := ProcessosDOCProcesso_Mestre.Value;
           end else begin
              If ConfiguracaoValor_Despesas.AsInteger = 0 then begin
                 tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                 tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
              end else begin
                 tDespesas.SQL.Add('SELECT ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta   = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_Despesas,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.Custo_Outros = 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0) <> 1) AND (Tipo = ''P'')), 0) AS Valor_DespesasOutros,');
                 tDespesas.SQL.Add('       ISNULL((SELECT SUM(Valor_Total+ISNULL(Desconto, 0)) FROM PagarReceber WHERE (Processo = :pProcesso) AND (PagarReceber.CustoConta  <> 1) AND (ISNULL(PagarReceber.Custo_Seletivo, 0)  = 1) AND (Tipo = ''P'')), 0) AS Valor_Seletivo,');
                 tDespesas.SQL.Add('       0 AS Valor_DespesasMestre');
              End;
           End;
        End;
        tDespesas.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.Value;
        tDespesas.Open;

        If (ProcessosDOCEntreposto.AsBoolean = true) then begin
           If tFOB.FieldByName('FOB_Mestre').Value <= 0 then begin
              MessageDlg('Houve falha na soma do "FOB" do Processo "MESTRE"'+#13+#13+'Verifique se existem os itens da "DA/DI".', mtError,[mbOK], 0);
           End;
        End;
        *)


        
     end;
end;

procedure TfFatPedidoItensDUIMP.UniFormShow(Sender: TObject);
begin
     Pasta.ActivePageIndex := 0;
     cLog.clear;
     with Empresas do begin
          sql.Clear;
          sql.Add('select CNPJ');
          sql.Add('      ,Estado');
          sql.Add('      ,Razao_Social');
          sql.Add('      ,Regime_Apuracao');
          sql.Add('      ,Regime_Tributario');
          sql.Add('from Empresas');
          sql.Add('where CNPJ = :pCNPJ');
          parambyname('pCNPJ').Value :=  UniMainModule.mEmpresaAtiva;
          open;
     end;
     with PedidosNF do begin
          sql.clear;
          sql.add('select Pedido');
          sql.add('      ,ES');
          sql.add('      ,Destinatario');
          sql.add('      ,Destinatario_Estado');
          sql.add('      ,Operacao');
          sql.add('      ,Beneficio_Fiscal');
          sql.add('from PedidosNF');
          sql.Add('where Pedido = :pPed');
          sql.Add('order by Pedido');
          parambyname('pPed').Value := mPedido;
          open;
     end;
     with PedidosNFItens do begin
          sql.clear;
          sql.add('select * from PedidosNFItens where Pedido = :pPed order by Item');
          parambyname('pPed').value := mPedido;
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
     with CFOP do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CFOP ');
          sql.add('where Desativada <> 1');
          sql.add('and ES = :pES');
          sql.add('and Apuracao_PISCOFINS = :pApura');
          sql.add('and Dentro_Fora = :pDentroFora');
          
          if PedidosNF.FieldByName('Destinatario_Estado').asstring = Empresas.FieldByName('Estado').AsString then begin
             sql.add('and Dentro_Fora = ''D'' ');
          end else begin
             sql.add('and Dentro_Fora = ''F'' ');
          end;
          parambyname('pApura').value      := OpFiscal.FieldByName('Apuracao_PISCOFINS').asboolean;
          parambyname('pES').value         := PedidosNF.FieldByName('ES').asinteger;
          parambyname('pDentroFora').value := iif(PedidosNF.FieldByName('Destinatario_Estado').asstring = Empresas.FieldByName('Estado').AsString, 'D', 'F');
          //sql.savetofile('c:\temp\CFOP.sql');
          open;
     end;
     with DUIMP do begin
          sql.clear;
          sql.add('select DUIMP');
          sql.add('      ,Data = Data_Registro');
          sql.add('      ,Processo');
          sql.add('      ,Exportador');
          sql.add('      ,Nome = (select Nome from Destinatarios dt where dt.Codigo = pi.Exportador)');
          sql.add('from ProcessosImp pi');
          sql.add('where Desativado <> 1');
          sql.add('and Data_Encerramento is null');
          if PedidosNF.FieldByName('ES').AsInteger = 0 then begin
             sql.add('and (select isnull(sum(Quantidade), 0) from Notasitens ni where ni.Declaracao = pi.DUIMP and ni.ES = 0) <= (select sum(Quantidade) from ProcessosImpItens ad where ad.DUIMP = pi.DUIMP)');
          end else begin
             sql.add('and (select isnull(sum(Quantidade), 0) from Notasitens ni where ni.Declaracao = pi.DUIMP and ni.ES = 1) <= (select sum(Quantidade) from ProcessosImpItens ad where ad.DUIMP = pi.DUIMP)');
          end;
          sql.add('order by Processo, DUIMP');
          //sql.savetofile('c:\temp\DUIMP.sql');
          open;
     end;
     with Embarques do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Navio');
          sql.add('      ,Processo');
          sql.add('      ,Nome = (select Nome from Navios where Codigo = Navio)');
          sql.add('      ,Filial');
          sql.add('      ,UF');
          sql.Add('from Embarques');
          sql.Add('where Status <> ''ENCERRADO''');
          sql.add('and Navio is not null');
          sql.add('order by Nome');
          open;
     end;
     with Processos do begin
          sql.clear;
          sql.add('select Processo');
          sql.Add('      ,ICMS_Diferido');
          sql.Add('from ProcessosImp');
          sql.Add('where DUIMP = :pDUIMP');
          parambyname('pDUIMP').AsString := DUIMP.Fieldbyname('DUIMP').AsString;
          open;
     end;
     with CSTIPI do begin
          sql.clear;
          sql.add('select Classificacao, Codigo from CSTIPI');
          open;
     end;
     with CSTPIS do begin
          sql.clear;
          sql.add('select Classificacao, Codigo from CSTPIS');
          open;
     end;
     with CSTCOFINS do begin
          sql.clear;
          sql.add('select Classificacao, Codigo from CSTCOFINS');
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
          sql.add('select Imposto, Saida from TabelaPISCOFINS where Tipo = ''B'' ');
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
end;

procedure TfFatPedidoItensDUIMP.AddItem;
begin
     Produtos.locate('Codigo', ProcessosImpItens.FieldByName('Codigo_Mercadoria').Value, [loCaseInsensitive]);
     tNCM.locate('NCM', ProcessosImpItens.FieldByName('NCM').Value, [loCaseInsensitive]);
     with tNCMICMS do begin
          sql.Clear;
          sql.Add('select * from NCMICMS where NCM = :pNCM and Estado = :pEstado');
          parambyname('pNCM').Value    := ProcessosImpItens.FieldByName('NCM').AsString;
          parambyname('pEstado').Value := mEstado;
          open;
     end;
     // Sequencial do item no pedido.
     with tTmp do begin
          sql.Clear;
          sql.Add('select Item = isnull(max(Item), 0)+1 from PedidosNFItens where Pedido = :pPedido');
          ParamByName('pPedido').AsInteger := mPedido;
          Open;
     end;
     // Remove caracteres de controle da descrição do produto.
     if trim(mDescricao) = '' then begin
        mDescricao := stringreplace(Produtos.fieldbyname('Descricao').Value, #13, '', [rfReplaceAll]);
        mDescricao := stringreplace(mDescricao, #12, '', [rfReplaceAll]);
        mDescricao := stringreplace(mDescricao, #10, '', [rfReplaceAll]);
        mDescricao := RemoveCaracterXML(mDescricao);
     end;
     // Adiciona Pedido e Ordem do item na descrição.Ajuste Para PRADOTEX.
     if trim(ProcessosImpItens.FieldByName('Pedido').asstring) <> '' then begin
        mDescricao := mDescricao + ' PO <['+ProcessosImpItens.FieldByName('Pedido').asstring+']> ITEM [<'+ProcessosImpItens.FieldByName('Ordem').asstring+'>]';
     end;

     with PedidosNFItens do begin
          append;
               fieldbyname('Pedido').Value                := mPedido;
               fieldbyname('Empresa').Value               := UniMainModule.mEmpresaAtiva;
               fieldbyname('ES').Value                    := PedidosNF.FieldByName('ES').asinteger;
               fieldbyname('CFOP').Value                  := CFOP.FieldByName('Codigo').AsString;
               fieldbyname('Item').Value                  := tTmp.FieldByName('Item').AsInteger;
               fieldbyname('Registro_Adicao').Value       := ProcessosImpItens.Fieldbyname('Registro').Value;
               fieldbyname('Processo').Value              := tProcesso.FieldByName('Processo').Value;
               fieldbyname('Declaracao').Value            := DUIMP.FieldByName('DUIMP').value;
               fieldbyname('Embarque').Value              := Embarques.FieldByName('Codigo').Value;
               fieldbyname('Percentual_Lucro').Value      := cLucroPerc.Value;
               fieldbyname('Valor_Lucro').Value           := cLucroValor.Value;
               fieldbyname('Percentual_Desconto').Value   := cDescPerc.Value;
               fieldbyname('Valor_Desconto').Value        := cDescValor.Value;
               fieldbyname('ICMSST_Anterior').Value       := cICMSAnt.Checked;
               fieldbyname('CEST').Value                  := tNCM.Fieldbyname('CEST').Value;
               fieldByName('Modalidade_BCICMS').Value     := tNCM.FieldByName('Modalidade_BCICMS').Value;
               fieldByName('Modalidade_BCICMSST').Value   := tNCM.FieldByName('Modalidade_BCICMSST').Value;
               fieldbyname('Fator_Cambio').Value          := tCambio.FieldByName('Fator').asFloat;
               fieldbyname('Descricao_Mercadoria').Value  := mDescricao;
               fieldbyname('Percentual_Beneficio').Value  := tBeneficios.FieldByName('Percentual_Beneficio').AsFloat;
               fieldbyname('Codigo_Fabricante').Value     := Produtos.FieldByName('Codigo_Fabricante').Value;
               fieldbyname('Peso_Bruto').Value            := Produtos.FieldByName('Peso_Bruto').asfloat;
               fieldbyname('UM').Value                    := Produtos.Fieldbyname('UM').Value;
               fieldbyname('Movimenta_Inventario').Value  := OpFiscal.FieldByName('Movimenta_Inventario').Value;
               fieldbyname('Movimenta_Estoque').Value     := OpFiscal.FieldByName('Movimenta_Estoque').Value;
               fieldbyname('Movimenta_EstoqueRep').Value  := OpFiscal.FieldByName('Movimenta_EstoqueRep').Value;
               fieldbyname('Apuracao_PISCOFINS').Value    := OpFiscal.FieldByName('Apuracao_PISCOFINS').Value;
               fieldbyname('Finalidade_Mercadoria').Value := OpFiscal.Fieldbyname('Finalidade_Mercadoria').Value;
               fieldbyname('Operacao').Value              := OpFiscal.Fieldbyname('Codigo').Value;
               fieldbyname('Codigo_Mercadoria').Value     := ProcessosImpItens.FieldByName('Codigo_Mercadoria').Value;
               fieldbyname('Item_DUIMP').Value            := ProcessosImpItens.FieldByName('Item').Value;
               fieldbyname('NCM').Value                   := ProcessosImpItens.FieldByName('NCM').Value;
               fieldbyname('Adicao').Value                := ProcessosImpItens.FieldByName('Adicao').Value;
               fieldbyname('Quantidade').Value            := iif(mQtdeInformado = 0, ProcessosImpItens.FieldByName('Quantidade').Value, mQtdeInformado);
               fieldbyname('Peso_Liquido').Value          := ProcessosImpItens.FieldByName('Peso_Liquido').Value;
               fieldbyname('PO').Value                    := ProcessosImpItens.Fieldbyname('Pedido').Value;
               fieldbyname('Ordem').Value                 := ProcessosImpItens.Fieldbyname('Ordem').Value;

               if mValorINformado = 0 then begin
                  if tFormulasItens.Locate('Campo', 'Valor_Unitario', [loCaseInsensitive]) then begin
                     gFormula.Cells[0, gFormula.RowCount-1] := tFormulasItens.fieldbyname('Campo').AsString;
                     gFormula.Cells[1, gFormula.RowCount-1] := tFormulasItens.fieldbyname('Formula').AsString;
                     fieldbyname('Valor_Unitario').value    := CalculaMacro(self, tFormulasItens.fieldbyname('Formula').AsString);
                  end;
               end else begin
                  gFormula.Cells[0, gFormula.RowCount-1] := 'Valor_Unitario';
                  gFormula.Cells[1, gFormula.RowCount-1] := 'Informado pelo usuário';
                  fieldbyname('Valor_Unitario').value    := mValorInformado;
               end;

               if not CalculaTudo(PedidosNF.fieldbyname('Operacao').asinteger, 'Item', gFormula, cLog, PedidosNFItens, nil, self) then begin
                  cLog.Lines.Add('************************************************[ ERRO GRAVE ]*******************************************************');
                  cLog.Lines.Add('Ocorreu uma erro nas fórmulas, verifique as formulas ou entre em contato com o suporte para corrigir!');
                  cLog.Lines.Add('*********************************************************************************************************************');
               end;

               // Gerando todas as CST's.
               fieldbyname('CSTIPI').Value    := PegaCSTIPI(PedidosNF.fieldbyname('Operacao').asinteger, fieldbyname('Codigo_Mercadoria').asinteger);
               fieldbyname('CSTPIS').Value    := PegaCSTPIS(PedidosNF.fieldbyname('Operacao').asinteger, fieldbyname('Codigo_Mercadoria').asinteger, PedidosNF.fieldbyname('Destinatario').asinteger);
               fieldbyname('CSTCOFINS').Value := PegaCSTCOFINS(PedidosNF.fieldbyname('Operacao').asinteger, fieldbyname('Codigo_Mercadoria').asinteger, PedidosNF.fieldbyname('Destinatario').asinteger);
               
               // Tabela A - Origem.
               if Produtos.fieldbyname('Origem').asstring = 'I' then fieldbyname('CSTICMS_TabA').value := tNCM.Fieldbyname('CodigoTrib_TabA').Value;
               if Produtos.fieldbyname('Origem').asstring = 'N' then fieldbyname('CSTICMS_TabA').value := tNCM.Fieldbyname('CodigoTrib_TabA2').Value;
               if Produtos.fieldbyname('Origem').asstring = 'M' then fieldbyname('CSTICMS_TabA').value := tNCM.Fieldbyname('CodigoTrib_TabA3').Value;
               // Tabela B - Tributação.
               fieldbyname('CSTICMS_TabB').Value := PegaCSTICMS(PedidosNFItens, OpFiscal.fieldbyname('Codigo').asinteger, fieldbyname('Codigo_Mercadoria').asinteger, Empresas.fieldbyname('Regime_Tributario').asinteger, PedidosNF.FieldByName('Destinatario').asinteger);
          post;
     end;
(*
                        If Trim(mSeriais) <> '' then
                           PedidosItensDescricao_Mercadoria.Value := Trim(mTextoLimpo + '     ' + mSeriais)
                        else
                           PedidosItensDescricao_Mercadoria.Value := Trim(mTextoLimpo);

                        mSeriais := '';

                        // Pegando a aliquota do ICMS Operacional.
                        ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]);

                        PedidosItensAliquota_ICMSOper.Value      := 0;
                        PedidosItensAliquota_ICMSIntegral.Value  := 0;
                        PedidosItensFCP_Aliquota.Value           := 0;
                        PedidosItensAliquota_ICMSDest.Value      := 0;
                        PedidosItensAliquota_ICMSEntrada.value   := 0;
                        PedidosItensPercentual_ICMSMono.value    := iif(PedidosItensSaida_Entrada.value = 0, ProdutosPercentual_ICMSMono.AsFloat, ProdutosPercentual_ICMSMonoSai.AsFloat);
                        PedidosItensPercentual_ICMSMonoRet.value := ProdutosPercentual_ICMSMonoRet.AsFloat;

                        If TipoNotaSaida_Entrada.Value = 1 then begin
                           mUF := Trim(ClientesEstado.Value)+'_Reducao';
                           PedidosItensAliquota_ICMSReducao.Value := NCM.FieldbyName(mUF).AsFloat;
                           mUF := Trim(ClientesEstado.Value)+'_Reducao2';
                           PedidosItensAliquota_ICMSReducao2.Value := NCM.FieldbyName(mUF).AsFloat;
                           If NCMICMS_Operacional.Value = 0 then begin
                              // Pega a aliquota do ICMS da tabela de ICMS ou da Adiçao.
                              If TipoNotaOrigem_AliquotaICMS.Value = 0 then begin
                                 // Contribuinte.
                                 If ClientesIndicador_IE.Value = '1' then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSImp_Contribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_ContribuinteCheia.Value;
                                 End;
                                 // Contribuinte com nf para consumo.
                                 If (ClientesIndicador_IE.Value = '1') and (TipoNotaFinalidade_Mercadoria.Value = 1) then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSImp_NContribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_NContribuinteCheia.Value;
                                 End;
                                 // Não Contribuinte.
                                 If (ClientesIndicador_IE.Value = '2') or (ClientesIndicador_IE.Value = '9') then begin
                                    PedidosItensAliquota_ICMSOper.Value     := ICMSImp_NContribuinte.Value;
                                    PedidosItensAliquota_ICMSIntegral.Value := ICMSImp_NContribuinteCheia.Value;
                                 End;
                                 // Simples Nacional.
                                 If ClientesSimples_Nacional.AsBoolean then begin
                                    PedidosItensAliquota_ICMSOper.Value := ICMSSimples_Nacional.AsFloat;
                                 End;
                                 // Atacadistas.
                                 If ClientesAtacadista.AsBoolean then begin
                                    PedidosItensAliquota_ICMSOper.Value := ICMSImp_Atacadista.AsFloat;
                                 End;
                                 // Varejistas.
                                 If ClientesVarejista.AsBoolean then begin
                                    PedidosItensAliquota_ICMSOper.Value := ICMSImp_Varejista.AsFloat;
                                 End;
                                 // Não encontrando a estado na tabela de ICMS zera a aliquota do ICMS operacional.
                                 If ICMS.Locate('UF', ClientesEstado.AsString, [loCaseInsensitive]) = false then begin
                                    PedidosItensAliquota_ICMSOper.Value     := 0;
                                    PedidosItensAliquota_ICMSIntegral.Value := 0;
                                 End;
                              end else begin
                                 PedidosItensAliquota_ICMSOper.Value     := ProcessosImpItensAliquota_ICMS.Value;
                                 PedidosItensAliquota_ICMSIntegral.Value := ProcessosImpItensAliquota_ICMS.Value;
                              End;

                              // Alíquota do Diferencial de alíquota de ICMS.
                              If PedidosItensAliquota_ICMSOper.Value <> ICMSICMS_Interno.Value then begin                // Aliquota de icms dos estados diferente.
                                 If Clientes.FieldByName('Consumidor_Final').AsBoolean then begin                        // Cliente é consumidor final.
                                    If (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin             // Cliente é de fora do estado.
                                       If ProdutosFCP.AsBoolean then begin                                               // Produto tem incidencia do FCP.
                                          PedidosItensFCP_Aliquota.Value := ICMSFCP.Value;
                                       End;
                                       PedidosItensAliquota_ICMSDest.Value := ICMSICMS_Interno.Value;

                                       If ICMSICMS_Interno.AsFloat <= 0 then
                                          mErro := 5;
                                       If ConfiguracaoDIFAL_ICMSPart.AsFloat <= 0 then
                                          mErro := 6;
                                    End;
                                 End;
                              End;
                           end else begin
                               PedidosItensAliquota_ICMSOper.Value := NCMICMS_Operacional.Value;
                           End;

                           // Verifica se existe alíquota de ICMS informado no cadastro do produto.
                           // Dentro do Estado.
                           If (PedidosDestinatario_Estado.Value = EmpresasEstado.Value) and (ProdutosICMS_DentroEstado.AsFloat > 0) then begin
                              PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_DentroEstado.ASFloat;
                           End;
                           // Fora do Estado.
                           If (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) and (ProdutosICMS_ForaEstado.AsFloat > 0) then begin
                              PedidosItensAliquota_ICMSOper.Value := ProdutosICMS_ForaEstado.ASFloat;
                           End;

                           // Vereifica se o produto esta na tabela CAMEX.
                           If (ProdutosTabela_CAMEX.AsBoolean = true) and (ICMSICMS_CAMEX.AsFloat > 0) then begin
                              PedidosItensAliquota_ICMSOper.Value     := ICMSICMS_CAMEX.AsFloat;
                              PedidosItensAliquota_ICMSIntegral.Value := ICMSICMS_CAMEX.AsFloat;
                           End;

                           // Pegando as aliquota de ICMS na entrada.
                           if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin             // Cliente é de fora do estado.
                               PedidosItensAliquota_ICMSEntrada.value := ProdutosICMS_ForaEstadoEntrada.AsFloat;
                           end else begin                                                                       // Cliente é de dentro do estado.
                               PedidosItensAliquota_ICMSEntrada.value := ProdutosICMS_EstadoEntrada.AsFloat;
                           end;
                        end else begin
                           mUF := Trim(PedidosDestinatario_Estado.Value)+'_Reducao';
                           PedidosItensAliquota_ICMSReducao.Value := NCM.FieldbyName(mUF).AsFloat;
                           mUF := Trim(PedidosDestinatario_Estado.Value)+'_Reducao2';
                           PedidosItensAliquota_ICMSReducao2.Value := NCM.FieldbyName(mUF).AsFloat;

                           PedidosItensAliquota_ICMSOper.Value     := ProcessosDOCAliquota_ICMS.AsFloat - ProcessosDOCReducao_ICMS.AsFloat;
                           PedidosItensAliquota_ICMSIntegral.Value := ProcessosDOCAliquota_ICMS.AsFloat;
                        end;

                        If ProdutosTipo_Conversao.Value <> 'M' then
                           PedidosItensQuantidade.Value := (mQuantidade / ProdutosQuantidade_Unidade.asfloat)
                        else
                           PedidosItensQuantidade.Value := (mQuantidade * ProdutosQuantidade_Unidade.asfloat);

                        PedidosItensNCM.Value            := ProcessosImpItensNCM.Value;
                        PedidosItensUnidade_Medida.Value := ProdutosUnidade.Value;

                        // Pegando a aliquota do IPI.
                        PedidosItensAliquota_IPI.Value := 0;
                        If (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value) and (not TipoNotaIsencao_IPI.Value) then begin
                           // Pega a alíquota do IPI com prioridade para a alíquota na seguinte ordem: 1º Acordo Tarifário, 2º Redução, 3º Alíquota Normal.
                           PedidosItensAliquota_IPI.Value := ProdutosAliquota_IPI.Value;
                           If ProdutosReducao_IPI.AsFloat         > 0 then PedidosItensAliquota_IPI.Value := ProdutosReducao_IPI.Value;
                           If ProdutosAcordo_TarifarioIPI.AsFloat > 0 then PedidosItensAliquota_IPI.Value := ProdutosAcordo_TarifarioIPI.Value;
                        End;

                        // Pega a alíquota do II com prioridade para a alíquota na seguinte ordem: 1º Acordo Tarifário, 2º Redução, 3º Alíquota Normal.
                        PedidosItensAliquota_II.Value := ProdutosAliquota_II.Value;
                        If ProdutosReducao_II.AsFloat         > 0 then PedidosItensAliquota_II.Value := ProdutosReducao_II.Value;
                        If ProdutosAcordo_TarifarioII.AsFloat > 0 then PedidosItensAliquota_II.Value := ProdutosAcordo_TarifarioII.Value;

                        PedidosItensAliquota_PIS.Value       := 0;
                        PedidosItensAliquota_PISRed.Value    := 0;
                        PedidosItensAliquota_COFINS.Value    := 0;
                        PedidosItensAliquota_COFINSRed.Value := 0;

                        // Código de Situação Tributaria do PIS/COFINS.
                        mCST := '';
                        //mUF  := '';
                        if PedidosSaida_Entrada.AsInteger = 1 then begin
                           //mUF := Trim(ClientesEstado.Value)+'_ICMS';
                           If (ProdutosPIS_NotaSaida.AsFloat > 0) and (ProdutosPIS_NotaSaida.AsFloat = ConfiguracaoPIS_AliquotaBasicaSaida.AsFloat) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+B';                                     // 01.
                           If (ProdutosPIS_NotaSaida.AsFloat > 0) and (ProdutosPIS_NotaSaida.AsFloat <> ConfiguracaoPIS_AliquotaBasicaSaida.Value)   then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+D';                                     // 02.
                           If (TipoNotaCSTPIS_AliquotaUM.AsBoolean) or (ProdutosCSTPIS_AliquotaUM.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+UM';                                    // 03.
                           If (TipoNotaCSTPIS_Monofasica.AsBoolean) or (ProdutosCSTPIS_Monofasica.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+MONO+A0';                               // 04.
                           if (NCMPIS_ST.asboolean) and (ClientesVarejista.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ST';                                    // 05.
                           If (TipoNotaCSTPIS_AliquotaZero.AsBoolean) or (ProdutosCSTPIS_AliquotaZero.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';                                    // 06.
                           If (TipoNotaCSTPIS_Isenta.AsBoolean) or (ProdutosCSTPIS_Isenta.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';                                   // 07.
                           If (TipoNotaCSTPIS_SemIncidencia.AsBoolean) or (ProdutosCSTPIS_SemIncidencia.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC';                                  // 08.
                           If (TipoNotaCSTPIS_Suspensao.AsBoolean) or (ProdutosCSTPIS_Suspensao.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';                                   // 09.
                           If (TipoNotaCSTPIS_Outras.AsBoolean) or (ProdutosCSTPIS_Outras.AsBoolean) then
                              mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';                                     // Outras.
                        end else begin
                           if Trim(ProdutosCSTPIS_Entrada.AsString) <> '' then begin
                              if CSTPIS.Locate('Codigo', ProdutosCSTPIS_Entrada.Value, [loCaseInsensitive]) = true then begin
                                 mCST := CSTPISClassificacao.Value;
                              end;
                           end else begin
                              if Trim(TipoNotaCST_PIS.Value) <> '' then begin
                                 if CSTPIS.Locate('Codigo', TipoNotaCST_PIS.Value, [loCaseInsensitive]) = true then begin
                                    mCST := CSTPISClassificacao.Value;
                                 end;
                              end else begin
                                 If (ProdutosPIS_Nota.AsFloat > 0) then
                                    mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+RNTNTMIE'; // 56;
                              end;
                           end;

                           If (TipoNotaCSTPIS_Isenta.AsBoolean        = true) or (ProdutosCSTPIS_IsentaEnt.AsBoolean        = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+ISE';  // 71.
                           If (TipoNotaCSTPIS_Suspensao.AsBoolean     = true) or (ProdutosCSTPIS_SuspensaoEnt.AsBoolean     = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';  // 72.
                           If (TipoNotaCSTPIS_AliquotaZero.AsBoolean  = true) or (ProdutosCSTPIS_AliquotaZeroEnt.AsBoolean  = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+A0';   // 73.
                           If (TipoNotaCSTPIS_SemIncidencia.AsBoolean = true) or (ProdutosCSTPIS_SemIncidenciaEnt.AsBoolean = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SINC'; // 74.
                           If (TipoNotaCSTPIS_Outras.AsBoolean        = true) or (ProdutosCSTPIS_OutrasEnt.AsBoolean        = true) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+O';    // Outras.
                        end;

                        CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
                        if not CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                           mCST := '<>';
                           CSTPIS.Locate('Classificacao', mCST, [loCaseInsensitive]);
                           CSTCOFINS.Locate('Classificacao', mCST, [loCaseInsensitive]);
                        end;

                        PedidosItensCSTPIS.Value    := CSTPISCodigo.Value;
                        PedidosItensCSTCOFINS.Value := CSTPISCodigo.Value;

                        // Pegando as alíquotas de PIS/COFINS.
                        If (CSTPISTributavel.AsBoolean = true) or (CSTPISCodigo.Asstring = '49') then begin
                           If PedidosSaida_Entrada.AsInteger = 0 then begin
                              PedidosItensAliquota_PIS.Value    := ProdutosPIS_Nota.Value;
                              PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_Nota.Value;
                           end else begin
                              PedidosItensAliquota_PIS.Value    := ProdutosPIS_NotaSaida.Value;
                              PedidosItensAliquota_COFINS.Value := ProdutosCOFINS_NotaSaida.Value;
                           End;
                           If ProdutosReducao_PIS.Value > 0 then begin
                              If PedidosSaida_Entrada.AsInteger = 1 then begin
                                 PedidosItensAliquota_PISRed.Value    := ProdutosPIS_NotaSaida.AsFloat - ((ProdutosPIS_NotaSaida.AsFloat * ProdutosReducao_PIS.AsFloat   )/100);
                                 PedidosItensAliquota_COFINSRed.Value := ProdutosCOFINS_NotaSaida.AsFloat - ((ProdutosCOFINS_NotaSaida.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
                              end else begin
                                 PedidosItensAliquota_PISRed.Value    := ProdutosPIS_Nota.AsFloat - ((ProdutosPIS_Nota.AsFloat * ProdutosReducao_PIS.AsFloat   )/100);
                                 PedidosItensAliquota_COFINSRed.Value := ProdutosCOFINS_Nota.AsFloat - ((ProdutosCOFINS_Nota.AsFloat * ProdutosReducao_COFINS.AsFloat)/100);
                              End;
                           End;
                        End;

                        if TipoNotaApuracao_PISCOFINS.AsBoolean then begin
                           if CSTPISTributavel.AsBoolean then begin
                              if (PedidosItensAliquota_PIS.AsFloat+ProdutosValor_PIS.ASFloat+PedidosItensAliquota_COFINS.ASFloat+ ProdutosValor_COFINS.ASFloat) = 0 then begin
                                 if (not CSTPISAliquota_Zero.AsBoolean) and (CSTPISCOdigo.Value <> '99') then begin
                                    mErro := 4;
                                 end;
                              end;
                           end;
                        end;

                        If ConfiguracaoAdicao_PesoLiquido.Value = 0 then
                           PedidosItensPeso_Liquido.Value := ProcessosImpItensPeso_Liquido.AsFloat
                        else
                           PedidosItensPeso_Liquido.Value := ProdutosPeso_Liquido.AsFloat;

                        PedidosItensPeso_Bruto.Value := 0;
                        if ProcessosDOCPeso_Liquido.AsFloat > 0 then begin
                           If ConfiguracaoAdicao_PesoLiquido.Value = 0 then
                              PedidosItensPeso_Bruto.Value := (ProcessosDOCPeso_Bruto.AsFloat/ProcessosDOCPeso_Liquido.AsFloat) * (ProcessosImpItensPeso_Liquido.AsFloat)
                           else
                              PedidosItensPeso_Bruto.Value := (ProcessosDOCPeso_Bruto.AsFloat/ProcessosDOCPeso_Liquido.AsFloat) * (ProdutosPeso_Liquido.AsFloat);
                        end else begin
                           MessageDlg('Erro!'+#13+#13+'O peso líquido do processo é inválido.'+#13+#13+'Produto :'+ProdutosCodigo.AsString+'  '+ProdutosDescricao.AsString, mtError, [mbOK], 0);
                           PedidosItens.Cancel;
                           Abort;
                        end;

                        PedidosItensValor_Frete.Value        := 0;
                        PedidosItensValor_Seguro.Value       := 0;
                        PedidosItensValor_Despesa.Value      := 0;
                        PedidosItensValor_BCPIS.Value        := 0;
                        PedidosItensValor_PIS.Value          := 0;
                        PedidosItensValor_COFINS.Value       := 0;
                        PedidosItensValor_PIS2.Value         := 0;
                        PedidosItensValor_COFINS2.Value      := 0;

                        // Calculo do valor da PIS/COFINS da entrada. (Rateio) se o tipo de nota estiver marcado como rateio.
                        //-----------------------------------------------------------------( PIS )----------------------------------------------------------------//
                        if (ProcessosDOCValor_PIS.AsCurrency > 0) and (ProdutosAliquota_PIS.AsFloat > 0) then begin
                           {
                           if ConfiguracaoRateio_PIS.Value = 'V' then begin
                              PedidosItensValor_PIS.Value  := RoundTo( (ProcessosDOCValor_PIS.Value  / ProcessosDOCFOB_MEProcessosImpItens.Value) * ProcessosImpItensValor_Unitario.Value, -4);
                              PedidosItensValor_PIS2.Value := RoundTo( (ProcessosDOCValor_PIS2.Value / ProcessosDOCFOB_MEProcessosImpItens.Value) * ProcessosImpItensValor_Unitario.Value, -4);
                           end;
                           if ConfiguracaoRateio_PIS.Value = 'Q' then begin
                              PedidosItensValor_PIS.Value  := RoundTo((ProcessosDOCValor_PIS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_PIS2.Value := RoundTo((ProcessosDOCValor_PIS2.Value / ProcessosDOCQuantidade.Value), -4);
                           end;
                           if ConfiguracaoRateio_PIS.Value = 'P' then begin
                              PedidosItensValor_PIS.Value  := RoundTo(((ProcessosDOCValor_PIS.Value  / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value), -4);
                              PedidosItensValor_PIS2.Value := RoundTo(((ProcessosDOCValor_PIS2.Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value), -4);
                           end;
                           }
                           if ConfiguracaoRateio_PIS.Value = 'V' then begin
                              PedidosItensValor_PIS.Value  := RoundTo( (ProcessosDOCValor_PIS.Value  / tFOB.fieldbyname('FOBPISCOFINS_ME').Value) * ProcessosImpItensValor_Unitario.Value, -4);
                              PedidosItensValor_PIS2.Value := RoundTo( (ProcessosDOCValor_PIS2.Value / tFOB.fieldbyname('FOBPISCOFINS_ME').Value) * ProcessosImpItensValor_Unitario.Value, -4);
                           end;
                           if ConfiguracaoRateio_PIS.Value = 'Q' then begin
                              PedidosItensValor_PIS.Value  := RoundTo((ProcessosDOCValor_PIS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_PIS2.Value := RoundTo((ProcessosDOCValor_PIS2.Value / ProcessosDOCQuantidade.Value), -4);
                           end;
                           if ConfiguracaoRateio_PIS.Value = 'P' then begin
                              PedidosItensValor_PIS.Value  := RoundTo(((ProcessosDOCValor_PIS.Value  / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value), -4);
                              PedidosItensValor_PIS2.Value := RoundTo(((ProcessosDOCValor_PIS2.Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value), -4);
                           end;
                        end else begin
                           if mErro = 4 then begin
                              If (ProcessosDOCValor_PIS.AsCurrency > 0)  and (Dados.ProdutosAliquota_PIS.AsFloat <= 0) then
                                 MessageDlg('Atenção!'+#13+#13+'Falta informar a alíquota do PIS no cadastro do produto.'+#13+#13+'Valor do PIS não calculado.', mtError, [mbOK], 0);
                              If (ProcessosDOCValor_PIS.AsCurrency <= 0) and (Dados.ProdutosAliquota_PIS.AsFloat > 0)  then
                                 MessageDlg('Atenção!'+#13+#13+'Falta informar o valor do PIS no cadastro do processo.'+#13+#13+'Valor do PIS não calculado.'  , mtError, [mbOK], 0);
                           end;
                        end;

                        //---------------------------------------------------------------------( COFINS )--------------------------------------------------------------------//
                        If (ProcessosDOCValor_COFINS.AsCurrency > 0) and (Dados.ProdutosAliquota_COFINS.AsFloat > 0) then begin
                          {
                           If ConfiguracaoRateio_COFINS.Value = 'V' then begin
                              PedidosItensValor_COFINS.Value  := Roundto((ProcessosDOCValor_COFINS.Value  / ProcessosDOCFOB_MEProcessosImpItens.Value) * ProcessosImpItensValor_Unitario.Value, -4);
                              PedidosItensValor_COFINS2.Value := Roundto((ProcessosDOCValor_COFINS2.Value / ProcessosDOCFOB_MEProcessosImpItens.Value) * ProcessosImpItensValor_Unitario.Value, -4);
                           End;
                           If ConfiguracaoRateio_COFINS.Value = 'Q' then begin
                              PedidosItensValor_COFINS.Value  := RoundTo((ProcessosDOCValor_COFINS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_COFINS2.Value := RoundTo((ProcessosDOCValor_COFINS2.Value / ProcessosDOCQuantidade.Value), -4);
                           End;
                           If ConfiguracaoRateio_COFINS.Value = 'P' then begin
                              PedidosItensValor_COFINS.Value  := RoundTo((ProcessosDOCValor_COFINS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_COFINS2.Value := RoundTo((ProcessosDOCValor_COFINS2.Value / ProcessosDOCQuantidade.Value), -4);
                           End;
                           }
                           If ConfiguracaoRateio_COFINS.Value = 'V' then begin
                              PedidosItensValor_COFINS.Value  := Roundto((ProcessosDOCValor_COFINS.Value  / tFOB.fieldbyname('FOBPISCOFINS_ME').Value) * ProcessosImpItensValor_Unitario.Value, -4);
                              PedidosItensValor_COFINS2.Value := Roundto((ProcessosDOCValor_COFINS2.Value / tFOB.fieldbyname('FOBPISCOFINS_ME').Value) * ProcessosImpItensValor_Unitario.Value, -4);
                           End;
                           If ConfiguracaoRateio_COFINS.Value = 'Q' then begin
                              PedidosItensValor_COFINS.Value  := RoundTo((ProcessosDOCValor_COFINS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_COFINS2.Value := RoundTo((ProcessosDOCValor_COFINS2.Value / ProcessosDOCQuantidade.Value), -4);
                           End;
                           If ConfiguracaoRateio_COFINS.Value = 'P' then begin
                              PedidosItensValor_COFINS.Value  := RoundTo((ProcessosDOCValor_COFINS.Value  / ProcessosDOCQuantidade.Value), -4);
                              PedidosItensValor_COFINS2.Value := RoundTo((ProcessosDOCValor_COFINS2.Value / ProcessosDOCQuantidade.Value), -4);
                           End;
                        end else begin
                           if mErro = 4 then begin
                              If (ProcessosDOCValor_COFINS.AsCurrency > 0) and (Dados.ProdutosAliquota_COFINS.AsFloat <= 0) then
                                 MessageDlg('Atenção!'+#13+#13+'Falta informar a alíquota da COFINS no cadastro do produto.'+#13+#13+'Valor da COFINS não calculado.', mtError, [mbOK], 0);
                              If (ProcessosDOCValor_COFINS.AsCurrency <= 0) and (Dados.ProdutosAliquota_COFINS.AsFloat > 0) then
                                 MessageDlg('Atenção!'+#13+#13+'Falta informar o valor da COFINS no cadastro do processo.'+#13+#13+'Valor da COFINS não calculado.'  , mtError, [mbOK], 0);
                           end;
                        End;

                        // Calculo do rateio do Frete (Internacional).
                        if IncotermsFrete.AsBoolean then begin
                           if ConfiguracaoRateio_Frete.Value = 'V' then
                              PedidosItensValor_Frete.Value := ((ProcessosDOCFrete.Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value);
                           if ConfiguracaoRateio_Frete.Value = 'Q' then
                              PedidosItensValor_Frete.Value := RoundTo((ProcessosDOCFrete.Value / ProcessosDOCQuantidade.Value),-6);
                           if ConfiguracaoRateio_Frete.Value = 'P' then
                              PedidosItensValor_Frete.Value := Roundto((ProcessosDOCFrete.Value / ProcessosDOCPeso_Liquido.Value),-6) * PedidosItensPeso_Liquido.Value;
                        end;

                        // Calculo do rateio do Frete (Em Território nacional).
                        PedidosItensRateio_FreteTerrNac.Value := 0;
                        if ProcessosDOCRemover_FreteNacBC.AsBoolean then begin
                           if ConfiguracaoRateio_Frete.Value = 'V' then
                              PedidosItensRateio_FreteTerrNac.Value := ((ProcessosDOCFrete_NacionalReal.Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value);
                           if ConfiguracaoRateio_Frete.Value = 'Q' then
                              PedidosItensRateio_FreteTerrNac.Value := RoundTo((ProcessosDOCFrete_NacionalReal.Value / ProcessosDOCQuantidade.Value),-6);
                           if ConfiguracaoRateio_Frete.Value = 'P' then
                              PedidosItensRateio_FreteTerrNac.Value := Roundto((ProcessosDOCFrete_NacionalReal.Value / ProcessosDOCPeso_Liquido.Value),-6) * PedidosItensPeso_Liquido.Value;
                        end;

                        // Calculo do rateio do Seguro.
                        if IncotermsSeguro.AsBoolean = True then begin
                           if ConfiguracaoRateio_Seguro.Value = 'V' then
                              PedidosItensValor_Seguro.Value := (ProcessosDOCSeguro.Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value;
                           if ConfiguracaoRateio_Seguro.Value = 'Q' then
                              PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCQuantidade.Value),-6);
                           if ConfiguracaoRateio_Seguro.Value = 'P' then
                              PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCPeso_Liquido.Value), -6) * PedidosItensPeso_Liquido.Value;
                        end;

                        // Calculando o valor do II
                        SetRoundMode(rmNearest);
                        if Trim(TipoNotaCalculo_BCII.AsString) <> '' then begin
                           PedidosItensValor_BCII.Value := CalculaMacro('Calculo_BCII');
                        end;

                        // Arredonda o II para menos casas para o caso de diferença de centavos.
                        {
                        if not cII.Checked then begin
                           If mValorInformado <= 0 then
                              PedidosItensValor_II.Value := Roundto(Percentual(PedidosItensValor_BCII.Value, PedidosItensAliquota_II.Value), -7)
                           else
                              PedidosItensValor_II.Value := Roundto(Percentual(mValorInformado, PedidosItensAliquota_II.Value), -7);
                        end else begin
                           If mValorInformado <= 0 then
                              PedidosItensValor_II.Value := Roundto(Percentual(PedidosItensValor_BCII.Value, PedidosItensAliquota_II.Value), -4)
                           else
                              PedidosItensValor_II.Value := Roundto(Percentual(mValorInformado, PedidosItensAliquota_II.Value), -4);
                        end;
                        }
                        If mValorInformado <= 0 then
                           PedidosItensValor_II.Value := Percentual(PedidosItensValor_BCII.Value, PedidosItensAliquota_II.Value)
                        else
                           PedidosItensValor_II.Value := Percentual(mValorInformado, PedidosItensAliquota_II.Value);

                        // Mostra as formulas do II para Alt-H.
                        cFormula.Lines.Add('     CAMPO: Valor do II');
                        if mValorInformado <= 0 then begin
                           cFormula.Lines.Add('   FÓRMULA: Valor_BCII * Aliquota_II'  );
                           cFormula.Lines.Add('   VALORES: '+PedidosItensValor_BCII.AsString+' * '+PedidosItensAliquota_II.AsString+'%');
                        end else begin
                           cFormula.Lines.Add('   FÓRMULA: Valor_Informado' );
                           cFormula.Lines.Add('   VALORES: Percentual(('+FloattoStr(mValorInformado)+', '+PedidosItensAliquota_II.AsString+'%)');
                        end;
                        cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_II.Value));
                        cFormula.Lines.Add('');

                        // Calculo do rateio da taxa do siscomex. "Pelo Valor FOB ou Valor CIF".
                        PedidosItensRateio_SISCOMEX.Value := 0;
                        If Dados.ProcessosDOCTaxa_SISCOMEX.Value > 0 then begin
                           If Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                              PedidosItensRateio_SISCOMEX.Value := (ProcessosDOCTaxa_SISCOMEX.Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value;
                           end else begin
                              PedidosItensRateio_SISCOMEX.Value := (ProcessosDOCTaxa_SISCOMEX.Value / tFOB.FieldByName('CIF_Total').Value) * (ProcessosImpItensValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                           End;
                        End;

                        // Calculo do rateio da AFRMM. "Pelo Valor FOB ou Valor CIF".
                        PedidosItensValor_AFRMM.Value := 0;
                        if mAFRMM > 0 then begin
                           if not ProcessosDOCEntreposto.AsBoolean then begin
                              if Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_AFRMM.Value := (mAFRMM / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value;
                              end else begin
                                 PedidosItensValor_AFRMM.Value := (mAFRMM / tFOB.FieldByName('CIF_Total').Value) * (ProcessosImpItensValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              end;
                           end else begin
                              if Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_AFRMM.Value := (mAFRMM / tFOB.FieldByName('FOB_Mestre').Value) * ProcessosImpItensValor_SemAdValorem.Value;
                              end else begin
                                 PedidosItensValor_AFRMM.Value := (mAFRMM / tFOB.FieldByName('FOB_Mestre').Value) * (ProcessosImpItensValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              end;
                           end;
                        end;

                        // Adicionando o valor do AFRMM na descrição do item "Exigência do estado de RONDÔNIA".
                        if (TipoNotaVisiveis_AFRMM.AsBoolean) and (PedidosItensValor_AFRMM.AsFloat > 0) then begin
                           if ProdutosTipo_Conversao.Value <> 'M' then
                              PedidosItensDescricao_Mercadoria.Value := PedidosItensDescricao_Mercadoria.Value + #13 +'VALOR AFRMM.............: ' + FormatFloat('R$ ,##0.00', PedidosItensValor_AFRMM.AsCurrency * (PedidosItensQuantidade.AsFloat * ProdutosQuantidade_Unidade.asfloat))
                           else
                              PedidosItensDescricao_Mercadoria.Value := PedidosItensDescricao_Mercadoria.Value + #13 +'VALOR AFRMM.............: ' + FormatFloat('R$ ,##0.00', PedidosItensValor_AFRMM.AsCurrency * (PedidosItensQuantidade.AsFloat / ProdutosQuantidade_Unidade.asfloat));
                        end;

                        // Calculo do rateio das Despesas "MESTRE".
                        mDespesaMestre := 0;
                        If (ProcessosDOCEntreposto.AsBoolean = true) then begin
                           If tDespesas.FieldByName('Valor_DespesasMestre').AsCurrency > 0 then begin
                              If (ConfiguracaoRateio_Despesas.Value = 'V') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                                 If tFOB.FieldByName('FOB_Mestre').Value > 0 then begin
                                    mDespesaMestre := (tDespesas.FieldByName('Valor_DespesasMestre').Value / tFOB.FieldByName('FOB_Mestre').Value) * ProcessosImpItensValor_SemAdValorem.Value;
                                 End;
                              End;
                              If (ConfiguracaoRateio_Despesas.Value = 'Q') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaMestre := tDespesas.FieldByName('Valor_DespesasMestre').Value / ProcessosDOCQuantidade.Value;
                              If (ConfiguracaoRateio_Despesas.Value = 'P') or (ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaMestre := (tDespesas.FieldByName('Valor_DespesasMestre').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value;
                           End;
                        End;

                        // Calculo do rateio das Despesas "Seletivas".
                        mDespesaSeletivo := 0;
                        If ProdutosCusto_Seletivo.AsBoolean = true then begin
                           If tDespesas.FieldByName('Valor_Seletivo').AsCurrency > 0 then begin
                              If (ConfiguracaoRateio_Despesas.Value = 'V') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaSeletivo := ((tDespesas.FieldByName('Valor_Seletivo').Value / tFOB.FieldByName('FOB_Seletivo').Value) * ProcessosImpItensValor_SemAdValorem.Value);
                              If (ConfiguracaoRateio_Despesas.Value = 'Q') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaSeletivo := tDespesas.FieldByName('Valor_Seletivo').Value / ProcessosDOCQuantidade.Value;
                              If (ConfiguracaoRateio_Despesas.Value = 'P') or (ProcessosDOCRateia_FretePeso.AsBoolean) then
                                 mDespesaSeletivo := (tDespesas.FieldByName('Valor_Seletivo').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value;
                           End;
                        End;

                        // Calculo do rateio das Despesas (Entrada/Saida) "FILHO". (Pelo Valor FOB ou Valor CIF).
                        If tDespesas.FieldByName('Valor_Despesas').AsCurrency > 0 then begin
                           If (ConfiguracaoRateio_Despesas.Value = 'V') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                              If Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_Despesa.Value := (tDespesas.FieldByName('Valor_Despesas').AsCurrency / tFOB.FieldByName('FOB_Total').AsCurrency) * ProcessosImpItensValor_SemAdValorem.AsCurrency;
                              end else begin
                                 PedidosItensValor_Despesa.Value := (tDespesas.FieldByName('Valor_Despesas').Value / tFOB.FieldByName('CIF_Total').Value) * (ProcessosImpItensValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              End;
                           End;
                           If (ConfiguracaoRateio_Despesas.Value = 'Q') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                              PedidosItensValor_Despesa.Value := (tDespesas.FieldByName('Valor_Despesas').Value / ProcessosDOCQuantidade.Value);
                           end;
                           If (ConfiguracaoRateio_Despesas.Value = 'P') or (ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                              PedidosItensValor_Despesa.Value      := ((tDespesas.FieldByName('Valor_Despesas').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value);
                           end;
                        End;

                        // Calculo do rateio das Despesas (Outros) "FILHO".
                        If tDespesas.FieldByName('Valor_DespesasOutros').AsCurrency > 0 then begin
                           If (ConfiguracaoRateio_Despesas.Value = 'V') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then begin
                              If Uppercase(Trim(ConfiguracaoRateio_DespesasValor.AsString)) = 'FOB' then begin
                                 PedidosItensValor_DespesasOutros.Value := (tDespesas.FieldByName('Valor_DespesasOutros').Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value;
                              end else begin
                                 PedidosItensValor_DespesasOutros.Value := (tDespesas.FieldByName('Valor_DespesasOutros').Value / tFOB.FieldByName('CIF_Total').Value) * (ProcessosImpItensValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value+PedidosItensValor_II.Value);
                              End;
                           End;
                           If (ConfiguracaoRateio_Despesas.Value = 'Q') and (not ProcessosDOCRateia_FretePeso.AsBoolean) then
                              PedidosItensValor_DespesasOutros.Value := (tDespesas.FieldByName('Valor_DespesasOutros').Value / ProcessosDOCQuantidade.Value);
                           If (ConfiguracaoRateio_Despesas.Value = 'P') or (ProcessosDOCRateia_FretePeso.AsBoolean) then
                              PedidosItensValor_DespesasOutros.Value := (tDespesas.FieldByName('Valor_DespesasOutros').Value / ProcessosDOCPeso_Liquido.Value) * PedidosItensPeso_Liquido.Value;
                        End;

                        // PedidosItensValor_DespesasOutros.Value := PedidosItensValor_DespesasOutros.Value;
                        PedidosItensValor_Despesa.Value := PedidosItensValor_Despesa.Value + mDespesaMestre + mDespesaSeletivo;

                        // Para totais de despesa menores do que um centavo, joga para um centavo pois a NF-e só aceita duas casas decimais.
                        If (PedidosItensValor_Despesa.Value > 0) and ((PedidosItensValor_Despesa.Value * PedidosItensQuantidade.AsFloat) < 0.01) then begin
                           PedidosItensValor_Despesa.Value := 0.01;
                        End;

                        // Calculo do rateio do ICMS do Processo.
                        If ProcessosDOCValor_ICMS.AsCurrency > 0 then begin
                           PedidosItensRateio_ICMSProcesso.Value := (ProcessosDOCValor_ICMS.Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value;
                        End;

                        // Calculo do rateio do DUMPING do Processo.
                        If (ProcessosDOCValor_Dumping.AsCurrency > 0) and (ProdutosDumping.AsBoolean = true) then begin
                           If tDumping.FieldByName('TotalFOB_Dumping').AsCurrency > 0 then begin
                              PedidosItensValor_Dumping.Value := (ProcessosDOCValor_Dumping.AsCurrency / tDumping.FieldByName('TotalFOB_Dumping').AsCurrency) * ProcessosImpItensValor_SemAdValorem.AsFloat;
                           end else begin
                              mErro := 7;
                           end;
                        End;

                        // Caculando o valor do produto sem impostos.
                        // Se houver valor informado pelo usuario utiliza-o ao inves do valor unitario calculado.
                        PedidosItensValor_Unitario.Value := mValorInformado;
                        if mValorInformado <= 0 then begin
                           if Trim(TipoNotaCalculo_Mercadoria.AsString) <> '' then begin
                              if TipoNotaArredondar_Unitario.AsBoolean then
                                 PedidosItensValor_Unitario.Value := Roundto(CalculaMacro('Calculo_Mercadoria'), -5)
                              else
                                 PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_Mercadoria');
                           end;
                        end;

                        PedidosItensAliquota_IRPJ.Value := PedidosAliquota_IRPJ.Value;
                        PedidosItensAliquota_CSLL.Value := PedidosAliquota_CSLL.Value;

                        // Calculo do valor do IRPJ.
                        If PedidosItensAliquota_IRPJ.AsFloat > 0 then PedidosItensValor_IRPJ.Value := Percentual((PedidosItensValor_Unitario.Value * PedidosItensQuantidade.AsFloat), PedidosItensAliquota_IRPJ.AsFloat);

                        // Calculo do valor do CSLL.
                        If PedidosItensAliquota_CSLL.AsFloat > 0 then PedidosItensValor_CSLL.Value := Percentual((PedidosItensValor_Unitario.Value * PedidosItensQuantidade.AsFloat), PedidosItensAliquota_CSLL.AsFloat);

                        // Calculo do valor de PIS / COFINS da Entrada se o tipo de nota estiver marcado para calcular..
                        If (PedidosSaida_Entrada.AsInteger = 0) and (TipoNotaRateio_PISCOFINSEntrada.AsInteger = 1) then begin
                           If Trim(TipoNotaCalculo_BCPIS.AsString)  <> '' then PedidosItensValor_BCPIS.Value  := CalculaMacro('Calculo_BCPIS');
                           If Trim(TipoNotaCalculo_PIS.AsString)    <> '' then PedidosItensValor_PIS.Value    := RoundTo(CalculaMacro('Calculo_PIS')   , -2);
                           If Trim(TipoNotaCalculo_COFINS.AsString) <> '' then PedidosItensValor_COFINS.Value := RoundTo(CalculaMacro('Calculo_COFINS'), -2);
                        End;

                        // Applicando o desconto no valor unitario(Percentual).
                        If PedidosItensDesconto.Value > 0 then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then begin
                              PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - (Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value))) * ProdutosQuantidade_Unidade.Value;
                           end else begin
                              PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - (Percentual(PedidosItensValor_Unitario.Value, PedidosItensDesconto.Value))) / ProdutosQuantidade_Unidade.Value;
                           End;
                        End;

                        // Applicando o desconto no valor unitario(Valor).
                        If PedidosItensDesconto_Valor.Value > 0 then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value) * ProdutosQuantidade_Unidade.Value
                           else
                              PedidosItensValor_Unitario.Value := (PedidosItensValor_Unitario.Value - PedidosItensDesconto_Valor.Value) / ProdutosQuantidade_Unidade.Value;
                        End;
                        If ProdutosTipo_Conversao.Value <> 'M' then
                           PedidosItensValor_Total.Value := PedidosItensValor_Unitario.ascurrency * PedidosItensQuantidade.AsFloat
                        else
                           PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.ascurrency * (PedidosItensQuantidade.asfloat / ProdutosQuantidade_Unidade.asfloat), -2);

                        // Calculo do IPI "Verifica se o IPI é por alíquota ou por valor unitario - "Só calula o IPI se houver formula nos casos de alíquota e se não for informado valor.".
                        PedidosItensValor_IPI.Value := 0;
                        PedidosItensTotal_IPI.Value := 0;

                        if (not NCMIPI_Isento.Value) and (not NCMIPI_Suspensao.Value) and (not TipoNotaNao_Tributada_IPI.Value) and (not TipoNotaImune_IPI.Value) and (not TipoNotaSuspensao_IPI.Value) and (not TipoNotaIsencao_IPI.Value) then begin
                           if mBCIPIInformado = 0 then begin
                              if ProdutosValor_IPI.Value = 0 then begin
                                 if Trim(TipoNotaCalculo_BCIPI.AsString) <> '' then begin
                                    PedidosItensValor_BCIPI.Value := CalculaMacro('Calculo_BCIPI');
                                    if ProdutosTipo_Conversao.Value <> 'M' then
                                       PedidosItensValor_IPI.Value := Percentual(PedidosItensValor_BCIPI.value, PedidosItensAliquota_IPI.value) / (PedidosItensQuantidade.asfloat / ProdutosQuantidade_Unidade.value)
                                    else
                                       PedidosItensValor_IPI.Value := Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value) / (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value);
                                 end;
                              end else begin
                                 if ProdutosTipo_Conversao.Value <> 'M' then
                                    PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value
                                 else
                                    PedidosItensValor_IPI.Value := ProdutosValor_IPI.Value * ProdutosQuantidade_Unidade.Value;
                              end;

                              PedidosItensTotal_IPI.Value := Roundto(Percentual(PedidosItensValor_BCIPI.Value, PedidosItensAliquota_IPI.Value), -2);
                           end else begin
                              PedidosItensValor_BCIPI.Value := mBCIPIInformado;
                              PedidosItensValor_IPI.Value   := Roundto(Percentual(PedidosItensValor_BCIPI.Value, ProdutosAliquota_IPI.Value), -2) / PedidosItensQuantidade.Value;

                              if ProdutosTipo_Conversao.Value <> 'M' then
                                 PedidosItensTotal_IPI.Value := Roundto((PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value)), -2)
                              else
                                 PedidosItensTotal_IPI.Value := Roundto((PedidosItensValor_IPI.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value)), -2);
                           end;
                        end;

                        // Zera a base de cálculo do IPI para produtos com IPI zerados.
                        If PedidosItensValor_IPI.asfloat <= 0 then
                           PedidosItensValor_BCIPI.Value := 0;

                        // Calculando a base do ICMS Operacional.
                        If (not NCMICMS_Isento.AsBoolean) and (not NCMICMS_Suspensao.AsBoolean) and (not TipoNotaNao_Tributada_ICMS.AsBoolean) and (not TipoNotaSuspensao_ICMS.AsBoolean) then begin
                           If mBCICMSOperInformado = 0 then begin
                              If Trim(TipoNotaCalculo_BCICMS.AsString) <> '' then begin
                                 If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                                    PedidosItensValor_BCICMSOper.Value := Roundto(CalculaMacro('Calculo_BCICMS'), -2);
                                 end else begin
                                    mErro                               := 2;
                                    PedidosItensAliquota_ICMSOper.Value := 0;
                                 End;
                              End;
                           end else begin
                              PedidosItensValor_BCICMSOper.Value := mBCICMSOperInformado;
                           End;

                           // Calculando o valor do ICMS Operacional.
                           If Trim(TipoNotaCalculo_VlrICMS.AsString) <> '' then begin
                              If PedidosItensAliquota_ICMSOper.Value <> 0 then begin
                                 PedidosItensValor_ICMSOper.Value := Roundto(CalculaMacro('Calculo_VlrICMS'), -2)
                              end else begin
                                 PedidosItensValor_ICMSOper.Value := 0;
                              End;
                           End;
                        End;

                        PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;
                        if ProdutosOrigem.Value = 'I' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
                        if ProdutosOrigem.Value = 'N' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA2.Value;
                        if ProdutosOrigem.Value = 'M' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA3.Value;

                        // Calculo do Diferencial de alíquota do ICMS.
                        PedidosItensValor_BCICMSDest.Value := 0;
                        PedidosItensValor_ICMSDest.Value   := 0;
                        PedidosItensValor_BCDIFAL.Value    := 0;
                        PedidosItensDIFAL_Valor.Value      := 0;
                        PedidosItensDIFAL_PercOrig.Value   := 0;
                        PedidosItensDIFAL_ValorOrig.Value  := 0;
                        PedidosItensDIFAL_PercDest.Value   := 0;
                        PedidosItensDIFAL_ValorDest.Value  := 0;
                        PedidosItensFCP_Aliquota.Value     := 0;
                        PedidosItensFCP_ValorDest.Value    := 0;
                        PedidosItensFCP_ICMSOrig.Value     := 0;
                        PedidosItensFCP_ICMSDest.Value     := 0;
                        PedidosItensValor_BCFCP.Value      := 0;
                        PedidosItensValor_FCP.Value        := 0;
                        PedidosItensValor_BCFCPST.Value    := 0;
                        PedidosItensValor_FCPST.Value      := 0;

                        if ProdutosFCP.AsBoolean then begin
                           // Cliente é de fora do estado.
                           if PedidosDestinatario_Estado.Value <> EmpresasEstado.Value then begin
                              // Cliente é consumidor final.
                              if (Clientes.FieldByName('Consumidor_Final').AsBoolean) and (not Clientes.FieldByName('MEI').AsBoolean) then begin
                                 if TipoNotaFinalidade_Mercadoria.Value = 0 then begin
                                    PedidosItensFCP_Aliquota.Value  := ICMSFCP.Value;
                                    PedidosItensFCP_ValorDest.Value := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, ICMSFCP.Value), -2);
                                    PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, mAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
                                    PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensFCP_ICMSDest.Value, ConfiguracaoDIFAL_ICMSPart.Value), -2);
                                    PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, mAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
                                    PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensFCP_ICMSOrig.Value, (100-ConfiguracaoDIFAL_ICMSPart.Value)), -2);

                                    // Calculo do FCP pela CST ICMS.
                                    case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','20','51','70','90']) of
                                         0..4: PedidosItensValor_BCFCP.Value := PedidosItensValor_BCICMSOper.Value;
                                    end;
                                    case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['00','10','20','51','70','90']) of
                                         0..5: begin
                                                    PedidosItensValor_BCFCP.Value := PedidosItensValor_BCICMSOper.Value;
                                                    PedidosItensValor_FCP.Value   := roundto(Percentual(PedidosItensValor_BCICMSOper.Value, ICMSFCP.Value), -2);
                                               end;
                                    end;
                                    // Calculo do FCP ST pela CST ICMS.
                                    case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','30','70','90','201','202','203','900']) of
                                         0..7: begin
                                                    PedidosItensValor_BCFCPST.Value := PedidosItensValor_BCICMSSub.Value;
                                                    PedidosItensValor_FCPST.Value   := Roundto(Percentual(PedidosItensValor_BCICMSSub.Value, ICMSFCP.Value)-PedidosItensValor_FCP.Value, -2);
                                               end;
                                    end;
                                    if PedidosItensValor_FCP.Value > 0 then begin
                                       PedidosItensFCP_ValorDest.Value := 0;
                                       PedidosItensFCP_ICMSDest.Value  := 0;
                                       PedidosItensFCP_ICMSDest.Value  := 0;
                                       PedidosItensFCP_ICMSOrig.Value  := 0;
                                       PedidosItensFCP_ICMSOrig.Value  := 0;
                                    end;
                                 end;
                              end;
                           end;
                        end;
                        if (TipoNotaSaida_Entrada.Value = 1) then begin
                           if (TipoNotaVisiveis_DIFAL.AsBoolean) then begin  // Nota Fiscal de saída.
                              // DIFAL.
                              mAliquotaDIFAL := ICMSICMS_Interno.AsFloat;
                              mUF            := Trim(ClientesEstado.Value)+'_ICMS';
                              NCM.Locate('NCM', PedidosItensNCM.AsString, [loCaseInsensitive]);;
                              if NCM.FieldbyName(mUF).AsFloat > 0 then begin
                                 mAliquotaDIFAL := NCM.FieldbyName(mUF).AsFloat;
                              end;

                              if not PedidosComplementar.AsBoolean then Begin
                                 if PedidosItensAliquota_ICMSOper.Value <> ICMSICMS_Interno.Value then begin
                                    if (Clientes.FieldByName('Consumidor_Final').AsBoolean) and (not Clientes.FieldByName('MEI').AsBoolean) then begin
                                       if (PedidosDestinatario_Estado.Value <> EmpresasEstado.Value) then begin
                                          if TipoNotaFinalidade_Mercadoria.Value = 0 then begin
                                             PedidosItensValor_BCICMSDest.Value := PedidosItensValor_BCICMSOper.Value;
                                             PedidosItensValor_ICMSDest.Value   := Roundto(Percentual(PedidosItensValor_BCICMSOper.Value, ICMSICMS_Interno.Value), -2);
                                             PedidosItensValor_BCDIFAL.Value    := CalculaMacro('Calculo_BCDIFAL');
                                             PedidosItensDIFAL_Valor.Value      := CalculaMacro('Calculo_DIFAL');
                                             PedidosItensDIFAL_PercOrig.Value   := 100 - ConfiguracaoDIFAL_ICMSPart.Value;
                                             PedidosItensDIFAL_ValorOrig.Value  := Roundto(Percentual(PedidosItensDIFAL_Valor.Value, (100-ConfiguracaoDIFAL_ICMSPart.Value)), -2);
                                             PedidosItensDIFAL_PercDest.Value   := ConfiguracaoDIFAL_ICMSPart.Value;
                                             PedidosItensDIFAL_ValorDest.Value  := Roundto(Percentual(PedidosItensDIFAL_Valor.Value, ConfiguracaoDIFAL_ICMSPart.Value), -2);
                                          end;
                                       end;
                                    end;
                                 end;
                              end;
                           end;

                           mUF                              := Trim(ClientesEstado.Value)+'_ReducaoST';
                           PedidosItensReducao_ICMSST.Value := NCM.FieldbyName(mUF).AsFloat;

                           if (ProdutosOrigem.Value = 'I') or (ProdutosOrigem.Value = 'M') then begin
                              mUF := Trim(ClientesEstado.Value)+'_MVA';
                           end else begin
                              mUF := Trim(ClientesEstado.Value)+'_MVANac';
                           end;

                           if not NCMMVA_NaoReducao.AsBoolean then begin
                              if Dados.ClientesSimples_Nacional.AsBoolean = false then begin
                                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                              end else begin
                                 PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat - ((NCM.FieldbyName(mUF).AsFloat * ICMSReducao_MVASimplesNac.AsFloat)/100);
                              end;
                           end else begin
                              PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;
                           end;
                           If Trim(TipoNotaCalculo_BCMVA.AsString) <> '' then begin
                              PedidosItensValor_BCMVA.Value := CalculaMacro('Calculo_BCMVA');
                              If TipoNotaCalculo_VlrMVA.Value <> '' then begin
                                 If PedidosItensAliquota_MVA.Value <> 0 then
                                    PedidosItensValor_MVA.Value := CalculaMacro('Calculo_VlrMVA')
                                 else begin
                                    PedidosItensValor_MVA.Value := 0;
                                    mErro                       := 3;
                                 End;
                              End;
                           end else begin
                              PedidosItensValor_BCMVA.Value := 0;
                              PedidosItensValor_MVA.Value   := 0;
                           End;

                           // Pegando a aliquota e calculando o ICMS Substitutivo.
                           PedidosItensValor_BCICMSSub.Value  := 0;
                           PedidosItensValor_ICMSSub.Value    := 0;
                           mUF                                := Trim(ClientesEstado.Value)+'_ICMS';
                           PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;

                           If PedidosItensAliquota_ICMSSub.Value > 0 then begin
                              If mBCICMSSubInformado = 0 then begin
                                 If Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then begin
                                    PedidosItensValor_BCICMSSub.Value := Roundto(CalculaMacro('Calculo_BCICMSSub'), -2);
                                    If TipoNotaCalculo_VlrICMSSub.Value <> '' then begin
                                       PedidosItensValor_ICMSSub.Value := Roundto(CalculaMacro('Calculo_VlrICMSSub'), -2);
                                    End;
                                 End;
                              end else begin
                                 PedidosItensValor_BCICMSSub.Value := mBCICMSSubInformado;
                              End;
                           end else begin
                              If (Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '') and (mBCICMSSubInformado = 0) then mErro := 1;
                           End;
                        end else begin
                           // Pegando a aliquota e calculando o MVA. (Se o cliente é do "Simples Naciona, verifica redução de alíquota.').
                           mUF := Trim(FornecedoresEstado.Value)+'_ReducaoST';
                           PedidosItensReducao_ICMSST.Value := NCM.FieldbyName(mUF).AsFloat;

                           if (ProdutosOrigem.Value = 'I') or (ProdutosOrigem.Value = 'M') then begin
                              mUF := Trim(FornecedoresEstado.Value)+'_MVA';
                           end else begin
                              mUF := Trim(FornecedoresEstado.Value)+'_MVANac';
                           end;
                           PedidosItensAliquota_MVA.Value := NCM.FieldbyName(mUF).AsFloat;

                           If Trim(TipoNotaCalculo_BCMVA.AsString) <> '' then begin
                              PedidosItensValor_BCMVA.Value := CalculaMacro('Calculo_BCMVA');
                              If Trim(TipoNotaCalculo_VlrMVA.AsString) <> '' then begin
                                 If PedidosItensAliquota_MVA.Value <> 0 then
                                    PedidosItensValor_MVA.Value := CalculaMacro('Calculo_VlrMVA')
                                 else
                                    PedidosItensValor_MVA.Value := 0;
                              End;
                           end else begin
                              PedidosItensValor_BCMVA.Value := 0;
                              PedidosItensValor_MVA.Value   := 0;
                           End;

                           // Pegando a aliquota e calculando o ICMS Substitutivo.
                           PedidosItensValor_BCICMSSub.Value  := 0;
                           PedidosItensValor_ICMSSub.Value    := 0;
                           mUF                                := Trim(FornecedoresEstado.Value)+'_ICMS';
                           PedidosItensAliquota_ICMSSub.Value := NCM.FieldbyName(mUF).AsFloat;
                           If PedidosItensAliquota_ICMSSub.Value > 0 then begin
                              If mBCICMSSubInformado = 0 then begin
                                 If Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '' then begin
                                    PedidosItensValor_BCICMSSub.Value := Roundto(CalculaMacro('Calculo_BCICMSSub'), -2);
                                    If Trim(TipoNotaCalculo_VlrICMSSub.AsString) <> '' then begin
                                       PedidosItensValor_ICMSSub.Value := Roundto(CalculaMacro('Calculo_VlrICMSSub'), -2);
                                    End;
                                 End;
                              end else begin
                                 PedidosItensValor_BCICMSSub.Value := mBCICMSSubInformado;
                              End;
                           end else begin
                              If (Trim(TipoNotaCalculo_BCICMSSub.AsString) <> '') and (mBCICMSSubInformado = 0) then mErro := 1;
                           End;
                        End;

                        if ProdutosFCP.AsBoolean then begin
                           // Cliente é de fora do estado.
                           if PedidosDestinatario_Estado.Value <> EmpresasEstado.Value then begin
                              // Cliente é consumidor final.
                              if (Clientes.FieldByName('Consumidor_Final').AsBoolean) and (not Clientes.FieldByName('MEI').AsBoolean) then begin
                                 if TipoNotaFinalidade_Mercadoria.Value = 0 then begin
                                    PedidosItensFCP_Aliquota.Value  := ICMSFCP.Value;
                                    PedidosItensFCP_ValorDest.Value := Roundto(Percentual(PedidosItensValor_BCDIFAL.Value, ICMSFCP.Value), -2);
                                    PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensValor_BCDIFAL.Value, mAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
                                    PedidosItensFCP_ICMSDest.Value  := Roundto(Percentual(PedidosItensFCP_ICMSDest.Value, ConfiguracaoDIFAL_ICMSPart.Value), -2);
                                    PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensValor_BCDIFAL.Value, mAliquotaDIFAL) - PedidosItensValor_ICMSOper.Value, -2);
                                    PedidosItensFCP_ICMSOrig.Value  := Roundto(Percentual(PedidosItensFCP_ICMSOrig.Value, (100-ConfiguracaoDIFAL_ICMSPart.Value)), -2);

                                    // Calculo do FCP pela CST ICMS.
                                    case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','20','51','70','90']) of
                                         0..4: PedidosItensValor_BCFCP.Value := PedidosItensValor_BCDIFAL.Value;
                                    end;
                                    case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['00','10','20','51','70','90']) of
                                         0..5: begin
                                                    PedidosItensValor_BCFCP.Value := PedidosItensValor_BCDIFAL.Value;
                                                    PedidosItensValor_FCP.Value   := roundto(Percentual(PedidosItensValor_BCDIFAL.Value, ICMSFCP.Value), -2);
                                               end;
                                    end;
                                    // Calculo do FCP ST pela CST ICMS.
                                    case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['10','30','70','90','201','202','203','900']) of
                                         0..7: begin
                                                    PedidosItensValor_BCFCPST.Value := PedidosItensValor_BCICMSSub.Value;
                                                    PedidosItensValor_FCPST.Value   := Roundto(Percentual(PedidosItensValor_BCICMSSub.Value, ICMSFCP.Value)-PedidosItensValor_FCP.Value, -2);
                                               end;
                                    end;
                                    if PedidosItensValor_FCP.Value > 0 then begin
                                       PedidosItensFCP_ValorDest.Value := 0;
                                       PedidosItensFCP_ICMSDest.Value  := 0;
                                       PedidosItensFCP_ICMSDest.Value  := 0;
                                       PedidosItensFCP_ICMSOrig.Value  := 0;
                                       PedidosItensFCP_ICMSOrig.Value  := 0;
                                    end;

                                    cFormula.Lines.Add('     CAMPO: Valor da Base de Cálculo do FCP');
                                    cFormula.Lines.Add('   FÓRMULA: ((Valor BC ICMS Oper - Valor ICMS Oper) / .78)');
                                    cFormula.Lines.Add('   VALORES: (('+PedidosItensValor_BCICMSOper.AsString+' - '+PedidosItensValor_ICMSOper.AsString+') / .78)');
                                    cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_BCFCP.Value * ProdutosQuantidade_Unidade.Value));
                                    cFormula.Lines.Add('');
                                    cFormula.Lines.Add('     CAMPO: Valor do FCP');
                                    cFormula.Lines.Add('   FÓRMULA: Valor BC ICMS Oper * 2%');
                                    cFormula.Lines.Add('   VALORES: '+PedidosItensValor_BCFCP.AsString+' * '+PedidosItensFCP_Aliquota.AsString);
                                    cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_FCP.Value));
                                    cFormula.Lines.Add('');
                                 end;
                              end;
                           end;
                        end;

                        // Calculo do DIAL ST.
                        if TipoNotaFinalidade_Mercadoria.asinteger in[1, 6] then Begin
                           if trim(TipoNotaCalculo_BCDIFALST.asstring) <> '' then begin
                              PedidosItensValor_BCDIFALST.Value := Roundto(CalculaMacro('Calculo_BCDIFALST'), -2);
                              PedidosItensDIFAL_ValorST.Value   := Roundto(CalculaMacro('Calculo_DIFALST'), -2);
                           end;
                        end;

                        If (ProcessosDOCValor_COFINS.AsCurrency > 0) and (Dados.ProdutosAliquota_COFINS.AsFloat > 0) then begin
                           // Mostra os rateios do PIS para Alt-H.
                           cFormula.Lines.Add('     CAMPO: Valor do PIS rateado');
                           cFormula.Lines.Add('   FÓRMULA: RoundTo((ProcessosDOCValor_PIS.Value / tFOB.fieldbyname(''FOBPISCOFINS_ME'').Value) * ProcessosImpItensValor_Unitario.Value, -4)');
                           cFormula.Lines.Add('   VALORES: '+ProcessosDOCValor_PIS.AsString+' / ' + tFOB.fieldbyname('FOBPISCOFINS_ME').asstring + ' * ' + ProcessosImpItensValor_Unitario.asstring);
                           cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_PIS.Value));
                           cFormula.Lines.Add('');
                           // Mostra os rateios do PIS para Alt-H.
                           cFormula.Lines.Add('     CAMPO: Valor da COFINS rateado');
                           cFormula.Lines.Add('   FÓRMULA: RoundTo((ProcessosDOCValor_COFINS.Value / tFOB.fieldbyname(''FOBPISCOFINS_ME'').Value) * ProcessosImpItensValor_Unitario.Value, -4)');
                           cFormula.Lines.Add('   VALORES: '+ProcessosDOCValor_COFINS.AsString+' / ' + tFOB.fieldbyname('FOBPISCOFINS_ME').asstring + ' * ' + ProcessosImpItensValor_Unitario.asstring);
                           cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_COFINS.Value));
                           cFormula.Lines.Add('');
                        end;

                        // Recalcula o valor unitario do produto com base no segundo campo de formula.
                        // Calculo_MercadoriaImp = Valores extras calculados sobre o valor do produto.
                        if Trim(TipoNotaCalculo_MercadoriaImp.AsString) <> '' then begin
                           PedidosItensValor_Unitario.Value := CalculaMacro('Calculo_MercadoriaImp');
                        end;
                        if ProdutosTipo_Conversao.Value <> 'M' then begin
                           PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value * ProdutosQuantidade_Unidade.Value;
                        end else begin
                           PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value / ProdutosQuantidade_Unidade.Value;
                        end;
                        PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * PedidosItensQuantidade.Value, -2);

                        cFormula.Lines.Add('     CAMPO: Valor Unitario quando há conversão de unidade de medida');
                        cFormula.Lines.Add('   FÓRMULA: Valor_Unitario / Quantidade_Unidade');
                        cFormula.Lines.Add('   VALORES: '+PedidosItensValor_Unitario.AsString+' / '+ProdutosQuantidade_Unidade.AsString);
                        cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', PedidosItensValor_Unitario.Value * ProdutosQuantidade_Unidade.Value));
                        cFormula.Lines.Add('');

                        // Cálculo do valor do PIS e da COFINS da saída.
                        If TipoNotaSaida_Entrada.Value = 1 then begin
                           PedidosItensValor_BCPIS.Value  := 0;
                           PedidosItensValor_PIS.Value    := 0;
                           PedidosItensValor_COFINS.Value := 0;

                           If (CSTPISTributavel.AsBoolean = true) or (CSTPISCodigo.AsString = '49') then begin
                              If Trim(TipoNotaCalculo_BCPIS.AsString)  <> '' then PedidosItensValor_BCPIS.Value  := CalculaMacro('Calculo_BCPIS');
                              If Trim(TipoNotaCalculo_PIS.AsString)    <> '' then PedidosItensValor_PIS.Value    := Roundto(CalculaMacro('Calculo_PIS'), -2);
                              If Trim(TipoNotaCalculo_COFINS.AsString) <> '' then PedidosItensValor_COFINS.Value := Roundto(CalculaMacro('Calculo_COFINS'), -2);
                           End;
                        End;

                        // Calculando o valor da redução do ICMS.
                        If Trim(TipoNotaCalculo_ReducaoICMS.AsString) <> '' then begin
                           PedidosItensValor_ICMSReducao.Value := CalculaMacro('Calculo_ReducaoICMS');
                        End;

                        // Verifica se o IPI é por "Alíquota ou por valor unitario".
                        If ProdutosValor_IPI.Value <> 0 then begin
                           PedidosItensValor_IPI.Value := 0;
                           PedidosItensTotal_IPI.Value := 0;
                        end;

                        // Código de situação tributaria do ICMS e apuração de "Isentas e Outras" de ICMS.
                        mCST := '';

                        If EmpresasRegime_Apuracao.AsInteger = 3 then begin
                           // Empresas optantes do Regime normal.
                           If PedidosItensValor_ICMSOper.Value <> 0 then
                              mCST := mCST + '+O'
                           else
                              mCST := mCST + '-O';     // ICMS Operacional.

                           If (Int(PedidosItensValor_BCICMSOper.Value) < Int(PedidosItensValor_Total.Value)) and (PedidosItensValor_BCICMSOper.Value > 0) then
                              mCST := mCST + '+R'
                           else
                              mCST := mCST + '-R';     // Reducao de base.

                           If TipoNotaSaida_Entrada.Value = 0 then begin
                              mCST := mCST + '-S';     // ICMS ST na Entrada.
                           end else begin
                              If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat <> 0) and (PedidosItensValor_ICMSSub.Value <> 0) then
                                 mCST := mCST + '+S'
                              else
                                 mCST := mCST + '-S';  // ICMS ST na Saida.
                           End;
                           If (TipoNotaIsencao_ICMS.AsBoolean   = true)   or  (NCMICMS_Isento.AsBoolean = true)  then mCST := '+I';
                           If TipoNotaNao_Tributada_ICMS.Value  = true                                           then mCST := '+NT';
                           If (TipoNotaSuspensao_ICMS.AsBoolean = true) or  (NCMICMS_Suspensao.AsBoolean = true) then mCST := '+SUS';
                           If (ProcessosDOCICMS_Diferido.Value  = true) and (TipoNotaSaida_Entrada.Value = 0)    then mCST := '+D';
                           If (TipoNotaDiferido_ICMS.AsBoolean  = true) then mCST := '+D';
                           If (cICMS.Checked = True)                                                             then mCST := mCST + '+SD';

                           // CST para Detalhe especifico combustivel.
                           if PedidosSaida_Entrada.AsInteger = 0 then begin
                              if ProdutosCSTICMS_Entrada.asstring <> '' then mCST := ProdutosCSTICMS_Entrada.AsString;
                           end else begin
                              if ProdutosCSTICMS_Saida.asstring <> '' then mCST := ProdutosCSTICMS_Saida.AsString;
                           end;

                           if TipoNotaMonofasico_Comb.asboolean         then MCST := '02';
                           if TipoNotaMonofasico_CombRetencao.asboolean then MCST := '15';
                           if TipoNotaMonofasico_CombDiferido.asboolean then MCST := '53';
                           if TipoNotaMonofasico_CombAnterior.asboolean then MCST := '61';

                           If not CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                              mCST := '<>';
                              CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
                           End;
                        end else begin
                           // Empresas optantes do Regime do Simples Nacional.
                           If TipoNotaSaida_Entrada.Value = 1 then begin
                              If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) and (not ClientesConsumidor_Final.AsBoolean) and (not ClientesSimples_Nacional.AsBoolean) then
                                 mCST := '101'
                           End;
                           If TipoNotaSaida_Entrada.Value = 0 then begin
                              If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat = 0) then
                                 mCST := '102'
                           end else begin
                              If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) and ((ClientesConsumidor_Final.AsBoolean) or (ClientesSimples_Nacional.AsBoolean)) then
                                 mCST := '102'
                           End;
                           If (TipoNotaIsencao_ICMS.AsBoolean) or (NCMICMS_Isento.AsBoolean) then begin
                              If PedidosSaida_Entrada.AsInteger = 0 then begin         // NF de Entrada.
                                 If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat = 0) then
                                    mCST := '103'
                              end else begin                                           // NF de Saída.
                                  If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat = 0) then
                                     mCST := '103'
                              End;
                           End;
                           If TipoNotaSaida_Entrada.Value = 1 then begin
                              If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) and (not ClientesConsumidor_Final.AsBoolean) and (not ClientesSimples_Nacional.AsBoolean) then
                                 mCST := '201'
                           End;
                           If TipoNotaSaida_Entrada.Value = 0 then begin
                              If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat > 0) then
                                 mCST := '202'
                           end else begin
                              If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) and ((ClientesConsumidor_Final.AsBoolean) or (ClientesSimples_Nacional.AsBoolean)) then
                                 mCST := '202'
                           End;
                           If (TipoNotaIsencao_ICMS.AsBoolean) or (NCMICMS_Isento.AsBoolean) then begin
                              If PedidosSaida_Entrada.AsInteger = 0 then begin         // NF de Entrada.
                                 If (NCM.FieldByName(FornecedoresEstado.Value+'_ICMS').AsFloat > 0) then
                                    mCST := '203'
                              end else begin                                           // NF de Saída.
                                  If (NCM.FieldByName(ClientesEstado.Value+'_ICMS').AsFloat > 0) then
                                     mCST := '203'
                              End;
                           End;
                           If (TipoNotaImune_ICMS.AsBoolean) or (NCMICMS_Imune.AsBoolean) then mCST := '300';
                           If TipoNotaNao_Tributada_ICMS.AsBoolean                        then mCST := '400';
                           If cICMS.Checked                                               then mCST := '500';
                           If TipoNotaDiferido_ICMS.AsBoolean                             then mCST := '900';

                           If PedidosSaida_Entrada.AsInteger = 0 then begin
                              If Trim(TipoNotaCSOSN_Entrada.AsString) <> '' then begin
                                 mCST := Trim(TipoNotaCSOSN_Entrada.AsString);
                              End;
                           end else begin
                              If Trim(TipoNotaCSOSN_Saida.AsString) <> '' then begin
                                 mCST := Trim(TipoNotaCSOSN_Saida.AsString);
                              End;
                           End;

                          if TipoNotaMonofasico_Comb.asboolean         then MCST := '02';
                          if TipoNotaMonofasico_CombRetencao.asboolean then MCST := '15';
                          if TipoNotaMonofasico_CombDiferido.asboolean then MCST := '53';
                          if TipoNotaMonofasico_CombAnterior.asboolean then MCST := '61';

                           If not CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]) then begin
                              mCST := 'S<>';
                              CSTTabelaB.Locate('Classificacao', mCST, [loCaseInsensitive]);
                           End;
                        End;

                        mApuracao1 := PedidosItensValor_Total.Value - PedidosItensValor_BCICMSOper.Value;

                        If mApuracao1 < 0 then mApuracao1 := 0;

                        mApuracao2 := 0;

                        // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
                        If Pos('Pedidos_[Valor_TotalProdutos]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_Total.Value;
                        If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              mApuracao2 := mApuracao2 + ((PedidosItensValor_Despesa.Value*PedidosItensQuantidade.AsFloat) * ProdutosQuantidade_Unidade.AsFloat)
                           else
                              mApuracao2 := mApuracao2 + ((PedidosItensValor_Despesa.Value*PedidosItensQuantidade.AsFloat) / ProdutosQuantidade_Unidade.AsFloat);
                        End;
                        If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_ICMSOPer.Value;
                        If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_ICMSSub.Value;
                        If Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_Frete.Value;
                        If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao2 := mApuracao2 + PedidosItensValor_Seguro.Value;
                        If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin

                           mApuracao2 := mApuracao2 + PedidosItensValor_PIS.Value;
                        End;
                        If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin

                           mApuracao2 := mApuracao2 + PedidosItensValor_COFINS.Value;
                        End;

                        mApuracao2 := mApuracao2-PedidosItensValor_BCICMSOper.Value - mApuracao1;

                        If mApuracao2 < 0 then mApuracao2 := 0;

                        If CSTTabelaBApuracao1.Value <> CSTTabelaBApuracao2.Value then begin
                           If CSTTabelaBApuracao1.Value = 'I' then begin
                              PedidosItensValor_IsentasICMS.Value := mApuracao1;
                              PedidosItensValor_OutrasICMS.Value  := mApuracao2;
                           End;
                           If CSTTabelaBApuracao1.Value = 'O' then begin
                              PedidosItensValor_IsentasICMS.Value := mApuracao2;
                              PedidosItensValor_OutrasICMS.Value  := mApuracao1;
                           End;
                        end else begin
                           If CSTTabelaBApuracao1.Value = 'I' then begin
                              PedidosItensValor_IsentasICMS.Value := mApuracao1 + mApuracao2;
                              PedidosItensValor_OutrasICMS.Value  := 0;
                           End;
                           If CSTTabelaBApuracao1.Value = 'O' then begin
                              PedidosItensValor_IsentasICMS.Value := 0;
                              PedidosItensValor_OutrasICMS.Value  := mApuracao1+mApuracao2;
                           End;
                        End;

                        PedidosItensCodigoTrib_TabB.Value := CSTTabelaBCodigo.Value;
                        if ProdutosOrigem.Value = 'I' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA.Value;
                        if ProdutosOrigem.Value = 'N' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA2.Value;
                        if ProdutosOrigem.Value = 'M' then
                           PedidosItensCodigoTrib_TabA.Value := NCMCodigoTrib_TabA3.Value;

                        // Calculo do ICMS Desonerado.
                        PedidosItensValor_ICMSDesonerado.Value := 0;
                        if Trim(TipoNotaCalculo_VlrICMSDeson.AsString) <> '' then begin
                           case AnsiIndexStr((PedidosItensCodigoTrib_TabB.Value), ['20','30','40','41','50','70','90']) of
                                0..6: PedidosItensValor_ICMSDesonerado.Value := Roundto(CalculaMacro('Calculo_VlrICMSDeson'), -2);
                           end;
                        end;

                        // Código de situação tributaria do IPI e apuração de "Isentas e Outras" de IPI.
                        mCST := '';
                        If (PedidosItensValor_IPI.Value > 0) or (PedidosItensAliquota_IPI.Value > 0) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IPI';
                        If ProdutosValor_IPI.Value         <> 0   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
                        If NCMIPI_TribAliquotaZero.Value   = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+V';
                        If (NCMIPI_Isento.AsBoolean) or (TipoNotaIsencao_IPI.AsBoolean) then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+I';
                        If TipoNotaNao_Tributada_IPI.Value = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+NT';
                        If TipoNotaImune_IPI.Value         = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+IM';
                        If NCMIPI_Suspensao.Value          = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';
                        If TipoNotaSuspensao_IPI.Value     = True then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+SUS';
                        If mCST                            = ''   then mCST := Trim(TipoNotaSaida_Entrada.AsString)+'+<>';
                        If CSTIPI.Locate('Classificacao', mCST, [loCaseInsensitive]) = False then begin
                           mCST := '<>';
                           CSTIPI.Locate('Classificacao', mCST, [loCaseInsensitive]);
                        End;
                        PedidosItensCSTIPI.Value           := CSTIPICodigo.Value;
                        PedidosItensValor_OutrasIPI.Value  := 0;
                        PedidosItensValor_IsentasIPI.Value := 0;
                        mApuracao1                         := 0;

                        // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe.
                        If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + (PedidosItensValor_Despesa.Value * PedidosItensQuantidade.Value);
                        If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_ICMSOPer.Value;
                        If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_ICMSSub.Value;
                        If Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_Frete.Value;
                        If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_Frete.Value;
                        If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                           mApuracao1 := mApuracao1 + PedidosItensValor_PIS.Value;
                        End;
                        If (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin
                           mApuracao1 := mApuracao1 + PedidosItensValor_COFINS.Value;
                        End;
                        If PedidosItensValor_IPI.Value = 0 then
                           mApuracao1 := mApuracao1 + PedidosItensValor_Total.Value;
                        If CSTIPI.FieldByName('Apuracao').Value = 'O' then
                           PedidosItensValor_OutrasIPI.Value := mApuracao1
                        else
                           PedidosItensValor_IsentasIPI.Value := mApuracao1;

                        If PedidosItensValor_ICMSOper.Value <= 0 then PedidosItensAliquota_ICMSOper.Value := 0;

                        // Zera as alíquota de PIS/COFINS Caso não seja calculado seus valores.
                        If PedidosItensValor_PIS.Value <= 0 then begin
                           PedidosItensAliquota_PIS.Value    := 0;
                           PedidosItensAliquota_COFINS.Value := 0;
                           PedidosItensValor_PIS2.Value      := 0;
                           PedidosItensValor_COFINS.Value    := 0;
                           PedidosItensValor_COFINS2.Value   := 0;
                        End;
                        PedidosItensAdicao.Value              := ProcessosImpItensAdicao.Value;
                        PedidosItensEXTIPI.Value              := NCMCodigo_EXTIPI.Value;
                        PedidosItensModalidade_BCICMS.Value   := NCMModalidade_BCICMS.Value;
                        PedidosItensModalidade_BCICMSST.Value := NCMModalidade_BCICMSST.Value;

                        // Remove a valoração do valor unitario.
                        If (TipoNotaValoracao_Produto.AsBoolean = true) and (ProcessosDOCAd_Valorem.AsCurrency > 0) then begin
                           If (IncotermsFrete.Value = True) and (IncotermsSeguro.Value = True) then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value -  ((ProcessosDOC.FieldByName('Ad_Valorem').Value / ProcessosDOCFOB_ME.Value) * ProcessosImpItensValor_Unitario.Value);
                           If (IncotermsFrete.Value = True) and (IncotermsSeguro.Value = False) then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value -  ((ProcessosDOC.FieldByName('Ad_Valorem').Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value)) * ProcessosImpItensValor_Unitario.Value);
                           If (IncotermsFrete.Value = False) and (IncotermsSeguro.Value = False) then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value -  ((ProcessosDOC.FieldByName('Ad_Valorem').Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCSeguro_ME.Value+ProcessosDOCFrete_ME.Value)) * ProcessosImpItensValor_Unitario.Value);
                           If (IncotermsFrete.Value = False) and (IncotermsSeguro.Value = True) then
                              PedidosItensValor_Unitario.Value := PedidosItensValor_Unitario.Value -  ((ProcessosDOC.FieldByName('Ad_Valorem').Value / (ProcessosDOCFOB_ME.Value+ProcessosDOCFrete_ME.Value)) * ProcessosImpItensValor_Unitario.Value);

                           If ProdutosTipo_Conversao.Value <> 'M' then
                              PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * (PedidosItensQuantidade.Value * ProdutosQuantidade_Unidade.Value), -4)
                           else
                              PedidosItensValor_Total.Value := Roundto(PedidosItensValor_Unitario.Value * (PedidosItensQuantidade.Value / ProdutosQuantidade_Unidade.Value), -4);
                        End;

                        // Desmembrando a formula do total da nota fiscal para saber os valores que o compõe e somar por item.
                        mTotalItem := 0;

                        If Pos('Pedidos_[Valor_TotalProdutos]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + Roundto(PedidosItensValor_Total.Value, -2);
                        If Pos('Pedidos_[Valor_OutrasDespesas]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then begin
                           If ProdutosTipo_Conversao.Value <> 'M' then
                              mTotalItem := mTotalItem + ((RoundTo(PedidosItensValor_Despesa.Value, -4) * PedidosItensQuantidade.AsFloat) * ProdutosQuantidade_Unidade.AsFloat)
                           else
                              mTotalItem := mTotalItem + ((RoundTo(PedidosItensValor_Despesa.Value, -4) * PedidosItensQuantidade.AsFloat) / ProdutosQuantidade_Unidade.AsFloat);
                        End;
                        If Pos('Pedidos_[Valor_TotalIPI]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensTotal_IPI.Value;
                        If Pos('Pedidos_[Valor_ICMS]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_ICMSOPer.Value;
                        If Pos('Pedidos_[ValorICMS_Substitutivo]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_ICMSSub.Value;
                        If Pos('Pedidos_[Valor_Frete]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_Frete.Value;
                        If Pos('Pedidos_[Valor_Seguro]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_Frete.Value;
                        If (Pos('Valor_PIS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[PIS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_PIS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin

                           mTotalItem := mTotalItem + PedidosItensValor_PIS.Value;
                        end;
                        if (Pos('Valor_COFINS'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('NCM_[COFINS]'       , TipoNotaCalculo_TotalPedido.AsString ) > 0) or
                           (Pos('PagarReceber_COFINS', TipoNotaCalculo_TotalPedido.AsString ) > 0) then begin

                           mTotalItem := mTotalItem + PedidosItensValor_COFINS.Value;
                        end;
                        if Pos('Pedidos_[Valor_Dumping]', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_Dumping.Value;
                        if Pos('Pedidos_[Valor_TotalII] ', TipoNotaCalculo_TotalPedido.AsString ) > 0 then
                           mTotalItem := mTotalItem + PedidosItensValor_II.Value;

                        PedidosItensTotal_Item.Value := mTotalItem;

                        // Verifica se o item tem as Alíquotas de PIS/COFINS quando o tipo de nota apura.
                        if mErro = 4 then begin
                           MessageDlg('Atenção!'+#13+#13+'Se o tipo de nota apura PIS/COFINS, as Alíquotas devem ser informadas.'+#13+#13+'Produtos não sera adicionado', mtError, [mbOK], 0);
                           PedidosItens.Cancel;
                           Abort;
                        end;

                        // Mostra os valores do rateio das despesas.
                        cFormula.Lines.Add('     CAMPO: Valor_Despesa');
                        cFormula.Lines.Add('   FÓRMULA: (Valor_Despesa / FOB_Total) * Valor_SemAdValorem');
                        cFormula.Lines.Add('    RATEIO: ('+tDespesas.FieldByName('Valor_Despesas').AsString+'/'+tFOB.FieldByName('FOB_Total').AsString+') * '+ProcessosImpItensValor_SemAdValorem.AsString+' = '+FormatFloat('###,###,###,##0.00000000000000', (tDespesas.FieldByName('Valor_Despesas').Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value));
                        cFormula.Lines.Add('   FÓRMULA: Valor_Despesa + mDespesaMestre + mDespesaSeletivo');
                        cFormula.Lines.Add('   VALORES: '+floattostr(PedidosItensValor_Despesa.asfloat-mDespesaMestre-mDespesaSeletivo)+'+'+CurrtoStr(mDespesaMestre)+'+'+CurrtoStr(mDespesaSeletivo));
                        cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', (PedidosItensValor_Despesa.asfloat-mDespesaMestre-mDespesaSeletivo) + mDespesaMestre + mDespesaSeletivo));
                        cFormula.Lines.Add('');

                        // Valor do inventario.
                        mValorFrete  := 0;
                        mValorSeguro := 0;
                        if Trim(TipoNotaCalculo_Inventario.AsString) <> '' then begin
                           // Guardo os valores calculados para recuperar no final para o calculo do inventario.
                           if PedidosItensValor_Frete.AsFloat > 0 then begin
                              mValorFrete                   := PedidosItensValor_Frete.Value;
                              PedidosItensValor_Frete.Value := 0;
                           end else begin
                              // Calculo o rateio do Frete novamente para retirar do valor do inventario quando necessario.
                              if ConfiguracaoRateio_Frete.Value = 'V' then
                                 PedidosItensValor_Frete.Value := ((ProcessosDOCFrete.Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value);
                              if ConfiguracaoRateio_Frete.Value = 'Q' then
                                 PedidosItensValor_Frete.Value := RoundTo((ProcessosDOCFrete.Value / ProcessosDOCQuantidade.Value),-6);
                              if ConfiguracaoRateio_Frete.Value = 'P' then
                                 PedidosItensValor_Frete.Value := Roundto((ProcessosDOCFrete.Value / ProcessosDOCPeso_Liquido.Value),-6) * PedidosItensPeso_Liquido.Value;
                           end;

                           // Guardo os valores calculados para recuperar no final para o calculo do inventario.
                           if PedidosItensValor_Seguro.AsFloat > 0 then begin
                              mValorSeguro                   := PedidosItensValor_Seguro.Value;
                              PedidosItensValor_Seguro.Value := 0;
                           end else begin
                              // Calculo o rateio do Seguro novamente para retirar do valor do inventario quando necessario.
                              if ConfiguracaoRateio_Seguro.Value = 'V' then
                                 PedidosItensValor_Seguro.Value := (ProcessosDOCSeguro.Value / tFOB.FieldByName('FOB_Total').Value) * ProcessosImpItensValor_SemAdValorem.Value;
                              if ConfiguracaoRateio_Seguro.Value = 'Q' then
                                 PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCQuantidade.Value),-6);
                              if ConfiguracaoRateio_Seguro.Value = 'P' then
                                 PedidosItensValor_Seguro.Value := Roundto((ProcessosDOCSeguro.Value / ProcessosDOCPeso_Liquido.Value), -6) * PedidosItensPeso_Liquido.Value;
                           end;

                           PedidosItensValor_Inventario.Value := CalculaMacro('Calculo_Inventario');

                           // Zera ou carrega os valores salvos de frete seguro utilizados para calculo do inventario.
                           PedidosItensValor_Frete.Value  := mValorFrete;
                           PedidosItensValor_Seguro.Value := mValorSeguro;
                        end;

                        //PedidosItensNatureza_Codigo.Value := PedidosNatureza_Codigo.Value;
                        PedidosItensNatureza_Codigo.Value := cNatureza.KeyValue;
                        PedidosItensValor_CIF.Value       := (ProcessosImpItensValor_UnitarioReal.Value+PedidosItensValor_Frete.Value+PedidosItensValor_Seguro.Value);

                        // Valores de PIS/COFINS são zerados ao final dos cálculos, caso haja necessidade de adicionar os valores desses impostos em outro campo.
                        if not CSTPISTributavel.AsBoolean then begin
                           if CSTPISCodigo.Value <> '49' then begin
                              PedidosItensValor_BCPIS.Value   := 0;
                              PedidosItensValor_PIS.Value     := 0;
                              PedidosItensValor_COFINS.Value  := 0;
                              PedidosItensValor_PIS2.Value    := 0;
                              PedidosItensValor_COFINS2.Value := 0;
                           end;
                        end;

                        // Calculo do ICMS diferido pelo beneficio fiscal.
                        PedidosItensValor_ICMSDif.Value    := 0;
                        PedidosItensAliquota_ICMSDif.Value := 0;
                        with IncentivosFiscais do begin
                             if recordcount > 0 then begin
                                mAliqDif := iif(PedidosSaida_Entrada.AsInteger = 0, fieldbyname('ICMS_DiferidoEnt').AsFloat, fieldbyname('ICMS_DiferidoSai').AsFloat);
                                if mAliqDif > 0 then begin
                                   PedidosItensAliquota_ICMSDif.Value := mAliqDif;
                                   PedidosItensValor_ICMSDif.Value    := PedidosItensValor_ICMSOper.AsCurrency - Percentual(PedidosItensValor_ICMSOper.AsCurrency, mAliqDif);
                                end;
                             end;
                        end;

                        // Calculo do ICMS monofasico.
                        PedidosItensValor_ICMSMono.Value      := 0;
                        PedidosItensValor_ICMSMonoRet.Value   := 0;
                        PedidosItensValor_BCICMSMono.Value    := 0;
                        PedidosItensValor_BCICMSMonoRet.Value := 0;
                        if TipoNotaCalculo_BCICMSMono.Value <> '' then begin
                           PedidosItensValor_BCICMSMono.value := roundto(CalculaMacro('Calculo_BCICMSMono'), -2);
                        end;
                        if TipoNotaCalculo_BCICMSMonoRet.Value <> '' then begin
                           PedidosItensValor_BCICMSMonoRet.value := roundto(CalculaMacro('Calculo_BCICMSMonoRet'), -2);
                        end;
                        if TipoNotaCalculo_ICMSMono.Value <> '' then begin
                           PedidosItensValor_ICMSMono.value := roundto(CalculaMacro('Calculo_ICMSMono'), -2);
                        end;
                        if TipoNotaCalculo_ICMSMonoRet.Value <> '' then begin
                           PedidosItensValor_ICMSMonoRet.value := roundto(CalculaMacro('Calculo_ICMSMonoRet'), -2);
                        end;
                        if PedidosItensValor_ICMSMonoRet.ascurrency = 0 then begin
                           PedidosItensPercentual_ICMSMonoRet.value := 0;
                           PedidosItensValor_BCICMSMonoRet.value    := 0;
                        end;

                        // Calculo do ICMS (Crédito presumido).
                        PedidosItensAliquota_ICMSPresumido.Value := 0;
                        PedidosItensValor_BCICMSPresumido.value  := 0;
                        PedidosItensValor_ICMSPresumido.value    := 0;

                        if Dados.PedidosSaida_Entrada.asinteger = 1 then begin
                           if (PedidosItensCodigoTrib_TabA.value = '1') or (PedidosItensCodigoTrib_TabA.value = '6')  then begin
                              Estados.Locate('Codigo', PedidosDestinatario_Estado.Value, [loCaseInsensitive]);
                              mCredPres := '';
                              if ProdutosTabela_CAMEX.AsBoolean then begin
                                 mCredPres := 'CX ';
                                 mCredPres := mCredPres + iif(PedidosSaida_Entrada.asinteger = 1, 'SD ', '');
                                 mCredPres := mCredPres + iif(PedidosDestinatario_Estado.asstring = EmpresasEstado.asstring, 'DE ', 'FE ');
                                 mCredPres := mCredPres + iif(ClientesIndicador_IE.asinteger = 9, 'NCT ', 'CT ');
                                 mCredPres := mCredPres + iif(ClientesSimples_Nacional.asboolean, 'SN ', '');
                                 mCredPres := mCredPres + iif(PedidosItensValor_ICMSSub.AsCurrency > 0, 'ST ', '');
                                 mCredPres := mCredPres + iif(TipoNotaFinalidade_Mercadoria.AsInteger = 0, 'REV ', '');
                                 mCredPres := mCredPres + iif(TipoNotaFinalidade_Mercadoria.AsInteger = 1, 'CON ', '');
                                 mCredPres := mCredPres + iif((EstadosRegiao_ICMSPresumido.asinteger = 1) and (PedidosDestinatario_Estado.asstring <> EmpresasEstado.asstring), 'SS ', '');
                                 mCredPres := mCredPres + iif((EstadosRegiao_ICMSPresumido.asinteger = 2) and (PedidosDestinatario_Estado.asstring <> EmpresasEstado.asstring), 'NN ', '');
                                 mCredPres := mCredPres + iif(PedidosDestinatario_Juridica.AsBoolean, 'PJ ', 'PF ');
                                 mCredPres := mCredPres + iif((PedidosDestinatario_Juridica.AsBoolean) and (PedidosDestinatario_IE.asstring = 'ISENTO'), 'SIE ', '');
                              end else begin
                                 mCredPres := mCredPres + iif(PedidosSaida_Entrada.AsInteger = 1, 'SD ', '');
                                 mCredPres := mCredPres + iif(PedidosDestinatario_Estado.asstring = EmpresasEstado.asstring, 'DE ', 'FE ');
                                 mCredPres := mCredPres + iif(ClientesIndicador_IE.asinteger = 9, 'NCT ', 'CT ');
                                 mCredPres := mCredPres + iif(ClientesSimples_Nacional.asboolean, 'SN ', '');
                                 mCredPres := mCredPres + iif(PedidosItensValor_ICMSSub.AsCurrency > 0, 'ST ', '');
                                 mCredPres := mCredPres + iif(TipoNotaFinalidade_Mercadoria.AsInteger = 0, 'REV ', '');
                                 mCredPres := mCredPres + iif(TipoNotaFinalidade_Mercadoria.AsInteger = 1, 'CON ', '');
                                 mCredPres := mCredPres + iif(PedidosDestinatario_Juridica.AsBoolean, 'PJ ', 'PF ');
                                 mCredPres := mCredPres + iif((PedidosDestinatario_Juridica.AsBoolean) and (PedidosDestinatario_IE.asstring = 'ISENTO'), 'SIE ', '');
                              end;
                              with CreditoPresumido do begin
                                   sql.clear;
                                   sql.add('select *');
                                   sql.Add('from ICMSCredPres');
                                   sql.add('where Beneficio = :pInc');
                                   sql.add('and Codigo      = :pCod');
                                   sql.add('and ICMS        = :pICMS');
                                   parambyname('pInc').Value  := IncentivosFiscais.FieldByName('Codigo_Incentivo').AsString;
                                   parambyname('pCod').Value  := mCredPres;
                                   parambyname('pICMS').Value := PedidosItensAliquota_ICMSOper.AsFloat;
                                   //sql.SaveToFile('c:\temp\Pedidos_Itens_Credito_Presumido.sql');
                                   open;
                                   if recordcount > 0 then begin
                                      PedidosItensAliquota_ICMSPresumido.Value := fieldbyname('Credito_Presumido').AsFloat;
                                      if TipoNotaCalculo_BCICMSPresumido.Value <> '' then begin
                                         PedidosItensValor_BCICMSPresumido.value := roundto(CalculaMacro('Calculo_BCICMSPresumido'), -2);
                                      end;
                                      if TipoNotaCalculo_ICMSPresumido.Value <> '' then begin
                                         PedidosItensValor_ICMSPresumido.value := roundto(CalculaMacro('Calculo_ICMSPresumido'), -2);
                                      end;
                                      // Verifica se as ncm tem o codigo informado.
                                      PedidosItensCodigo_CredPres.value  := NCMCodigo_CredPres.Value;
                                      if trim(NCMCodigo_CredPres.Value) = '' then begin
                                         if pos(FormatMaskText('####.##.####;0', NCMNCM.AsString), mNCM) = 0 then begin
                                            mErro := 8;
                                            mNCM  := concat(mNCM, FormatMaskText('####.##.####;0', NCMNCM.AsString),'-');
                                         end;
                                      end;
                                   end;
                              end;
                           end;
                        end;

                        mBenef                             := trim(iif(TipoNota.FieldByName('Saida_Entrada').Asinteger = 0, Produtos.FieldByName('Beneficio_FiscalEnt').AsString, Produtos.FieldByName('Beneficio_FiscalSai').AsString));
                        PedidosItensBeneficio_Fiscal.value := iif(mBenef <> '', mBenef, TipoNota.FieldByName('Beneficio_Fiscal').AsString);
                        if (PedidosItensCodigoTrib_TabA.asstring <> '1') and (PedidosItensCodigoTrib_TabA.asstring <> '6') then PedidosItensBeneficio_Fiscal.Clear;
           PedidosItens.Post;
*)

end;

procedure TfFatPedidoItensDUIMP.PedidosNFItensAfterRefresh(DataSet: TDataSet);
begin
     LigaBotoes;
end;

(*
procedure TfFatPedidoItensDUIMP.PegaCST;
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
          mTotal := fieldbyname('Valor_Unitario').asfloat * fieldbyname('Quantidade').asfloat;
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

             if OpFiscal.Fieldbyname('Monofasico_Comb').asboolean         then MCST := '02';
             if OpFiscal.Fieldbyname('Monofasico_CombRetencao').asboolean then MCST := '15';
             if OpFiscal.Fieldbyname('Monofasico_CombDiferido').asboolean then MCST := '53';
             if OpFiscal.Fieldbyname('Monofasico_CombAnterior').asboolean then MCST := '61';
             with tTmp do begin
                  sql.clear;
                  sql.add('select Codigo from CSTICMS where Classificacao = '+quotedstr(mCST));
                  open;
                  if recordcount = 0 then begin
                     mCST := '<>';
                     sql.clear;
                     sql.add('select * from CSTICMS where Codigo = '+quotedstr(mCST));
                     open;
                  end;
                  {
                  if Produtos.Fieldbyname('Origem').asstring = 'I' then 
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA').Value;
                  if Produtos.Fieldbyname('Origem').asstring = 'N' then 
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA2').Value;
                  if Produtos.Fieldbyname('Origem').asstring = 'M' then 
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA3').Value;
                  }
                  PedidosNFItens.fieldbyname('CSTICMS_TabA').Value := tNCM.Fieldbyname('CodigoTrib_TabA').Value;
                  PedidosNFItens.fieldbyname('CSTICMS_TabB').Value := tTmp.fieldbyname('Codigo').asstring;
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
                end else begin                                                  // NF de Saída.
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

             if OpFiscal.Fieldbyname('Monofasico_Comb').asboolean         then MCST := '02';
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
                  if Produtos.Fieldbyname('Origem').asstring = 'I' then
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA').asstring;
                  if Produtos.Fieldbyname('Origem').asstring = 'N' then
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA2').asstring;
                  if Produtos.Fieldbyname('Origem').asstring = 'M' then
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA3').asstring;

                  PedidosNFItens.fieldbyname('CSTICMS_TabA').Value := mCST;
                  PedidosNFItens.fieldbyname('CSTICMS_TabB').Value := tTmp.fieldbyname('Codigo').asstring;
//MFORMULAS.Lines.Add(MCST);
//MFORMULAS.Lines.Add(fieldbyname('Codigo').asstring);
             end;
          end;
     end;
end;
*)

(*
procedure TfFatPedidoItensDUIMP.PegaCST;
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
          //mTotal := cValor_Produtos.Value;
          mTotal := FieldByName('Valor_Unitario').AsCurrency * FieldByName('Quantidade').asfloat;
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
                     sql.add('select * from CSTICMSTabB where Codigo = '+quotedstr(mCST));
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

             if OpFiscal.Fieldbyname('Monofasico_Comb').asboolean then mCST := '02';
             if OpFiscal.Fieldbyname('Monofasico_CombRetencao').asboolean then mCST := '15';
             if OpFiscal.Fieldbyname('Monofasico_CombDiferido').asboolean then mCST := '53';
             if OpFiscal.Fieldbyname('Monofasico_CombAnterior').asboolean then mCST := '61';

             with tTmp do begin
                  sql.clear;
                  sql.add('select Codigo from CSTICMSTabB where Classificacao = '+quotedstr(mCST));
                  open;
                  if recordcount = 0 then begin
                     mCST := 'S<>';
                     sql.clear;
                     sql.add('select * from CSTICMSTabB where Codigo = '+quotedstr(mCST));
                     //sql.SaveToFile('c:\temp\Atlas_CSTICMS.sql');
                     open;
                  end;
                  if Produtos.Fieldbyname('Origem').asstring = 'I' then 
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA').Value;
                  if Produtos.Fieldbyname('Origem').asstring = 'N' then 
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA2').Value;
                  if Produtos.Fieldbyname('Origem').asstring = 'M' then 
                     mCST := tNCM.Fieldbyname('CodigoTrib_TabA3').Value;
                     
                  PedidosNFItens.fieldbyname('CSTICMS_TabA').Value := mCST;
                  PedidosNFItens.fieldbyname('CSTICMS_TabB').Value := fieldbyname('Codigo').asstring;
             end;
          end;
          if (State = dsInsert) or (State = dsEdit) then begin
             // CST DO CBS.
             mCST := 'T+I';
             if fieldbyname('Valor_CBS').Value > 0 then mCST := 'T+I';
             if tNCM.fieldbyname('CBS_Isencao').AsBoolean       then mCST := 'IS';
             if OpFiscal.fieldbyname('CBS_Isencao').AsBoolean   then mCST := 'IS';
             if tNCM.fieldbyname('CBS_Imunidade').AsBoolean     then mCST := 'I+N+I';
             if OpFiscal.fieldbyname('CBS_Imunidade').asboolean then mCST := 'I+N+I';
             if tNCM.fieldbyname('CBS_Suspensao').asboolean     then mCST := 'S';
             if OpFiscal.fieldbyname('CBS_Suspensao').asboolean then mCST := 'S';
             if tNCM.fieldbyname('CBS_Diferido').AsBoolean      then mCST := 'D';
             if OpFiscal.fieldbyname('CBS_Diferido').AsBoolean  then mCST := 'D';
             CSTCBS.Locate('Classificacao', mCST, [loCaseInsensitive]) ;
             fieldbyname('CSTCBS').Value := CSTCBS.fieldbyname('Codigo').Value;
             // CST DO IBS
             mCST := 'T+I';
             if fieldbyname('Valor_IBS').Value > 0 then mCST := 'T+I';
             if tNCM.fieldbyname('IBS_Isencao').AsBoolean       then mCST := 'IS';
             if OpFiscal.fieldbyname('IBS_Isencao').AsBoolean   then mCST := 'IS';
             if tNCM.fieldbyname('IBS_Imunidade').AsBoolean     then mCST := 'I+N+I';
             if OpFiscal.fieldbyname('IBS_Imunidade').asboolean then mCST := 'I+N+I';
             if tNCM.fieldbyname('IBS_Suspensao').asboolean     then mCST := 'S';
             if OpFiscal.fieldbyname('IBS_Suspensao').asboolean then mCST := 'S';
             if tNCM.fieldbyname('IBS_Diferido').AsBoolean      then mCST := 'D';
             if OpFiscal.fieldbyname('IBS_Diferido').AsBoolean  then mCST := 'D';
             CSTIBS.Locate('Classificacao', mCST, [loCaseInsensitive]) ;
             fieldbyname('CSTIBS').Value := CSTIBS.fieldbyname('Codigo').Value;
          end;
     end;
end;
*)

procedure TfFatPedidoItensDUIMP.LigaBotoes;
begin
     bAddItem.Enabled := (ProcessosImpItens.RecordCount > 0) and (trim(cCFOP.Text) <> '');
     bAddTudo.Enabled := (ProcessosImpItens.RecordCount > 0) and (trim(cCFOP.Text) <> '');
     bRemItem.Enabled := PedidosNFItens.RecordCount > 0;
     bRemTudo.Enabled := PedidosNFItens.RecordCount > 0;
end;

(*
procedure TfFatPedidoItensDUIMP.CalculaTudo;
var
   mValor: real;
   mCp:TComponent;
   mCampo: string;
begin
      //cValor_Total.Value := PedidosNFItens.FieldByName('Valor_Unitario').AsCurrency * PedidosNFItens.FieldByName('Quantidade').asfloat;
      mFormulas.Clear;
      tFormulas.first;
      while not tFormulas.eof do begin
            if tFormulas.fieldbyname('Tipo').AsString = 'Item' then begin
               // Desabilita o campo do valor unitario caso haja formula.
               mCampo := 'c'+trim(tFormulas.fieldbyname('Campo').AsString);
               mCp    := FindComponent(mCampo);
               //if mCp <> nil then TuniDBFormattedNumberEdit(mCp).enabled := tFormulas.fieldbyname('Desativada').asboolean;

               // Acha o campo e faz o calculo da formula.
               mCampo := trim(tFormulas.fieldbyname('Tabela').AsString)+trim(tFormulas.fieldbyname('Campo').AsString);
               mFormulas.lines.add('    CAMPO: '+tFormulas.fieldbyname('Campo').asstring+' -> '+mCampo);
               mValor := CalculaCampos(tFormulas.fieldbyname('Formula').AsString);
               mCp    := FindComponent(mCampo);
               if mCp <> nil then TBCDField(mCp).value := mValor;
               mFormulas.lines.add(stringofchar('-', 179));
            end;
            tFormulas.next;
      end;
      // Totaliza os campos de total dos itens.
      {
      with PedidosNFItens do begin
           cTotalII.Value          := Fieldbyname('Valor_II').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalIPI.Value         := Fieldbyname('Valor_IPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalOutrasIPI.Value   := Fieldbyname('Valor_OutrasIPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalIsentasIPI.Value  := Fieldbyname('Valor_IsentasIPI').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalPIS.Value         := Fieldbyname('Valor_PIS').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalCOFINS.Value      := Fieldbyname('Valor_COFINS').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalICMSOp.Value      := Fieldbyname('Valor_ICMSOp').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalICMSST.Value      := Fieldbyname('Valor_ICMSST').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalOutrasICMS.Value  := Fieldbyname('Valor_OutrasICMS').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalIsentasICMS.Value := Fieldbyname('Valor_IsentasICMS').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalMVA.Value         := Fieldbyname('Valor_MVA').AsCurrency * Fieldbyname('Quantidade').asfloat;
           cTotalICMSOP.Value      := Fieldbyname('Valor_ICMSOp').AsCurrency * Fieldbyname('Quantidade').asfloat;
      end;
      }
      PegaCST;
end;
*)

(*
procedure TfFatPedidoItensDUIMP.CalculaTudo;
var
   mValor: real;
   mCp: TComponent;
   mAliqImp
  ,mBenef 
  ,mCSTImp: string;
begin
     // Limpa a tabela de impostos.
     with tImpostos do begin
          Open;
          EmptyDataSet;
     end;
     with tFormulasItens do begin
          first;
          while not eof do begin
                // Pula o calculo do valor unitário pois ja foi calculado anteriormente.
                if fieldbyname('Campo').AsString <> 'Valor_Unitario' then begin
                   gFormula.Cells[0, gFormula.RowCount-1] := FieldByName('Campo').AsString;
                   gFormula.Cells[1, gFormula.RowCount-1] := fieldbyname('Formula').AsString;
                   with Campos do begin
                        sql.clear;
                        sql.add('select Campo');
                        sql.add('      ,Tabela');
                        sql.add('      ,Campo_Chave');
                        sql.add('      ,Pesquisa');
                        sql.add('      ,Percentual');
                        sql.Add('from Campos');
                        sql.Add('where Campo in('+ListaCampos(tFormulasItens.fieldbyname('Formula').AsString, 0)+')');
                        sql.add('order by Tabela');
                        open;
                   end;
                
                   // Faz o cálculo da formula e Acha o campo.
                   try
                      mValor := CalculaMacro(self, fieldbyname('Formula').AsString);
                   except On E: Exception do
                      begin
                          cLog.Lines.add('Ocorreu um erro de cálculo: '+E.Message);
                          cLog.lines.Add(fieldbyname('Formula').AsString);
                      end;
                   end;
                   PedidosNFItens.fieldbyname(fieldbyname('Campo').AsString).value := mValor;
                   mCp := Self.FindComponent('c'+trim(fieldbyname('Campo').asstring));
                
                   with tImpostos do begin
                        mAliqImp := trim(tFormulasItens.fieldbyname('Campo_Aliquota').asstring);
                        mCSTImp  := trim(tFormulasItens.fieldbyname('Campo_CST').asstring);
                        append;
                              fieldbyname('Ordem_Calculo').Value := tFormulasItens.FieldByName('Ordem_Calculo').Value;
                              fieldbyname('Descricao').Value     := tFormulasItens.FieldByName('Descricao').Value;
                              fieldbyname('Campo').Value         := tFormulasItens.fieldbyname('Campo').value;
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
                end;
                next;
          end;
     end;
     with PedidosNFItens do begin
          // Totaliza os campos de total dos itens.
          TotalizaItens;
          
          // Gera os código cst dos impostos.
          PegaCST;

          if (fieldbyname('CSTICMS_TabA').asstring = '1') or (fieldbyname('CSTICMS_TabA').asstring = '6') then begin 
             if fieldbyname('ES').Asinteger = 0 then begin
                mBenef := Produtos.fieldbyname('Beneficio_FiscalEnt').asstring;
             end else begin
                mBenef := Produtos.fieldbyname('Beneficio_FiscalSai').asstring;
             end;
             if mBenef = null then begin
                mBenef := OpFiscal.fieldbyname('Beneficio_Fiscal').asstring;
             end;
          end;
     end;
end;
*)


(*
function TfFatPedidoItensDUIMP.CalculaCampos(Formula: widestring): real;
var
   i, mPos, mPosFun: integer;
   mQuebra: TStringList;
   mValor: real;
   mComp: TComponent;
   mFuncao
  ,mFunCondic
  ,mFunTermo1
  ,mFunTermo2
  ,mSinal
  ,mValorCondic1
  ,mValorCondic2: string;
const
   Simbolos = '{}<>=;[]_';
begin
     Formula      := StringReplace(Formula,  #8, '', [rfReplaceAll, rfIgnoreCase]);
     Formula      := stringreplace(Formula, #10, '', [rfReplaceAll]);
     Formula      := stringreplace(Formula, #12, '', [rfReplaceAll]);
     Formula      := stringreplace(Formula, #13, '', [rfReplaceAll]);
     mFormulas.Lines.Add('  FORMULA: '+Formula);

     mQuebra      := QuebraString(Formula, ']');
     mQuebra.Text := stringreplace(mQuebra.Text, 'CONDIÇÃO', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, '{', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, '}', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, '_[', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, ']', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, '<', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, '>', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, ';', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, '=', '', [rfreplaceall]);
     mQuebra.Text := stringreplace(mQuebra.Text, ' ', '', [rfreplaceall]);
     mQuebra.text := ApenasLetras(mQuebra.text);
mFormulas.Lines.Add(mQuebra.text);

     Formula := stringReplace(Formula, '_[', '', [rfReplaceAll]);
     Formula := stringReplace(Formula, ']', '', [rfReplaceAll]);
     Formula := stringReplace(Formula, 'CONDIÇÃO', '', [rfIgnoreCase, rfReplaceAll]);

     // Substituindo os campos pelos seus valores.
     for i := 0 to pred(mQuebra.Count) do begin
         if trim(mQuebra[i]) <> '' then begin
            mComp  := FindComponent(mQuebra[i]);
            mValor := 0;
            if mComp <> nil then mValor := TBCDField(mComp).value;
            Formula := stringReplace(Formula, mQuebra[i], floattostr(mValor), [rfReplaceAll, rfIgnoreCase]);
         end;
     end;

     // Ajustando os temos quando há a função "Condição".
     if Pos('{', Formula) > 0 then begin
        while Pos('{', Formula) > 0 do begin
              //Formula := stringreplace(Formula, 'CONDIÇÃO', '', [rfReplaceAll]);
              mPosFun := Pos('{', Formula)+1;
              mFuncao := Copy(Formula, mPosFun, Pos('}', Formula)-mPosFun);

              // Condição da função.
              mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
              mFuncao    := StringReplace(mFuncao, mFunCondic, '', [rfReplaceAll]);
              mFunCondic := StringReplace(mFunCondic,';', '', [rfReplaceAll]);

              // Primeiro termo da função.
              mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
              mFuncao    := StringReplace(mFuncao, mFunTermo1, '', [rfReplaceAll]);
              mFunTermo1 := StringReplace(mFunTermo1,';', '',[rfReplaceAll] );

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
              for i := Pos('{', Formula) to Length(Formula) do begin
                  mFuncao := mFuncao + Formula[i];
                  if Formula[i] = '}' then break;
              end;

              if ApenasNumeros(mValorCondic2) <> '' then begin
                 if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                    (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                    (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                    (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                    (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                    (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                    Formula := StringReplace(Formula, mFuncao, mFunTermo1, [rfReplaceAll])
                 else
                    Formula := StringReplace(Formula, mFuncao, mFunTermo2, [rfReplaceAll]);
              end else begin
                 if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                    (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                    (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                    (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                    (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                    (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                    Formula := StringReplace(Formula, mFuncao, mFunTermo1, [rfReplaceAll])
                 else
                    Formula := StringReplace(Formula, mFuncao, mFunTermo2, [rfReplaceAll]);
              end;
        end;
     end;
     try
         Macro.Formula := Formula;
         result        := Macro.Calc([0]);
         mFormulas.lines.add('  VALORES: '+Formula);
         mFormulas.lines.add('RESULTADO: '+formatfloat(',##0.00', result));
     except
         begin
             pasta.ActivePageIndex := 1;
             mFormulas.Lines.Add(stringofchar('*',181));
             mFormulas.Lines.Add('     ERRO: '+Formula);
             mFormulas.Lines.Add(stringofchar('*',181));
             MessageDlgN('Não foi possível efetuar o cálculo da formula: '+Formula, mtError, []);
             result := 0;
         end;
     end;
end;
*)
(*
// Executa os calculos dos macro passados como strings.
Function TfFatPedidoItensDUIMP.CalculaMacro(Campo:String):Real;
var
    mPos
   ,mTam
   ,mPosFun
   ,i: Integer;
    mResultado: Real;
    mFormula
   ,mCampo
   ,mSQL
   ,mFuncao
   ,mFunTermo1
   ,mFunTermo2
   ,mFunCondic
   ,mSinal
   ,mValorCondic1
   ,mValorCondic2: String;
begin
{
//     with Dados, dmFiscal do begin
          // Convertendo a formula do campo.
          mFormula := Stringreplace(tFormulas.FieldByName(Campo).AsString,#13,'',[rfReplaceAll]);
          mFormula := Stringreplace(tFormulas.FieldByName(Campo).AsString,#12,'',[rfReplaceAll]);
          mFormula := Stringreplace(tFormulas.FieldByName(Campo).AsString,#10,'',[rfReplaceAll]);

          Campos.First;
          while not Campos.Eof do begin
                mTam   := Length(Trim(CamposCampo.Value));
                mPos   := Pos(CamposCampo.Value, mFormula);
                mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 60);
                mCampo := Trim(Copy(mCampo, 1, Pos(']',mCampo)-1));

                If (CamposPesquisa.Value <> '') and (mPos <> 0) then Begin
                   mCampo := Copy(CamposCampo.Value, Pos('[',CamposCampo.Value)+1, 30);
                   mCampo := Copy(mCampo, 1, Pos(']',mCampo)-1);
                End;
                If (mPos <> 0) then begin
                   Delete(mFormula, mPos, mTam);
                   If UpperCase(CamposTabela.Value) = 'PEDIDOS' then begin
                      If Trim(Pedidos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Pedidos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PEDIDOSITENS' then begin
                      If Trim(PedidosItens.FieldByName(mCampo).AsString) <> '' then begin
                         Insert( PedidosItens.FieldByName(mCampo).AsString, mFormula, mPos );
                      end else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROSITENS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASTERCEIROS' then begin
                      If Trim(NotasTerceirosItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasTerceirosItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NOTASITENS' then begin
                      If Trim(NotasItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( NotasItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PROCESSOSDOCUMENTOS' then begin
                      If Trim(ProcessosDOC.FieldByName(mCampo).AsString) <> '' then
                         Insert( ProcessosDOC.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ProcessosImpItens' then begin
                      If Trim(ProcessosImpItens.FieldByName(mCampo).AsString) <> '' then
                         Insert( ProcessosImpItens.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'CLIENTES' then begin
                      If Trim(Clientes.FieldByName(mCampo).AsString) <> '' then
                         Insert( Clientes.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'NCM' then begin
                      If Trim(NCM.FieldByName(mCampo).AsString) <> '' then
                         Insert( NCM.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PRODUTOS' then begin
                      If Trim(Produtos.FieldByName(mCampo).AsString) <> '' then
                         Insert( Produtos.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAESTOQUE' then begin
                      If Trim(FichaEstoque.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaEstoque.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'FICHAINVENTARIO' then begin
                      If Trim(FichaInventario.FieldByName(mCampo).AsString) <> '' then
                         Insert( FichaInventario.FieldByName(mCampo).AsString, mFormula, mPos )
                      else
                         Insert( '0', mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'ICMS' then begin
                      If EmpresasEstado.Value = ClientesEstado.Value then begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_DentroNContrib'
                         else
                            mCampo := 'Imp_DentroContrib';
                      End else begin
                         If ClientesIsento.Value = True then
                            mCampo := 'Imp_ForaNContrib'
                         else
                            mCampo := 'Imp_ForaContrib';
                      End;
                      Insert( ICMS.FieldByName(mCampo).AsString, mFormula, mPos );
                   End;
                   If UpperCase(CamposTabela.Value) = 'PAGARRECEBER' then begin
                      // Filtra a tabela para pegar o valor do lançamento.
                      If CamposPesquisa.Value <> '' then begin
                         mSQL := PagarReceber.SQL.Text;
                         PagarReceber.SQL.Clear;
                         PagarReceber.SQL.Add('SELECT * FROM PagarReceber WHERE (Processo = '+QuotedStr(ProcessosDOCProcesso.Value)+') and ('+CamposCampo_Chave.Value+' = '+QuotedStr(CamposPesquisa.Value)+')' );
                         PagarReceber.Open;

                         // Se não houver lançamento feito insere o valor 0 na formula.
                         If PagarReceber.RecordCount <> 0 then
                            Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                         else
                            Insert( '0', mFormula, mPos );
                      end else begin
                         mCampo := CamposCampo_Chave.Value;
                         Insert( PagarReceber.FieldByName(mCampo).AsString, mFormula, mPos )
                      End;
                   End;
                End;
                If mPos = 0 then Campos.Next;
          end;

          while Pos('{', mFormula) > 0 do begin
                mPosFun := Pos('{', mFormula)+1;
                mFuncao := Copy(mFormula, mPosFun, Pos('}', mFormula)-mPosFun);

                // Condição da função.
                mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := Stringreplace(mFunCondic, '', mFuncao);
                mFunCondic := Stringreplace(';', '', mFunCondic);

                // Primeiro termo da função.
                mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
                mFuncao    := Stringreplace(mFunTermo1, '', mFuncao);
                mFunTermo1 := Stringreplace(';', '', mFunTermo1);

                // Segundo termo da função.
                mFunTermo2 := Stringreplace(';', '', mFuncao);

                // Sinal utilizado no teste de condição.
                mSinal := '';
                for i := 1 to Length(mFunCondic) do begin
                    If (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
                end;

                // Valores da condição.
                mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
                mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
                mFuncao := '';
                for i := Pos('{', mFormula) to Length(mFormula) do begin
                    mFuncao := mFuncao + mFormula[i];
                    If mFormula[i] = '}' then break;
                end;

                if ApenasNumeros(mValorCondic2) <> '' then begin
                   if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                      (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                      (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                      (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                      (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                      mFormula := Stringreplace(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := Stringreplace(mFuncao, mFunTermo2, mFormula);
                end else begin
                   if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                      (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                      (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                      (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                      (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                      (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                      mFormula := Stringreplace(mFuncao, mFunTermo1, mFormula)
                   else
                      mFormula := Stringreplace(mFuncao, mFunTermo2, mFormula);
                end;
          end;
     end;

     mMacro.Formula := mFormula;
     mResultado     := mMacro.Calc([0]);
     if mResultado <= 0 then mResultado := 0;

     if Campo = 'Calculo_Mercadoria' then begin
        cFormula.Lines.Add(Replicate('=',129));
        cFormula.Lines.Add('      ITEM: '+Dados.PedidosItensItem.AsString);
        cFormula.Lines.Add('   PRODUTO: '+Dados.PedidosItensCodigo_Mercadoria.AsString + ' - '+Copy(Dados.PedidosItensDescricao_Mercadoria.AsString,1,100));
        cFormula.Lines.Add('QUANTIDADE: '+FormatFloat('###,###,##0.00000000', Dados.PedidosItensQuantidade.ASFloat));
        cFormula.Lines.Add('QTDE P/UNI: '+FormatFloat('###,###,##0.00000000', Dados.ProdutosQuantidade_Unidade.AsFloat));
        cFormula.Lines.Add('  UNITARIO: '+FormatFloat('###,###,##0.00000000', mMacro.Calc([0])));
        cFormula.Lines.Add('     TOTAL: '+FormatFloat('###,###,##0.00000000', mMacro.Calc([0]) * Dados.PedidosItensQuantidade.AsFloat));
        cFormula.Lines.Add('');
     end;
     cFormula.Lines.Add('     CAMPO: '+Campo);
     cFormula.Lines.Add('   FÓRMULA: '+Stringreplace(#13,'',Dados.TipoNota.FieldByName(Campo).AsString));
     cFormula.Lines.Add('   VALORES: '+mFormula);
     cFormula.Lines.Add(' RESULTADO: '+FormatFloat('###,###,###,##0.00000000000000', mResultado ));
     cFormula.Lines.Add('');
     Result := mResultado;
     }
end;
*)
// Efetua a conversão do texto da formula para valores.
function TfFatPedidoItensDUIMP.CalculaCampos(Formula: widestring): real;
begin

end;

function TfFatPedidoItensDUIMP.CalculaMacro(pForm: TComponent; pFormula: String): Real;
var
   mCalc: String;
   mResultado: real;
   tCampos: TFDQuery;
   Macro: TCalcExpress;
   Memo: TUniMemo;
   Grade: TuniStringGrid;
begin
     tCampos := TFDQuery.Create(nil);
     Macro   := TCalcExpress.create(nil);
     with tCampos do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Campo');
          sql.add('      ,Tabela');
          sql.add('      ,Campo_Chave');
          sql.add('      ,Pesquisa');
          sql.add('      ,Percentual');
          sql.add('from Campos');
          sql.add('where Campo in('+ListaCampos(pFormula, 0)+')');
          sql.add('order by Tabela');
          open;

          // Convertendo a formula do campo.
          mCalc := StringReplace(pFormula, #13,'',[rfReplaceAll]);
          mCalc := StringReplace(mCalc   , #12,'',[rfReplaceAll]);
          mCalc := StringReplace(mCalc   , #10,'',[rfReplaceAll]);
          first;
          while not Eof do begin
                mCalc := stringreplace(mCalc, fieldbyname('Campo').AsString, SubstituirCampos(pForm, fieldbyname('Campo').AsString), [rfReplaceAll]);
                tcampos.Next;
          end;
          mCalc := SubstituirCondicao(mCalc);
          mCalc := stringreplace(mCalc,' ', '', [rfReplaceAll]);
     end;
     
     try
         Macro.Formula := mCalc;
         mResultado    := Macro.Calc([0]);
         if mResultado < 0 then mResultado := 0;
     except on E:Exception do 
         begin 
              Memo := pForm.FindComponent('cLog') as TUniMemo;
              if Assigned(Memo) then begin
                 Memo.Lines.Add('');
                 Memo.Lines.Add(stringofchar('>', 30)+' ERRO NA FÓRMULA DO CAMPO '+stringofchar('<', 30));
                 Memo.Lines.Add(pFormula);
                 Memo.Lines.add(E.Message);
              end;
              mResultado := 0;
         end;
     end;
     Grade := pForm.FindComponent('gFormula') as TUniStringGrid;
     if Assigned(Grade) then begin
        Grade.Cells[2, Grade.RowCount-1] := mCalc;
        Grade.Cells[3, Grade.RowCount-1] := floattostr(mResultado);
        Grade.RowCount                   := Grade.RowCount + 1;
     end;
     CalculaMacro := mResultado;
end;


end.
