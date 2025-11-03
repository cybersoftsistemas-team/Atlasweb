unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDBDateTimePicker, uniDBNavigator,
  uniDBEdit, uniDBMemo, uniGUIBaseClasses, FireDAC.Comp.Client, Data.DB, uniGroupBox, uniButton, uniBitBtn, uniMemo,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDateTimePicker, uniCheckBox, uniEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Dialogs, FireDAC.Phys.Intf, FireDAC.DApt.Intf, vcl.FileCtrl, uniRadioGroup, uniDBRadioGroup, uniLabel, uniImage, uniSweetAlert;

type
  TfConfig = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    pBarraNav: TUniPanel;
    uniTabSheet1: TuniTabSheet;
    uniTabSheet4: TuniTabSheet;
    uniTabSheet6: TuniTabSheet;
    uniTabSheet7: TuniTabSheet;
    uniTabSheet8: TuniTabSheet;
    uniTabSheet10: TuniTabSheet;
    uniTabSheet15: TuniTabSheet;
    uniTabSheet16: TuniTabSheet;
    uniTabSheet17: TuniTabSheet;
    uniTabSheet18: TuniTabSheet;
    uniTabSheet19: TuniTabSheet;
    uniTabSheet20: TuniTabSheet;
    UniScrollBox1: TUniScrollBox;
    UniScrollBox4: TUniScrollBox;
    UniScrollBox6: TUniScrollBox;
    UniScrollBox7: TUniScrollBox;
    UniScrollBox8: TUniScrollBox;
    UniScrollBox10: TUniScrollBox;
    UniScrollBox15: TUniScrollBox;
    UniScrollBox16: TUniScrollBox;
    UniScrollBox17: TUniScrollBox;
    UniScrollBox18: TUniScrollBox;
    UniScrollBox19: TUniScrollBox;
    UniScrollBox20: TUniScrollBox;
    pFicha1: TUniPanel;
    pFicha4: TUniPanel;
    pFicha6: TUniPanel;
    pFicha7: TUniPanel;
    pFicha8: TUniPanel;
    pFicha15: TUniPanel;
    pFicha16: TUniPanel;
    pFicha17: TUniPanel;
    pFicha18: TUniPanel;
    pFicha19: TUniPanel;
    pFicha20: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    dsConfig: TDataSource;
    cEmpresa: TUniDBEdit;
    cSISCOMEX_CodigoProduto: TUniDBCheckBox;
    cMoeda_Importacao: TUniDBLookupComboBox;
    cBackup_Automatico: TUniDBCheckBox;
    cBackup_Hora: TUniDBEdit;
    cBackup_Ultimo: TUniDBDateTimePicker;
    cRamo_Atividade: TUniDBLookupComboBox;
    cProcesso_Numero: TUniDBEdit;
    cProcesso_DigitosAno: TUniDBNumberEdit;
    cProcesso_FechamentoCSLL: TUniDBLookupComboBox;
    cProcesso_FechamentoIRPJ: TUniDBLookupComboBox;
    cProcesso_FechamentoICMSPagar: TUniDBFormattedNumberEdit;
    cProcesso_FechamentoFDE: TUniDBFormattedNumberEdit;
    cProcesso_FechamentoAssAduaneira: TUniDBFormattedNumberEdit;
    cProcesso_FechamentoClassPgtoCliente: TUniDBLookupComboBox;
    cProcesso_FechamentoCorrecao: TUniDBFormattedNumberEdit;
    cProcesso_FechamentoClassCorrecao: TUniDBLookupComboBox;
    cBloquear_ProcessoFechado: TUniDBCheckBox;
    cAviso_VencimentoContrato: TUniDBNumberEdit;
    cProcesso_ObrigarFatura: TUniDBCheckBox;
    cProcesso_FechamentoObsTexto: TUniDBMemo;
    cProcesso_FechamentoObservacao: TUniDBNumberEdit;
    cAviso_VencimentoRetorno: TUniDBNumberEdit;
    cVencimento_PISCOFINS: TUniDBNumberEdit;
    cVencimento_PISCOFINSDias: TUniDBNumberEdit;
    cVencimento_FISCAL: TUniDBNumberEdit;
    cVencimento_FISCALDias: TUniDBNumberEdit;
    cVencimento_CONTABIL: TUniDBNumberEdit;
    cVencimento_CONTABILDias: TUniDBNumberEdit;
    cVencimento_CONTABILMes: TUniDBNumberEdit;
    cVencimento_SINTEGRA: TUniDBNumberEdit;
    cVencimento_SINTEGRADias: TUniDBNumberEdit;
    cCompartilhar_Bancos: TUniDBCheckBox;
    cCompartilhar_Classificacao: TUniDBCheckBox;
    cEmail_NFE: TUniDBEdit;
    cAdicao_PesoLiquido: TUniDBNumberEdit;
    cProcesso_ImportarFechado: TUniDBCheckBox;
    cAtualiza_Data: TUniDBDateTimePicker;
    cPrazo_Log: TUniDBNumberEdit;
    cBloquear_ItemContrato: TUniDBCheckBox;
    cXMLTerceiros_Codigo: TUniDBCheckBox;
    cAviso_VencimentoRadar: TUniDBNumberEdit;
    cAviso_VencimentoVinculacao: TUniDBNumberEdit;
    cAtualiza_Anterior: TUniDBDateTimePicker;
    cSISCOMEX_MascaraReferencia: TUniDBEdit;
    cTelevendas_Transportador: TUniDBLookupComboBox;
    cTelevendas_ModalidadeFrete: TUniDBNumberEdit;
    cTelevendas_TipoNota: TUniDBNumberEdit;
    cTelevendas_NaturezaDentro: TUniDBEdit;
    cTelevendas_NaturezaFora: TUniDBEdit;
    cAviso_MovimentoMinimo: TUniDBNumberEdit;
    cAviso_MovimentoMaximo: TUniDBNumberEdit;
    cAFRMM_Calcular: TUniDBCheckBox;
    cAFRMM_Tarifa: TUniDBFormattedNumberEdit;
    cAFRMM_Taxa: TUniDBFormattedNumberEdit;
    cAFRMM_Percentual: TUniDBFormattedNumberEdit;
    cTelevendas_ModalidadePgto: TUniDBNumberEdit;
    cSISCOMEX_MascaraPosicao: TUniDBNumberEdit;
    cTelevendas_EstoqueTerceiros: TUniDBCheckBox;
    cProcesso_FechamentoDRE: TUniDBLookupComboBox;
    cSISCOMEX_MascaraPO: TUniDBEdit;
    cSISCOMEX_MascaraITEM: TUniDBEdit;
    cSISCOMEX_MascaraPOFech: TUniDBEdit;
    cSISCOMEX_MascaraITEMFech: TUniDBEdit;
    cValor_DI: TUniDBFormattedNumberEdit;
    UniTabSheet5: TUniTabSheet;
    UniScrollBox5: TUniScrollBox;
    UniPanel1: TUniPanel;
    cPasta_BACKUP: TUniDBEdit;
    cPasta_BackupCybersoft: TUniDBEdit;
    cPasta_BACKUPCopia: TUniDBEdit;
    UniGroupBox3: TUniGroupBox;
    cIP_Suporte: TUniDBEdit;
    cPassive_FTP: TUniDBCheckBox;
    cUsuario_FTP: TUniDBEdit;
    cSenha_FTP: TUniDBEdit;
    UniGroupBox1: TUniGroupBox;
    cSite: TUniDBEdit;
    cEmail: TUniDBEdit;
    cPasta_Boleto: TUniDBEdit;
    UniGroupBox2: TUniGroupBox;
    cServidor_Proxy: TUniDBEdit;
    cSenha_Proxy: TUniDBEdit;
    cUsuario_Proxy: TUniDBEdit;
    Config: TFDQuery;
    dPasta: TOpenDialog;
    cPasta_NFE: TUniDBEdit;
    UniGroupBox4: TUniGroupBox;
    UniGroupBox5: TUniGroupBox;
    cSeparar_NFE: TUniDBCheckBox;
    cSeparar_NFEMes: TUniDBCheckBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniGroupBox6: TUniGroupBox;
    cPIS_CTR: TUniDBFormattedNumberEdit;
    cItem_CTR: TUniDBNumberEdit;
    cCOFINS_CTR: TUniDBFormattedNumberEdit;
    cRamo_CTR: TUniDBLookupComboBox;
    UniGroupBox7: TUniGroupBox;
    UniGroupBox8: TUniGroupBox;
    cValor_CIAP: TUniDBFormattedNumberEdit;
    cParcelas_CIAP: TUniDBNumberEdit;
    UniGroupBox9: TUniGroupBox;
    cDIFAL_ICMSPart: TUniDBFormattedNumberEdit;
    cVencimento_ICMSFUNDAP: TUniDBNumberEdit;
    cVencimento_ICMSINVEST: TUniDBNumberEdit;
    cVencimento_ICMSComercio: TUniDBNumberEdit;
    cVencimento_IPI: TUniDBNumberEdit;
    cVencimento_PIS: TUniDBNumberEdit;
    cVencimento_COFINS: TUniDBNumberEdit;
    cVencimento_IRPJ: TUniDBNumberEdit;
    cVencimento_CSLL: TUniDBNumberEdit;
    cVencimento_ICMSOrgao: TUniDBLookupComboBox;
    cVencimento_ICMSDoc: TUniDBLookupComboBox;
    Orgao: TFDQuery;
    dsOrgao: TDataSource;
    Doc: TFDQuery;
    dsDoc: TDataSource;
    Ramo: TFDQuery;
    dsRamo: TDataSource;
    cVencimento_CSLLOrgao: TUniDBLookupComboBox;
    cVencimento_CSLLDoc: TUniDBLookupComboBox;
    cVencimento_IRPJOrgao: TUniDBLookupComboBox;
    cVencimento_PISOrgao: TUniDBLookupComboBox;
    cVencimento_COFINSOrgao: TUniDBLookupComboBox;
    cVencimento_IPIOrgao: TUniDBLookupComboBox;
    cVencimento_IRPJDoc: TUniDBLookupComboBox;
    cVencimento_PISDoc: TUniDBLookupComboBox;
    cVencimento_COFINSDoc: TUniDBLookupComboBox;
    cVencimento_IPIDoc: TUniDBLookupComboBox;
    UniGroupBox10: TUniGroupBox;
    UniGroupBox11: TUniGroupBox;
    UniDBRadioGroup1: TUniDBRadioGroup;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    Contas: TFDQuery;
    dsContas: TDataSource;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniGroupBox12: TUniGroupBox;
    UniDBRadioGroup2: TUniDBRadioGroup;
    UniDBRadioGroup3: TUniDBRadioGroup;
    UniDBRadioGroup4: TUniDBRadioGroup;
    UniDBRadioGroup5: TUniDBRadioGroup;
    UniDBRadioGroup6: TUniDBRadioGroup;
    UniDBRadioGroup7: TUniDBRadioGroup;
    UniDBRadioGroup8: TUniDBRadioGroup;
    UniDBRadioGroup9: TUniDBRadioGroup;
    UniGroupBox13: TUniGroupBox;
    cBotao_Duplicata: TUniDBCheckBox;
    cVolumes_Entrada: TUniDBCheckBox;
    cVolumes_Saida: TUniDBCheckBox;
    cFaturamento_TravaContainer: TUniDBCheckBox;
    cFaturamento_AvisoDuplicata: TUniDBCheckBox;
    cCalculo_Reverso: TUniDBCheckBox;
    cFaturamento_BloquearAtraso: TUniDBCheckBox;
    cFaturamento_TravaDuplicata: TUniDBCheckBox;
    UniDBRadioGroup10: TUniDBRadioGroup;
    cExtenso_Maiusculo: TUniDBCheckBox;
    cAbrir_PDFDANFE: TUniDBCheckBox;
    cEstoque_MinimoPerc: TUniDBFormattedNumberEdit;
    UniGroupBox14: TUniGroupBox;
    cContab_ContaEncLucro: TUniDBLookupComboBox;
    cContab_ContaEncPrejuizo: TUniDBLookupComboBox;
    cContab_ContaResultado: TUniDBLookupComboBox;
    cContab_HistoricoResultado: TUniDBLookupComboBox;
    cContab_HistoricoEncLucro: TUniDBLookupComboBox;
    cContab_HistoricoEncPrejuizo: TUniDBLookupComboBox;
    cParametrizacao_Contabil: TUniDBCheckBox;
    Historico: TFDQuery;
    dsHistorico: TDataSource;
    pAbaFin: TUniPageControl;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    pFicha10: TUniPanel;
    UniTabSheet9: TUniTabSheet;
    UniTabSheet14: TUniTabSheet;
    pFicha11: TUniPanel;
    pFicha12: TUniPanel;
    cHora_Solicitacao: TUniDBEdit;
    cClassificacao_Pagamento: TUniDBLookupComboBox;
    cCentro_CustoPagamento: TUniDBLookupComboBox;
    cTipo_DocumentoPagamento: TUniDBLookupComboBox;
    cEmprestimoBancario_ClassificacaoR: TUniDBLookupComboBox;
    cEmprestimoBancario_ClassificacaoP: TUniDBLookupComboBox;
    cEmprestimoBancario_CentroCusto: TUniDBLookupComboBox;
    cEmprestimoBancario_TipoDocumento: TUniDBLookupComboBox;
    cEmprestimoBancario_FormaRecebimento: TUniDBEdit;
    cCalculo_Comissao: TUniDBEdit;
    cClassificacao_PagamentoTelevendas: TUniDBLookupComboBox;
    cCentro_CustoPagamentoTelevendas: TUniDBLookupComboBox;
    cTipo_DocumentoPagamentoTelevendas: TUniDBLookupComboBox;
    cClassificacao_PagamentoOutros: TUniDBLookupComboBox;
    cCentro_CustoPagamentoOutros: TUniDBLookupComboBox;
    cTipo_DocumentoPagamentoOutros: TUniDBLookupComboBox;
    pFicha13: TUniPanel;
    cBoleto_LocalPagamento: TUniDBEdit;
    cBoleto_Instrucoes: TUniDBEdit;
    cBoleto_Contato: TUniDBCheckBox;
    cBoleto_ProtestoDias: TUniDBNumberEdit;
    cBoleto_EspecieDOC: TUniDBEdit;
    cBoleto_PercentualMulta: TUniDBFormattedNumberEdit;
    cBoleto_PercentualJuros: TUniDBFormattedNumberEdit;
    cBoleto_InstrucaoCod: TUniDBEdit;
    cBoleto_InstrucaoCod2: TUniDBEdit;
    UniGroupBox15: TUniGroupBox;
    cClassificacao_JurosRC: TUniDBLookupComboBox;
    cClassificacao_JurosPG: TUniDBLookupComboBox;
    cClassificacao_MultaPG: TUniDBLookupComboBox;
    cClassificacao_MultaRC: TUniDBLookupComboBox;
    cClassificacao_DescontosRC: TUniDBLookupComboBox;
    cClassificacao_DescontosPG: TUniDBLookupComboBox;
    UniGroupBox16: TUniGroupBox;
    UniGroupBox17: TUniGroupBox;
    cClassificacao_TransfProcesso: TUniDBLookupComboBox;
    cClassificacao_TransfBanco: TUniDBLookupComboBox;
    cClassificacao_CambioVarPassiva: TUniDBLookupComboBox;
    cContratoCambio_Documento: TUniDBLookupComboBox;
    cClassificacao_CambioVarAtiva: TUniDBLookupComboBox;
    cDocumento_Cambio: TUniDBLookupComboBox;
    cContratoCambio_Classificacao: TUniDBLookupComboBox;
    PlanoFin: TFDQuery;
    dsPlanoFin: TDataSource;
    UniImage1: TUniImage;
    UniGroupBox18: TUniGroupBox;
    cDuplicata01: TUniDBLookupComboBox;
    cDuplicata02: TUniDBLookupComboBox;
    cDuplicata03: TUniDBLookupComboBox;
    cDuplicata04: TUniDBLookupComboBox;
    cDuplicata05: TUniDBLookupComboBox;
    cDuplicata06: TUniDBLookupComboBox;
    cDuplicata07: TUniDBLookupComboBox;
    cDuplicata08: TUniDBLookupComboBox;
    cDuplicata01_Class: TUniDBLookupComboBox;
    cDuplicata02_Class: TUniDBLookupComboBox;
    cDuplicata03_Class: TUniDBLookupComboBox;
    cDuplicata04_Class: TUniDBLookupComboBox;
    cDuplicata05_Class: TUniDBLookupComboBox;
    cDuplicata06_Class: TUniDBLookupComboBox;
    cDuplicata07_Class: TUniDBLookupComboBox;
    cDuplicata08_Class: TUniDBLookupComboBox;
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
    cGerar_DuplImpostos: TUniDBCheckBox;
    UniDBRadioGroup11: TUniDBRadioGroup;
    UniDBRadioGroup12: TUniDBRadioGroup;
    UniDBRadioGroup13: TUniDBRadioGroup;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure cPasta_INIClick(Sender: TObject);
  private
    function SelectADirectory(Title: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfConfig.bAdicionarClick(Sender: TObject);
begin
      with UniMainModule, Config do begin
           try
               LigaBotoes(false);
               Append;
               Config.FieldByName('Empresa').Value := mEmpresaAtiva;
               cEmpresa.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfConfig.bCancelarClick(Sender: TObject);
begin
      with UniMainModule do begin
           Config.Cancel;
           LigaBotoes(true);
      end;
end;

procedure TfConfig.bEditarClick(Sender: TObject);
begin
     with UniMainModule do begin
          try
              LigaBotoes(false);
              Config.Edit;
              cEmpresa.setfocus;
          except
              Showmessage('Não pode editar o registro corrente!');
          end;
     end;
end;

procedure TfConfig.bExcluirClick(Sender: TObject);
begin
     with UniMainModule, Config do begin
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

procedure TfConfig.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Close;
end;

procedure TfConfig.bSalvarClick(Sender: TObject);
begin
      with UniMainModule, Config do begin
           {
           if (State = dsInsert) and (Existe(Config, 'Empresa', FieldByName('Empresa').AsString)) then begin
              MessageDlg('Já existe um "Empresa" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cEmpresa.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Empresa').AsString) = '' then begin
              MessageDlg('O campo "Empresa" não pode ficar em branco!', mtError, [mbOK]);
              cEmpresa.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Empresa').AsString) = '' then begin
              MessageDlg('O campo "Empresa" não pode ficar em branco!', mtError, [mbOK]);
              cEmpresa.SetFocus;
              Abort;
           end;
           }
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

