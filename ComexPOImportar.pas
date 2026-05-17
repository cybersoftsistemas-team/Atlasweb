unit ComexPOImportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, comObj,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker,
  REST.Authenticator.OAuth, REST.Types, REST.Client, REST.Response.Adapter, System.JSON, MaskUtils, uniGUIForm, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, 
  uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.Menus, uniMainMenu, FireDAC.Comp.DataSet, Datasnap.DBClient, uniMemo, uniStringGrid, uniCheckBox, uniProgressBar, 
  uniFileUpload, MemDS, DBAccess, MSAccess, uniScreenMask, uniMultiItem, uniDBComboBox, uniListBox;

type
  THackControl = class(TUniControl);
  TfComexPOImportar = class(TUniForm)
    Panel1: TUniPanel;
    dstPlanPO: TDataSource;
    tPlanPO: TClientDataSet;
    tPlanPOItem: TSmallintField;
    tPlanPONCM: TStringField;
    tPlanPONet_Qty: TFloatField;
    tPlanPOUnidade: TStringField;
    tPlanPOTotal_Qty: TFloatField;
    tPlanPOCodigo_Mercadoria: TSmallintField;
    tPlanPOUnit_Price: TCurrencyField;
    tPlanPOTotal: TCurrencyField;
    tPlanPODescricao: TStringField;
    tPlanPOPackage_Type: TStringField;
    tPlanPOQty_Pkgs: TIntegerField;
    Progresso: TUniProgressBar;
    dstPlanCli: TDataSource;
    tPlanCli: TClientDataSet;
    Pasta: TUniPageControl;
    TabSheet1: TUniTabSheet;
    TabSheet2: TUniTabSheet;
    cLinhaIniPO: TuniSpinEdit;
    cLinhaFimPO: TuniSpinEdit;
    GradePO: TUniDBGrid;
    cArquivoPO: TUniFileUploadButton;
    bImportarPO: TUniButton;
    tPlanCliCodigo: TIntegerField;
    tPlanCliCodigo_Fabricante: TStringField;
    tPlanCliTipo: TIntegerField;
    tPlanCliUnidade: TStringField;
    tPlanCliQuantidade_Unidade: TFloatField;
    tPlanCliNCM: TStringField;
    tPlanCliPeso_Liquido: TFloatField;
    tPlanCliPeso_Bruto: TFloatField;
    tPlanCliDescricao_Reduzida: TStringField;
    tPlanCliDescricao: TStringField;
    tPlanCliDescricao_Ingles: TStringField;
    tPlanCliAliquota_IPI: TFloatField;
    tPlanCliAliquota_II: TFloatField;
    tPlanCliAliquota_PIS: TFloatField;
    tPlanCliAliquota_COFINS: TFloatField;
    tPlanCliTipo_Item: TSmallintField;
    tPlanCliValor_IPI: TFloatField;
    tPlanCliClasseEnquadra_IPI: TStringField;
    tPlanCliDumping_Valor: TFloatField;
    tPlanCliFornecedor: TIntegerField;
    tPlanCliFabricante: TIntegerField;
    tPlanCliValor_Venda: TCurrencyField;
    tPlanCliValor_CustoMedio: TCurrencyField;
    tPlanCliValor_Entrada: TCurrencyField;
    tPlanCliTipo_Conversao: TStringField;
    tPlanCliReducao_COFINS: TFloatField;
    tPlanCliReducao_PIS: TFloatField;
    tPlanCliLinha: TSmallintField;
    tPlanCliGTIN: TStringField;
    tPlanCliUnidade_Origem: TStringField;
    tPlanCliGTIN_Unidade: TStringField;
    tPlanCliLargura: TFloatField;
    tPlanCliComprimento: TFloatField;
    tPlanCliAltura: TFloatField;
    tPlanCliICMS_Reducao: TFloatField;
    tPlanCliQuantidade_Volumes: TFloatField;
    tPlanCliSelecionado: TBooleanField;
    tPlanCliDumping: TBooleanField;
    tPlanCliReciclavel: TBooleanField;
    tPlanCliCodigo_ANP: TStringField;
    tPlanCliCodigo_Provisorio: TIntegerField;
    tPlanCliReducao_IPI: TFloatField;
    tPlanCliReducao_II: TFloatField;
    tPlanCliAcordo_TarifarioII: TFloatField;
    tPlanCliAcordo_TarifarioIPI: TFloatField;
    tPlanCliEntrada_ST: TBooleanField;
    tPlanCliDesativado: TBooleanField;
    tPlanCliCusto_Seletivo: TBooleanField;
    tPlanCliPIS_Nota: TFloatField;
    tPlanCliCOFINS_Nota: TFloatField;
    tPlanCliDetalhe_Especifico: TStringField;
    tPlanCliICMS_DentroEstado: TFloatField;
    tPlanCliICMS_ForaEstado: TFloatField;
    tPlanCliPIS_NotaSaida: TFloatField;
    tPlanCliCOFINS_NotaSaida: TFloatField;
    tPlanCliCAMEX: TBooleanField;
    tPlanCliTabela_CAMEX: TBooleanField;
    tPlanCliPotencia_Motor: TStringField;
    tPlanCliCilindradas: TStringField;
    tPlanCliTipo_Combustivel: TStringField;
    tPlanCliCapacidade_Tracao: TFloatField;
    tPlanCliDistancia_Eixos: TStringField;
    tPlanCliTipo_Pintura: TStringField;
    tPlanCliTipo_Veiculo: TStringField;
    tPlanCliEspecie_Veiculo: TStringField;
    tPlanCliCondicao_VIN: TStringField;
    tPlanCliCondicao_Veiculo: TStringField;
    tPlanCliPassageiros: TSmallintField;
    tPlanCliCodigo_MarcaModelo: TStringField;
    tPlanCliValor_VendaA: TCurrencyField;
    tPlanCliValor_VendaB: TCurrencyField;
    tPlanCliValor_VendaC: TCurrencyField;
    tPlanCliValor_VendaD: TCurrencyField;
    tPlanCliValor_VendaE: TCurrencyField;
    tPlanCliModalidade: TSmallintField;
    tPlanCliFCP: TBooleanField;
    tPlanCliLote_Obrigatorio: TBooleanField;
    tPlanCliProducao_Nacional: TBooleanField;
    tPlanCliRegistro_ANVISA: TStringField;
    tPlanCliVencimento_ANVISA: TDateTimeField;
    tPlanCliProcesso_ANVISA: TStringField;
    tPlanCliSerial_Obrigatorio: TBooleanField;
    tPlanCliValor_ConsumidorFinal: TCurrencyField;
    tPlanCliOrigem: TStringField;
    tPlanCliEscala_Relevante: TBooleanField;
    tPlanCliCNPJ_Fabricante: TStringField;
    tPlanCliDescricao_ANP: TStringField;
    tPlanCliPercentual_GLP: TFloatField;
    tPlanCliPercentual_GLGNN: TFloatField;
    tPlanCliPercentual_GLGNI: TFloatField;
    tPlanCliValor_Partida: TCurrencyField;
    tPlanCliPreco_MaxConsumidor: TCurrencyField;
    tPlanCliValor_ME: TCurrencyField;
    tPlanCliBeneficio_Fiscal: TStringField;
    tPlanCliICMS_DentroEstadoSimples: TFloatField;
    tPlanCliMateria_Prima: TBooleanField;
    tPlanCliICMS_EstadoEntrada: TFloatField;
    tPlanCliICMS_ForaEstadoEntrada: TFloatField;
    tPlanCliServico: TBooleanField;
    tPlanCliClassificacao: TStringField;
    tPlanCliRequer_LI: TBooleanField;
    tPlanCliCliente: TSmallintField;
    tPlanCliOrgao_AnuenteImp: TSmallintField;
    tPlanCliOrgao_AnuenteExp: TSmallintField;
    tPlanCliFornecedor_Nome: TStringField;
    cApagarPO: TUniCheckBox;
    tProd: TFDQuery;
    tReg: TFDQuery;
    tCampos: TFDQuery;
    bImportarCli: TUniButton;
    blayout: TUniButton;
    LayImp: TFDQuery;
    dsLayInp: TDataSource;
    tCodigo: TFDQuery;
    dstNCM: TDataSource;
    vConv: TRESTResponseDataSetAdapter;
    tNCM: TFDMemTable;
    tNCMNCM: TStringField;
    tNCMII: TFloatField;
    tNCMPIS: TFloatField;
    tNCMCOFINS: TFloatField;
    tNCMEX: TBooleanField;
    tNCMNVE: TBooleanField;
    tNCMCEST: TBooleanField;
    tNCMAntD: TBooleanField;
    tNCMCIDE: TFloatField;
    tNCMUM: TStringField;
    tNCMTexto: TStringField;
    tNCMIPI: TFloatField;
    tNCMICMS: TStringField;
    RClient: TRESTClient;
    RRequest: TRESTRequest;
    RResponse: TRESTResponse;
    RAutentica: TOAuth2Authenticator;
    tNCMLI: TBooleanField;
    TabSheet3: TUniTabSheet;
    Memo1: TUniMemo;
    LayoutImportacao: TFDQuery;
    NCM: TFDQuery;
    POItens: TFDQuery;
    Produtos: TFDQuery;
    Alerta: TUniSweetAlert;
    dsProdutos: TDataSource;
    dsPOItens: TDataSource;
    dsNCM: TDataSource;
