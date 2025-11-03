unit ComexProcessoImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, 
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Menus, uniMainMenu, FireDAC.Comp.DataSet, uniRadioGroup, uniCheckBox,
  uniListBox, uniMemo, uniLabel, uniDBRadioGroup, uniDBComboBox, uniMultiItem;

type
  TfComexProcessoImp = class(TUniFrame)
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
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
    dstClientes: TDataSource;
    dstIncoterms: TDataSource;
    dstMestre: TDataSource;
    dstUsuarios: TDataSource;
    tClientes: TFDQuery;
    tIncoterms: TFDQuery;
    tMestre: TFDQuery;
    tUsuarios: TFDQuery;
    MenuCusto: TPopupMenu;
    cData: TUniDBDateTimePicker;
    cData_BL: TUniDBDateTimePicker;
    cData_DesembaracoDeclaracao: TUniDBDateTimePicker;
    cData_Encerramento: TUniDBDateTimePicker;
    cData_Fatura: TUniDBDateTimePicker;
    cData_RegistroDeclaracao: TUniDBDateTimePicker;
    cNavio_DataChegada: TUniDBDateTimePicker;
    cNavio_DataPrevista: TUniDBDateTimePicker;
    cProcesso_Abertura: TUniDBDateTimePicker;
    cProcesso_Fechamento: TUniDBDateTimePicker;
    cReferencia_DataEntrega: TUniDBDateTimePicker;
    cROF_Emissao: TUniDBDateTimePicker;
    cAd_Valorem: TuniDBEdit;
    cAFRMM: TuniDBEdit;
    cAgencia_Maritima: TuniDBEdit;
    cAliquota_ICMS: TuniDBEdit;
    cDocumento_Carga: TuniDBEdit;
    cEspecie: TuniDBEdit;
    cFOB: TuniDBEdit;
    cFOB_Adicoes: TuniDBEdit;
    cFOB_ME: TuniDBEdit;
    cFOB_MEAdicoes: TuniDBEdit;
    cFrete: TuniDBEdit;
    cFrete_ME: TuniDBEdit;
    cFrete_NacionalME: TuniDBEdit;
    cFrete_NacionalReal: TuniDBEdit;
    cII: TuniDBEdit;
    cNome_Transporte: TuniDBEdit;
    cNumero_Declaracao: TuniDBEdit;
    cConhecimento: TUniDBEdit;
    cNumero_Fatura: TuniDBEdit;
    cPeso_Bruto: TuniDBEdit;
    cPeso_Liquido: TuniDBEdit;
    cProcesso: TuniDBEdit;
    cQuantidade: TuniDBEdit;
    cReducao_BC: TuniDBEdit;
    cReducao_ICMS: TuniDBEdit;
    cReferencia_Cliente: TuniDBEdit;
    cReferencia_Despachante: TuniDBEdit;
    cROF_Dias: TuniDBEdit;
    cROF_Numero: TuniDBEdit;
    cSeguro: TuniDBEdit;
    cSeguro_ME: TuniDBEdit;
    cTaxa_FOB: TuniDBEdit;
    cTaxa_Frete: TuniDBEdit;
    cTaxa_Seguro: TuniDBEdit;
    cTaxa_SISCOMEX: TuniDBEdit;
    cValor_COFINS: TuniDBEdit;
    cValor_Dumping: TuniDBEdit;
    cValor_FaturaME: TuniDBEdit;
    cValor_ICMS: TuniDBEdit;
    cValor_IPI: TuniDBEdit;
    cValor_PIS: TuniDBEdit;
    cVolumes: TuniDBEdit;
    cValor_COFINS2: TuniDBEdit;
    cValor_PIS2: TuniDBEdit;
    cCondicaoCambio: TuniDBLookupComboBox;
    cCondicaoVenda: TuniDBLookupComboBox;
    cIncentivo: TuniDBLookupComboBox;
    clCliente: TuniDBLookupComboBox;
    clFornecedor: TuniDBLookupComboBox;
    clModalidade_Importacao: TuniDBLookupComboBox;
    clMoeda_FOB: TuniDBLookupComboBox;
    clMoeda_Frete: TuniDBLookupComboBox;
    clMoeda_Seguro: TuniDBLookupComboBox;
    cProcesso_Mestre: TUniDBLookupComboBox;
    clResponsavel: TuniDBLookupComboBox;
    clTipo_Mercadoria: TuniDBLookupComboBox;
    clVia_Transporte: TuniDBLookupComboBox;
    cCanal_SISCOMEX: TuniDBRadioGroup;
    cAdValorem: TUniFormattedNumberEdit;
    cFOB_SemADVal: TUniFormattedNumberEdit;
    cFOB_SemADValReal: TUniFormattedNumberEdit;
    GroupBox1: TuniGroupBox;
    GroupBox2: TuniGroupBox;
    GroupBox3: TuniGroupBox;
    GroupBox4: TuniGroupBox;
    mnDesmarcarCusto: TuniMenuItem;
    mnDesmarcarCustoEntrada: TuniMenuItem;
    mnDesmarcarCustoOutros: TuniMenuItem;
    mnDesmarcarCustoTodos: TuniMenuItem;
    mnDesmarcarCustoTodosEntrada: TuniMenuItem;
    mnDesmarcarCustoTodosOutros: TuniMenuItem;
    mnDesmarcarSeletivo: TuniMenuItem;
    mnDesmarcarSeletivoTodos: TuniMenuItem;
    mnMarcarCusto: TuniMenuItem;
    mnMarcarCustoEntrada: TuniMenuItem;
    mnMarcarCustoOutros: TuniMenuItem;
    mnMarcarCustoTodos: TuniMenuItem;
    mnMarcarCustoTodosEntrada: TuniMenuItem;
    mnMarcarCustoTodosOutros: TuniMenuItem;
    mnMarcarSeletivo: TuniMenuItem;
    mnMarcarSeletivoTodos: TuniMenuItem;
    N1: TuniMenuItem;
    N2: TuniMenuItem;
    N3: TuniMenuItem;
    TabSheet1: TuniTabSheet;
    TabSheet10: TuniTabSheet;
    TabSheet2: TuniTabSheet;
    TabSheet3: TuniTabSheet;
    TabSheet4: TuniTabSheet;
    TabSheet7: TuniTabSheet;
    TabSheet8: TuniTabSheet;
    TabSheet9: TuniTabSheet;
    ProcessosImp: TFDQuery;
    dsProcessosImp: TDataSource;
    GradeLista: TUniDBGrid;
    UniScrollBox2: TUniScrollBox;
    UniPanel1: TUniPanel;
    UniGroupBox2: TUniGroupBox;
    cPreco_Venda: TUniDBCheckBox;
    cRateia_FretePeso: TUniDBCheckBox;
    cRemover_FreteNacBC: TUniDBCheckBox;
    cICMS_DIferido: TUniDBCheckBox;
    tBeneficio: TFDQuery;
    dstBeneficio: TDataSource;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    tModal: TFDQuery;
    dstModal: TDataSource;
    bAdicoes: TUniButton;
    tCondCambial: TFDQuery;
    dstCondCambial: TDataSource;
    tExportador: TFDQuery;
    dstExportador: TDataSource;
    tFuncaoProd: TFDQuery;
    dstFuncaoProd: TDataSource;
    tViaTransp: TFDQuery;
    dstViaTransp: TDataSource;
    tMoedas: TFDQuery;
    dstMoedas: TDataSource;
    UniScrollBox3: TUniScrollBox;
    UniPanel3: TUniPanel;
    cCondicao_Pgto: TUniDBEdit;
    cLocal_Embarque: TUniDBEdit;
    cLocal_Desembarque: TUniDBEdit;
    clUF_Desembaraco: TUniDBLookupComboBox;
    cMargem_Lucro: TUniDBEdit;
    cDesconto_Operacional: TUniDBEdit;
    cDesconto_Adicional: TUniDBEdit;
    clLocal_Desembaraco: TUniDBLookupComboBox;
    GroupBox6: TUniGroupBox;
    cFator_FaturamentoValor: TUniDBEdit;
    cFator_SISCOMEXValor: TUniDBEdit;
    cData_PrevRegistro: TUniDBDateTimePicker;
    cData_PrevFaturamento: TUniDBDateTimePicker;
    cCondicao_Pagamento: TUniDBEdit;
    cFator_FreteValor: TUniDBEdit;
    cData_PrevFrete: TUniDBDateTimePicker;
    clPrevisao_FreteTransportador: TUniDBLookupComboBox;
    cFator_FaturamentoValorReal: TUniDBEdit;
    cFator_SISCOMEXValorReal: TUniDBEdit;
    cFator_FreteValorReal: TUniDBEdit;
    cFator_ArmazemValor: TUniDBEdit;
    cData_PrevArmazem: TUniDBDateTimePicker;
    clPrevisao_ArmazemFornecedor: TUniDBLookupComboBox;
    cFator_ArmazemValorReal: TUniDBEdit;
    cMargem_LucroValor: TUniDBEdit;
    cDesconto_OperacionalValor: TUniDBEdit;
    cDesconto_AdicionalValor: TUniDBEdit;
    cVencimento_Cambio: TUniDBEdit;
    cPais_Origem: TUniDBLookupComboBox;
    cObservacao: TUniDBMemo;
    cCSTPIS: TUniDBLookupComboBox;
    cCSTCOFINS: TUniDBLookupComboBox;
    cBCCredito: TUniDBComboBox;
    cConsignatario_CNPJ: TUniDBEdit;
    tRecintoAdua: TFDQuery;
    dstRecintoAdua: TDataSource;
    cRecinto_Aduaneiro: TUniDBLookupComboBox;
    cConsignatario_UF: TUniDBLookupComboBox;
    tEstados: TFDQuery;
    dstEstados: TDataSource;
    tPaises: TFDQuery;
    dstPaises: TDataSource;
    tLocalDesemb: TFDQuery;
    dstLocalDesemb: TDataSource;
    tCSTPIS: TFDQuery;
    dstCSTPIS: TDataSource;
    tCSTCOFINS: TFDQuery;
    dstCSTCOFINS: TDataSource;
    Texto: TFDQuery;
    dsTexto: TDataSource;
    UniScrollBox4: TUniScrollBox;
    UniPanel4: TUniPanel;
    cTexto: TUniDBMemo;
    UniScrollBox5: TUniScrollBox;
    UniPanel5: TUniPanel;
    bDespesas: TUniSpeedButton;
    Grade2: TUniDBGrid;
    UniGroupBox1: TUniGroupBox;
    cPgtoSai: TUniFormattedNumberEdit;
    cPgtoSel: TUniFormattedNumberEdit;
    cPgtoEnt: TUniFormattedNumberEdit;
    cPgtoOut: TUniFormattedNumberEdit;
    UniGroupBox3: TUniGroupBox;
    cTotalMestreDespesas2: TUniFormattedNumberEdit;
    cTotalMestreCusto2: TUniFormattedNumberEdit;
    cMestreRecebimentos2: TUniFormattedNumberEdit;
    UniGroupBox4: TUniGroupBox;
    cTotalCusto2: TUniFormattedNumberEdit;
    cTotalRecebimentos2: TUniFormattedNumberEdit;
    cTotalPagamentos2: TUniFormattedNumberEdit;
    dstFinanceiro: TDataSource;
    tFinanceiro: TFDQuery;
    UniScrollBox6: TUniScrollBox;
    UniPanel6: TUniPanel;
    RxDBGrid1: TUniDBGrid;
    UniScrollBox7: TUniScrollBox;
    UniPanel7: TUniPanel;
    DBGrid2: TUniDBGrid;
    bCadastroContainer: TUniButton;
    UniScrollBox9: TUniScrollBox;
    UniPanel9: TUniPanel;
    cListaDOC: TUniListBox;
    bDocumento: TUniBitBtn;
    BitBtn2: TUniBitBtn;
    BitBtn1: TUniBitBtn;
    BitBtn3: TUniBitBtn;
    UniScrollBox10: TUniScrollBox;
    UniPanel10: TUniPanel;
    DBGrid1: TUniDBGrid;
    bHistorico: TUniButton;
    tPlano: TFDQuery;
    dstPlano: TDataSource;
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
    procedure ProcessosImpBeforePost(DataSet: TDataSet);
    procedure ProcessosImpBeforeDelete(DataSet: TDataSet);