procedure TfConfig.cPasta_INIClick(Sender: TObject);
begin
     dPasta.Execute;
end;

procedure TfConfig.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     //bAdicionar.Enabled := (Estado) and (uniMainModule.Config.RecordCount = 0);
     bCancelar.Enabled  := not Estado;
     bSalvar.Enabled    := not Estado;
     pFicha1.Enabled    := not Estado;
     pFicha4.Enabled    := not Estado;
     pFicha6.Enabled    := not Estado;
     pFicha7.Enabled    := not Estado;
     pFicha8.Enabled    := not Estado;
     pFicha10.Enabled   := not Estado;
     pFicha11.Enabled   := not Estado;
     pFicha12.Enabled   := not Estado;
     pFicha13.Enabled   := not Estado;
     pFicha15.Enabled   := not Estado;
     pFicha16.Enabled   := not Estado;
     pFicha17.Enabled   := not Estado;
     pFicha18.Enabled   := not Estado;
     pFicha19.Enabled   := not Estado;
     pFicha20.Enabled   := not Estado;
     Pasta.ActivePageIndex := 0;
end;

procedure TfConfig.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      pAbaFin.Top  := 30;
      pAbaFin.Left := ((Pasta.Width - pAbaFin.Width) div 2);

      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone;
          end;
      end;

      Pasta.ActivePageIndex := 0;
      (*
      ShowMask('Aguarde...Abrindo tabelas.');
      UniSession.Synchronize;
      *)

      Config.sql.clear;
      Config.sql.add('select * from Config where empresa = :pEmp');
      Config.parambyName('pEmp').AsString := UniMainModule.mEmpresaAtiva;
      Config.open;

      bAdicionar.Enabled := Config.RecordCount = 0;

      Orgao.sql.clear;
      Orgao.sql.add('select Codigo, Nome from Destinatarios where Orgao_Publico = 1 order by Nome');
      Orgao.open;

      Doc.sql.clear;
      Doc.sql.add('select Codigo, Descricao from TiposDocumentos order by Descricao');
      Doc.open;

      Ramo.sql.clear;
      Ramo.sql.add('select Codigo, Descricao from RamoAtividade order by Descricao');
      Ramo.open;

      Contas.sql.Clear;
      Contas.sql.Add('select Conta, Codigo, Nome from PlanoContas where isnull(sintetica, 0) = 0 order by Conta, Nome');
      Contas.open;

      Historico.sql.clear;
      Historico.sql.add('select Codigo, Descricao from Historicos order by Descricao');
      Historico.open;

      PlanoFin.sql.clear;
      PlanoFin.sql.add('select Codigo, Nome from PlanoFinanceiro order by Nome');
      PlanoFin.open;

      LigaBotoes(true);

      HideMask;
end;

procedure TfConfig.UniFrameDestroy(Sender: TObject);
begin
      Config.close;
end;

function TfConfig.SelectADirectory(Title : string) : string;
var
   Pasta:String;
begin
  SelectDirectory(Title, '', Pasta);

  if (Trim(Pasta) <> '') then
     if (Pasta[Length(Pasta)] <> '\') then Pasta := Pasta + '\';

  Result := Pasta;
end;

end.
