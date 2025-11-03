unit ConfigSis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, 
  FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, uniMemo, uniComboBox, uniMultiItem, uniDBComboBox, uniRadioGroup, uniDBRadioGroup, uniCheckBox, uniGroupBox, uniLabel, FireDAC.Stan.StorageBin, uniSweetAlert;

type
  TfConfigSis = class(TUniFrame)
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    dsCFOP: TDataSource;
    dstTransp: TDataSource;
    Plano: TFDQuery;
    CFOP: TFDQuery;
    Transp: TFDQuery;
    Pasta: TuniPageControl;
    TabSheet1: TuniTabSheet;
    TabSheet11: TuniTabSheet;
    TabSheet12: TuniTabSheet;
    TabSheet13: TuniTabSheet;
    TabSheet14: TuniTabSheet;
    TabSheet3: TuniTabSheet;
    TabSheet4: TuniTabSheet;
    TabSheet7: TuniTabSheet;
    TabSheet8: TuniTabSheet;
    Config: TFDQuery;
    dsConfig: TDataSource;
    UniScrollBox1: TUniScrollBox;
    pFicha1: TUniPanel;
    GroupBox9: TUniGroupBox;
    GroupBox3: TUniGroupBox;
    cSite: TUniDBEdit;
    cEmail_Suporte: TUniDBEdit;
    cIP_Suporte: TUniDBEdit;
    cServidor_Proxy: TUniDBEdit;
    cUsuario_Proxy: TUniDBEdit;
    cSenha_FTP: TUniDBEdit;
    cUsuario_FTP: TUniDBEdit;
    cSenha_Proxy: TUniDBEdit;
    cPassive_FTP: TUniDBCheckBox;
    cBackup_Automatico: TUniDBCheckBox;
    cBackup_Hora: TUniDBEdit;
    UniScrollBox2: TUniScrollBox;
    UniPanel2: TUniPanel;
    cExtenso_Maiusculo: TUniDBCheckBox;
    cAbrir_PDFDANFE: TUniDBCheckBox;
    GroupBox35: TUniGroupBox;
    cSeparar_NFE: TUniDBCheckBox;
    cSeparar_NFEMes: TUniDBCheckBox;
    GroupBox36: TUniGroupBox;
    cSeparar_BoletoBanco: TUniDBCheckBox;
    cSeparar_BoletoData: TUniDBCheckBox;
    cNFE_DANFE_CodigoProduto: TUniDBRadioGroup;
    UniScrollBox3: TUniScrollBox;
    UniPanel3: TUniPanel;
    GroupBox2: TUniGroupBox;
    cRateio_Frete: TUniDBRadioGroup;
    cRateio_Seguro: TUniDBRadioGroup;
    cRateio_Despesas: TUniDBRadioGroup;
    cRateio_COFINS: TUniDBRadioGroup;
    cRateio_PIS: TUniDBRadioGroup;
    cRateio_Valoracao: TUniDBRadioGroup;
    cRateio_DespesasValor: TUniDBRadioGroup;
    cValor_Despesas: TUniDBRadioGroup;
    cEmail_NFE: TUniDBEdit;
    GroupBox27: TUniGroupBox;
    cBotao_Duplicata: TUniDBCheckBox;
    cVolumes_Entrada: TUniDBCheckBox;
    cVolumes_Saida: TUniDBCheckBox;
    cFaturamento_TravaContainer: TUniDBCheckBox;
    cFaturamento_AvisoDuplicata: TUniDBCheckBox;
    cCalculo_Reverso: TUniDBCheckBox;
    cFaturamento_BloquearAtraso: TUniDBCheckBox;
    cFaturamento_TravaDuplicata: TUniDBCheckBox;
    GroupBox30: TUniGroupBox;
    cEstoque_MinimoPerc: TUniDBFormattedNumberEdit;
    bMinimo: TUniButton;
    UniScrollBox5: TUniScrollBox;
    dsPlano: TDataSource;
    Orgao: TFDQuery;
    dsOrgao: TDataSource;
    TipoDoc: TFDQuery;
    dsTipoDoc: TDataSource;
    UniScrollBox6: TUniScrollBox;
    UniPanel4: TUniPanel;
    GroupBox15: TUniGroupBox;
    clContab_GrupoBanco: TUniDBLookupComboBox;
    cParametrizacao_Contabil: TUniDBCheckBox;
    GroupBox34: TUniGroupBox;
    clContab_HistoricoEncPrejuizo: TUniDBLookupComboBox;
    clContab_ContaEncLucro: TUniDBLookupComboBox;
    clContab_ContaEncPrejuizo: TUniDBLookupComboBox;
    clContab_ContaResultado: TUniDBLookupComboBox;
    clContab_HistoricoResultado: TUniDBLookupComboBox;
    clContab_HistoricoEncLucro: TUniDBLookupComboBox;
    Historicos: TFDQuery;
    dsHistoricos: TDataSource;
    UniPanel5: TUniPanel;
    GroupBox10: TUniGroupBox;
    cVencimento_ICMSFUNDAP: TUniDBNumberEdit;
    cVencimento_ICMSINVEST: TUniDBNumberEdit;
    cVencimento_ICMSComercio: TUniDBNumberEdit;
    cVencimento_PIS: TUniDBNumberEdit;
    cVencimento_COFINS: TUniDBNumberEdit;
    cVencimento_IPI: TUniDBNumberEdit;
    cVencimento_IRPJ: TUniDBNumberEdit;
    cVencimento_CSLL: TUniDBNumberEdit;
    cClassICMS: TUniDBLookupComboBox;
    RxDBLookupCombo3: TUniDBLookupComboBox;
    RxDBLookupCombo4: TUniDBLookupComboBox;
    RxDBLookupCombo5: TUniDBLookupComboBox;
    RxDBLookupCombo6: TUniDBLookupComboBox;
    RxDBLookupCombo7: TUniDBLookupComboBox;
    RxDBLookupCombo8: TUniDBLookupComboBox;
    RxDBLookupCombo9: TUniDBLookupComboBox;
    RxDBLookupCombo10: TUniDBLookupComboBox;
    RxDBLookupCombo11: TUniDBLookupComboBox;
    RxDBLookupCombo12: TUniDBLookupComboBox;
    RxDBLookupCombo13: TUniDBLookupComboBox;
    GroupBox29: TUniGroupBox;
    cValor_CIAP: TUniDBFormattedNumberEdit;
    cParcelas_CIAP: TUniDBNumberEdit;
    GroupBox33: TUniGroupBox;
    cDIFAL_ICMSPart: TUniDBFormattedNumberEdit;
    GroupBox7: TUniGroupBox;
    cPIS_CTR: TUniDBFormattedNumberEdit;
    cCOFINS_CTR: TUniDBFormattedNumberEdit;
    clRamo_CTR: TUniDBLookupComboBox;
    cItem_CTR: TUniDBNumberEdit;
    UniGroupBox1: TUniGroupBox;
    GroupBox11: TUniGroupBox;
    cSPED_MesInventario: TUniDBLookupComboBox;
    GroupBox18: TUniGroupBox;
    cPIS_ContaCodigo: TUniDBLookupComboBox;
    cCOFINS_ContaCodigo: TUniDBLookupComboBox;
    cConta_Inventario: TUniDBLookupComboBox;
    UniScrollBox8: TUniScrollBox;
    PageControl2: TUniPageControl;
    TabSheet6: TUniTabSheet;
    TabSheet5: TUniTabSheet;
    TabSheet9: TUniTabSheet;
    cHora_Solicitacao: TUniDBEdit;
    GroupBox20: TUniGroupBox;
    clTipo_DocumentoPagamento: TUniDBLookupComboBox;
    clCentro_CustoPagamento: TUniDBLookupComboBox;
    clClassificacao_Pagamento: TUniDBLookupComboBox;
    GroupBox25: TUniGroupBox;
    clEmprestimoBancario_CentroCusto: TUniDBLookupComboBox;
    clEmprestimoBancario_ClassificacaoR: TUniDBLookupComboBox;
    clEmprestimoBancario_TipoDocumento: TUniDBLookupComboBox;
    clEmprestimoBancario_ClassificacaoP: TUniDBLookupComboBox;
    cEmprestimoBancario_FormaRecebimento: TUniDBComboBox;
    cCalculo_Comissao: TUniDBRadioGroup;
    GroupBox31: TUniGroupBox;
    clTipo_DocumentoPagamentoTelevendas: TUniDBLookupComboBox;
    clCentro_CustoPagamentoTelevendas: TUniDBLookupComboBox;
    clClassificacao_PagamentoTelevendas: TUniDBLookupComboBox;
    GroupBox32: TUniGroupBox;
    clTipo_DocumentoPagamentoOutros: TUniDBLookupComboBox;
    clCentro_CustoPagamentoOutros: TUniDBLookupComboBox;
    clClassificacao_PagamentoOutros: TUniDBLookupComboBox;
    TabSheet15: TUniTabSheet;
    cBoleto_Contato: TUniDBCheckBox;
    cBoleto_PercentualMulta: TUniDBFormattedNumberEdit;
    cBoleto_PercentualJuros: TUniDBFormattedNumberEdit;
    cBoleto_Instrucoes: TUniDBEdit;
    cBoleto_ProtestoDias: TUniDBNumberEdit;
    cBoleto_EspecieDOC: TUniDBComboBox;
    cBoleto_LocalPagamento: TUniDBEdit;
    cBoleto_InstrucaoCod: TUniDBEdit;
    cBoleto_InstrucaoCod2: TUniDBEdit;
    UniPanel6: TUniPanel;
    GroupBox12: TUniGroupBox;
    clClassificacao_DescontosRC: TUniDBLookupComboBox;
    clClassificacao_DescontosPG: TUniDBLookupComboBox;
    clClassificacao_MultaRC: TUniDBLookupComboBox;
    clClassificacao_JurosPG: TUniDBLookupComboBox;
    clClassificacao_JurosRC: TUniDBLookupComboBox;
    clClassificacao_MultaPG: TUniDBLookupComboBox;
    GroupBox13: TUniGroupBox;
    clClassificacao_TransfBanco: TUniDBLookupComboBox;
    clClassificacao_TransfProcesso: TUniDBLookupComboBox;
    GroupBox14: TUniGroupBox;
    clClassificacao_CambioVarAtiva: TUniDBLookupComboBox;
    clDocumento_Cambio: TUniDBLookupComboBox;
    clClassificacao_CambioVarPassiva: TUniDBLookupComboBox;
    GroupBox16: TUniGroupBox;
    clContratoCambio_Classificacao: TUniDBLookupComboBox;
    clContratoCambio_Documento: TUniDBLookupComboBox;
    UniPanel7: TUniPanel;
    GroupBox4: TUniGroupBox;
    cDuplicata01_Dias: TUniDBNumberEdit;
    cDuplicata02_Dias: TUniDBNumberEdit;
    cDuplicata03_Dias: TUniDBNumberEdit;
    cDuplicata04_Dias: TUniDBNumberEdit;
    cDuplicata05_Dias: TUniDBNumberEdit;
    cDuplicata06_Dias: TUniDBNumberEdit;
    cDuplicata07_Dias: TUniDBNumberEdit;
    cDuplicata08_Dias: TUniDBNumberEdit;
    cDuplicata01_Sub: TUniDBCheckBox;
    cDuplicata02_Sub: TUniDBCheckBox;
    cDuplicata03_Sub: TUniDBCheckBox;
    cDuplicata04_Sub: TUniDBCheckBox;
    cDuplicata05_Sub: TUniDBCheckBox;
    cDuplicata06_Sub: TUniDBCheckBox;
    cDuplicata07_Sub: TUniDBCheckBox;
    cDuplicata08_Sub: TUniDBCheckBox;
    clDuplicata01: TUniDBLookupComboBox;
    clDuplicata02: TUniDBLookupComboBox;
    clDuplicata03: TUniDBLookupComboBox;
    clDuplicata06: TUniDBLookupComboBox;
    clDuplicata05: TUniDBLookupComboBox;
    clDuplicata04: TUniDBLookupComboBox;
    clDuplicata08: TUniDBLookupComboBox;
    clDuplicata07: TUniDBLookupComboBox;
    cGerar_DuplImpostos: TUniDBCheckBox;
    clDuplicata01_Class: TUniDBLookupComboBox;
    clDuplicata02_Class: TUniDBLookupComboBox;
    clDuplicata03_Class: TUniDBLookupComboBox;
    clDuplicata06_Class: TUniDBLookupComboBox;
    clDuplicata05_Class: TUniDBLookupComboBox;
    clDuplicata04_Class: TUniDBLookupComboBox;
    clDuplicata08_Class: TUniDBLookupComboBox;
    clDuplicata07_Class: TUniDBLookupComboBox;
    cDia_Util: TUniDBRadioGroup;
    cDiferenca_Duplicata: TUniDBRadioGroup;
    cSequencial_Duplicata: TUniDBRadioGroup;
    UniPanel8: TUniPanel;
    UniPanel9: TUniPanel;
    UniScrollBox7: TUniScrollBox;
    PageControl3: TUniPageControl;
    TabSheet19: TUniTabSheet;
    TabSheet17: TUniTabSheet;
    TabSheet18: TUniTabSheet;
    UniPanel11: TUniPanel;
    cProcesso_Numero: TUniDBRadioGroup;
    cBloquear_ProcessoFechado: TUniDBCheckBox;
    cProcesso_ObrigarFatura: TUniDBCheckBox;
    cBloquear_ItemContrato: TUniDBCheckBox;
    cValor_DI: TUniDBFormattedNumberEdit;
    UniPanel12: TUniPanel;
    Label1: TUniLabel;
    clMoeda_Importacao: TUniDBLookupComboBox;
    clRamo_Atividade: TUniDBLookupComboBox;
    cAdicao_PesoLiquido: TUniDBRadioGroup;
    cSISCOMEX_CodigoProduto: TUniDBCheckBox;
    cSISCOMEX_MascaraReferencia: TUniDBEdit;
    cProcesso_ImportarFechado: TUniDBCheckBox;
    cAFRMM_Calcular: TUniDBCheckBox;
    cAFRMM_Tarifa: TUniDBFormattedNumberEdit;
    cAFRMM_Taxa: TUniDBFormattedNumberEdit;
    cAFRMM_Percentual: TUniDBFormattedNumberEdit;
    cSISCOMEX_MascaraPosicao: TUniDBRadioGroup;
    cSISCOMEX_MascaraPO: TUniDBEdit;
    cSISCOMEX_MascaraITEM: TUniDBEdit;
    cSISCOMEX_MascaraPOFech: TUniDBEdit;
    cSISCOMEX_MascaraITEMFech: TUniDBEdit;
    UniPanel13: TUniPanel;
    clProcesso_FechamentoCSLL: TUniDBLookupComboBox;
    clProcesso_FechamentoIRPJ: TUniDBLookupComboBox;
    cProcesso_FechamentoICMSPagar: TUniDBFormattedNumberEdit;
    cProcesso_FechamentoFDE: TUniDBFormattedNumberEdit;
    cProcesso_FechamentoAssAduaneira: TUniDBFormattedNumberEdit;
    clProcesso_FechamentoClassPgtoCliente: TUniDBLookupComboBox;
    clProcesso_FechamentoClassCorrecao: TUniDBLookupComboBox;
    cProcesso_FechamentoCorrecao: TUniDBFormattedNumberEdit;
    cProcesso_FechamentoObservacao: TUniDBRadioGroup;
    cProcesso_FechamentoObsTexto: TUniDBMemo;
    clProcesso_FechamentoDRE: TUniDBLookupComboBox;
    UniScrollBox9: TUniScrollBox;
    UniPanel14: TUniPanel;
    GroupBox22: TUniGroupBox;
    cVencimento_FISCALDias: TUniDBNumberEdit;
    cVencimento_PISCOFINSDias: TUniDBNumberEdit;
    cVencimento_CONTABILDias: TUniDBNumberEdit;
    cVencimento_SINTEGRADias: TUniDBNumberEdit;
    cVencimento_FISCAL: TUniDBNumberEdit;
    cVencimento_PISCOFINS: TUniDBNumberEdit;
    cVencimento_CONTABIL: TUniDBNumberEdit;
    cVencimento_SINTEGRA: TUniDBNumberEdit;
    cVencimento_CONTABILMes: TUniDBNumberEdit;
    UniGroupBox2: TUniGroupBox;
    cAviso_VencimentoContrato: TUniDBNumberEdit;
    cAviso_VencimentoRetorno: TUniDBNumberEdit;
    cAviso_VencimentoRadar: TUniDBNumberEdit;
    cAviso_VencimentoVinculacao: TUniDBNumberEdit;
    cAviso_MovimentoMinimo: TUniDBNumberEdit;
    cAviso_MovimentoMaximo: TUniDBNumberEdit;
    UniDBCheckBox1: TUniDBCheckBox;
    UniScrollBox4: TUniScrollBox;
    UniPanel10: TUniPanel;
    GroupBox28: TUniGroupBox;
    clTelevendas_Transportador: TUniDBLookupComboBox;
    cTipoNota: TUniDBLookupComboBox;
    cModalidadeFrete: TUniDBComboBox;
    cTelevendas_NaturezaFora: TUniDBLookupComboBox;
    cModalidade: TUniDBLookupComboBox;
    cTelevendas_EstoqueTerceiros: TUniDBCheckBox;
    Moedas: TFDQuery;
    dsMoedas: TDataSource;
    Ramos: TFDQuery;
    dsRamos: TDataSource;
    TipoNota: TFDQuery;
    dsTipoNota: TDataSource;
    ModalPg: TFDQuery;
    dsModalPg: TDataSource;
    cTelevendas_NaturezaDentro: TUniDBLookupComboBox;
    bDLL: TUniButton;
    cContab_Numeracao: TUniDBCheckBox;
    Alerta: TUniSweetAlert;
    UniDBRadioGroup1: TUniDBRadioGroup;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure ConfigBeforePost(DataSet: TDataSet);
    procedure ConfigBeforeDelete(DataSet: TDataSet);
    procedure bSalvarClick(Sender: TObject);
    procedure bMinimoClick(Sender: TObject);
    procedure cAFRMM_CalcularClick(Sender: TObject);
    procedure bDLLClick(Sender: TObject);
    procedure cRateio_DespesasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, NFe_Util_2G_TLB;