//    procedure cFrete_NacionalMEChange(Sender: TObject);
//    procedure clLocal_DesembaracoCodigoExit(Sender: TObject);
//    procedure RxDBGrid1DblClick(Sender: TObject);
//    procedure DBGrid2DblClick(Sender: TObject);
//    procedure DBGrid2DblClick(Sender: TObject);
//    procedure GradeListaDblClick(Sender: TObject);
    procedure clModalidade_ImportacaoExit(Sender: TObject);
    procedure cProcesso_MestreExit(Sender: TObject);
//    procedure clVia_TransporteExit(Sender: TObject);
    procedure cData_RegistroDeclaracaoChange(Sender: TObject);
    procedure cData_RegistroDeclaracaoExit(Sender: TObject);
    procedure cAliquota_ICMSChange(Sender: TObject);
    procedure cTaxa_FOBChange(Sender: TObject);
//    procedure clMoeda_FOBExit(Sender: TObject);
    procedure cFOB_MEChange(Sender: TObject);
//    procedure clMoeda_FreteExit(Sender: TObject);
    procedure cFrete_MEChange(Sender: TObject);
    procedure cProcessoChange(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure clClienteExit(Sender: TObject);
    procedure cProcesso_AberturaChange(Sender: TObject);
    procedure cNumero_DeclaracaoChange(Sender: TObject);
    procedure cVolumesChange(Sender: TObject);
//    procedure cEspecieChange(Sender: TObject);
//    procedure clMoeda_SeguroExit(Sender: TObject);
//    procedure cReducao_ICMSChange(Sender: TObject);
//    procedure cReducao_BCChange(Sender: TObject);
//    procedure Grade2DblClick(Sender: TObject);
//    procedure DBGrid1DblClick(Sender: TObject);
    procedure cListaDOCDblClick(Sender: TObject);
    procedure ProcessosImpAfterScroll(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfComexProcessoImp.bAdicionarClick(Sender: TObject);
begin
      with ProcessosImp do begin
           try
               LigaBotoes(false);
               Append;
               Texto.Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfComexProcessoImp.bExcluirClick(Sender: TObject);
begin
     with ProcessosImp do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Processo').AsString, mtConfirmation,mbYesNo,
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

procedure TfComexProcessoImp.bGravarClick(Sender: TObject);
begin
      with ProcessosImp do begin
           if (State = dsInsert) and (Existe(ProcessosImp, 'Processo', FieldByName('Processo').AsString)) then begin
              MessageDlg('Já existe um "Processo" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cProcesso.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Processo').AsString) = '' then begin
              MessageDlg('O campo "Processo" não pode ficar em branco!', mtError, [mbOK]);
              cProcesso.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Processo').AsString) = '' then begin
              MessageDlg('O campo "Processo" não pode ficar em branco!', mtError, [mbOK]);
              cProcesso.SetFocus;
              Abort;
           end;
           try
               // Gera o registro em caso de inclusão.
               if State = dsInsert then begin
                  FieldByName('Registro').Value := GeraCodigo('ProcessosImp', 'Registro');
               end;
               Post;
               Texto.Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfComexProcessoImp.bCancelarClick(Sender: TObject);
begin
      ProcessosImp.Cancel;
      Texto.Cancel;
      LigaBotoes(true);
end;

procedure TfComexProcessoImp.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         ProcessosImp.Edit;
         Texto.Edit;
         cProcesso.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfComexProcessoImp.UniFrameDestroy(Sender: TObject);
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

procedure TfComexProcessoImp.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfComexProcessoImp.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;

     //TabSheet1.Enabled     := not Estado;
     uniPanel1.Enabled     := not Estado; 
     uniPanel3.Enabled     := not Estado; 
     uniPanel4.Enabled     := not Estado; 
     
     (*
     TabSheet3.Enabled     := not Estado;
     TabSheet4.Enabled     := not Estado;
     TabSheet2.Enabled     := not Estado;
     TabSheet5.Enabled     := not Estado;
     TabSheet6.Enabled     := not Estado;
     TabSheet7.Enabled     := not Estado;
     TabSheet8.Enabled     := not Estado;
     TabSheet9.Enabled     := not Estado;
     TabSheet10.Enabled    := not Estado;
     TabSheet11.Enabled    := not Estado;
     *)
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfComexProcessoImp.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      GradeLista.Enabled := false;
      GradeLista.DataSource.DataSet.DisableControls;
      
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := ((Pasta.Width - TuniPanel(Components[i]).Width) div 2);
             TuniPanel(Components[i]).Color := clNone
          end;
      end;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      with ProcessosImp do begin
           sql.clear;
           sql.add('select *');
           sql.add('from   ProcessosImp');
           sql.add('order by Processo');
           open;
      end;
//      with Texto do begin 
//           sql.clear;
//           sql.add('select * from ProcessosTexto where Processo = :pProc');
//           parambyname('pProc').asstring := ProcessosImp.FieldByName('Processo').AsString;
//           Open;
//      end;
      with tMestre do begin
           sql.Clear;
           sql.Add('select Processo from ProcessosImp where(ltrim(rtrim(Processo_Mestre)) = '''' or Processo_Mestre is null)');
           sql.Add('order by Processo');
           open;
      end;
      with tBeneficio do begin
           sql.Clear;
           sql.Add('select Codigo, Estado, Nome from BeneficioFiscal');
           sql.Add('order by Nome');
           open;
      end;
      with tIncoterms do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from Incoterms');
           sql.Add('order by Descricao');
           open;
      end;
      with tClientes do begin
           sql.Clear;
           sql.Add('select Codigo, Nome from Destinatarios where Cliente = 1');
           sql.Add('order by Nome');
           open;
      end;
      with tExportador  do begin
           sql.Clear;
           sql.Add('select Codigo, Nome from Destinatarios where Exportador = 1');
           sql.Add('order by Nome');
           open;
      end;
      with tModal do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from ModalidadeImp');
           sql.Add('order by Descricao');
           open;
      end;
      with tUsuarios do begin
           sql.Clear;
           sql.Add('select Matricula, Nome from Usuarios');
           sql.Add('order by Nome');
           open;
      end;
      with tCondCambial do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from CondicaoCambial');
           sql.Add('order by Descricao');
           open;
      end;
      with tFuncaoProd do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from FuncaoProduto');
           sql.Add('order by Descricao');
           open;
      end;
      with tViaTransp do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from ViaTransporte');
           sql.Add('order by Descricao');
           open;
      end;
      with tMoedas do begin
           sql.Clear;
           sql.Add('select Codigo, Nome, Simbolo from Moedas');
           sql.Add('order by Nome');
           open;
      end;
      with tRecintoAdua do begin
           sql.Clear;
           sql.Add('select Codigo, Nome from RecintoAduaneiro');
           sql.Add('order by Nome');
           open;
      end;
      with tEstados do begin
           sql.Clear;
           sql.Add('select UF, Nome from Estados');
           sql.Add('order by Nome');
           open;
      end;
      with tPaises do begin
           sql.Clear;
           sql.Add('select Codigo, Nome from Paises');
           sql.Add('order by Nome');
           open;
      end;
      with tLocalDesemb do begin
           sql.Clear;
           sql.Add('select Codigo, Nome from Paises');
           sql.Add('order by Nome');
           open;
      end;
      with tCSTPIS do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from CSTPIS');
           sql.Add('order by Descricao');
           open;
      end;
      with tCSTCOFINS do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from CSTCOFINS');
           sql.Add('order by Descricao');
           open;
      end;
      with tCSTCOFINS do begin
           sql.Clear;
           sql.Add('select Codigo, Descricao from CSTCOFINS');
           sql.Add('order by Descricao');
           open;
      end;

      //bContas.JSInterface.JSConfig('enableToggle', [True]);
      GradeLista.Enabled := true;
      GradeLista.DataSource.DataSet.EnableControls;
end;

procedure TfComexProcessoImp.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfComexProcessoImp.bPesquisaClick(Sender: TObject);
begin
     ProcessosImp.Cancel;
     LigaBotoes(true);
     Pesquisa(ProcessosImp,'ProcessosImp','Processo', 'Processo',cPesquisa.text)
end;

procedure TfComexProcessoImp.ProcessosImpBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Processo').AsString, EstadoTabela(DataSet));
end;

procedure TfComexProcessoImp.ProcessosImpAfterScroll(DataSet: TDataSet);
begin
      with Texto do begin 
           sql.clear;
           sql.add('select * from ProcessosTexto where Processo = :pProc');
           parambyname('pProc').asstring := ProcessosImp.FieldByName('Processo').AsString;
           Open;
      end;
      with tFinanceiro do begin 
           sql.clear;
           sql.add('select Pagamento    = sum(case when Tipo = ''P'' then Valor_Total else 0 end)');
           sql.add('      ,Recebimentos = sum(case when Tipo = ''R'' then Valor_Total else 0 end)');
           sql.add('      ,Entrada      = sum(case when Tipo = ''P'' and custo_entrada  = 1 then Valor_Total else 0 end)');
           sql.add('      ,Saida        = sum(case when Tipo = ''P'' and Custo_Saida    = 1 then Valor_Total else 0 end)');
           sql.add('      ,Seletivo     = sum(case when Tipo = ''P'' and Custo_Seletivo = 1 then Valor_Total else 0 end)');
           sql.add('      ,Outros       = sum(case when Tipo = ''P'' and custo_outros   = 1 then Valor_Total else 0 end)');
           sql.add('from  pagarreceber');
           sql.add('where Processo = :pProc');
           parambyname('pProc').asstring := ProcessosImp.FieldByName('Processo').AsString;
           Open;
           cPgtoEnt.Value := FieldByName('Entrada').AsCurrency;
           cPgtoSai.Value := FieldByName('Saida').AsCurrency;
           cPgtoOut.Value := FieldByName('Outros').AsCurrency;
           cPgtoSel.Value := FieldByName('Seletivo').AsCurrency;
      end;
end;

procedure TfComexProcessoImp.ProcessosImpBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Processo').AsString, 'Delete');
end;

procedure TfComexProcessoImp.clModalidade_ImportacaoExit(Sender: TObject);
begin
//      With Dados do begin
//           If ProcessosDOCModalidade_Importacao.AsInteger = 1 then begin
//              ProcessosDOCConsignatario_CNPJ.Value := EmpresasCNPJ.AsString;
//              ProcessosDOCConsignatario_UF.Value   := EmpresasEstado.AsString;
//           End;
//      End;     
end;

procedure TfComexProcessoImp.cProcesso_MestreExit(Sender: TObject);
begin
//      With Dados do begin
//           If (ProcessosDOC.State = dsInsert) and (Trim(ProcessosDOCProcesso_Mestre.AsString) <> '') then begin
//              ProcessosDOCIncoterms.Value            := tMestreIncoterms.Value;
//              ProcessosDOCRecinto_Alfandegario.Value := tMestreRecinto_Alfandegario.Value;
//              ProcessosDOCUF_Desembaraco.Value       := tMestreUF_Desembaraco.Value;
//              ProcessosDOCEspecie.Value              := tMestreEspecie.Value;
//              ProcessosDOCMoeda_FOB.Value            := tMestreMoeda_FOB.Value;
//              ProcessosDOCMoeda_Frete.Value          := tMestreMoeda_Frete.Value;
//              ProcessosDOCMoeda_Seguro.Value         := tMestreMoeda_Seguro.Value;
//              ProcessosDOCTipo_Mercadoria.Value      := tMestreTipo_Mercadoria.Value;
//              ProcessosDOCVia_Transporte.Value       := tMestreVia_Transporte.Value;
//              ProcessosDOCNome_Transporte.Value      := tMestreNome_Transporte.Value;
//              ProcessosDOCOrigem.Value               := tMestreOrigem.Value;
//              ProcessosDOCLocal_Embarque.Value       := tMestreLocal_Embarque.Value;
//              ProcessosDOCLocal_Desembarque.Value    := tMestreLocal_Desembarque.Value;
//              ProcessosDOCNumero_DOC.Value           := tMestreNumero_DOC.Value;
//              ProcessosDOCAgencia_Maritima.Value     := tMestreAgencia_Maritima.Value;
//
//              If not tMestre.FieldByName('Data_DOC').IsNull           then ProcessosDOCData_DOC.Value           := tMestreData_DOC.Value;
//              If not tMestre.FieldByName('Navio_DataPrevista').IsNull then ProcessosDOCNavio_DataPrevista.Value := tMestreNavio_DataPrevista.Value;
//              If not tMestre.FieldByName('Navio_DataChegada').IsNull  then ProcessosDOCNavio_DataChegada.Value  := tMestreNavio_DataChegada.Value;
//              If not tMestre.FieldByName('Data_Fatura').IsNull        then ProcessosDOCData_Fatura.Value        := tMestreData_Fatura.Value;
//              If not tMestre.FieldByName('Data_BL').IsNull            then ProcessosDOCData_BL.Value            := tMestreData_BL.Value;
//
//              ProcessosDOCCliente.Value                 := tMestreCliente.Value;
//              ProcessosDOCConta_Impostos.Value          := tMestreConta_Impostos.Value;
//              ProcessosDOCConta_Despesas.Value          := tMestreConta_Despesas.Value;
//              ProcessosDOCConta_Adiantamento.Value      := tMestreConta_Adiantamento.Value;
//              ProcessosDOCFornecedor.Value              := tMestreFornecedor.Value;
//              ProcessosDOCDocumento_Carga.Value         := tMestreDocumento_Carga.Value;
//              ProcessosDOCincentivo_Fiscal.Value        := tMestreincentivo_Fiscal.Value;
//              ProcessosDOCPais.Value                    := tMestrePais.Value;
//              ProcessosDOCModalidade_Importacao.Value   := tMestreModalidade_Importacao.Value;
//              ProcessosDOCContainer_Numero.Value        := tMestreContainer_Numero.Value;
//              ProcessosDOCLocal_DesembaracoCodigo.Value := tMestreLocal_DesembaracoCodigo.Value;
//              ProcessosDOCCodigo_PaisOrigem.Value       := tMestreCodigo_PaisOrigem.Value;
//           End;
//      End;
end;

procedure TfComexProcessoImp.cData_RegistroDeclaracaoChange(Sender: TObject);
begin
//      cDataRegistro_DI.Color := clWindow;
end;

procedure TfComexProcessoImp.cData_RegistroDeclaracaoExit(Sender: TObject);
begin
//      With Dados do Begin
//           If Trim(ProcessosDOCMoeda_FOB.AsString) <> '' then begin
//              If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_FOB.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
//                 ProcessosDOCTaxa_FOB.Value := CotacaoValor.Value;
//                 ProcessosDOCFOB.Value      := (ProcessosDOCFOB_ME.Value * CotacaoValor.Value );
//              End;
//           End;
//           If Trim(ProcessosDOCMoeda_Frete.AsString) <> '' then begin
//              If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Frete.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
//                 ProcessosDOCTaxa_Frete.Value := CotacaoValor.Value;
//                 ProcessosDOCFrete.Value      := (ProcessosDOCFrete_ME.Value * CotacaoValor.Value);
//              End;
//           End;
//           If Trim(ProcessosDOCMoeda_Seguro.AsString) <> '' then begin
//              If Cotacao.Locate('Moeda;Data', VarArrayOf([ProcessosDOCMoeda_Seguro.Value, ProcessosDOCData_RegistroDeclaracao.Value]), [loCaseInsensitive]) = True then begin
//                 ProcessosDOCTaxa_Seguro.Value := CotacaoValor.Value;
//                 ProcessosDOCSeguro.Value      := (ProcessosDOCSeguro_ME.Value * CotacaoValor.Value );
//              End;
//           End;
//      End;
end;

procedure TfComexProcessoImp.cAliquota_ICMSChange(Sender: TObject);
begin
//     cICMS.Color := clWindow;
end;

procedure TfComexProcessoImp.cTaxa_FOBChange(Sender: TObject);
begin
//     with Dados do Begin
//          if ProcessosDOC.State = dsEdit then begin
//             Adicoes.SQL.Clear;
//             Adicoes.SQl.Add('SELECT * FROM Adicoes WHERE(DI = :pDI)');
//             Adicoes.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
//             Adicoes.Open;
//
//             Janela_Processamento := TJanela_Processamento.Create(Self);
//             Janela_Processamento.Progresso.Max      := Adicoes.RecordCount;
//             Janela_Processamento.Progresso.Position := 0;
//             Janela_Processamento.lProcesso.Caption  := 'Ajustando o valor dos itens da DI...';
//             Janela_Processamento.Show;
//
//             Adicoes.First;
//             while not Adicoes.Eof do begin
//                   Adicoes.Edit;
//                           AdicoesValor_UnitarioReal.Value := ( AdicoesValor_Unitario.Value * ProcessosDOCTaxa_FOB.Value);
//                   Adicoes.Post;
//                   Adicoes.Next;
//                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
//                   Application.ProcessMessages;
//             end;
//             Janela_Processamento.Close;
//          end;
//     end;
end;

procedure TfComexProcessoImp.cFOB_MEChange(Sender: TObject);
begin
//     cFOBME.Color := clWindow;
end;

procedure TfComexProcessoImp.cFrete_MEChange(Sender: TObject);
begin
//     cFreteME.Color := clWindow;
end;

procedure TfComexProcessoImp.cProcessoChange(Sender: TObject);
//Var
//   i, mDiferenca: Integer;
begin
//       With Dados do begin
//            mDI := ProcessosDOCNumero_Declaracao.AsString;
//            If mFechou = false then begin
//               cProcesso.Color   := clWindow;
//               titens.Connection :=  Dados.Banco_Empresas;
//               tItens.SQL.Clear;
//               tItens.SQL.Add('SELECT COUNT(*) AS Itens FROM Adicoes WHERE(DI = :pDI) AND (DI <> '''') ');
//               tItens.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
//               tItens.Open;
//               bAdicoes.Caption := '&Itens DI ['+formatfloat('0000', tItens.FieldByName('Itens').Asinteger)+']';
//               tItens.Close;
//               cAdValorem.Value := (ProcessosDOCAd_Valorem.Value / ProcessosDOCTaxa_FOB.Value);
//
//               tItens.SQL.Clear;
//               tItens.SQL.Add('SELECT SUM(Valor_SemAdValorem * Quantidade) AS Valor FROM Adicoes WHERE(DI = :pDI) AND (DI <> '''') ');
//               tItens.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
//               tItens.Open;
//
//               cFOB_SemAdVal.Value     := tItens.FieldByName('Valor').AsCurrency;
//               cFOB_SemAdValReal.Value := cFOB_SemAdVal.Value * ProcessosDOCTaxa_FOB.Value;
//
//               Produtos.SQL.Clear;
//               Produtos.SQL.Add('SELECT * FROM Produtos WHERE(Codigo IN(SELECT DISTINCT Codigo_Mercadoria FROM Adicoes WHERE(DI = :pDI)))');
//               Produtos.ParamByName('pDI').AsString := ProcessosDOCNumero_Declaracao.Value;
//               Produtos.Open;
//            End;
//            
//            If PageControl1.ActivePageIndex = 2 then begin
//               ProcessosTexto.SQL.Clear;
//               ProcessosTexto.SQL.Add('SELECT *');
//               ProcessosTexto.SQL.Add('FROM   ProcessosTexto');
//               ProcessosTexto.SQL.Add('WHERE  Processo = :pProcesso');
//               ProcessosTexto.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
//               ProcessosTexto.Open;
//            End;
//
//            // Verifica o vencimento do contrato com os clientes.
//            Configuracao.Open;
//            lVencimentoContrato.Visible := false;
//            mDiferenca := StrtoInt(DifDias(Date, ClientesVencimento_Contrato.AsDateTime));
//            If (Trim(cCliente.Text) <> '') and (Trim(RemoveCaracter('/', '', ClientesVencimento_Contrato.AsString)) <> '') then begin
//               If (mDiferenca <= ConfiguracaoAviso_VencimentoContrato.AsInteger) and (mDiferenca > 0) then begin
//                  lVencimentoContrato.Visible := true;
//                  lVencimentoContrato.Caption := 'Contrato com o cliente esta vencendo em ' + PoeZero(2, mDiferenca)+' dia(s).';
//               End;
//               If (mDiferenca <= ConfiguracaoAviso_VencimentoContrato.AsInteger) and (mDiferenca = 0) then begin
//                  lVencimentoContrato.Visible := true;
//                  lVencimentoContrato.Caption := 'Contrato com o cliente esta vencendo hoje.';
//               End;
//               If (mDiferenca < 0) then begin
//                  mDiferenca := mDiferenca * -1;
//                  lVencimentoContrato.Visible := true;
//                  lVencimentoContrato.Caption := 'Contrato com o cliente esta vencido à ' + PoeZero(2, mDiferenca)+' dia(s).';
//               End;
//            End;
//
//            ProcessosDOCDoc.SQL.Clear;
//            ProcessosDOCDoc.SQL.Add('SELECT * FROM ProcessosDocumentosDocs WHERE Processo = :pProcesso');
//            ProcessosDOCDoc.ParamByName('pProcesso').AsString := ProcessosDOCProcesso.AsString;
//            ProcessosDOCDoc.Open;
//
//            cListaDoc.Items.Clear;
//            for i := 1 to ProcessosDOCDoc.RecordCount do begin
//                cListaDoc.Items.Add(ProcessosDOCDocDocumento.AsString);
//                ProcessosDOCDoc.Next;
//            end;
//       End;
end;

procedure TfComexProcessoImp.cProcessoExit(Sender: TObject);
begin
//       Screen.Cursor := crSQLWait;
//       With Dados do Begin
//            If (ProcessosDOC.State = dsInsert) or (ProcessosDOC.State = dsEdit) then
//                ProcessosDOCProcesso.Value := Trim(ProcessosDOCProcesso.Value);
//
//            If ProcessosDOCAd_Valorem.AsCurrency > 0 then
//               cAdValorem.Value := (ProcessosDOCAd_Valorem.Value / ProcessosDOCTaxa_FOB.Value);
//       End;
//       TotalizaDespesas;
//       Screen.Cursor := crDefault;
end;

procedure TfComexProcessoImp.clClienteExit(Sender: TObject);
begin
//      With Dados do begin
//           If (ProcessosDOC.State = dsInsert) or (ProcessosDOC.State = dsEdit) then begin
//              If ProcessosDOCMargem_Lucro.AsFloat              = 0 then ProcessosDOCMargem_Lucro.Value              := ClientesMargem_Lucro.Value;
//              If ProcessosDOCMargem_LucroValor.AsFloat         = 0 then ProcessosDOCMargem_LucroValor.Value         := ClientesMargem_LucroValor.Value;
//              If ProcessosDOCDesconto_Operacional.AsFloat      = 0 then ProcessosDOCDesconto_Operacional.Value      := ClientesDesconto_Operacional.Value;
//              If ProcessosDOCDesconto_OperacionalValor.AsFloat = 0 then ProcessosDOCDesconto_OperacionalValor.Value := ClientesDesconto_OperacionalValor.Value;
//              If ProcessosDOCDesconto_Adicional.AsFloat        = 0 then ProcessosDOCDesconto_Adicional.Value        := ClientesDesconto_Adicional.Value;
//              If ProcessosDOCDesconto_AdicionalValor.AsFloat   = 0 then ProcessosDOCDesconto_AdicionalValor.Value   := ClientesDesconto_AdicionalValor.Value;
//              If ProcessosDOCCondicao_Pagamento.AsInteger      = 0 then ProcessosDOCCondicao_Pagamento.Value        := ClientesCondicao_Pagamento.Value;
//           End;
//           If (ProcessosDOC.State = dsInsert) then begin
//              //ProcessosDOCFator_FaturamentoValor.Value := ProcessosDOCFator_FaturamentoValor.Value * ProcessosDOCFOB.Value;
//           End;
//      End;
end;

procedure TfComexProcessoImp.cProcesso_AberturaChange(Sender: TObject);
begin
//      cDataAbertura.Color := clWindow;
end;

procedure TfComexProcessoImp.cNumero_DeclaracaoChange(Sender: TObject);
begin
//      bAdicoes.Enabled := (Dados.ProcessosDOCNumero_Declaracao.Value <> '') or (Dados.ProcessosDOCCourrier.AsBoolean = true) ;
//      CDI.Color := clWindow;
end;

procedure TfComexProcessoImp.cVolumesChange(Sender: TObject);
begin
//     cVolumes.Color := clWindow;
end;

procedure TfComexProcessoImp.cListaDOCDblClick(Sender: TObject);
begin
//      ShellExecute(Handle, 'Open', PChar(cListaDoc.Items[cListaDoc.ItemIndex]), '', '', SW_ShowNormal);
end;


end.
