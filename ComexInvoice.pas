unit ComexInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker,
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniRadioGroup, uniDBRadioGroup, uniDBComboBox, uniMemo,
  uniMultiItem, uniLabel, uniImage;

type
  TfComexInvoice = class(TuniFrame)
    Navega: TUniDBNavigator;
    Pasta: TUniPageControl;
    AbaInvoice: TUniTabSheet;
    AbaLista: TUniTabSheet;
    Grade: TUniDBGrid;
    ttmp: TFDQuery;
    Abaitens: TUniTabSheet;
    tLPCO: TFDQuery;
    dstLPCO: TDataSource;
    Transportador: TFDQuery;
    dstTransportador: TDataSource;
    LPCO: TFDQuery;
    Orgaosnuentes: TFDQuery;
    NCM: TFDQuery;
    ViaTransporte: TFDQuery;
    Modalidades: TFDQuery;
    MotivoCambial: TFDQuery;
    genciaFinanciadora: TFDQuery;
    PO: TFDQuery;
    Processos: TFDQuery;
    MetodoValoracao: TFDQuery;
    CondicaoCambial: TFDQuery;
    Cotacao: TFDQuery;
    Produtos: TFDQuery;
    Invoice: TFDQuery;
    Moedas: TFDQuery;
    Incoterms: TFDQuery;
    Paises: TFDQuery;
    Ramotividade: TFDQuery;
    Fornecedores: TFDQuery;
    Empresas: TFDQuery;
    pBarraNav: TUniPanel;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar_: TUniSpeedButton;
    Alerta: TUniSweetAlert;
    dsEmpresas: TDataSource;
    dsFornecedores: TDataSource;
    dsRamotividade: TDataSource;
    dsPaises: TDataSource;
    dsIncoterms: TDataSource;
    dsMoedas: TDataSource;
    dsInvoice: TDataSource;
    dsProdutos: TDataSource;
    dsCotacao: TDataSource;
    dsCondicaoCambial: TDataSource;
    dsMetodoValoracao: TDataSource;
    dsProcessos: TDataSource;
    dsPO: TDataSource;
    dsgenciaFinanciadora: TDataSource;
    dsMotivoCambial: TDataSource;
    dsModalidades: TDataSource;
    dsViaTransporte: TDataSource;
    dsNCM: TDataSource;
    dsOrgaosnuentes: TDataSource;
    dsLPCO: TDataSource;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    UniScrollBox1: TUniScrollBox;
    pFicha: TUniPanel;
    cData: TUniDBDateTimePicker;
    cMoeda: TUniDBLookupComboBox;
    cPaisOrigem: TUniDBLookupComboBox;
    cNumero: TUniDBEdit;
    cExportador: TUniDBLookupComboBox;
    cLocal_Embarque: TUniDBEdit;
    cDados_Bancarios: TUniDBMemo;
    cNotificar: TUniDBMemo;
    cLocal_Chegada: TUniDBEdit;
    cTotalPeso_Liquido: TUniDBEdit;
    cTotalPeso_Bruto: TUniDBEdit;
    cVolumes: TUniDBEdit;
    cMetro_Cubico: TUniDBEdit;
    DBEdit3: TUniDBEdit;
    DBEdit6: TUniDBEdit;
    cCondicaoCambio: TUniDBLookupComboBox;
    cData_BL: TUniDBDateTimePicker;
    DBDateEdit2: TUniDBDateTimePicker;
    cProcesso: TUniDBLookupComboBox;
    cTaxaCambio: TUniDBEdit;
    cBL: TUniDBEdit;
    cPO: TUniDBLookupComboBox;
    RxDBLookupCombo1: TUniDBLookupComboBox;
    DBEdit10: TUniDBEdit;
    RxDBLookupCombo2: TUniDBLookupComboBox;
    cCoberturaCambial: TUniDBComboBox;
    RxDBLookupCombo3: TUniDBLookupComboBox;
    cMotivoCambial: TUniDBLookupComboBox;
    cMoeda_Frete: TUniDBLookupComboBox;
    DBEdit11: TUniDBEdit;
    cMoeda_Seguro: TUniDBLookupComboBox;
    DBEdit12: TUniDBEdit;
    DBLookupComboBox3: TUniDBLookupComboBox;
    DBLookupComboBox4: TUniDBLookupComboBox;
    cCondicao_Mercadoria: TUniDBComboBox;
    DBEdit13: TUniDBEdit;
    cDestino: TUniDBEdit;
    cAplicacao: TUniDBComboBox;
    DBEdit8: TUniDBEdit;
    DBEdit14: TUniDBEdit;
    bItens: TUniButton;
    bLPCO: TUniButton;
    GroupBox1: TUniGroupBox;
    cTotalFaturaME: TUniFormattedNumberEdit;
    cTotalPesoLiquido: TUniFormattedNumberEdit;
    cTotalPesoBruto: TUniFormattedNumberEdit;
    cTotalFaturaReal: TUniFormattedNumberEdit;
    AgFinanc: TFDQuery;
    dsAgFinanc: TDataSource;
    MetodoVal: TFDQuery;
    dsMetodoVal: TDataSource;
    UniContainerPanel1: TUniContainerPanel;
    InvoiceRegistro: TIntegerField;
    InvoiceEmpresa: TStringField;
    InvoiceNumero: TStringField;
    InvoiceData: TDateField;
    InvoiceImp_Exp: TStringField;
    InvoiceProcesso: TStringField;
    InvoiceImportador: TSmallintField;
    InvoiceExportador: TSmallintField;
    InvoiceINCOTERMS: TStringField;
    InvoicePais_Origem: TStringField;
    InvoicePais_Destino: TStringField;
    InvoiceDestino: TStringField;
    InvoiceCondicao_Venda: TMemoField;
    InvoiceCondicao_Cambio: TSmallintField;
    InvoiceMoeda: TSmallintField;
    InvoiceTaxa_Cambio: TFloatField;
    InvoiceLocal_Embarque: TStringField;
    InvoiceData_Embarque: TDateField;
    InvoiceLocal_Chegada: TStringField;
    InvoicePartida: TStringField;
    InvoiceDados_Bancarios: TMemoField;
    InvoiceNotificar: TMemoField;
    InvoiceDestinatario: TMemoField;
    InvoicePeso_Liquido: TFloatField;
    InvoicePeso_Bruto: TFloatField;
    InvoiceVolumes_Quantidade: TFloatField;
    InvoiceVolumes_Numero: TStringField;
    InvoiceMetro_Cubico: TFloatField;
    InvoiceTotal_Fatura: TCurrencyField;
    InvoiceTotal_FaturaME: TCurrencyField;
    InvoiceQuantidade_Total: TFloatField;
    InvoiceObservacoes: TMemoField;
    InvoiceData_Vencimento: TDateField;
    InvoiceData_BL: TDateField;
    InvoiceCliente: TSmallintField;
    InvoiceBanco_Exportador: TSmallintField;
    InvoiceBanco_Importador: TSmallintField;
    InvoicePO: TStringField;
    InvoiceBL: TStringField;
    InvoiceEspecie: TStringField;
    InvoiceVia_Transporte: TSmallintField;
    InvoiceProposta: TIntegerField;
    InvoiceTransbordo: TStringField;
    InvoiceTransit_Time: TStringField;
    InvoiceFrequencia: TStringField;
    InvoiceArmador: TStringField;
    InvoiceContainer: TStringField;
    InvoiceProduto: TStringField;
    InvoiceUnidade: TStringField;
    InvoiceTipo_Embalagem: TStringField;
    InvoiceVolume: TStringField;
    InvoicePallets: TSmallintField;
    InvoiceComissao_Recebida: TFloatField;
    InvoiceComissao_Paga: TFloatField;
    InvoiceQuantidade_Unidade: TFloatField;
    InvoiceFator: TFloatField;
    InvoiceMoeda_Exp: TSmallintField;
    InvoiceCotacao_Exp: TFloatField;
    InvoiceMoeda_Imp: TSmallintField;
    InvoiceCotacao_Imp: TFloatField;
    InvoiceFrete_PrePaid: TCurrencyField;
    InvoiceMoeda_Frete: TSmallintField;
    InvoiceCotacao_Frete: TFloatField;
    InvoiceIRPJ: TFloatField;
    InvoiceCSLL: TFloatField;
    InvoiceBase_Comissao: TStringField;
    InvoiceLocal_Entrega: TStringField;
    InvoiceRecinto_Aduaneiro: TStringField;
    InvoiceDI: TStringField;
    InvoiceLocal_Condicao: TStringField;
    InvoiceMetodo_Valoracao: TSmallintField;
    InvoiceCobertura_Cambial: TStringField;
    InvoiceFinanciadora: TSmallintField;
    InvoiceMotivo_SemCobertura: TSmallintField;
    InvoiceAplicacao: TStringField;
    InvoiceCondicao_Mercadoria: TStringField;
    InvoiceSeguro: TFloatField;
    InvoiceMoeda_Seguro: TSmallintField;
    InvoiceTransportador: TSmallintField;
    InvoiceFrete_Collect: TCurrencyField;
    InvoiceCondicao_Frete: TStringField;
    InvoiceNumero_ROF: TStringField;
    InvoiceValor_CoberturaCambial: TCurrencyField;
    InvoiceItens: TFDQuery;
    dsInvoiceItens: TDataSource;
    InvoiceItensRegistro: TLargeintField;
    InvoiceItensEmpresa: TStringField;
    InvoiceItensInvoice: TStringField;
    InvoiceItensCodigo_Mercadoria: TIntegerField;
    InvoiceItensUnidade_Quantidade: TStringField;
    InvoiceItensUnidade_Peso: TStringField;
    InvoiceItensUnidade: TStringField;
    InvoiceItensQuantidade: TFloatField;
    InvoiceItensValor_Unitario: TFloatField;
    InvoiceItensPeso_Liquido: TFloatField;
    InvoiceItensPeso_Bruto: TFloatField;
    InvoiceItensValor_UnitarioME: TFloatField;
    InvoiceItensItem: TSmallintField;
    InvoiceItensNCM: TStringField;
    InvoiceItensImp_Exp: TStringField;
    InvoiceItensFabricante: TSmallintField;
    InvoiceItensPO: TStringField;
    InvoiceItensVinculo_CompVend: TStringField;
    InvoiceItensCertificado_MercoSulTipo: TStringField;
    InvoiceItensCertificado_MercoSulNumero: TStringField;
    InvoiceItensCertificado_MercoSulQtde: TFloatField;
    Fichaitens: TUniPanel;
    pFichaItem: TUniContainerPanel;
    cQtde: TUniDBEdit;
    cValor_UnitarioME: TUniDBEdit;
    cProduto: TUniDBLookupComboBox;
    cPeso_Liquido: TUniDBEdit;
    cPeso_Bruto: TUniDBEdit;
    cIndicador: TUniDBRadioGroup;
    cCertNum: TUniDBEdit;
    cCertTipo: TUniDBComboBox;
    cCertQtde: TUniDBEdit;
    UniPanel2: TUniPanel;
    NavegaItens: TUniDBNavigator;
    bAddItem: TUniSpeedButton;
    bAltItem: TUniSpeedButton;
    bExcItem: TUniSpeedButton;
    bCancItem: TUniSpeedButton;
    bSalvaItem: TUniSpeedButton;
    GradeItens: TUniDBGrid;
    Grade3: TUniDBGrid;
    InvoiceItensDescricao: TStringField;
    cInvoice: TUniDBEdit;
    cEmpresa: TUniDBLookupComboBox;
    InvoiceModalidade: TSmallintField;
    cModalidade: TUniDBLookupComboBox;
    InvoicePais_Aquisicao: TStringField;
    procedure UniFrameCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cExportadorExit(Sender: TObject);
    procedure lExportadorClick(Sender: TObject);
    procedure lMoedaClick(Sender: TObject);
    procedure lCondicaoVendaClick(Sender: TObject);
    procedure cCondicaoCambioChange(Sender: TObject);
    procedure cNumeroChange(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFechar_Click(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure InvoiceAfterPost(DataSet: TDataSet);
    procedure InvoiceBeforeDelete(DataSet: TDataSet);
    procedure cProcessoClick(Sender: TObject);
    procedure cPOClick(Sender: TObject);
    procedure NavegaItensClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaItensBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure cCoberturaCambialChange(Sender: TObject);
    procedure cData_BLChange(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure bLPCOClick(Sender: TObject);
    procedure cCertNumExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bAddItemClick(Sender: TObject);
    procedure bSalvaItemClick(Sender: TObject);
    procedure bCancItemClick(Sender: TObject);
    procedure bExcItemClick(Sender: TObject);
  private
    procedure PegaItens;
    procedure Totaliza;
    procedure LigaBotoesItens(Estado: boolean);
    { Private declarations }
  public
    { Public declarations }
    mOrdem: string;
  end;

implementation

uses MainModule, Main;

{$R *.dfm}

procedure TfComexInvoice.bLPCOClick(Sender: TObject);
begin
(*
     ComexInvoiceLPCO := TfComexInvoiceLPCO.create(self);
     ComexInvoiceLPCo.Caption := Caption;
     ComexInvoiceLPCO.showModal;
*)
end;

procedure TfComexInvoice.bPesquisaClick(Sender: TObject);
begin
     Invoice.Cancel;
     LigaBotoes(true);
     Filtra(Invoice, 'Numero', cPesquisa.text);
end;

procedure TfComexInvoice.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TUniPanel then begin
            TuniPanel(Components[i]).Top   := 30;
            TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
            TuniPanel(Components[i]).Color := clNone
         end;
     end;

     AtivaPanel(pFicha, false);
     AtivaPanel(pFichaItem, false);
     LigaBotoes(true);
     Pasta.ActivePageIndex := 0;

     with Empresas do begin
          sql.Clear;
          sql.Add('select CNPJ, Razao_Social, Numero_Filial from Empresas where CNPJ = '+quotedstr(UniMainModule.mEmpresaAtiva));
          Open;
     end;
     with Fornecedores do begin
          sql.Clear;
          sql.Add('select Codigo, CNPJ, Nome from Destinatarios where Estado = ''EX'' order by Nome');
          Open;
     end;
     with Transportador do begin
          sql.Clear;
          sql.Add('select Codigo, CNPJ, Nome');
          sql.Add('from Destinatarios ');
          sql.Add('where Transportador = 1');
          sql.Add('order by Nome');
          Open;
     end;
     with Paises do begin
          sql.Clear;
          sql.Add('select Codigo, Nome from Paises order by Nome');
          Open;
     end;
     with INCOTERMS do begin
          sql.Clear;
          sql.Add('select Codigo, Descricao from INCOTERMS order by Codigo');
          Open;
     end;
     with Moedas do begin
          sql.Clear;
          sql.Add('select Codigo, Nome, Simbolo from Moedas order by Nome');
          Open;
     end;
     with Invoice do begin
          sql.Clear;
          sql.Add('select * from Invoice where Imp_Exp = :pImpExp order by Numero');
          ParamByName('pImpExp').value := 'I';
          Open;
     end;

     // Abro assim porque se colocar o scrip aqui não filtra os itens.
     InvoiceItens.open;
     
     with Produtos do begin
          sql.Clear;
          sql.Add('select Codigo, Descricao_Reduzida, Descricao from Produtos where Desativado <> 1');
          Open;
     end;
     with Cotacao do begin
          sql.Clear;
          sql.Add('select * from Cotacao WHERE(Moeda = :pMoeda) and (Data = :pData)');
          ParamByName('pMoeda').AsInteger := InvoiceMoeda.AsInteger;
          ParamByName('pData').AsDate     := InvoiceData.AsDateTime;
          Open;
     end;
     with CondicaoCambial do begin
          sql.Clear;
          sql.Add('select * from CondicaoCambial order by Descricao' );
          Open;
     end;
     with MetodoVal do begin
          sql.Clear;
          sql.Add('select * from MetodoValoracao order by Codigo ' );
          Open;
     end;
     with Processos do begin
          sql.Clear;
          sql.Add('select Processo from ProcessosImp where Desativado <> 1 order by Processo');
          Open;
     end;
     with PO do begin
          sql.Clear;
          sql.Add('select Numero from PO where Processo = :pProc');
          ParamByName('pProc').asstring := InvoiceProcesso.AsString;
          Open;
     end;
     with AgFinanc do begin
          sql.Clear;
          sql.Add('select * from AgenciaFinanciadora order by Codigo');
          Open;
     end;
     with MotivoCambial do begin
          sql.Clear;
          sql.Add('select * from MotivoCambial order by Descricao');
          Open;
     end;
     with Modalidades do begin
          sql.Clear;
          sql.Add('select Codigo, Descricao from ModalidadeImportacao order by Codigo');
          Open;
     end;
     with ViaTransporte do begin
          sql.Clear;
          sql.Add('select * from ViaTransporte order by Descricao');
          Open;
     end;
end;

procedure TfComexInvoice.NavegaItensBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
(*
     ActiveControl := nil;
   begin
           if Button = nbPost then begin
              with ttmp do begin
                   sql.Clear;
                   sql.Add('select Exige_LPCO from NCM where NCM = '+quotedstr(Produtos.FieldByName('NCM').AsString));
                   open;
                   if fieldbyname('Exige_LPCO').AsBoolean then begin
                      ComexInvoiceLPCO := TfComexInvoiceLPCO.create(self);
                      ComexInvoiceLPCo.Caption := Caption;
                      ComexInvoiceLPCO.showModal;
                      tLPCO.Refresh;
                   end;
              end;
           end;
           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir este "Item"?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
      end;
*)
end;

procedure TfComexInvoice.NavegaItensClick(Sender: TObject; Button: TNavigateBtn);
var
   i: integer;
begin
(*
     if Button in[nbEdit, nbInsert] then begin
        for i := 0 to 6 do begin
            NavegaItens.Controls[i].Enabled := False;
        end;
        Panel1.Enabled := false;
        Panel2.Enabled := true;
        cCodigo.SetFocus;
        cCertTipo.Enabled := trim(cCertNum.Text) <> '';
        cCertQtde.Enabled := trim(cCertNum.Text) <> '';
     end else begin
        Panel2.Enabled := false;
        Panel1.Enabled := true;
     end;
     if Button = nbInsert then begin
        cIndicador.ItemIndex := 0;
     end;
     
     // Ajusta o valor total da invoice.
     if Button in[nbPost, nbDelete] then begin
        with ttmp do begin
             sql.Clear;
             sql.Add('update Invoice set Volumes_Quantidade = (select isnull(sum(Quantidade), 0) from InvoiceItens where invoice = :pInv)') ;
             sql.Add('                  ,Peso_Liquido       = (select isnull(sum(Peso_Liquido * Quantidade), 0) from InvoiceItens where invoice = :pInv)') ;
             sql.Add('                  ,Peso_Bruto         = (select isnull(sum(Peso_Bruto * Quantidade), 0) from InvoiceItens where invoice = :pInv)') ;
             sql.Add('                  ,Total_FaturaME     = (select isnull(sum(Valor_UnitarioME * Quantidade), 0) from InvoiceItens where invoice = :pInv)') ;
             sql.Add('                  ,Total_Fatura       = (select isnull(sum(Valor_UnitarioME * Quantidade), 0) from InvoiceItens where invoice = :pInv) * Taxa_Cambio ') ;
             sql.Add('where Numero = :pInv');
             ParamByName('pInv').Asstring := Dados.InvoiceNumero.Asstring;
             execute;
        end;
        Dados.Invoice.Refresh;
     end;
*)
end;

procedure TfComexInvoice.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
(*
   begin
           if Button = nbPost then begin
              Navega.SetFocus;
              if Trim(cNumero.Text) = '' then begin
                 MessageDlg('O número da "INVOICE" é campo obrigatório.', mtError, [mbok], 0);
                 cNumero.SetFocus;
                 Abort;
              end;
              if Trim(InvoiceProcesso.AsString) = '' then begin
                 MessageDlg('O número do "Processo" é campo obrigatório.', mtError, [mbok], 0);
                 cProcesso.SetFocus;
                 Abort;
              end;
              if Trim(RemoveCaracter('/', '', InvoiceData.AsString)) = '' then begin
                 MessageDlg('A "Data" é campo obrigatório.', mtError, [mbok], 0);
                 cData.SetFocus;
                 Abort;
              end;
              if Trim(InvoiceMoeda.AsString) = '' then begin
                 MessageDlg('A "Moeda" é campo obrigatório.', mtError, [mbok], 0);
                 cMoeda.SetFocus;
                 Abort;
              end;
              if Trim(InvoiceExportador.AsString) = '' then begin
                 MessageDlg('O "Exportador" é campo obrigatório.', mtError, [mbok], 0);
                 cExportador.SetFocus;
                 Abort;
              end;
              if InvoiceCondicao_Cambio.AsInteger = 0 then begin
                 MessageDlg('A "Condição de Venda" é campo obrigatório.', mtError, [mbok], 0);
                 cCondicaoCambio.SetFocus;
                 Abort;
              end;
              if Trim(RemoveCaracter('/', '', InvoiceData_BL.AsString)) = '' then begin
                 MessageDlg('A "Datado BL" é campo obrigatório.', mtError, [mbok], 0);
                 cData_BL.SetFocus;
                 Abort;
              end;
              if Trim(InvoiceBL.AsString) = '' then begin
                 MessageDlg('A "Númerodo BL" é campo obrigatório.', mtError, [mbok], 0);
                 cBL.SetFocus;
                 Abort;
              end;
              if InvoiceTaxa_Cambio.asfloat = 0 then begin
                 MessageDlg('"Taxa do '+cMoeda.Text+'" não informada.', mtError, [mbok], 0);
                 cTaxaCambio.SetFocus;
                 Abort;
              end;
              if State = dsInsert then begin
                 with tNumero do begin
                      sql.Clear;
                      sql.Add('select isnull(max(Registro), 0)+1 as Registro from Invoice');
                      open;
                 end;
                 InvoiceRegistro.Value :=FieldByName('Registro').AsInteger;
              end;
              // Modifica os dados do processo.
              if Locate('Processo', InvoiceProcesso.AsString, [loCaseInsensitive]) = true then begin
                Edit;
                              ProcessosDOCNumero_Fatura.Value   := InvoiceNumero.AsString;
                              ProcessosDOCData_Fatura.Value     := InvoiceData.Value;
                              ProcessosDOCFornecedor.Value      := InvoiceExportador.Value;
                              ProcessosDOCCondicao_Cambio.Value := InvoiceCondicao_Cambio.Value;
                              ProcessosDOCValor_FaturaME.Value  := InvoiceTotal_FaturaME.Value;
                              ProcessosDOCData_BL.Value         := InvoiceData_BL.Value;
                              ProcessosDOCDocumento_Carga.Value := InvoiceBL.Value;
                Post;
              end;
              if State = dsInsert then begin
                 // Importando os itens da PO para a
                 InvoiceImp_Exp.Value := 'I';
                 PegaItens;
              end;
           end;

           if Button = nbDelete then begin
              if MessageDlg('Deseja realmente excluir esta "Fatura"?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
              with InvoiceItens do begin
                   sql.Clear;
                   sql.Add('delete from InvoiceItens where Invoice = :pInvoice');
                   ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                   Execute;
                   sql.Clear;
                   sql.Add('select * from InvoiceItens where Invoice = :pInvoice');
                   ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                   Open;
              end;
           end;
      End;
*)
end;

// Importa os itens da PO para a
procedure TfComexInvoice.PegaItens;
begin
(*
   begin
          with POItens do begin
               sql.clear;
               sql.add('select *');
               sql.add('      ,Sel = cast(0 as bit)');
               sql.Add('      ,Saldo = Quantidade - (select sum(Quantidade) from InvoiceItens ini where ini.PO = '''' and ini.Codigo_Mercadoria = poi.Codigo_Mercadoria)');
               sql.Add('      ,Descricao = (select Descricao from Produtos prd where prd.Codigo = poi.Codigo_Mercadoria)');
               sql.add('from  POItens poi');
               sql.add('where poi.PO = :pPO');
               sql.add('and   poi.Codigo_Mercadoria not in(select Codigo_Mercadoria from InvoiceItens where PO = :pPO)');
               sql.add('order by Item');
               ParamByName('pPO').AsString  := PONumero.AsString;
               //sql.SaveToFile('c:\temp\Invoice_PegaItens.sql');
               open;

               if POItens.RecordCount > 0 then begin
     with ttmp do begin
                 sql.Clear;
                 sql.Add('select ISNULL(MAX(Registro), 0)+1 as Registro from InvoiceItens');

                  while not POItens.Eof do begin
                        ifLocate('Codigo', POItensCodigo_Mercadoria.AsInteger, [loCaseInsensitive]) then begin
                          Open;
     end;
                           with InvoiceItens do begin
                                Append;
                                     fieldbyname('Registro').Value           :=FieldByName('Registro').AsInteger;
                                     fieldbyname('Item').Value               := POItensItem.Value;
                                     fieldbyname('Invoice').Value            := InvoiceNumero.Value;
                                     fieldbyname('Codigo_Mercadoria').Value  := POItensCodigo_Mercadoria.Value;
                                     fieldbyname('Unidade').Value            := ProdutosUnidade.Value;
                                     fieldbyname('Quantidade').Value         := POItensQuantidade.Value;
                                     fieldbyname('Valor_UnitarioME').Value   := POItensValor.Value;
                                     fieldbyname('Valor_Unitario').Value     := roundto(POItensValor.Value * InvoiceTaxa_Cambio.Value, -6);
                                     fieldbyname('Peso_Liquido').Value       := ProdutosPeso_Liquido.Value;
                                     fieldbyname('Peso_Bruto').Value         := ProdutosPeso_Bruto.Value;
                                     fieldbyname('NCM').Value                := ProdutosNCM.Value;
                                     fieldbyname('Imp_Exp').Value            := InvoiceImp_Exp.Value;
                                     fieldbyname('Fabricante').Value         := ProdutosFabricante.Value;
                                     fieldbyname('PO').value                 :=FieldByName('PO').value;
                                     fieldbyname('Unidade_Quantidade').value := POItens.FieldByName('Quantidade_Unidade').value;
                                     fieldbyname('Unidade_Peso').value       := 0;
                                Post;
                           end;
                          Close;
                           tItem.Close;
                        end;

                        POItens.Next;
                  end;
                  with Invoiceitens do begin
                       close;
                       sql.Clear;
                       sql.Add('select * from InvoiceItens where Invoice = :pInvoice order by Codigo_Mercadoria');
                       ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                       Open;
                  end;
                  with ttmp do begin
                       sql.Clear;
                       sql.Add('select Volumes = isnull(sum(Quantidade), 0)');
                       sql.Add('      ,PesoL   = isnull(sum(Peso_Liquido * Quantidade), 0)');
                       sql.Add('      ,PesoB   = isnull(sum(Peso_Bruto * Quantidade), 0)');
                       sql.Add('      ,ValorME = isnull(sum(Valor_UnitarioME * Quantidade), 0)');
                       sql.Add('from InvoiceItens');
                       sql.Add('where Invoice = :pInv');
                       ParamByName('pInv').Asstring := InvoiceNumero.Asstring;
                       Open;

                       InvoiceVolumes_Quantidade.Value := FieldByName('Volumes').AsFloat;
                       InvoicePeso_Liquido.Value       := FieldByName('PesoL').AsFloat;
                       InvoicePeso_Bruto.Value         := FieldByName('PesoB').AsFloat;
                       InvoiceTotal_FaturaME.Value     := FieldByName('ValorME').AsFloat;
                       InvoiceTotal_Fatura.Value       := FieldByName('ValorME').AsFloat * InvoiceTaxa_Cambio.AsFloat;
                  end;
               end;
          end;
     end;
*)
end;

procedure TfComexInvoice.cCertNumExit(Sender: TObject);
begin
(*
     cCertTipo.Enabled := trim(cCertNum.Text) <> '';
     cCertQtde.Enabled := trim(cCertNum.Text) <> '';
*)
end;

procedure TfComexInvoice.cCoberturaCambialChange(Sender: TObject);
begin
(*
     cMotivoCambial.Enabled := cCoberturaCambial.ItemIndex = 3;
*)
end;

procedure TfComexInvoice.cCodigoChange(Sender: TObject);
begin
(*
     if cCodigo.Text <> '' then begin
   begin
             with ttmp do begin
                  sql.Clear;
                  sql.Add('select Exige_LPCO');
                  sql.Add('from NCM');
                  sql.Add('where NCM = :pNCM');
                  parambyname('pNCM').value :=fieldbyname('NCM').asstring;
                  open;
             end;
             bLPCO.Enabled :=FieldByName('Exige_LPCO').AsBoolean;
             ifFieldByName('Exige_LPCO').AsBoolean then begin
                with tLPCO do begin
                     sql.Clear;
                     sql.Add('select Orgao_Anuente = (select Nome from Cybersoft_Cadastros.dbo.OrgaosAnuentes where Codigo = LPCO.Orgao_Anuente)');
                     sql.Add('      ,Documento = (select Documento from LPCO where LPCO.LPCO = iil.LPCO)');
                     sql.Add('      ,Numero = (select NUmero from LPCO where LPCO.LPCO = iil.LPCO)');
                     sql.Add('from InvoiceItensLPCO iil, LPCO');
                     sql.Add('where iil.Invoice = :pInvoice');
                     sql.Add('and Codigo_Mercadoria = :pCod');
                     sql.Add('and LPCO.LPCO = iil.LPCO');
                     parambyname('pInvoice').asstring :=fieldbyname('Invoice').asstring;
                     parambyname('pCod').asinteger    :=fieldbyname('Codigo_Mercadoria').asinteger;
                     open;
                end;
             end;
        end;
     end;
*)
end;

procedure TfComexInvoice.cCodigoExit(Sender: TObject);
begin
(*
   begin
          FieldByName('Invoice').Value        := InvoiceNumero.Asstring;
          FieldByName('Unidade').Value        := ProdutosUnidade.AsString;
          FieldByName('NCM').Value            := ProdutosNCM.AsString;
          FieldByName('Valor_Unitario').Value := roundto(InvoiceItensValor_UnitarioME.AsCurrency * InvoiceTaxa_Cambio.AsFloat, -7);
          FieldByName('Imp_Exp').Value        := 'I';
          FieldByName('Fabricante').Value     := ProdutosFabricante.Asinteger;
          FieldByName('Peso_Liquido').Value   := iif(FieldByName('Peso_Liquido').asfloat = 0, ProdutosPeso_Liquido.AsFloat, FieldByName('Peso_Liquido').Value);
          FieldByName('Peso_Bruto').Value     := iif(FieldByName('Peso_Bruto').asfloat = 0, ProdutosPeso_Bruto.AsFloat, FieldByName('Peso_Bruto').Value);
     end;
*)
end;

procedure TfComexInvoice.cExportadorExit(Sender: TObject);
begin
(*
   begin
          if (Invoice.State = dsInsert) or (Invoice.State = dsEdit) then begin
             InvoicePais_Origem.Value := FornecedoresPais.AsString;
          end;
     end;
*)
end;

procedure TfComexInvoice.lExportadorClick(Sender: TObject);
begin
(*
      Cadastro_Fornecedores := TCadastro_Fornecedores.Create(Self);
      Cadastro_Fornecedores.Caption := Caption;
      Cadastro_Fornecedores.ShowModal;
   begin
          Open;
           InvoiceExportador.Value := StrtoInt(Clipboard.AsText);
           If Trim(cExportador.Text) = '' then InvoiceExportador.Clear; 
      End;
*)
end;

procedure TfComexInvoice.lMoedaClick(Sender: TObject);
begin
(*
      Cadastro_Cotacao := TCadastro_Cotacao.Create(Self);
      Cadastro_Cotacao.Caption := Caption;
      Cadastro_Cotacao.ShowModal;
      Dados.Cotacao.Open;
      Dados.Moedas.Open;
      if trim(ClipBoard.AsText) <> '|' then begin
         Dados.InvoiceMoeda.Value := StrtoInt (Copy(Clipboard.AsText, 1, Pos('|', ClipBoard.AsText)-1));
         Dados.InvoiceData.Value  := StrtoDate(Copy(Clipboard.AsText, Pos('|', ClipBoard.AsText)+1, 10) );
      end;
      cMoeda.SetFocus;
*)
end;

procedure TfComexInvoice.lCondicaoVendaClick(Sender: TObject);
begin
(*
      Cadastro_INCOTERMS := TCadastro_INCOTERMS.Create(Self);
      Cadastro_INCOTERMS.Caption := Caption;
      Cadastro_INCOTERMS.ShowModal;
      Dados.INCOTERMS.Open;
      Dados.InvoiceINCOTERMS.Value := Clipboard.AsText;
*)
end;

procedure TfComexInvoice.cCondicaoCambioChange(Sender: TObject);
begin
(*
   begin
           If Trim(RemoveCaracter('/', '', InvoiceData_BL.AsString)) <> '' then begin
              If (Invoice.State = dsInsert) or (Invoice.State = dsEdit) then begin
                 InvoiceData_Vencimento.Clear;
                 If Trim(RemoveCaracter('/', '', cData_BL.Text)) <> '' then InvoiceData_Vencimento.Value := InvoiceData_BL.Value + (CondicaoCambialVencimento1.AsInteger+CondicaoCambialVencimento2.AsInteger+CondicaoCambialVencimento3.AsInteger);
              End;
           End;
      End;
*)
end;

procedure TfComexInvoice.cData_BLChange(Sender: TObject);
begin
(*
   begin
           if (Invoice.state = dsEdit) or (Invoice.State = dsInsert) and (Trim(RemoveCaracter('/', '', cData_BL.Text)) <> '') then begin
              InvoiceData_Vencimento.Value := InvoiceData_BL.Value + (CondicaoCambialVencimento1.AsInteger+CondicaoCambialVencimento2.AsInteger+CondicaoCambialVencimento3.AsInteger);
           end;
      end;
*)
end;

procedure TfComexInvoice.cNumeroChange(Sender: TObject);
begin
(*
   begin
           if (Invoice.State <> dsInsert) and (Invoice.State <> dsEdit) then begin
             sql.Clear;
             sql.Add('select *');
             sql.Add('from  PO');
             sql.Add('where Processo = :pProc');
             ParamByName('pProc').asstring := cProcesso.Text;
             Open;
              cTotalFaturaME.Clear;
              cTotalFaturaReal.Clear;
              cTotalPesoLiquido.Clear;
              cTotalPesoBruto.Clear;
              if Trim(cNumero.Text) <> '' then begin
                sql.Clear;
                sql.Add('select * from InvoiceItens where Invoice = :pInvoice order by Codigo_Mercadoria');
                ParamByName('pInvoice').AsString := InvoiceNumero.AsString;
                Open;
                 Totaliza;
              end;
           end;
      end;
*)
end;

procedure TfComexInvoice.cProcessoClick(Sender: TObject);
begin
(*
   begin
           // Pegando os dados do Processo quando adicionando uma nova invoice e não existe
           ifState = dsInsert then begin
             sql.Clear;
             sql.Add('select *');
             sql.Add('from  PO');
             sql.Add('where Processo = :pProc');
             ParamByName('pProc').asstring := cProcesso.Text;
             Open;
              
              ifRecordCount = 0 then begin
                 if Trim(InvoiceProcesso.AsString) <> '' then begin
                    InvoiceMoeda.Value                 := ProcessosDOCMoeda_FOB.Value;
                    InvoiceExportador.Value            := ProcessosDOCFornecedor.Value;
                    InvoiceINCOTERMS.Value             := ProcessosDOCINCOTERMS.Value;
                    InvoiceCondicao_Cambio.Value       := ProcessosDOCCondicao_Cambio.Value;
                    InvoiceData_BL.Value               := ProcessosDOCData_BL.Value;
                    InvoiceVia_Transporte.Value        := ProcessosDOCVia_Transporte.Value;
                    InvoiceLocal_Embarque.Value        := ProcessosDOCLocal_Embarque.Value;
                    InvoiceModalidade_Importacao.Value := ProcessosDOCModalidade_Importacao.Value;
                 end;
              end;
           end;
      end;
*)
end;

procedure TfComexInvoice.cPOClick(Sender: TObject);
begin
(*
   begin
           // Pegando os dados da PO ou do Processo quando adicionando uma nova invoice.
           ifState = dsInsert then begin
              if Trim(InvoiceProcesso.AsString) <> '' then begin
                 InvoiceMoeda.Value           := POMoeda.Value;
                 InvoiceExportador.Value      := POExportador.Value;
                 InvoicePO.Value              := PONumero.Value;
                 InvoicePais_Origem.Value     := POPais_Origem.Value;
                 InvoiceINCOTERMS.Value       := POINCOTERMS.Value;
                 InvoiceCondicao_Cambio.Value := POCondicao_Cambial.Value;
                 InvoiceLocal_Embarque.Value  := POLocal_Embarque.Value;
                 InvoiceLocal_Chegada.Value   := POLocal_Entrega.Value;
                 InvoiceVia_Transporte.Value  := POVia_Transporte.Value;
              end;
           end;
      end;    
*)
end;

// Totaliza os itens da invoice.
procedure TfComexInvoice.Totaliza;
begin
{
      with ttmp do begin
           sql.clear;
           sql.Add('select isnull(sum(Total_Fatura), 0)   as Total_Real,');
           sql.Add('       isnull(sum(Total_FaturaME), 0) as Total_ME,');
           sql.Add('       isnull(sum(Peso_Liquido), 0)   as Total_PesoLiquido,');
           sql.Add('       isnull(sum(Peso_Bruto), 0)     as Total_PesoBruto');
           sql.Add('from Invoice');
           sql.Add('where Processo = :pProcesso');
           ParamByName('pProcesso').AsString := Dados.InvoiceProcesso.AsString;
           Open;

           cTotalFaturaME.Value    := FieldByName('Total_ME').Value;
           cTotalFaturaReal.Value  := FieldByName('Total_Real').Value;
           cTotalPesoLiquido.Value := FieldByName('Total_PesoLiquido').Value;
           cTotalPesoBruto.Value   := FieldByName('Total_PesoBruto').Value;

           sql.Clear;
           sql.Add('select isnull(sum(Valor_UnitarioME * Quantidade), 0) as Total_ME,');
           sql.Add('       isnull(count(*), 0) as Total_Itens');
           sql.Add('from InvoiceItens');
           sql.Add('where Invoice = :pInv');
           ParamByName('pInv').AsString := Dados.InvoiceNumero.AsString;
           Open;
      end;
}
end;

procedure TfComexInvoice.bAddItemClick(Sender: TObject);
begin
      with InvoiceItens do begin
           try
               LigaBotoesItens(false);
               Append;
                    InvoiceItensInvoice.Value          := InvoiceNumero.value;
                    InvoiceItensEmpresa.Value          := InvoiceEmpresa.value;
                    InvoiceItensVinculo_CompVend.value := 'NAO_HA_VINCULACAO';
                    
               cProduto.SetFocus;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfComexInvoice.bAdicionarClick(Sender: TObject);
begin
      with Invoice do begin
           try
               Pasta.ActivePageIndex := 1;
               LigaBotoes(false);
               Append;
                    InvoicePais_Destino.Value := '1058';
                    InvoiceImp_Exp.Value      := 'I';
                    InvoiceEmpresa.Value      := UniMainModule.mEmpresaAtiva;
                    
               cProcesso.SetFocus;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfComexInvoice.bExcItemClick(Sender: TObject);
begin
     with InvoiceItens do begin
          MessageDlg('Deseja realmente excluir este item?'+#13+#13+'Item: '+InvoiceItensItem.asstring, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             try
                                Delete;
                                Alerta.Text := 'Registro excluído do banco de dados!';
                                Alerta.Execute;
                             except on E: Exception do
                                MessageDlgN('Falha desconhecida, não pode excluir o invoice!'+#13+E.Message, mtError, [mbOK]);
                             end;
                          end;
                    end);
     end;
end;

procedure TfComexInvoice.bExcluirClick(Sender: TObject);
begin
     with Invoice do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+'Invoice: '+InvoiceNumero.asstring+#13+'  Processo: '+InvoiceProcesso.AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             try
                                with ttmp do begin 
                                     sql.clear;
                                     sql.add('delete from InvoiceItens where Empresa = :Empresa and Invoice = :Invoice');
                                     parambyname('Empresa').value := InvoiceEmpresa.value;
                                     parambyname('Invoice').value := InvoiceNumero.value;
                                     execute;
                                end;
                                Delete;
                                Alerta.Text := 'Registro excluído do banco de dados!';
                                Alerta.Execute;
                             except on E: Exception do
                                MessageDlgN('Falha desconhecida, não pode excluir o invoice!'+#13+E.Message, mtError, [mbOK]);
                             end;
                          end;
                    end);
     end;
end;

procedure TfComexInvoice.bSalvaItemClick(Sender: TObject);
begin
      with InvoiceItens do begin              
           if CampoVazio(cProduto         , 'Produto')             then Abort;
           if CampoVazio(cQtde            , 'Quantidade')          then Abort;
           if CampoVazio(cValor_UnitarioME, 'Valor Unitario (ME)') then Abort;
           if CampoVazio(cPeso_Liquido    , 'Peso Líquido')        then Abort;

           try
               // Gera o registro em caso de inclusão.
               if State = dsInsert then begin
                  InvoiceItensRegistro.value := GeraCodigo('InvoiceItens', 'Registro');
               end;
               with ttmp do begin 
                    sql.clear;
                    sql.add('select isnull(max(Item), 0)+1 as Item from InvoiceItens where Empresa = :Empresa and Invoice = :Invoice');
                    parambyname('Empresa').value := InvoiceEmpresa.value;
                    parambyname('Invoice').value := InvoiceNumero.value;
                    open;
               end;
               InvoiceItensItem.value := ttmp.fieldbyname('Item').value;
               Post;
               
               LigaBotoesItens(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfComexInvoice.bSalvarClick(Sender: TObject);
begin
      with Invoice do begin              
           if CampoVazio(cProcesso      , 'Processo')           then Abort;
           if CampoVazio(cNumero        , 'Numero do Invoice')  then Abort;
           if CampoVazio(cData          , 'Data do Invoice')    then Abort;
           if CampoVazio(cMoeda         , 'Moeda')              then Abort;
           if CampoVazio(cExportador    , 'Exportador')         then Abort;
           if CampoVazio(cCondicaoCambio, 'Condição de Venda')  then Abort;
           if CampoVazio(cBL            , 'Número do BL')       then Abort;
           if CampoVazio(cData_Bl       , 'Data do BL')         then Abort;
           if CampoVazio(cTaxaCambio    , 'Taxa do Câmbio')     then Abort;
           
           try
               // Gera o registro em caso de inclusão.
               if State = dsInsert then begin
                  InvoiceRegistro.value := GeraCodigo('Invoice', 'Registro');
               end;
               Post;

               // Modifica os dados do processo.
               with ttmp do begin
                    try
                       sql.clear;
                       sql.add('update ProcessosImp set Numero_Fatura   = :Invoice');
                       sql.add('                       ,Data_Fatura     = :Data');
                       sql.add('                       ,Fornecedor      = :Forn');
                       sql.add('                       ,Condicao_Cambio = :Cond');
                       sql.add('                       ,Valor_FaturaME  = :Total');
                       sql.add('                       ,Data_BL         = :DataBL');
                       sql.add('                       ,Documento_Carga = :DocCarga');
                       sql.add('where Processo = :Processo');
                       Parambyname('Invoice').value  := InvoiceNumero.asstring;
                       Parambyname('Data').value     := InvoiceData.value;
                       Parambyname('Forn').value     := InvoiceExportador.Value;
                       Parambyname('Cond').value     := InvoiceCondicao_Cambio.value;
                       Parambyname('Total').value    := InvoiceTotal_FaturaME.value;
                       Parambyname('DataBL').value   := InvoiceData_BL.value;
                       Parambyname('DocCarga').value := InvoiceBL.value;
                       execute;
                    except on E: Exception do
                       MessageDlgN('Falha desconhecida, não pode salvar os dados no processo!'+#13+E.Message, mtError, [mbOK]);
                    end;
               end;
               if State = dsInsert then begin
                  // Importando os itens da PO para a
                  InvoiceImp_Exp.Value := 'I';
                  PegaItens;
               end;
               
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfComexInvoice.bCancelarClick(Sender: TObject);
begin
      Invoice.Cancel;
      LigaBotoes(true);
end;

procedure TfComexInvoice.bCancItemClick(Sender: TObject);
begin
     InvoiceItens.Cancel;
     LigaBotoesitens(true);
end;

procedure TfComexInvoice.bEditarClick(Sender: TObject);
begin
     try
         Pasta.ActivePageIndex := 1;
         LigaBotoes(false);
         Invoice.Edit;
         cEmpresa.setfocus;
     except on E: Exception do
         MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;
 
procedure TfComexInvoice.UniFrameDestroy(Sender: TObject);
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
 
procedure TfComexInvoice.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bSalvar.Enabled    := not Estado;
     AtivaPanel(pFicha, Estado);
end;

procedure TfComexInvoice.LigaBotoesItens(Estado:boolean);
begin
     NavegaItens.Enabled := Estado;
     bAltItem.Enabled    := Estado;
     bExcItem.Enabled    := Estado;
     bAddItem.Enabled    := Estado;
     bCancItem.Enabled   := not Estado;
     bSalvaItem.Enabled  := not Estado;
     AtivaPanel(pFichaItem, Estado);
end;

procedure TfComexInvoice.bFechar_Click(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfComexInvoice.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;
 
procedure TfComexInvoice.InvoiceAfterPost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, EstadoTabela(DataSet));
end;

procedure TfComexInvoice.InvoiceBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, 'Delete');
end;

end.