//    dsprodutos: TDataSource;
    dsLayoutImportacao: TDataSource;
    EComm: TMSQuery;
    ECommRegistro: TIntegerField;
    ECommAtivo: TBooleanField;
    ECommTempo_Verificacao: TSmallintField;
    ECommURL: TStringField;
    ECommConsumer_Key: TStringField;
    ECommconsumer_Secret: TStringField;
    ECommToken: TMemoField;
    dsEComm: TDataSource;
    bSair: TUniSpeedButton;
    cArqPO: TUniEdit;
    UniScreenMask1: TUniScreenMask;
    UniFileUpload1: TUniFileUpload;
    UniPanel1: TUniPanel;
    cArqProd: TUniEdit;
    bArqProd: TUniFileUploadButton;
    cLinhaIniCli: TUniSpinEdit;
    cApagarCli: TUniCheckBox;
    cCodigo: TUniCheckBox;
    cLinhaFimCli: TUniSpinEdit;
    UniPanel2: TUniPanel;
    Grade: TUniStringGrid;
    UniPanel3: TUniPanel;
    cCampos: TUniListBox;
    UniPanel4: TUniPanel;
    bAdicionar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    DBGrid1: TUniDBGrid;
    cLog: TUniMemo;
    procedure cArquivoPOChange(Sender: TObject);
    procedure cApagarPOClick(Sender: TObject);
    procedure bImportarCliClick(Sender: TObject);
    procedure cApagarCliClick(Sender: TObject);

    procedure blayoutClick(Sender: TObject);
    procedure cLinhaIniPOChange(Sender: TObject);
