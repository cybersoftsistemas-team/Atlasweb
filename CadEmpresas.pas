unit CadEmpresas;

interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, Data.DB, uniButton, uniDBNavigator,
  uniPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DBCtrls,
  uniDBGrid, uniDBEdit, uniGroupBox, uniPageControl, uniDBCheckBox, uniDBComboBox, uniDBLookupComboBox, uniDBRadioGroup, uniScrollBox, uniSpeedButton, Funcoes, uniDBDateTimePicker, Vcl.Dialogs,
  Vcl.ExtDlgs, uniImage, uniDBMemo, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdSMTP, IdIOHandler, IdIOHandlerStack, IdSSLOpenSSL, IdMessage, IdSSL, NFe_Util_2G_tlb, maskutils,
  Graphics, FireDAC.Phys.Intf, FireDAC.DApt.Intf, IdMessageClient, IdSMTPBase, IdComponent, IdIOHandlerSocket, IdBaseComponent, uniMemo, uniBitBtn, uniRadioGroup, uniDateTimePicker, uniMultiItem, 
  uniComboBox, uniCheckBox, uniEdit, uniBasicGrid, uniSweetAlert, uniFileUpload;

type
  TfCadEmpresas = class(TUniFrame)
    dsEmpresas: TDataSource;
    Empresas: TFDQuery;
    Municipios: TFDQuery;
    Estados: TFDQuery;
    Paises: TFDQuery;
    Beneficio: TFDQuery;
    Qualificacoes: TFDQuery;
    Modelos: TFDQuery;
    ContribIPI: TFDQuery;
    ClassTrib: TFDQuery;
    dsClassTrib: TDataSource;
    dsMuni: TDataSource;
    dsEstados: TDataSource;
    dsPaises: TDataSource;
    dsBeneficio: TDataSource;
    dsQualificacao: TDataSource;
    dsModelos: TDataSource;
    dsContribIPI: TDataSource;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    aFicha: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    BarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    UniScrollBox1: TUniScrollBox;
    pFicha: TUniPanel;
    aContador: TUniTabSheet;
    aParametros: TUniTabSheet;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    pParam: TUniPanel;
    UniDBEdit65: TUniDBEdit;
    UniDBEdit66: TUniDBEdit;
    UniDBEdit67: TUniDBEdit;
    UniDBEdit68: TUniDBEdit;
    UniDBEdit53: TUniDBEdit;
    UniDBLookupComboBox12: TUniDBLookupComboBox;
    UniDBEdit52: TUniDBEdit;
    UniDBEdit55: TUniDBEdit;
    UniDBLookupComboBox13: TUniDBLookupComboBox;
    UniDBEdit56: TUniDBEdit;
    UniDBEdit57: TUniDBEdit;
    UniDBLookupComboBox14: TUniDBLookupComboBox;
    UniDBEdit54: TUniDBEdit;
    UniDBEdit58: TUniDBEdit;
    UniDBLookupComboBox15: TUniDBLookupComboBox;
    UniDBEdit59: TUniDBEdit;
    UniDBEdit60: TUniDBEdit;
    UniDBEdit61: TUniDBEdit;
    UniDBEdit62: TUniDBEdit;
    UniDBDateTimePicker5: TUniDBDateTimePicker;
    UniDBDateTimePicker6: TUniDBDateTimePicker;
    UniDBEdit64: TUniDBEdit;
    UniDBEdit69: TUniDBEdit;
    UniDBCheckBox8: TUniDBCheckBox;
    UniDBEdit70: TUniDBEdit;
    UniDBEdit71: TUniDBEdit;
    UniDBCheckBox9: TUniDBCheckBox;
    UniDBEdit72: TUniDBEdit;
    UniDBEdit73: TUniDBEdit;
    UniDBCheckBox10: TUniDBCheckBox;
    UniDBRadioGroup2: TUniDBRadioGroup;
    UniDBRadioGroup3: TUniDBRadioGroup;
    UniDBRadioGroup4: TUniDBRadioGroup;
    UniDBRadioGroup5: TUniDBRadioGroup;
    OpenPictureDialog1: TOpenPictureDialog;
    UniScrollBox6: TUniScrollBox;
    pContab: TUniPanel;
    UniScrollBox8: TUniScrollBox;
    EmailMSG: TIdMessage;
    SSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    SMTP: TIdSMTP;
    UniPanel2: TUniPanel;
    UniGroupBox2: TUniGroupBox;
    UniDBRadioGroup6: TUniDBRadioGroup;
    UniDBRadioGroup7: TUniDBRadioGroup;
    cClassificacao_ContribIPI: TUniDBLookupComboBox;
    UniGroupBox3: TUniGroupBox;
    UniDBCheckBox13: TUniDBCheckBox;
    UniGroupBox4: TUniGroupBox;
    UniDBRadioGroup8: TUniDBRadioGroup;
    UniDBEdit21: TUniDBEdit;
    UniDBEdit80: TUniDBEdit;
    UniDBCheckBox14: TUniDBCheckBox;
    UniDBCheckBox15: TUniDBCheckBox;
    UniDBCheckBox16: TUniDBCheckBox;
    UniDBRadioGroup10: TUniDBRadioGroup;
    UniDBRadioGroup11: TUniDBRadioGroup;
    UniGroupBox5: TUniGroupBox;
    UniDBRadioGroup12: TUniDBRadioGroup;
    UniDBRadioGroup13: TUniDBRadioGroup;
    UniDBLookupComboBox17: TUniDBLookupComboBox;
    UniDBRadioGroup14: TUniDBRadioGroup;
    UniGroupBox1: TUniGroupBox;
    UniDBEdit81: TUniDBEdit;
    UniDBEdit82: TUniDBEdit;
    UniDBEdit83: TUniDBEdit;
    UniDBRadioGroup15: TUniDBRadioGroup;
    UniDBRadioGroup16: TUniDBRadioGroup;
    UniDBEdit84: TUniDBEdit;
    UniDBRadioGroup17: TUniDBRadioGroup;
    UniDBRadioGroup18: TUniDBRadioGroup;
    UniDBEdit85: TUniDBEdit;
    UniScrollBox3: TUniScrollBox;
    pRede: TUniPanel;
    UniDBEdit78: TUniDBEdit;
    UniDBCheckBox11: TUniDBCheckBox;
    UniDBCheckBox12: TUniDBCheckBox;
    UniDBMemo1: TUniDBMemo;
    UniDBEdit74: TUniDBEdit;
    UniDBEdit75: TUniDBEdit;
    UniDBEdit76: TUniDBEdit;
    UniDBEdit77: TUniDBEdit;
    UniDBMemo2: TUniDBMemo;
    UniDBMemo3: TUniDBMemo;
    UniDBMemo4: TUniDBMemo;
    UniDBMemo5: TUniDBMemo;
    UniDBMemo6: TUniDBMemo;
    UniDBEdit79: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniDBComboBox2: TUniDBComboBox;
    UniDBComboBox3: TUniDBComboBox;
    UniDBMemo7: TUniDBMemo;
    UniDBDateTimePicker7: TUniDBDateTimePicker;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    Alerta: TUniSweetAlert;
    UniPanel1: TUniPanel;
    bLogo: TUniFileUploadButton;
    iLogo: TUniImage;
    UniPanel4: TUniPanel;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    cFilial: TUniDBEdit;
    UniDBEdit16: TUniDBEdit;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniPanel5: TUniPanel;
    UniDBEdit24: TUniDBEdit;
    UniDBEdit25: TUniDBEdit;
    UniDBEdit19: TUniDBEdit;
    UniDBEdit20: TUniDBEdit;
    UniDBEdit22: TUniDBEdit;
    UniPanel7: TUniPanel;
    UniDBEdit12: TUniDBEdit;
    cIE: TUniDBEdit;
    cCNPJ: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    UniDBEdit17: TUniDBEdit;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    cBeneficio_Fiscal: TUniDBLookupComboBox;
    UniDBEdit18: TUniDBEdit;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    cRegime_Tributario: TUniDBRadioGroup;
    cRegime_Apuracao: TUniDBRadioGroup;
    cApuracao_IPI: TUniDBRadioGroup;
    UniPanel8: TUniPanel;
    UniDBEdit39: TUniDBEdit;
    UniDBEdit40: TUniDBEdit;
    UniDBEdit41: TUniDBEdit;
    UniDBEdit42: TUniDBEdit;
    UniDBEdit43: TUniDBEdit;
    UniDBDateTimePicker4: TUniDBDateTimePicker;
    UniDBEdit44: TUniDBEdit;
    UniDBEdit45: TUniDBEdit;
    UniDBEdit46: TUniDBEdit;
    UniDBEdit47: TUniDBEdit;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniDBEdit48: TUniDBEdit;
    UniDBEdit49: TUniDBEdit;
    UniDBLookupComboBox11: TUniDBLookupComboBox;
    UniDBEdit50: TUniDBEdit;
    UniDBEdit51: TUniDBEdit;
    UniDBCheckBox5: TUniDBCheckBox;
    UniPanel6: TUniPanel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit23: TUniDBEdit;
    UniDBEdit26: TUniDBEdit;
    UniDBEdit27: TUniDBEdit;
    UniDBEdit28: TUniDBEdit;
    UniDBDateTimePicker3: TUniDBDateTimePicker;
    UniDBEdit29: TUniDBEdit;
    UniDBEdit30: TUniDBEdit;
    UniDBEdit31: TUniDBEdit;
    UniDBEdit32: TUniDBEdit;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBEdit33: TUniDBEdit;
    UniDBEdit34: TUniDBEdit;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniDBEdit35: TUniDBEdit;
    UniDBEdit36: TUniDBEdit;
    UniDBCheckBox4: TUniDBCheckBox;
    UniPanel3: TUniPanel;
    UniDBMemo8: TUniDBMemo;
    UniDBMemo9: TUniDBMemo;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBLookupComboBox2Change(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure EmpresasBeforePost(DataSet: TDataSet);
    procedure EmpresasBeforeDelete(DataSet: TDataSet);
    procedure EmpresasAfterScroll(DataSet: TDataSet);
    procedure bLogoCompleted(Sender: TObject; AStream: TFileStream);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses MainModule, Main, ServerModule;

procedure TfCadEmpresas.bAdicionarClick(Sender: TObject);
begin
      with Empresas do begin
           try
               Append;
               AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bSalvar, bCancelar, Pasta);
               //cCNPJ.SetFocus;
               Pasta.ActivePageIndex := 1;
               cCNPJ.Enabled := true;
               //cCNPJ.SetFocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadEmpresas.bCancelarClick(Sender: TObject);