procedure TfConfigSis.bAdicionarClick(Sender: TObject);
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

procedure TfConfigSis.bExcluirClick(Sender: TObject);
begin
      with Config do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('cSite').AsString, mtConfirmation,mbYesNo,
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

procedure TfConfigSis.bGravarClick(Sender: TObject);
begin
      with Config do begin
           if (State = dsInsert) and (Existe(Config, 'cSite', FieldByName('cSite').AsString)) then begin
              MessageDlg('Já existe um "cSite" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cSite.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('cSite').AsString) = '' then begin
              MessageDlg('O campo "cSite" não pode ficar em branco!', mtError, [mbOK]);
              cSite.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('cSite').AsString) = '' then begin
              MessageDlg('O campo "cSite" não pode ficar em branco!', mtError, [mbOK]);
              cSite.SetFocus;
              Abort;
           end;
           try
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfConfigSis.bCancelarClick(Sender: TObject);
begin
      Config.Cancel;
      LigaBotoes(true);
end;

procedure TfConfigSis.bDLLClick(Sender: TObject);
var
    Util:NFe_Util_2G_Interface;
begin
     Util := NFe_Util_2G_TLB.CoUtil.Create;
     showmessage(Util.versao);
     Util := nil;
end;

procedure TfConfigSis.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Config.Edit;
         cSite.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfConfigSis.UniFrameDestroy(Sender: TObject);
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