//    procedure bCancelarClick(Sender: TObject);
//    procedure LigaBotoes(Estado:boolean);
//    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
//    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure POAfterPost(DataSet: TDataSet);
    procedure POBeforeDelete(DataSet: TDataSet);
    procedure ImportarCli;
    procedure bSairClick(Sender: TObject);
    procedure cArquivoPOCompleted(Sender: TObject; AStream: TFileStream);
    procedure bArqProdCompleted(Sender: TObject; AStream: TFileStream);
    procedure cArqProdChangeValue(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure AbrePlanilhaProd;
    procedure ImportarPO;
    procedure AbrePlan;
    procedure CapturaClick(Sender: TObject);
    procedure MontaMenu;
    procedure SalvaLayout;
    function PegaColuna(Campo: string): integer;
    function BuscaJson(NCM: string): boolean;
    procedure AbrirPlanilha(AStream: TStream);
    procedure LerExcelParaGrid(const Arquivo: string; Grid: TuniStringGrid);
    procedure UniFormActivate(Sender: TObject);
    procedure cCamposDblClick(Sender: TObject);
  private
    { Private declarations }
//    procedure AbrePlanilhaPO;
    FMenuCampos: TUniPopupMenu;
  public
    Excel: Variant;
    mColuna: integer;
  end;

function fComexPOImportar: TfComexPOImportar;

implementation

uses MainModule, Main, ServerModule;

{$R *.dfm}

function fComexPOImportar: TfComexPOImportar;
begin
    Result := TfComexPOImportar(UniMainModule.GetFormInstance(TfComexPOImportar));
end;

procedure TfComexPOImportar.UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
var
  Arquivo : string;
begin
  Arquivo := UniServerModule.FilesFolderPath + UniFileUpload1.FileName;
  AStream.Position := 0;
  with TFileStream.Create(Arquivo, fmCreate) do
     try
       CopyFrom(AStream, 0);
     finally
       Free;
     end;

end;

procedure TfComexPOImportar.UniFormActivate(Sender: TObject);
var
  i:integer;
begin
      Pasta.ActivePageIndex := 0;
      clog.Clear;
      cCampos.text := '';
      with POItens do begin
           open;
           for i := 0 to pred(FieldCount) do begin
               cCampos.Items.Add(fields[i].FieldName);
           end;
      end;
      // Purchase order.
      with tPlanPO do begin
           close;
           CreateDataSet;
           Open;
      end;
      // Produtos do Clientes.
      cLinhaIniCli.value := 3;
      cLinhaFimCli.value := 5;
      with tPlanCli do begin
           close;
           CreateDataSet;
           Open;
      end;
      with LayImp do begin
           sql.Clear;
           sql.Add('select * from LayoutImportacao');
           sql.Add('where  Tabela = ''POItens'' ');
           sql.Add('order  BY Coluna');
           //sql.SaveToFile('c:\temp\Importa_Excel.sql');
           Open;
      end;
end;

procedure TfComexPOImportar.LerExcelParaGrid(const Arquivo: string; Grid: TuniStringGrid);
var
   Excel 
  ,Workbook
  ,Sheet: OleVariant;
   Dados: Variant;
   Linha
  ,Coluna
  ,UltLinha
  ,UltColuna: Integer;
begin
     Excel := CreateOleObject('Excel.Application');
     try
        Excel.Visible       := False;
        Excel.DisplayAlerts := False;
        Workbook            := Excel.WorkBooks.Open(Arquivo);
        Sheet               := Workbook.WorkSheets[1];
        UltLinha            := Sheet.UsedRange.Rows.Count;
        UltColuna           := Sheet.UsedRange.Columns.Count;
        Dados               := Sheet.UsedRange.Value;
        Grid.ColCount       := UltColuna;
        Grid.RowCount       := UltLinha;
        for Linha := (cLinhaIniCli.value+1) to UltLinha do begin
            for Coluna := 1 to UltColuna do begin
                Grid.Cells[Coluna-1, Linha-cLinhaIniCli.value] := VarToStr(Dados[Linha, Coluna]);
            end;
        end;
        Workbook.Close(False);
     finally
        Excel.Quit;
        Excel := Unassigned;
     end;
end;

procedure TfComexPOImportar.cArquivoPOChange(Sender: TObject);
begin
(*
      if Trim(cArquivoPO.Text) <> '' then begin
         Screen.Cursor := crAppStart;
         AbrePlanilhaProd;
         bImportarPO.Enabled := tPlanPO.RecordCount > 0 ;
         Screen.Cursor := crDefault;
      end;
*)
end;

procedure TfComexPOImportar.cArquivoPOCompleted(Sender: TObject; AStream: TFileStream);
begin
     cArqPO.Text := cArquivoPO.FileName;
end;

procedure TfComexPOImportar.cCamposDblClick(Sender: TObject);
begin
     Grade.Cells[Grade.Col, 0] := cCampos.Items[cCampos.ItemIndex];
     cCampos.Items.Delete(cCampos.ItemIndex);
end;

procedure TfComexPOImportar.cLinhaIniPOChange(Sender: TObject);
begin
     if cLinhaFimPO.Value < cLinhaIniPO.value then begin
        cLinhaFimPO.value := cLinhaIniPO.Value;
     end;
end;

procedure TfComexPOImportar.bArqProdCompleted(Sender: TObject; AStream: TFileStream);
begin
      cArqProd.text := UniServerModule.FilesFolderPath + bArqProd.FileName;
      LerExcelParaGrid(cArqProd.text, Grade);
      cCampos.Enabled := true;
end;

procedure TfComexPOImportar.AbrirPlanilha(AStream: TStream);
var
  FileName: string;
  Dest: TFileStream;
begin
     // monta o nome completo do arquivo
     FileName := IncludeTrailingPathDelimiter(UniServerModule.FilesFolderPath) + bArqProd.FileName;
     // apenas para visualizar
     cArqProd.Text := FileName;

     // salva o arquivo recebido
     Dest := TFileStream.Create(FileName, fmCreate);
     try
       AStream.Position := 0;
       Dest.CopyFrom(AStream, AStream.Size);
       // garante gravação completa
       Dest.Position := 0;
     finally
       Dest.Free;
     end;

     // confirma existência
     if not FileExists(FileName) then begin
        ShowMessage('Arquivo não foi salvo.');
        Exit;
     end;

     // abre no Excel
     try
       Excel := CreateOleObject('Excel.Application');
       Excel.Visible := false;
       Excel.DisplayAlerts := False;
       Excel.WorkBooks.Open(FileName);
     except
       on E: Exception do
         ShowMessage('Erro ao abrir Excel: ' + E.Message);
     end;
end;

// Carrega os dados da planilha do EXCEL.
(*
procedure TfComexPOImportar.AbrePlanilhaProd;
var
   mLin,mItem: integer;
   mdir: string;
begin
      mDir               := UniServerModule.FilesFolderPath + bArqProd.FileName;
{
      Progresso.Visible  := true;
      Progresso.Position := 0;

  mDir := 'C:\Projetos\Atlasweb\files\Produtos.xlsx';
  if not FileExists(mDir) then begin
    ShowMessage('Arquivo não encontrado');
    Exit;
  end;

  mPlan := CreateOleObject('Excel.Application');
  mPlan.Visible := True;
  mPlan.WorkBooks.Open(mDir);
}
//      mPlan              := CreateOleObject('Excel.Application');
//      mPlan.Visible      := false;
//      mPlan.WorkBooks.Open(mDir);

      mItem := 1;

      tPlanPO.Open;
      tPlanPO.EmptyDataSet;

      for mLin := cLinhaIniPO.value to cLinhaFimPO.value do begin
          tPlanPO.append;
                  tPlanPOItem.value              := mItem;
                  tPlanPOCodigo_Mercadoria.value := Excel.Cells.Item[mLin, 1].value;
                  tPlanPODescricao.value         := Excel.Cells.Item[mLin, 2].value;
                  tPlanPONCM.value               := Excel.Cells.Item[mLin, 7].value;
                  tPlanPOPackage_Type.value      := Excel.Cells.Item[mLin, 8].value;
                  tPlanPOQty_Pkgs.value          := Excel.Cells.Item[mLin,10].value;
                  tPlanPONet_Qty.value           := Excel.Cells.Item[mLin,12].value;
                  tPlanPOUnidade.value           := Excel.Cells.Item[mLin,14].value;
                  tPlanPOTotal_Qty.value         := Excel.Cells.Item[mLin,15].value;
                  tPlanPOUnit_Price.value        := Excel.Cells.Item[mLin,16].value;
                  tPlanPOTotal.value             := Excel.Cells.Item[mLin,17].value;
          tPlanPO.post;
          
          inc(mItem);
          Progresso.Position := Progresso.Position + 1;
          Application.ProcessMessages;
      end;
      Progresso.Visible := false;
      Excel.Quit;
end;
*)

// Carrega os dados da planilha do EXCEL.
procedure TfComexPOImportar.AbrePlanilhaProd;
var
   mLin: integer;
   mDir: string;
begin
      try
         mDir               := UniServerModule.FilesFolderPath + bArqProd.FileName;
         Progresso.Visible  := true;
         Progresso.Max      := cLinhaFimCli.value - cLinhaIniCli.value;
         Progresso.Position := 0;
         with tPlanCli do begin
              open;
              emptydataset;

              for mLin := cLinhaIniCli.value to cLinhaFimCli.value do begin
                  if trim(Excel.Cells.Item[mLin, 5].value) = '' then 
                     break;

                  with tProd do begin
                       if trim(Excel.Cells.Item[mLin, 02].value) <> '' then begin
                          sql.Clear;
                          sql.Add('select Codigo from Produtos where Codigo_Fabricante = '+Excel.Cells.Item[mLin, 02].value);
                          Open;
                       end else begin
                          sql.Clear;
                          sql.Add('select Codigo from Produtos where Descricao = '+QuotedStr(trim(Excel.Cells.Item[mLin, 05].value)));
                          Open;
                       end;
                  end;
                  append;
                       if tprod.RecordCount > 0 then begin
                          fieldbyname('Codigo').Value := tProd.FieldByName('Codigo').asinteger;
                       end else begin
                          fieldbyname('Codigo').Value := Excel.Cells.Item[mLin, 01].value;
                       end;

                       FieldByname('Codigo_Fabricante').Value        := Excel.Cells.Item[mLin, 02].value;
                       FieldByname('Fornecedor').Value               := Excel.Cells.Item[mLin, 03].value;
                       FieldByname('Fornecedor_Nome').Value          := Excel.Cells.Item[mLin, 04].value;
                       FieldByname('Descricao').Value                := Excel.Cells.Item[mLin, 05].value;
                       FieldByname('Descricao_Ingles').Value         := Excel.Cells.Item[mLin, 06].value;
                       FieldByname('Descricao_Reduzida').Value       := Copy(Excel.Cells.Item[mLin, 05].value, 1, 60);
                       FieldByname('Detalhe_Especifico').Value       := Excel.Cells.Item[mLin, 07].value;
                       FieldByname('Linha').Value                    := Excel.Cells.Item[mLin, 08].value;
                       FieldByname('GTIN').Value                     := Excel.Cells.Item[mLin, 09].value;
                       FieldByname('GTIN_Unidade').Value             := Excel.Cells.Item[mLin, 10].value;
                       FieldByname('Fabricante').Value               := Excel.Cells.Item[mLin, 12].value;
                       FieldByname('NCM').Value                      := Excel.Cells.Item[mLin, 13].value;
                       FieldByname('Unidade').Value                  := Excel.Cells.Item[mLin, 14].value;
                       FieldByname('Quantidade_Unidade').Value       := Excel.Cells.Item[mLin, 15].value;
                       FieldByname('Valor_Venda').Value              := Excel.Cells.Item[mLin, 16].value;
                       FieldByname('Valor_ME').Value                 := Excel.Cells.Item[mLin, 17].value;
                       FieldByname('Aliquota_IPI').Value             := Excel.Cells.Item[mLin, 18].value;
                       FieldByname('Valor_IPI').Value                := Excel.Cells.Item[mLin, 19].value;
                       FieldByname('Aliquota_II').Value              := Excel.Cells.Item[mLin, 20].value;
                       FieldByname('PIS_Nota').Value                 := Excel.Cells.Item[mLin, 21].value;
                       FieldByname('Reducao_PIS').Value              := Excel.Cells.Item[mLin, 22].value;
                       FieldByname('COFINS_Nota').Value              := Excel.Cells.Item[mLin, 23].value;
                       FieldByname('Reducao_COFINS').Value           := Excel.Cells.Item[mLin, 24].value;
                       FieldByname('Dumping_Valor').Value            := Excel.Cells.Item[mLin, 26].value;
                       FieldByname('Peso_Liquido').Value             := Excel.Cells.Item[mLin, 27].value;
                       FieldByname('Peso_Bruto').Value               := Excel.Cells.Item[mLin, 28].value;
                       FieldByname('Valor_Venda').Value              := Excel.Cells.Item[mLin, 29].value;
                       if Excel.Cells.Item[mLin, 30].value = 'CONTA PRÓPRIA' then FieldByname('Modalidade').Value := 1;
                       if Excel.Cells.Item[mLin, 30].value = 'CONTA ORDEM'   then FieldByname('Modalidade').Value := 2;
                       if Excel.Cells.Item[mLin, 30].value = 'ENCOMENDA'     then FieldByname('Modalidade').Value := 3;
                       FieldByname('FCP').Value                      := iif(Excel.Cells.Item[mLin, 31].value = 'S', true, false);
                       FieldByname('Dumping').Value                  := iif(Excel.Cells.Item[mLin, 32].value = 'S', true, false);
                       FieldByname('CAMEX').Value                    := iif(Excel.Cells.Item[mLin, 33].value = 'S', true, false);
                       FieldByname('Entrada_ST').Value               := iif(Excel.Cells.Item[mLin, 34].value = 'S', true, false);
                       FieldByname('Materia_Prima').Value            := iif(Excel.Cells.Item[mLin, 35].value = 'S', true, false);
                       FieldByname('Reciclavel').Value               := iif(Excel.Cells.Item[mLin, 36].value = 'S', true, false);
                       FieldByname('Requer_LI').Value                := iif(Excel.Cells.Item[mLin, 37].value = 'S', true, false);
                       FieldByname('Orgao_AnuenteImp').Value         := Excel.Cells.Item[mLin, 38].value;
                  Post;
                  sleep(3000);
                  Progresso.Position := Progresso.Position + 1;
                  Application.ProcessMessages;
              end;
         end;
      except on E: Exception do 
         begin
            Excel.Quit;
            ShowMessage('Erro ao abrir Excel: ' + E.Message);
         end;
      end;
      //Progresso.Visible := false;
      
      Excel.Quit;
end;

procedure TfComexPOImportar.cArqProdChangeValue(Sender: TObject);
var
   i: integer;
begin
      // Carrega o layout salvo.
      with LayImp do begin
           first;
           if RecordCount > 0 then begin
              while not Eof do begin
                    Grade.Cells[fieldbyname('Coluna').asinteger, 0] := fieldbyname('Campo').AsString;
clog.lines.add(fieldbyname('Campo').AsString);
                    next;
              end;
           end;
           cLinhaIniCli.Value   := FieldByName('LinhaIni').AsInteger;
           cLinhaFimCli.Value   := FieldByName('LinhaFim').AsInteger;
           cApagarCli.Checked   := FieldByName('Apagar').AsBoolean;
           bImportarCli.Enabled := Grade.RowCount > 2;
      end;
end;

procedure TfComexPOImportar.bImportarCliClick(Sender: TObject);
begin
(*
      if MessageDlg('Deseja realmente importar estes itens para o PO?', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
         ImportarCli;
      end;
*)
end;

procedure TfComexPOImportar.blayoutClick(Sender: TObject);
begin
(*
     SalvaLayout;
*)
end;

procedure TfComexPOImportar.ImportarPO;
begin
(*
      Screen.Cursor := crSQLWait;
   begin
     with tProd do begin
          sql.Clear;
          sql.Add('select Codigo');
          sql.Add('      ,Quantidade_Volumes');
          sql.Add('      ,Quantidade_Unidade');
          sql.Add('      ,Unidade');
          sql.Add('     ,NCM');
          sql.Add('from Produtos');
          sql.Add('where Codigo = :pCod');

     with tReg do begin
          sql.Clear;
          sql.Add('select Reg  = (select isnull(max(Registro), 0)+1 from POItens)');
          sql.Add('      ,Item = (select isnull(max(Item), 0)+1     from POItens where PO = '+QuotedStr(PO.FieldByName('Numero').AsString)+')');

           if cApagarPO.Checked then begin
     with POItens do begin
             sql.Clear;
             sql.Add('delete from POItens where PO = :pPO');
             ParamByName('pPO').AsString := PONumero.AsString;
             Execute;
             sql.Clear;
             sql.Add('select * from POItens where PO = :pPO');
             ParamByName('pPO').AsString := PONumero.AsString;
           end;

          Open;
     end;

           Progresso.Visible  := true;
           Progresso.Max      := tPlanPO.RecordCount;
           Progresso.Position := 0;

           tPlanPO.First;
           while not tPlanPO.Eof do begin
                ParamByName('pCod').AsInteger := tPlanPO.FieldByName('Codigo_Mercadoria').AsInteger;
                Open;

                 ifLocate('PO;Codigo_Mercadoria', VarArrayOf([PONumero.Value, tPlanPO.FieldByName('Codigo_Mercadoria').AsInteger]), [loCaseInsensitive]) then begin
                   Edit;
                 end else begin
                   Open;
                   Append;
                   FieldByName('Registro').value :=FieldByName('Reg').AsInteger;
                   FieldByName('Item').value     :=FieldByName('Item').AsInteger;
                 end;

                FieldByName('PO').value                 := PO.FieldByName('Numero').AsString;
                FieldByName('Codigo_Mercadoria').value  := tPlanPO.FieldByName('Codigo_Mercadoria').value;
                FieldByName('Quantidade').value         := tPlanPO.FieldByName('Net_Qty').value;
                FieldByName('Valor').value              := tPlanPO.FieldByName('Unit_Price').value;
                FieldByName('Quantidade_Unidade').value :=FieldByName('Quantidade_Unidade').value;
                FieldByName('Quantidade_Volumes').value := tPlanPO.FieldByName('Qty_Pkgs').value;
                FieldByName('NCM').value                := tPlanPO.FieldByName('NCM').value;
                Post;

                Close;
                 tPlanPO.Next;

                 Progresso.Position := Progresso.Position + 1;
                 Application.ProcessMessages;
           end;

           Screen.Cursor     := crDefault;
           Progresso.Visible := false;
      end;
*)
end;

procedure TfComexPOImportar.ImportarCli;
Var
    mLin,
    i,
    mCol: Integer;
    mDesc,
    erro,
    mCodigo: String;
//    js: TMemo;
    mPISNFE,
    mPISNFs,
    mCOFINSNFE,
    mCOFINSNFS: real;
begin
(*
      //Processo_POImportaItens.Enabled := false;
      Progresso.Max      := Grade.RowCount-cLinhaIniCli.AsInteger;
      Progresso.Position := 0;

   begin
          sql.Clear;
          sql.Add('select reg  = (select isnull(max(Registro), 0)+1 from POiIens)');
          sql.Add('      ,Item = (select isnull(max(Item), 0)+1     from POItens where PO = '+QuotedStr(PO.FieldByName('Numero').AsString)+')');

           if cApagarCli.Checked then begin
             sql.Clear;
             sql.Add('delete from POItens where PO = :pPO');
             ParamByName('pPO').AsString := PONumero.AsString;
             Execute;
             sql.Clear;
             sql.Add('select * from POItens where PO = :pPO');
             ParamByName('pPO').AsString := PONumero.AsString;
           end;

           // Cadastra ou Modifica o produto caso não exista.
           for mLin := 2 to pred(Grade.RowCount) do begin
               if Grade.Cells[PegaColuna('Descricao'), mLin] <> '' then begin;
                  // Fazer busca do "NCM" no site da "Infoconsult/ F5 / Tecwin / TECWEB / IOB"...
                  if BuscaJson(Grade.Cells[PegaColuna('NCM'), mLin]) then begin
                     // Cadastra a NCM casa não exista no banco de dados ou atualiza se ja existe.
                     with NCM do begin
                          // Busca as aliquotas de pis e cofins da saida na tabela de pis e cofins.
                          with Majoracao do begin
                               sql.Clear;
                               sql.Add('select *');
                               sql.Add('from Majoracao');
                               sql.Add('where Descricao = ''PIS'' ');
                               sql.Add('and Tipo = ''M'' ');
                               sql.Add('and Modalidade = :pModal');
                               sql.Add('and Majorada = :pMaj');
                               sql.Add('and Regime_Apuracao = :pReg ');
                               ParamByName('pMaj').AsFloat     := tNCM.Fieldbyname('PIS').asfloat;
                               ParamByName('pModal').AsInteger := PO.FieldByName('Modalidade_Importacao').Value;
                               ParamByName('pReg').AsString    := EmpresasRegime.AsString;
                               open;
                               mPISNFE := FieldByName('Entrada').AsFloat;
                               mPISNFS := FieldByName('Saida').AsFloat;

                               sql.Clear;
                               sql.Add('select *');
                               sql.Add('from Majoracao');
                               sql.Add('where Descricao = ''COFINS'' ');
                               sql.Add('and Tipo = ''M'' ');
                               sql.Add('and Modalidade = :pModal');
                               sql.Add('and Majorada = :pMaj');
                               sql.Add('and Regime_Apuracao = :pReg ');
                               ParamByName('pMaj').AsFloat     := tNCM.Fieldbyname('COFINS').asfloat;
                               ParamByName('pModal').AsInteger := PO.FieldByName('Modalidade_Importacao').Value;
                               ParamByName('pReg').AsString    := EmpresasRegime.AsString;
                               open;
                               mCOFINSNFE := FieldByName('Entrada').AsFloat;
                               mCOFINSNFS := FieldByName('Saida').AsFloat;
                          end;

                          sql.Clear;
                          sql.Add('select * from NCM where NCM = :pNCM');
                          ParamByName('pNCM').asstring := tNCM.FieldByName('NCM').AsString;
                          open;
                          if RecordCount = 0 then begin
                             append;
                                 fieldbyName('NCM').value := tNCM.FieldByName('NCM').AsString;
                          end else begin
                             edit;
                          end;
                                 fieldbyName('Produto').value           := tNCM.Fieldbyname('Texto').AsString;
                                 fieldbyName('Unidade').value           := tNCM.Fieldbyname('UM').AsString;
                                 fieldbyName('Enquadramento_IPI').value := '999';
                                 fieldbyName('Genero').value            := copy(tNCM.fieldbyname('NCM').AsString, 1, 2);
                                 fieldbyName('DNF').value               := false;
                                 fieldbyName('CodigoTrib_TabA').value   := 1;
                                 fieldbyName('II').value                := tNCM.Fieldbyname('II').asfloat;
                                 fieldbyName('IPI').value               := tNCM.Fieldbyname('IPI').asfloat;
                                 fieldbyName('IPI_Valor').value         := 0;
                                 fieldbyName('PIS').value               := tNCM.Fieldbyname('PIS').asfloat;
                                 fieldbyName('PIS_Nota').value          := mPISNFE;
                                 fieldbyName('PIS_NotaSaida').value     := mPISNFS;
                                 fieldbyName('COFINS').value            := tNCM.Fieldbyname('COFINS').asfloat;
                                 fieldbyName('COFINS_Nota').value       := mCOFINSNFE;
                                 fieldbyName('COFINS_NotaSaida').value  := mCOFINSNFS;
                                 fieldbyName('Custo_Seletivo').value    := 0;
                                 fieldbyName('PIS_Reducao').value       := 0;
                                 fieldbyName('COFINS_Reducao').value    := 0;
                                 fieldbyName('CodigoTrib_TabA2').value  := 0;
                                 fieldbyName('ICMS_Imune').value        := 0;
                                 fieldbyName('FCP').value               := 0;
                                 fieldbyName('MVA_NaoReducao').value    := 0;
                                 fieldbyName('CodigoTrib_TabA3').value  := 2;
                                 fieldbyName('NALADI').value            := 0;
                                 fieldbyName('Destaque').value          := 0;
                                 fieldbyName('CEST').value              := 0;
                             post
                     end;

                     // Cadastra o Produto casa não exista no banco de dados ou atualiza se ja existe.
                     with Produtos do begin
                          if trim(ApenasNumeros(Grade.Cells[PegaColuna('Codigo_Mercadoria'), mLin])) <> '' then begin
                             sql.Clear;
                             sql.Add('select * from produtos where Codigo = :pCod');
                             paramByName('pCod').AsInteger := strtoint(trim(ApenasNumeros(Grade.Cells[PegaColuna('Codigo_Mercadoria'), mLin])));
                             open;
                             Edit;
                          end else begin
                             sql.Clear;
                             sql.Add('select * from produtos where Codigo_Fabricante = :pCod');
                             paramByName('pCod').Asstring := trim(Grade.Cells[PegaColuna('Codigo_Fabricante'), mLin]);
                             open;
                             if RecordCount <> 0 then begin
                                Edit;
                             end else begin
     with tCodigo do begin
                               sql.Clear;
                               sql.Add('select isnull(max(Codigo),0)+1 as Codigo from Produtos');
                               Open;
     end;
                                Append;
                                FieldByName('Codigo').value  :=FieldByName('Codigo').AsInteger;
                             end;
                          end;

                              FieldByName('Codigo_Fabricante').value  := trim(Grade.Cells[PegaColuna('Codigo_Fabricante'), mLin]);
                              FieldByName('NCM').value                := tNCM.FieldByName('NCM').value;
                              FieldByName('Peso_Liquido').value       := 0;
                              FieldByName('Peso_Bruto').value         := 0;
                              FieldByName('Descricao').value          := iif( PegaColuna('Descricao') <> -1, Trim(Grade.Cells[PegaColuna('Descricao'), mLin]), '');
                              FieldByName('Descricao_Reduzida').value := iif( PegaColuna('Descricao') <> -1, copy(Trim(Grade.Cells[PegaColuna('Descricao'), mLin]), 1, 60), '');
                              FieldByName('Descricao_Ingles').value   := '';
                              FieldByName('GTIN').value               := 'SEM GTIN';
                              FieldByName('GTIN_Unidade').value       := 'SEM GTIN';
                              FieldByName('Quantidade_Unidade').value := 1;
                              FieldByName('Quantidade_Volumes').value := 1;
                              FieldByName('Origem').value             := 'I';
                              FieldByName('Selecionado').value        := false;
                              FieldByName('Reciclavel').value         := false;
                              FieldByName('Desativado').value         := false;
                              FieldByName('Custo_Seletivo').value     := false;
                              FieldByName('FCP').value                := false;
                              FieldByName('Producao_Nacional').value  := false;
                              FieldByName('Materia_Prima').value      := false;
                              FieldByName('Servico').value            := false;
                              FieldByName('Unidade').value            := tNCM.FieldByName('UM').Value;
                              FieldByName('Unidade_Origem').value     := tNCM.FieldByName('UM').Value;
                              FieldByName('Aliquota_IPI').value       := tNCM.FieldByName('IPI').value;
                              FieldByName('Aliquota_II').value        := tNCM.FieldByName('II').value;
                              FieldByName('Aliquota_PIS').value       := tNCM.FieldByName('PIS').value;
                              FieldByName('PIS_Nota').value           := mPISNFE;
                              FieldByName('PIS_NotaSaida').value      := mPISNFS;
                              FieldByName('Aliquota_COFINS').value    := tNCM.FieldByName('COFINS').value;
                              FieldByName('COFINS_Nota').value        := mCOFINSNFE;
                              FieldByName('COFINS_NotaSaida').value   := mCOFINSNFS;
                              FieldByName('Dumping').value            := tNCM.FieldByName('AntD').asboolean;
                              FieldByName('Requer_LI').value          := tNCM.FieldByName('LI').asboolean;
                          post;
                     end;

                     // Importando os itens para o PO.
                     with POItens do begin
                          Erro := '';
                          if trim(ApenasNumeros(Grade.Cells[PegaColuna('Valor'), mLin]))      = '' then Erro := '"Valor" do produto não informado na planilha.'+#13;
                          if trim(Grade.Cells[PegaColuna('Descricao'), mLin])                 = '' then Erro := '"Descrição" do produtos nãoinformado na planilha.'+#13;
                          if trim(ApenasNumeros(Grade.Cells[PegaColuna('Quantidade'), mLin])) = '' then Erro := '"Quantidade" do produtos nãoinformado na planilha.'+#13;
                          if trim(ApenasNumeros(Grade.Cells[PegaColuna('NCM'), mLin]))        = '' then Erro := '"NCM" do produtos nãoinformado na planilha.'+#13;

                          if Erro = '' then begin
                             if Locate('PO;Codigo_Mercadoria', VarArrayOf([PONumero.Value, Produtos.FieldByName('Codigo').AsInteger]), [loCaseInsensitive]) then begin
                                Edit;
                             end else begin
                               sql.Clear;
                               sql.Add('select Reg  = (select isnull(max(Registro), 0)+1 from POItens)');
                               sql.Add('      ,Item = (select isnull(max(Item), 0)+1     from POItens where PO = '+QuotedStr(PO.FieldByName('Numero').AsString)+')');
                               Open;
                                Append;
                                     FieldByName('Registro').value :=FieldByName('Reg').AsInteger;
                                     FieldByName('Item').value     :=FieldByName('Item').AsInteger;
                               Close;
                             end;

                             FieldByName('PO').value                 := PO.FieldByName('Numero').AsString;
                             FieldByName('Codigo_Mercadoria').value  := Produtos.FieldByName('Codigo').AsInteger;
                             FieldByName('Valor').value              := strtocurr(Grade.Cells[PegaColuna('Valor'), mLin]);
                             FieldByName('Quantidade').value         := strtofloat(Grade.Cells[PegaColuna('Quantidade'), mLin]);
                             FieldByName('Quantidade_Unidade').value := 1;
                             FieldByName('NCM').value                := ApenasNumeros((Grade.Cells[PegaColuna('NCM'), mLin]));
                             FieldByName('Fabricante').value         := PO.FieldByName('Exportador').Asinteger;
                             Post;

                             Progresso.Position := Progresso.Position + 1;
                             Application.ProcessMessages;
                          end else begin
                             cMsg.Lines.Add('Registro contém erro e não sera importado: '+#13);
                             cMsg.Lines.Add('      '+Produtos.FieldByName('Codigo').Asstring+': '+ Erro);
                          end;
                     end;
                  end;
               end;
               Progresso.Position  := Progresso.Position + 1;
               Application.ProcessMessages;
           end;
      end;
      //Processo_POImportaItens.Enabled := true;
      Showmessage('Importação da tabela de produtos concluída com sucesso!');
*)
end;

procedure TfComexPOImportar.cApagarCliClick(Sender: TObject);
begin
     if cApagarcLI.Checked then begin
        MessageDlg('Atenção!'+#13+'Essta opção apaga todos os itens existente desse "PO".', mtWarning, [mbOK]);
     end;
end;

procedure TfComexPOImportar.cApagarPOClick(Sender: TObject);
begin
(*
     if cApagarPO.Checked then begin
        MessageDlg('Atenção!'+#13+'Essta opção apaga todos os itens existente desse "PO".', mtWarning, [mbOK], 0);
     end;
*)
end;

procedure TfComexPOImportar.AbrePlan;
Var
   i: integer;
begin
      if Trim(cArqProd.text) <> '' then begin
         Screen.Cursor := crAppStart;
//         with Grade do begin
//              for i := 0 to pred(RowCount) do begin
//                  Grade.Clear;
//              end;
//         end;
//  UniImage1.LoadFromStream(AStream);
//         ImportaEXCEL(Grade, bArqProd.FileName, nil, 1, cLinhaIniCli.value, cLinhaFimCli.value, true);
//         AutoAjusteCol(Grade);
      end;
      Screen.Cursor := crDefault;
end;


procedure TfComexPOImportar.MontaMenu;
var
   NovoItem   : TUniMenuItem;
   MenuCampos : TUniPopupMenu;
   i          : Integer;
   mQuebra    : Integer;
begin
     if not POItens.Active then POItens.Open;

     MenuCampos := TUniPopupMenu.Create(Self);
     MenuCampos.OwnerDraw := False;

     // Separador
     NovoItem := TUniMenuItem.Create(MenuCampos);
     NovoItem.Caption := '-';
     MenuCampos.Items.Add(NovoItem);

     // Limpar
     NovoItem := TUniMenuItem.Create(MenuCampos);
     NovoItem.Caption := 'Limpar';
     NovoItem.OnClick := CapturaClick;
     MenuCampos.Items.Insert(0, NovoItem);

     // Popup no grid
     if Assigned(Grade) then
        THackControl(Grade).PopupMenu := MenuCampos;

     mQuebra := 0;

     // Campos do dataset
     for i := 0 to POItens.FieldCount - 1 do
     begin
         NovoItem := TUniMenuItem.Create(MenuCampos);

         NovoItem.Caption     := POItens.Fields[i].FieldName;
         NovoItem.Name        := 'MI_' + POItens.Fields[i].FieldName;
         NovoItem.Checked     := LayImp.Locate('Tabela;Campo',VarArrayOf(['POItens',POItens.Fields[i].FieldName]),[loCaseInsensitive]);

         NovoItem.AutoHotkeys := maParent;
         NovoItem.Enabled     := True;
         NovoItem.Visible     := True;
         NovoItem.OnClick     := CapturaClick;

         MenuCampos.Items.Add(NovoItem);

         Inc(mQuebra);

         if mQuebra = 25 then
         begin
            mQuebra := 0;
            NovoItem.Break := mbBreak;
         end;
     end;

     // Unidade
     NovoItem := TUniMenuItem.Create(MenuCampos);

     NovoItem.Caption     := 'Unidade';
     NovoItem.Name        := 'MI_Unidade';
     NovoItem.Checked     := LayImp.Locate('Tabela;Campo',VarArrayOf(['POItens', 'Unidade']),[loCaseInsensitive]);

     NovoItem.AutoHotkeys := maParent;
     NovoItem.Enabled     := True;
     NovoItem.Visible     := True;
     NovoItem.OnClick     := CapturaClick;

     MenuCampos.Items.Add(NovoItem);

     // Codigo_Fabricante
     NovoItem := TUniMenuItem.Create(MenuCampos);

     NovoItem.Caption     := 'Codigo_Fabricante';
     NovoItem.Name        := 'MI_Codigo_Fabricante';
     NovoItem.Checked     := LayImp.Locate('Tabela;Campo',VarArrayOf(['POItens','Codigo_Fabricante']),[loCaseInsensitive]);

     NovoItem.AutoHotkeys := maParent;
     NovoItem.Enabled     := True;
     NovoItem.Visible     := True;
     NovoItem.OnClick     := CapturaClick;

     MenuCampos.Items.Add(NovoItem);
end;

procedure TfComexPOImportar.CapturaClick(Sender: TObject);
var
   mCol
  ,mMn: Integer;
begin
      Grade.Cells[mColuna, 0] := ' ';
      if (RemoveCaracter('&', '', TMenuItem(Sender).Caption) <> 'Limpar') then begin
         // Limpa o campo de outra célula se já utilizado.
         for mCol := 0 to pred(Grade.ColCount) do begin
             if Grade.Cells[mCol, 0] = RemoveCaracter('&', '', TMenuItem(Sender).Caption) then begin
                Grade.Cells[mCol, 0] := ' ';
             end;
         end;
         Grade.Cells[mColuna, 0]   := RemoveCaracter('&', '', TMenuItem(Sender).Caption);
         TMenuItem(Sender).Checked := true;
      end;
end;

procedure TfComexPOImportar.SalvaLayout;
Var
    mCol: Integer;
begin
(*
     with LayImp do begin
    sql.Clear;
    sql.Add('delete from LayoutImportacao where Tabela = ''POItens'' ');
    Execute;
    sql.Clear;
    sql.Add('select * from LayoutImportacao');
    sql.Add('where  Tabela = ''POItens'' ');
    sql.Add('order by Coluna');
    Open;
     end;
    First;

     for mCol := 0 to pred(Grade.ColCount) do begin
         if Trim(Grade.Cells[mCol, 0]) <> '' then begin
           Append;
                  FieldByName('Tabela').value     := 'POItens';
                  FieldByName('Coluna').value     := PoeZero(2,mCol);
                  FieldByName('Campo').value      := Grade.Cells[mCol, 0];
                  FieldByName('LinhaIni').value   := cLinhaIniCli.AsInteger;
                  FieldByName('LinhaFim').value   := cLinhaFimCli.AsInteger;
                  FieldByName('Apagar').value     := cApagarCli.Checked;
           Post;
         end;
     end;
    Close;
*)
end;

function TfComexPOImportar.PegaColuna(Campo: string): integer;
var
   c: integer;
begin
     PegaColuna := -1;
     for c := 0 to Grade.ColCount do begin
         if Grade.Cells[c, 0] = Campo then begin
            PegaColuna := c;
            break;
         end;
     end;
end;

function TfComexPOImportar.BuscaJson(NCM: string): boolean;
var
  jsonObj, jSubObj: TJSONObject;
  ja: TJSONArray;
  jv, js: TJSONValue;
  i,a : Integer;
  st: widestring;
  aJs: TStringList;
  mNCM,
  mSecret,
  mID: string;
  mToken: widestring;
  murl : string;
begin
      result := false;
     // BUSCA Arquivo na F5 Legend
//     mSecret := '42H4DBjGEqxAit4orYgXFD1eafrhOeEIBc4zCCnv';
//     mID     := '46';
     (*
     mToken  := 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjliNjUwYWE3ZGRiMzRhZDIwZDRiOWJiNDMyMGJjNDQ3NTJhMTg4MDUyZmQ5MzE4MzgyYmVlYTA4MzkwNDgwYzI5MjRkZWUwZTgwYjhhOGIyIn0.ey'+
                'JhdWQiOiI0NiIsImp0aSI6IjliNjUwYWE3ZGRiMzRhZDIwZDRiOWJiNDMyMGJjNDQ3NTJhMTg4MDUyZmQ5MzE4MzgyYmVlYTA4MzkwNDgwYzI5MjRkZWUwZTgwYjhhOGIyIiwiaWF0IjoxNjU1MzE5OTA3LCJu'+
                'YmYiOjE2NTUzMTk5MDcsImV4cCI6MTY4Njg1NTkwNywic3ViIjoiODQ2NCIsInNjb3BlcyI6W119.GyBGa5IaLHq3KvpmhYwbPgUCKN0dwqa_3jef1x5KO3DXxUNE8TLV0C0vj56kpPW6xbyHBiSFXh4yzxzZ8'+
                'YF8T-MTBNMUPEUtfOKGaugfyQACRgxZ-sxcHJMnAweQYvPvze0q0vQYKIFGqxZWWPRTiOO1r3-V397Ekcrw-1pQfbvhV8AR7QsDmyisDxRujbiubSs1tqhGS6V13OFz7mc2QsonTgLkhwBiyAorZG4SYvG2MOV'+
                'UsQ3q2_kS4oo2OHpvlrDiTM59p3BtKvdWR3saZZgM1gRU0NbBaTkSkV9cx_DPTI_lPGTFs_h5UgQBd_nhW2QIRbncuXOTQFXrXvsMB2uw70DPYVubRlbsHGL7N_WzBTotZFLUvH2Q8KOMyo0rFGZFHyK6V1hph'+
                '_wB-6egbnIugw9DTnktB-kh_H5re2aoBavwOOsxCoNN9kjiVggR0PMhL2jVuRB91967FNHJqrWaccfxkdAY3WOsJcCTLQaT3XZJ935wZFZGgESyoedZVTHfXnDLT8gsEsusblEHfp1GrJEcLn2kOXCUakj1-Iz'+
                'kLDUxAKZWeG1Nxe7KcSzm__m5HJWiLJR6vELHLRUbMq2OPHaDNs6-qNb5Exjm5GRHrzbjAI-PsjzAT0jt3kBbnNr0MktRJSCE3UF0NZ5l0A94_YBApwyhHISM40AuwM4';
     *)
   begin
          EComm.Open;
          EComm.Locate('Servico', 'F5Legend', [loCaseInsensitive]);

          mToken                  := EComm.FieldByName('Token').asstring;
          mSecret                 := EComm.FieldByName('Consumer_Secret').AsWideString;
          mID                     := EComm.FieldByName('Consumer_Key').asstring;
          murl                    := EComm.FieldByName('url').asstring;
          RAutentica.AccessToken  := mToken;
          RAutentica.ClientID     := mID;
          RAutentica.ClientSecret := mSecret;
     end;

     RClient.Params.AddHeader('Authorization', mToken);
//     RClient.BaseURL := Concat('https://www.ncmweb.com.br/api/ncmweb/v1/subitens/', FormatMaskText('####.##.##;0; ', NCM), '?aliquotas=true&indicadores=true&excecoes=true');
     RClient.BaseURL := Concat(murl, 'subitens/', FormatMaskText('####.##.##;0; ', NCM), '?aliquotas=true&indicadores=true&excecoes=true');

     try
         RRequest.Execute;
         st := RResponse.Content;
         memo1.Lines.Add('[ JSON ]-------------------------------------------------------------------------------------------------'+#13+st);
     except
         begin
              memo1.Lines.Add('[ ERRO NA CONEXÃO COM O SERVIÇO ]-------------------------------------------------------------------------'+#13+st);
              memo1.lines.Clear;
              memo1.Lines.Add('TOKEN  :'+#13+mToken);
              memo1.Lines.Add('');
              memo1.Lines.Add('SECRET :'+mSecret);
              memo1.Lines.Add('');
              memo1.Lines.Add('MID    :'+mid);
              memo1.Lines.Add('');
              memo1.Lines.Add('url    :'+murl);
              memo1.Lines.Add('');
              memo1.Lines.Add('Serviço:'+Concat(murl, 'subitens/', FormatMaskText('####.##.##;0; ', NCM), '?aliquotas=true&indicadores=true&excecoes=true'));
              memo1.Lines.Add('');
         end;
     end;
     jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(st), 0) as TJSONObject;
     jv      := jsonObj.Get('data').JsonValue;
     ja      := jv as TJSONArray;

     tNCM.open;
     tNCM.EmptyDataSet;
     for i := 0 to pred(ja.Size) do begin
         jSubObj := (ja.Get(i) as TJSONObject);
         with tNCM do begin
              Append;
              for a := 0 to pred(jsubObj.Count) do begin
                  js := jSubObj.Get(a).JsonString;
                  jv := jSubObj.Get(a).JsonValue;

                  if uppercase(js.value) = 'NCM'    then begin
                     FieldByName(js.value).Value := ApenasNumeros(jv.Value);
                     mNCM := ApenasNumeros(jv.Value);
                  end;
                  if uppercase(js.value) = 'TEXTO'  then
                     FieldByName(js.value).Value := jv.Value;
                  if uppercase(js.value) = 'II'     then
                     FieldByName(js.value).Value := strtofloat(removecaracter('*', '', jv.Value));
                  if uppercase(js.value) = 'IPI'    then
                     FieldByName(js.value).Value := strtofloat(removecaracter('*', '', jv.Value));
                  if uppercase(js.value) = 'PIS'    then
                     FieldByName(js.value).Value := strtofloat(removecaracter('*', '', jv.Value));
                  if uppercase(js.value) = 'COFINS' then
                     FieldByName(js.value).Value := strtofloat(removecaracter('*', '', jv.Value));
                  if uppercase(js.value) = 'ICMS'   then
                     FieldByName(js.value).Value := jv.Value;
                  if (uppercase(js.value) = 'EX') and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'NVE')  and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'CEST') and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'ANTD') and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'CIDE') and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := strtobool(jv.Value);
                  if (uppercase(js.value) = 'UM')   and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := jv.Value;
                  if (uppercase(js.value) = 'LI')   and (jv.Value <> 'null') then
                     FieldByName(js.value).Value := jv.Value;
              end;
              Post;
              result := trim(mNCM) <> '';
         end;
     end;
end;

procedure TfComexPOImportar.bAdicionarClick(Sender: TObject);
begin
     Grade.Cells[Grade.Col, 0] := cCampos.Items[cCampos.ItemIndex];
     cCampos.Items.Delete(cCampos.ItemIndex);
end;

procedure TfComexPOImportar.bExcluirClick(Sender: TObject);
begin
     cCampos.Items.add(Grade.Cells[Grade.Col, 0]);
     Grade.Cells[Grade.Col, 0] := '';
end;

(*
procedure TfComexPOImportar.bSalvarClick(Sender: TObject);
begin
      with PO do begin
           {
           if (State = dsInsert) and (Existe(ProcessosImp, 'Processo', FieldByName('Processo').AsString)) then begin
              MessageDlg('Já existe um "Processo" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cProcesso.SetFocus;
              Abort;
           end;
           };
           try
               // Gera o registro em caso de inclusão.
               {
               if State = dsInsert then begin
                  FieldByName('Registro').Value := GeraCodigo('ProcessosImp', 'Registro');
               end;
               }
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;
*)
//procedure TfComexPOImportar.bCancelarClick(Sender: TObject);
//begin
//      PO.Cancel;
//      LigaBotoes(true);
//end;
(*
procedure TfComexPOImportar.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         PO.Edit;
         cProcesso.setfocus;
     except on E: Exception do
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;
*) 
procedure TfComexPOImportar.UniFrameDestroy(Sender: TObject);
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
 (*
procedure TfComexPOImportar.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
end;
*)
procedure TfComexPOImportar.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfComexPOImportar.bPesquisaClick(Sender: TObject);
begin
//     PO.Cancel;
//     LigaBotoes(true);
//     Filtra(PO, 'Numero', cPesquisa.text);
end;
 
procedure TfComexPOImportar.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TfComexPOImportar.POAfterPost(DataSet: TDataSet);
begin
//      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, EstadoTabela(DataSet));
end;

procedure TfComexPOImportar.POBeforeDelete(DataSet: TDataSet);
begin
//      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, 'Delete');
end;

end.