begin
      Empresas.Cancel;
      AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bSalvar, bCancelar, Pasta);
end;

procedure TfCadEmpresas.bEditarClick(Sender: TObject);
begin
      try
          Empresas.Edit;
          cCNPJ.Enabled := false;
          AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bSalvar, bCancelar, Pasta);
          Pasta.ActivePageIndex := 1;
          cFilial.SetFocus;
      except
          Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadEmpresas.bExcluirClick(Sender: TObject);
begin
     with Empresas do begin
          MessageDlg('Deseja realmente excluir esta empresa?'+#13+#13+FieldByName('Razao_Social').AsString, mtConfirmation,mbYesNo,
                      procedure(Comp:TComponent; ARes: Integer)
                      begin
                            if Ares = mrYes then begin
                               Delete;
                               Alerta.Text := 'Registro exclído do banco de dados!';
                               Alerta.Execute;
                            end;
                      end);
     end;
end;

procedure TfCadEmpresas.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadEmpresas.bLogoCompleted(Sender: TObject; AStream: TFileStream);
var
  CaminhoDestino: string;
  FS: TFileStream;
begin
     with Empresas do begin
          if bLogo.FileName <> '' then begin
             if (NomeComputador = 'PROGRAMACAO1') or (NomeComputador = 'NOTE-DED') then begin
                fieldbyname('Logo').AsString := uniMainModule.mPath + 'files\images\'+bLogo.FileName;
             end else begin
                fieldbyname('Logo').AsString := 'c:\Aplicativos\Atlas\files\images\'+bLogo.FileName;
                // Salva o arquivo com o nome original
                FS               := TFileStream.Create('c:\Aplicativos\Atlas\files\images\' + bLogo.FileName, fmCreate);
                AStream.Position := 0;
                FS.CopyFrom(AStream, AStream.Size);
                FS.Free;
             end;
             if fileexists(FieldByName('Logo').AsString) then iLogo.Picture.LoadFromFile(FieldByName('Logo').AsString);
          end;
     end;
end;

procedure TfCadEmpresas.bSalvarClick(Sender: TObject);
begin
     with Empresas do begin
          if (State = dsInsert) and (not ChecaCNPJ(FieldByName('CNPJ').AsString)) then begin
             MessageDlg('CNPJ '+FormatMaskText('##.###.###/####-##;0',FieldByName('CNPJ').AsString)+' invalido!', mtError, [mbOK]);
             cCNPJ.Setfocus;
             Abort;
          end;
          if (Trim(FieldByName('Diretor_CPF').AsString) <> '') and (not ChecaCPF(FieldByName('Diretor_CPF').AsString)) then begin
             MessageDlg('CPF do diretor invalido!', mtError, [mbOK]);
             Abort;
          end;
          if (FieldByName('Responsavel_CPF').AsString <> '') and (not ChecaCPF(FieldByName('Responsavel_CPF').AsString)) then begin
             MessageDlg('CPF do responsavel invalido!', mtError, [mbOK]);
             Abort;
          end;
          if (State = dsInsert) and ( Existe(Empresas, 'CNPJ', FieldByName('CNPJ').AsString) ) then begin
             MessageDlg('Já existe uma empresa cadastrada com esse número de CNPJ ('+FormatMaskText('##.###.###/####-##;0',FieldByName('CNPJ').AsString)+') !'+#13+#13, mtError, [mbOK]);
             cCNPJ.SetFocus;
             Abort;
          end;
          try
              Post;
              AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bSalvar, bCancelar, Pasta);
              Alerta.Text := 'Registro salvo no banco de dados!';
              Alerta.Execute;
          except
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, [mbOK]);
          end;
     end;