procedure TfConfigSis.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfConfigSis.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     pFicha1.Enabled       := not Estado;
     uniPanel2.Enabled     := not Estado;
     uniPanel3.Enabled     := not Estado;
     uniPanel4.Enabled     := not Estado;
     uniPanel5.Enabled     := not Estado;
     uniPanel6.Enabled     := not Estado;
     uniPanel7.Enabled     := not Estado;
     uniPanel8.Enabled     := not Estado;
     uniPanel9.Enabled     := not Estado;
     uniPanel11.Enabled    := not Estado;
     uniPanel10.Enabled    := not Estado;
     uniPanel12.Enabled    := not Estado;
     uniPanel14.Enabled    := not Estado;
     Pasta.ActivePageIndex := 0;
end;

procedure TfConfigSis.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if (Components[i] is TUniPanel) or (Components[i] is TUniPageControl) then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      with Config do begin
           sql.clear;
           sql.add('select * from Config order by Empresa');
           open;
      end;
      with Plano do begin
           sql.clear;
           sql.Add('select Codigo');
           sql.Add('      ,Conta');
           sql.Add('      ,Nome_Financeiro');
           sql.Add('      ,Nome_Contabil');
           sql.Add('from PlanoContas order by Nome_Contabil');
           Open;
      end;
      with Historicos do begin
           SQL.Clear;
           SQL.Add('select Codigo');
           SQL.Add('      ,Descricao');
           sql.Add('from Historicos order by Descricao');
           Open;
      end;
      with Orgao do begin
           SQL.Clear;
           SQL.add('select Codigo');
           SQL.add('      ,Nome');
           SQL.add('from Destinatarios');
           SQL.add('where Orgao_Publico = 1');
           SQL.add('order by Nome');
           Open;
      end;
      with TipoDoc do begin
           SQL.Clear;
           SQL.add('select Codigo');
           SQL.add('     , Nome');
           SQL.add('from TipoDocumento');
           SQL.add('order by Nome');
           Open;
      end;
      with Ramos do begin
           SQL.Clear;
           SQL.add('select Codigo');
           SQL.add('     , Descricao');
           SQL.add('from RamoAtividade');
           SQL.add('order by Descricao');
           Open;
      end;
      with Moedas do begin
           SQL.Clear;
           SQL.add('select Codigo');
           SQL.add('     , Nome');
           SQL.add('     , Simbolo');
           SQL.add('from Moedas');
           SQL.add('order by Nome');
           Open;
      end;
      with TipoNota do begin
           SQL.Clear;
           SQL.add('select Codigo');
           SQL.add('     , Descricao');
           SQL.add('from TipoNota');
           SQL.add('order by Descricao');
           Open;
      end;
      with Transp do begin
           SQL.Clear;
           SQL.add('select Codigo');
           SQL.add('     , Nome');
           SQL.add('     , CNPJ');
           SQL.add('from Destinatarios');
           SQL.add('where Transportador = 1');
           SQL.add('order by Nome');
           Open;
      end;
      with CFOP do begin
           CFOP.SQL.Clear;
           CFOP.SQL.add('select Codigo');
           CFOP.SQL.add('     , Descricao');
           CFOP.SQL.add('from CFOP');
           CFOP.SQL.add('where Saida_Entrada = 1');
           CFOP.SQL.add('order by Descricao');
           CFOP.Open;
      end;
      with ModalPg do begin
           SQL.Clear;
           SQL.add('select Codigo');
           SQL.add('     , Descricao');
           SQL.add('from ModalidadesPagamento');
           SQL.add('order by Descricao');
           Open;
      end;
      uniMainModule.Meses.Open;
