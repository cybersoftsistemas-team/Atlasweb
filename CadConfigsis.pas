unit CadConfigsis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert;

type
  TfCadConfigsis = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Grade: TUniDBGrid;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    pBarraPesq: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    Config: TConfig;
    dsConfig: TDataSource;
    dstClassificacaoRec: TDataSource;
    dstContas: TDataSource;
    dstNaturezaDentro: TDataSource;
    dstNaturezaFora: TDataSource;
    dstTransportadores: TDataSource;
    tClassificacaoRec: TFDQuery;
    tContas: TFDQuery;
    tNaturezaDentro: TFDQuery;
    tNaturezaFora: TFDQuery;
    tTransportadores: TFDQuery;
    tTransportadoresCodigo: TIntegerField;
    tClassificacaoRecCodigo: TStringField;
    tClassificacaoRecDescricao: TStringField;
    tClassificacaoRecTipo: TStringField;
    tNaturezaDentroCodigo: TStringField;
    tNaturezaDentroDescricao_NF: TStringField;
    tNaturezaForaCodigo: TStringField;
    tNaturezaForaDescricao_NF: TStringField;
    tTransportadoresCNPJ: TStringField;
    tTransportadoresNome: TStringField;
    bMinimo: TuniButton;
    bSair: TuniButton;
    bSalvar: TuniButton;
    cMes: TuniComboBox;
    cAbrir_PDFDANFE: TuniDBCheckBox;
    cAFRMM_Calcular: TuniDBCheckBox;
    cAtivar_Skin: TuniDBCheckBox;
    cAtivar_Som: TuniDBCheckBox;
    cAtualizar_Moedas: TuniDBCheckBox;
    cAtualizar_Sistema: TuniDBCheckBox;
    cBackup_Automatico: TuniDBCheckBox;
    cBloquear_ItemContrato: TuniDBCheckBox;
    cBloquear_ProcessoFechado: TuniDBCheckBox;
    cBoleto_Contato: TuniDBCheckBox;
    cBotao_Duplicata: TuniDBCheckBox;
    cCalculo_Reverso: TuniDBCheckBox;
    cCompartilhar_Bancos: TuniDBCheckBox;
    cCompartilhar_Classificacao: TuniDBCheckBox;
    cContab_ContaNova: TuniDBCheckBox;
    cContab_FilialCliente: TuniDBCheckBox;
    cContab_FilialFornecedor: TuniDBCheckBox;
    cExtenso_Maiusculo: TuniDBCheckBox;
    cFaturamento_AvisoDuplicata: TuniDBCheckBox;
    cFaturamento_BloquearAtraso: TuniDBCheckBox;
    cFaturamento_TravaContainer: TuniDBCheckBox;
    cFaturamento_TravaDuplicata: TuniDBCheckBox;
    cGerar_DuplImpostos: TuniDBCheckBox;
    cParametrizacao_Contabil: TuniDBCheckBox;
    cPassive_FTP: TuniDBCheckBox;
    cProcesso_ImportarFechado: TuniDBCheckBox;
    cProcesso_ObrigarFatura: TuniDBCheckBox;
    cSeparar_BoletoBanco: TuniDBCheckBox;
    cSeparar_BoletoData: TuniDBCheckBox;
    cSeparar_NFE: TuniDBCheckBox;
    cSeparar_NFEMes: TuniDBCheckBox;
    cSISCOMEX_CodigoProduto: TuniDBCheckBox;
    cTelevendas_EstoqueTerceiros: TuniDBCheckBox;
    cVolumes_Entrada: TuniDBCheckBox;
    cVolumes_Saida: TuniDBCheckBox;
    cXMLTerceiros_Codigo: TuniDBCheckBox;
    cDuplicata01_Sub: TuniDBCheckBox;
    cDuplicata02_Sub: TuniDBCheckBox;
    cDuplicata03_Sub: TuniDBCheckBox;
    cDuplicata04_Sub: TuniDBCheckBox;
    cDuplicata05_Sub: TuniDBCheckBox;
    cDuplicata06_Sub: TuniDBCheckBox;
    cDuplicata07_Sub: TuniDBCheckBox;
    cDuplicata08_Sub: TuniDBCheckBox;
    cBoleto_EspecieDOC: TuniDBComboBox;
    cEmprestimoBancario_FormaRecebimento: TuniDBComboBox;
    cFormato_Data: TuniDBComboBox;
    cModalidadeFrete: TuniDBComboBox;
    cVersao_NFE: TuniDBComboBox;
    RxDBComboBox1: TuniDBComboBox;
    RxDBComboBox2: TuniDBComboBox;
    RxDBComboBox3: TuniDBComboBox;
    RxDBComboBox4: TuniDBComboBox;
    cAtualiza_Anterior: TUniDBDateTimePicker;
    cAtualiza_Data: TUniDBDateTimePicker;
    cAFRMM_Percentual: TuniDBEdit;
    cAFRMM_Tarifa: TuniDBEdit;
    cAFRMM_Taxa: TuniDBEdit;
    cAviso_MovimentoMaximo: TuniDBEdit;
    cAviso_MovimentoMinimo: TuniDBEdit;
    cAviso_VencimentoContrato: TuniDBEdit;
    cAviso_VencimentoRadar: TuniDBEdit;
    cAviso_VencimentoRetorno: TuniDBEdit;
    cAviso_VencimentoVinculacao: TuniDBEdit;
    cBackup_Hora: TuniDBEdit;
    cBoleto_InstrucaoCod: TuniDBEdit;
    cBoleto_Instrucoes: TuniDBEdit;
    cBoleto_LocalPagamento: TuniDBEdit;
    cBoleto_PercentualJuros: TuniDBEdit;
    cBoleto_PercentualMulta: TuniDBEdit;
    cBoleto_ProtestoDias: TuniDBEdit;
    cCaminho_Impressora: TuniDBEdit;
    cCOFINS_AliquotaBasica: TuniDBEdit;
    cCOFINS_AliquotaBasicaSaida: TuniDBEdit;
    cCOFINS_ContaCodigo: TuniDBEdit;
    cCOFINS_ContaNivel: TuniDBEdit;
    cCOFINS_ContaNome: TuniDBEdit;
    cCOFINS_CTR: TuniDBEdit;
    cConta_Inventario: TuniDBEdit;
    cContab_GrupoBanco: TuniDBEdit;
    cContab_HistoricoEncLucro: TuniDBEdit;
    cContab_HistoricoEncPrejuizo: TuniDBEdit;
    cContab_HistoricoResultado: TuniDBEdit;
    cDIFAL_ICMSPart: TuniDBEdit;
    cEmail_NFE: TuniDBEdit;
    cEmail_Suporte: TuniDBEdit;
    cEstoque_MinimoPerc: TuniDBEdit;
    cHora_Solicitacao: TuniDBEdit;
    cIP_Suporte: TuniDBEdit;
    cItem_CTR: TuniDBEdit;
    cMemorando_LinhasItens: TuniDBEdit;
    cMemorando_LinhasNotas: TuniDBEdit;
    cMemorando_Tamaho: TuniDBEdit;
    cNatureza_EntradaFim: TuniDBEdit;
    cNatureza_EntradaIni: TuniDBEdit;
    cNatureza_SaidaFim: TuniDBEdit;
    cNatureza_SaidaIni: TuniDBEdit;
    cNome_Servidor: TuniDBEdit;
    cNotaServico_Modelo: TuniDBEdit;
    cNotaServico_Serie: TuniDBEdit;
    cNotaServico_SubSerie: TuniDBEdit;
    cNotaServico_Tamanho: TuniDBEdit;
    cParcelas_CIAP: TuniDBEdit;
    cPasta_AtualizacaoCybersoft: TuniDBEdit;
    cPasta_BackupCybersoft: TuniDBEdit;
    cPIS_AliquotaBasica: TuniDBEdit;
    cPIS_AliquotaBasicaSaida: TuniDBEdit;
    cPIS_ContaCodigo: TuniDBEdit;
    cPIS_ContaNivel: TuniDBEdit;
    cPIS_ContaNome: TuniDBEdit;
    cPIS_CTR: TuniDBEdit;
    cPrazo_Log: TuniDBEdit;
    cProcesso_FechamentoAssAduaneira: TuniDBEdit;
    cProcesso_FechamentoCorrecao: TuniDBEdit;
    cProcesso_FechamentoFDE: TuniDBEdit;
    cProcesso_FechamentoICMSPagar: TuniDBEdit;
    cSenha_FTP: TuniDBEdit;
    cSenha_Proxy: TuniDBEdit;
    cServidor_Proxy: TuniDBEdit;
    cSISCOMEX_MascaraITEM: TuniDBEdit;
    cSISCOMEX_MascaraITEMFech: TuniDBEdit;
    cSISCOMEX_MascaraPO: TuniDBEdit;
    cSISCOMEX_MascaraPOFech: TuniDBEdit;
    cSISCOMEX_MascaraReferencia: TuniDBEdit;
    cSite: TuniDBEdit;
    cUsuario_FTP: TuniDBEdit;
    cUsuario_Proxy: TuniDBEdit;
    cValor_CIAP: TuniDBEdit;
    cValor_DI: TuniDBEdit;
    cValor_ManifestoNFE: TuniDBEdit;
    cVencimento_COFINS: TuniDBEdit;
    cVencimento_CONTABIL: TuniDBEdit;
    cVencimento_CONTABILDias: TuniDBEdit;
    cVencimento_CONTABILMes: TuniDBEdit;
    cVencimento_CSLL: TuniDBEdit;
    cVencimento_FISCAL: TuniDBEdit;
    cVencimento_FISCALDias: TuniDBEdit;
    cVencimento_ICMSComercio: TuniDBEdit;
    cVencimento_ICMSFUNDAP: TuniDBEdit;
    cVencimento_ICMSINVEST: TuniDBEdit;
    cVencimento_IPI: TuniDBEdit;
    cVencimento_IRPJ: TuniDBEdit;
    cVencimento_PIS: TuniDBEdit;
    cVencimento_PISCOFINS: TuniDBEdit;
    cVencimento_PISCOFINSDias: TuniDBEdit;
    cVencimento_SINTEGRA: TuniDBEdit;
    cVencimento_SINTEGRADias: TuniDBEdit;
    cDuplicata01_Dias: TuniDBEdit;
    cDuplicata02_Dias: TuniDBEdit;
    cDuplicata03_Dias: TuniDBEdit;
    cDuplicata04_Dias: TuniDBEdit;
    cDuplicata05_Dias: TuniDBEdit;
    cDuplicata06_Dias: TuniDBEdit;
    cDuplicata07_Dias: TuniDBEdit;
    cDuplicata08_Dias: TuniDBEdit;
    cBoleto_InstrucaoCod2: TuniDBEdit;
    cClassICMS: TuniDBLookupComboBox;
    clCentro_CustoPagamento: TuniDBLookupComboBox;
    clCentro_CustoPagamentoOutros: TuniDBLookupComboBox;
    clCentro_CustoPagamentoTelevendas: TuniDBLookupComboBox;
    clClassificacao_CambioVarAtiva: TuniDBLookupComboBox;
    clClassificacao_CambioVarPassiva: TuniDBLookupComboBox;
    clClassificacao_DescontosPG: TuniDBLookupComboBox;
    clClassificacao_DescontosRC: TuniDBLookupComboBox;
    clClassificacao_JurosPG: TuniDBLookupComboBox;
    clClassificacao_JurosRC: TuniDBLookupComboBox;
    clClassificacao_MultaPG: TuniDBLookupComboBox;
    clClassificacao_MultaRC: TuniDBLookupComboBox;
    clClassificacao_Pagamento: TuniDBLookupComboBox;
    clClassificacao_PagamentoOutros: TuniDBLookupComboBox;
    clClassificacao_PagamentoTelevendas: TuniDBLookupComboBox;
    clClassificacao_TransfBanco: TuniDBLookupComboBox;
    clClassificacao_TransfProcesso: TuniDBLookupComboBox;
    clContab_ContaEncLucro: TuniDBLookupComboBox;
    clContab_ContaEncPrejuizo: TuniDBLookupComboBox;
    clContab_ContaResultado: TuniDBLookupComboBox;
    clContab_GrupoBanco: TuniDBLookupComboBox;
    clContab_HistoricoEncLucro: TuniDBLookupComboBox;
    clContab_HistoricoEncPrejuizo: TuniDBLookupComboBox;
    clContab_HistoricoResultado: TuniDBLookupComboBox;
    clContratoCambio_Classificacao: TuniDBLookupComboBox;
    clContratoCambio_Documento: TuniDBLookupComboBox;
    clDocumento_Cambio: TuniDBLookupComboBox;
    clEmprestimoBancario_CentroCusto: TuniDBLookupComboBox;
    clEmprestimoBancario_ClassificacaoP: TuniDBLookupComboBox;
    clEmprestimoBancario_ClassificacaoR: TuniDBLookupComboBox;
    clEmprestimoBancario_TipoDocumento: TuniDBLookupComboBox;
    clMoeda_Importacao: TuniDBLookupComboBox;
    clProcesso_FechamentoClassCorrecao: TuniDBLookupComboBox;
    clProcesso_FechamentoClassPgtoCliente: TuniDBLookupComboBox;
    clProcesso_FechamentoCSLL: TuniDBLookupComboBox;
    clProcesso_FechamentoDRE: TuniDBLookupComboBox;
    clProcesso_FechamentoIRPJ: TuniDBLookupComboBox;
    clRamo_Atividade: TuniDBLookupComboBox;
    clRamo_CTR: TuniDBLookupComboBox;
    clTelevendas_Transportador: TuniDBLookupComboBox;
    clTipo_DocumentoPagamento: TuniDBLookupComboBox;
    clTipo_DocumentoPagamentoOutros: TuniDBLookupComboBox;
    clTipo_DocumentoPagamentoTelevendas: TuniDBLookupComboBox;
    cModalidade: TuniDBLookupComboBox;
    cTipoNota: TuniDBLookupComboBox;
    clDuplicata01: TuniDBLookupComboBox;
    clDuplicata01_Class: TuniDBLookupComboBox;
    clDuplicata02: TuniDBLookupComboBox;
    clDuplicata02_Class: TuniDBLookupComboBox;
    clDuplicata03: TuniDBLookupComboBox;
    clDuplicata03_Class: TuniDBLookupComboBox;
    clDuplicata04: TuniDBLookupComboBox;
    clDuplicata04_Class: TuniDBLookupComboBox;
    clDuplicata05: TuniDBLookupComboBox;
    clDuplicata05_Class: TuniDBLookupComboBox;
    clDuplicata06: TuniDBLookupComboBox;
    clDuplicata06_Class: TuniDBLookupComboBox;
    clDuplicata07: TuniDBLookupComboBox;
    clDuplicata07_Class: TuniDBLookupComboBox;
    clDuplicata08: TuniDBLookupComboBox;
    clDuplicata08_Class: TuniDBLookupComboBox;
    RxDBLookupCombo1: TuniDBLookupComboBox;
    RxDBLookupCombo10: TuniDBLookupComboBox;
    RxDBLookupCombo11: TuniDBLookupComboBox;
    RxDBLookupCombo12: TuniDBLookupComboBox;
    RxDBLookupCombo13: TuniDBLookupComboBox;
    RxDBLookupCombo2: TuniDBLookupComboBox;
    RxDBLookupCombo3: TuniDBLookupComboBox;
    RxDBLookupCombo4: TuniDBLookupComboBox;
    RxDBLookupCombo5: TuniDBLookupComboBox;
    RxDBLookupCombo6: TuniDBLookupComboBox;
    RxDBLookupCombo7: TuniDBLookupComboBox;
    RxDBLookupCombo8: TuniDBLookupComboBox;
    RxDBLookupCombo9: TuniDBLookupComboBox;
    cProcesso_FechamentoObsTexto: TuniDBMemo;
    cAdicao_PesoLiquido: TuniDBRadioGroup;
    cCalculo_Comissao: TuniDBRadioGroup;
    cDia_Util: TuniDBRadioGroup;
    cDiferenca_Duplicata: TuniDBRadioGroup;
    cNFE_DANFE_CodigoProduto: TuniDBRadioGroup;
    cNFE_DANFE_Orientacao: TuniDBRadioGroup;
    cProcesso_DigitosAno: TuniDBRadioGroup;
    cProcesso_FechamentoObservacao: TuniDBRadioGroup;
    cProcesso_Numero: TuniDBRadioGroup;
    cRateio_COFINS: TuniDBRadioGroup;
    cRateio_Despesas: TuniDBRadioGroup;
    cRateio_DespesasValor: TuniDBRadioGroup;
    cRateio_Frete: TuniDBRadioGroup;
    cRateio_PIS: TuniDBRadioGroup;
    cRateio_Seguro: TuniDBRadioGroup;
    cRateio_Valoracao: TuniDBRadioGroup;
    cSequencial_Duplicata: TuniDBRadioGroup;
    cServidor_Local: TuniDBRadioGroup;
    cSISCOMEX_MascaraPosicao: TuniDBRadioGroup;
    cValor_Despesas: TuniDBRadioGroup;
    cAtualiza: TuniEdit;
    cBACKUP: TuniEdit;
    cBACKUPCopia: TuniEdit;
    cBoletos: TuniEdit;
    cExportacao: TuniEdit;
    cGNRE: TuniEdit;
    cImagens: TuniEdit;
    cImportacao: TuniEdit;
    cImpressao: TuniEdit;
    cIni: TuniEdit;
    cLog: TuniEdit;
    cNFe: TuniEdit;
    cSintegra: TuniEdit;
    cSISCOMEX: TuniEdit;
    cSISCOMEXWEB: TuniEdit;
    cSkin: TuniEdit;
    cSPEDFiscal: TuniEdit;
    cTemporaria: TuniEdit;
    GroupBox1: TuniGroupBox;
    GroupBox10: TuniGroupBox;
    GroupBox11: TuniGroupBox;
    GroupBox12: TuniGroupBox;
    GroupBox13: TuniGroupBox;
    GroupBox14: TuniGroupBox;
    GroupBox15: TuniGroupBox;
    GroupBox16: TuniGroupBox;
    GroupBox17: TuniGroupBox;
    GroupBox18: TuniGroupBox;
    GroupBox19: TuniGroupBox;
    GroupBox2: TuniGroupBox;
    GroupBox20: TuniGroupBox;
    GroupBox21: TuniGroupBox;
    GroupBox22: TuniGroupBox;
    GroupBox23: TuniGroupBox;
    GroupBox24: TuniGroupBox;
    GroupBox25: TuniGroupBox;
    GroupBox26: TuniGroupBox;
    GroupBox27: TuniGroupBox;
    GroupBox28: TuniGroupBox;
    GroupBox29: TuniGroupBox;
    GroupBox3: TuniGroupBox;
    GroupBox30: TuniGroupBox;
    GroupBox31: TuniGroupBox;
    GroupBox32: TuniGroupBox;
    GroupBox33: TuniGroupBox;
    GroupBox34: TuniGroupBox;
    GroupBox35: TuniGroupBox;
    GroupBox36: TuniGroupBox;
    GroupBox4: TuniGroupBox;
    GroupBox5: TuniGroupBox;
    GroupBox6: TuniGroupBox;
    GroupBox7: TuniGroupBox;
    GroupBox8: TuniGroupBox;
    GroupBox9: TuniGroupBox;
    cVersaoDLL: TuniLabel;
    Label1: TuniLabel;
    RxLabel2: TuniLabel;
    RxLabel3: TuniLabel;
    cmIni: TuniMemo;
    Pasta: TuniPageControl;
    PageControl2: TuniPageControl;
    PageControl3: TuniPageControl;
    PageControl4: TuniPageControl;
    Panel1: TuniPanel;
    TabSheet1: TuniTabSheet;
    TabSheet10: TuniTabSheet;
    TabSheet11: TuniTabSheet;
    TabSheet12: TuniTabSheet;
    TabSheet13: TuniTabSheet;
    TabSheet14: TuniTabSheet;
    TabSheet15: TuniTabSheet;
    TabSheet16: TuniTabSheet;
    TabSheet17: TuniTabSheet;
    TabSheet18: TuniTabSheet;
    TabSheet19: TuniTabSheet;
    TabSheet2: TuniTabSheet;
    TabSheet20: TuniTabSheet;
    TabSheet21: TuniTabSheet;
    TabSheet3: TuniTabSheet;
    TabSheet4: TuniTabSheet;
    TabSheet5: TuniTabSheet;
    TabSheet6: TuniTabSheet;
    TabSheet7: TuniTabSheet;
    TabSheet8: TuniTabSheet;
    TabSheet9: TuniTabSheet;
    Config: TFDQuery;
    Config: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadConfigsis.bAdicionarClick(Sender: TObject);