end;

procedure TfCadEmpresas.EmpresasAfterScroll(DataSet: TDataSet);
begin
     with Empresas do begin
          iLogo.Picture := nil;
          if fileexists(FieldByName('Logo').AsString) then iLogo.Picture.LoadFromFile(FieldByName('Logo').AsString);
     end;
end;

procedure TfCadEmpresas.EmpresasBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Razao_Social').AsString, EstadoTabela(DataSet));
end;

procedure TfCadEmpresas.EmpresasBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Razao_Social').AsString,'Delete');
end;

procedure TfCadEmpresas.UniButton2Click(Sender: TObject);
var
   Util: NFe_Util_2G_Interface;
   i: integer;
   mNome,
   mMensagem,
   mResultado,
   mCNPJ,
   mSerie,
   mEmissor,
   mInicioVal,
   mFimVal,
   mTitular:WideString;
begin
     with Empresas do begin
          Util      := CoUtil.Create;
          mNome     := '';
          mMensagem := '';

          i := Util.PegaDadosCertificado( mNome
                                         ,mResultado
                                         ,mTitular
                                         ,mCNPJ
                                         ,mSerie
                                         ,mEmissor
                                         ,mInicioVal
                                         ,mFimVal );

          if (i = 6001) or (i = 6002) then
             FieldByName('Certificado_Digital').Value    := mNome;
             FieldByName('Vencimento_Certificado').Value := mFimVal;
          if i > 6003 then
             MessageDlg( '5404: Erro: Nenhum certificado digital selecionado'+#13+#13 + mNome, mtInformation, [mbOk]);

          Util := nil;
     end;
end;

procedure TfCadEmpresas.UniButton3Click(Sender: TObject);
begin
      with Empresas do begin
           Try
              SMTP.Host     := Trim(FieldByName('Email_SMTP').AsString);
              SMTP.Port     := FieldByName('Email_Porta').AsInteger;
              SMTP.UserName := Trim(FieldByName('Email_ID').AsString);
              SMTP.Password := Trim(FieldByName('Email_Senha').AsString);

              // SSLOptions method.
              If FieldByName('Email_Metodo').AsString = 'sslvSSLv2' then
                 SSLSocket.SSLOptions.Method := sslvSSLv2;
              If FieldByName('Email_Metodo').AsString= 'sslvSSLv23' then
                 SSLSocket.SSLOptions.Method := sslvSSLv23;
              If FieldByName('Email_Metodo').AsString = 'sslvSSLv3' then
                 SSLSocket.SSLOptions.Method := sslvSSLv3;
              If FieldByName('Email_Metodo').AsString = 'sslvTLSv1' then
                 SSLSocket.SSLOptions.Method := sslvTLSv1;

              // requer autenticação
              If FieldByName('Email_Autenticacao').AsBoolean then
                 SMTP.AuthType := satDefault
              else
                 SMTP.AuthType := satNone;

              // conexao segura SSL
              If FieldByName('Email_SSL').AsBoolean then
                 SMTP.IOHandler := SSLSocket
              else
                 SMTP.IOHandler := nil;

              If not SMTP.Connected then SMTP.Connect();

              If SMTP.Connected then
                 ShowMessage('CONECTADO> Teste de conexão realizado com sucesso!')
              else
                 ShowMessage('DESCONECTADO> Tesde de conexão FALHOU!');
            Except on E:Exception do
                 ShowMessage(e.Message);
            End;

            SMTP.Disconnect;
      end;
end;

procedure TfCadEmpresas.UniDBLookupComboBox2Change(Sender: TObject);
begin
     with Municipios do begin
          Close;
          SQL.Clear;
          SQL.Add('select * from Municipios where UF = :pUF');
          ParamByName('pUF').AsString := Empresas.FieldByName('Estado').AsString;
          Open;
     end;
end;

procedure TfCadEmpresas.UniFrameCreate(Sender: TObject);
var
   i:integer;
   FrameClass: TClass;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to ComponentCount -1 do begin
         if (Components[i] is TUniPanel) and (Components[i].Tag = 0) then begin
            TuniPanel(Components[i]).Top   := 30;
            TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
            TuniPanel(Components[i]).Color := clNone;
         end;
         if Components[i] is TUniSimplePanel then begin
            TuniSimplePanel(Components[i]).Color := clNone;
         end;
     end;

     AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bSalvar, bCancelar, Pasta);
     
     Pasta.ActivePageIndex := 0;
     with Empresas do begin
          sql.clear;
          sql.add('select * from Empresas order by Razao_Social, CNPJ, Numero_Filial');
          open;
     end;
     with Estados do begin
          sql.clear;
          sql.add('select UF, Numero, Nome from Estados order by Nome');
          open;
     end;
     with Municipios do begin
          sql.clear;
          sql.add('select Codigo, Nome from Municipios where UF = :pUF order by Nome');
          paramByName('pUF').AsString := Empresas.FieldByName('Estado').AsString;
          open;
     end;
     with Beneficio do begin
          sql.clear;
          sql.add('select Codigo, Nome, Estado from BeneficioFiscal order by Nome');
          open;
     end;
     with ContribIPI do begin 
          sql.clear;
          sql.add('select Codigo, Descricao from ContribuicaoIPI order by Codigo');
          open;
     end;
     with ClassTrib do begin 
          sql.clear;
          sql.add('select Codigo, Descricao from ClassificacaoTributEmp order by Codigo');
          open;
     end;
end;

procedure TfCadEmpresas.UniFrameDestroy(Sender: TObject);
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



end.