end;
procedure TfConfigSis.ConfigBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('cSite').AsString, 'Edit');
end;

procedure TfConfigSis.ConfigBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfConfigSis.cRateio_DespesasClick(Sender: TObject);
begin
      cRateio_DespesasValor.Enabled := cRateio_Despesas.ItemIndex = 1;
end;

procedure TfConfigSis.bSalvarClick(Sender: TObject);
begin
      // Salva o registro.
      try
          Config.Post;
          LigaBotoes(true);
          Refresh;
      except
          Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
          Abort;
      end;
end;

procedure TfConfigSis.bMinimoClick(Sender: TObject);
begin
//     If MessageDlg('Atenção!'+#13+#13+'Esta operação irá reprocessar o valor de estoque minímo de todos os produtos do cadastro.'+#13+#13+'Deseja realmente continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
//        With Dados do begin
//             Produtos.SQL.Clear;
//             Produtos.SQL.Add('SELECT * FROM Produtos WHERE ISNULL(Desativado, 0) = 0');
//             Produtos.Open;
//
//             Janela_Processamento                    := TJanela_Processamento.Create(Self);
//             Janela_Processamento.Progresso.Max      := Produtos.RecordCount;
//             Janela_Processamento.Progresso.Position := 0;
//             Janela_Processamento.Show;
//
//             While not Produtos.Eof do begin
//                   Produtos.Edit;
//                            ProdutosEstoque_MinimoPerc.Value := ConfiguracaoEstoque_MinimoPerc.Value;  
//                            ProdutosEstoque_Minimo.Value     := Percentual(EstoqueProduto(ProdutosCodigo.AsInteger), ProdutosEstoque_MinimoPerc.AsFloat);
//                   Produtos.Post;
//
//                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
//                   Application.ProcessMessages;
//
//                   Produtos.Next;
//             End;
//             Janela_Processamento.Close;
//        End;
//     End;
end;

procedure TfConfigSis.cAFRMM_CalcularClick(Sender: TObject);
begin
      cAFRMM_Tarifa.Enabled     := cAFRMM_Calcular.Checked;
      cAFRMM_Taxa.Enabled       := cAFRMM_Tarifa.Enabled;
      cAFRMM_Percentual.Enabled := cAFRMM_Tarifa.Enabled;
end;


end.