begin
      with Config do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadConfigsis.bExcluirClick(Sender: TObject);
begin
      with Config do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Empresa').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadConfigsis.bSalvarClick(Sender: TObject);
begin
      with Config do begin
          {
           if (State = dsInsert) then begin
              Config.FieldByName('Empresa').Value := GeraCodigo(Config, 'Empresa');
           end;
          }
           if (State = dsInsert) and (Existe(Config, 'Empresa', FieldByName('Empresa').AsString)) then begin
              MessageDlg('Já existe um "Empresa" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cEmpresa.SetFocus;
              Abort;
           end;
           if FieldByName('Empresa').AsInteger = 0 then begin
              MessageDlg('O campo "Empresa" não pode ficar em branco!', mtError, [mbOK]);
              cEmpresa.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Empresa').AsString) = '' then begin
              MessageDlg('O campo "Empresa" não pode ficar em branco!', mtError, [mbOK]);
              cEmpresa.SetFocus;
              Abort;
           end;

           try
               Post;
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
               LigaBotoes(true);
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadConfigsis.bCancelarClick(Sender: TObject);
begin
      Config.Cancel;
      LigaBotoes(true);
end;

procedure TfCadConfigsis.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Config.Edit;
         Empresa.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadConfigsis.UniFrameDestroy(Sender: TObject);
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

procedure TfCadConfigsis.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadConfigsis.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
     TabSheet1.Enabled     := not Estado;
     TabSheet2.Enabled     := not Estado;
     TabSheet3.Enabled     := not Estado;
     TabSheet4.Enabled     := not Estado;
     TabSheet5.Enabled     := not Estado;
     TabSheet6.Enabled     := not Estado;
     TabSheet7.Enabled     := not Estado;
     TabSheet8.Enabled     := not Estado;
     TabSheet9.Enabled     := not Estado;
     TabSheet10.Enabled    := not Estado;
     TabSheet11.Enabled    := not Estado;
     TabSheet12.Enabled    := not Estado;
     TabSheet13.Enabled    := not Estado;
     TabSheet14.Enabled    := not Estado;
     TabSheet15.Enabled    := not Estado;
     TabSheet16.Enabled    := not Estado;
     TabSheet17.Enabled    := not Estado;
     TabSheet18.Enabled    := not Estado;
     TabSheet19.Enabled    := not Estado;
     TabSheet20.Enabled    := not Estado;
     TabSheet21.Enabled    := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadConfigsis.UniFrameCreate(Sender: TObject);
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

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      nfig.sql.clear;
      nfig.sql.add('from nfig');
      nfig.sql.add('order by ');
      nfig.open;
end;
procedure TfCadConfigsis.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadConfigsis.bPesquisaClick(Sender: TObject);
var
  tTemp:TFDQuery;
begin
     tTemp := TFDQuery.Create(nil);
     with tTemp do begin
          Connection := uniMainModule.Conecta;
          sql.Clear;
          sql.add('select Empresa from Config where Empresa like'+QuotedStr('%'+cPesquisa.Text+'%'));
          Open;
          Config.Locate('Empresa', FieldByName('Empresa').asstring, [loCaseInsensitive]);
     end;
     tTemp.Free;
end;

procedure CadConfigsis.ConfigBeforePost(DataSet: TDataSet);
    procedure CadConfigsis.ConfigBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Empresa').AsString);
end;

procedure TfCadConfigsis.CadConfigsis.ConfigBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;


procedure TConfigSis.cVersaoDLLClick(Sender: TObject);
var
    Util: NFe_Util_2G_Interface;
begin
     If cVersaoDLL.Caption = 'Versão DLL' then begin
        Application.ProcessMessages;
        Util := NFe_Util_2G_TLB.CoUtil.Create;
        cVersaoDLL.Caption := Util.versao;
        Util := nil;
        cVersaoDLL.Font.Color := clBlack;
        cVersaoDLL.Font.Style := [];
     End;
end;

procedure TConfigSis.bSalvarClick(Sender: TObject);
begin
      If MessageDlg('Deseja realmente salvar as modificações nas configurações /Fiscal /Vencimentos dos Impostos.', mtError, [mbyes, mbno], 0) = mrno then begin
         Abort;
      end;

procedure TConfigSis.bSairClick(Sender: TObject);
begin
      Dados.Configuracao.Cancel;
      Close;
end;

procedure TConfigSis.cRateio_DespesasChange(Sender: TObject);
begin
     DBRadioGroup16.Enabled := DBRadioGroup3.ItemIndex = 1;
end;

procedure TConfigSis.bMinimoClick(Sender: TObject);
begin
     If MessageDlg('Atenção!'+#13+#13+'Esta operação irá reprocessar o valor de estoque minímo de todos os produtos do cadastro.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        With Dados do begin
             Produtos.SQL.Clear;
             Produtos.SQL.Add('SELECT * FROM Produtos WHERE ISNULL(Desativado, 0) = 0');
             Produtos.Open;

             Janela_Processamento                    := TJanela_Processamento.Create(Self);
             Janela_Processamento.Progresso.Max      := Produtos.RecordCount;
             Janela_Processamento.Progresso.Position := 0;
             Janela_Processamento.Show;

             While not Produtos.Eof do begin
                   Produtos.Edit;
                            ProdutosEstoque_MinimoPerc.Value := ConfiguracaoEstoque_MinimoPerc.Value;  
                            ProdutosEstoque_Minimo.Value     := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
                   Produtos.Post;

                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
                   Application.ProcessMessages;

                   Produtos.Next;
             End;
             Janela_Processamento.Close;
        End;
     End;
end;

procedure TConfigSis.cAFRMM_CalcularClick(Sender: TObject);
begin
      cTarifa.Enabled := cAFRMMCalc.Checked;
      cTaxa.Enabled   := cTarifa.Enabled;
      lTarifa.Enabled := cTaxa.Enabled;
      lTaxa.Enabled   := cTaxa.Enabled;
end;


end.
