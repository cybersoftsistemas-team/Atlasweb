unit FiscalNFManifestar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Graphics, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniDBGrid, uniPanel, uniSpeedButton, uniButton, uniEdit, 
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniRadioGroup, uniDBComboBox, uniDBRadioGroup, 
  uniMultiItem, uniBitBtn, Vcl.Forms, uniDBDateTimePicker, uniDateTimePicker, uniSweetAlert, uniMemo, NFe_util_2G_tlb, System.IOUtils, uniDBLookupComboBox, uniScreenMask;

type
  TfFiscalNFManifestar = class(TuniFrame)
    Notas: TFDQuery;
    pBarraNav: TUniPanel;
    bFechar: TUniSpeedButton;
    dsNotas: TDataSource;
    bManiFora: TUniButton;
    bManifestar: TUniButton;
    Ficha: TUniPanel;
    cData: TUniDBDateTimePicker;
    cHora: TUniEdit;
    cMotivo: TUniComboBox;
    cJustificativa: TUniEdit;
    cSit: TUniRadioGroup;
    Grade: TUniDBGrid;
    Alerta: TUniSweetAlert;
    cMensagens: TUniMemo;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    Config: TFDQuery;
    cEmpresa: TUniDBLookupComboBox;
    bConsultar: TUniButton;
    UniScreenMask1: TUniScreenMask;
    procedure bSairClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure cSitClick(Sender: TObject);
    procedure bManifestarClick(Sender: TObject);
    procedure bConsultarClick(Sender: TObject);
  private
    procedure FiltraNotas;
    procedure Seleciona(Estado: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MainModule, Main, Funcoes, ValidaCRUD, NFeDistribuicao;

{$R *.dfm}

procedure TfFiscalNFManifestar.bManifestarClick(Sender: TObject);
var
   mPasta: string;
   msel
  ,status: integer;
   Util: NFe_Util_2G_Interface;
   retWS
  ,dh
  ,Evento
  ,msg
  ,Resultado
  ,Protocolo
  ,ProtocoloData: widestring;
   xmlProtocolo: TuniMemo;
begin
      if not TValidaCRUD.ValidarFormulario(Ficha) then abort;
      
      if cMotivo.ItemIndex = 3 then begin 
         if Length(Trim(cJustificativa.Text)) < 15 then begin
            Alerta.Text      := 'Para o motivo = "03" "Registro da Operação não Realizada" A justificativa deve ter pelo menos 15 caracteres.';
            Alerta.AlertType := atError;
            Alerta.Execute;
            cJustificativa.SetFocus;
            Abort;
         end;
      end;
      if Grade.SelectedRows.Count <= 0 then begin
         Alerta.Text      := 'Nenhuma nota selecionada para manifestar.';
         Alerta.AlertType := atError;
         Alerta.Execute;
         Grade.SetFocus;
         Abort;
      end;

      Screen.Cursor := crHourGlass;
      
      cMensagens.clear;
      cMensagens.Lines.Add('Comunicando-se com o servidor da SEFAZ...Aguarde.');
      cMensagens.Lines.Add('');
      cMensagens.Lines.Add('Enviando manifestação.');

      mPasta := trim(Config.fieldbyname('Pasta_NFE').asstring) + '\' +
                trim(stringreplace(Empresas.fieldbyname('Razao_Social').AsString, '/', '',[rfReplaceAll]))+
                Empresas.fieldbyname('Filial').asstring +
                '\Manifesto';

      if not DirectoryExists(mPasta) then ForceDirectories(mPasta);
      application.ProcessMessages;
      
      for mSel := 0 to pred(Grade.SelectedRows.Count) do begin
          Grade.DataSource.DataSet.GotoBookMark((Grade.SelectedRows.Items[mSel]));
          cMensagens.Lines.Add('   '+Notas.FieldByName('Chave').asstring);
          try
             Util  := CoUtil.Create;
          except on E: Exception do 
             cMensagens.Lines.add('ERRO --> '+E.Message);
          end;
          RetWS := '';
          dh    := FormatDateTime('yyyy-mm-dd "" hh:mm:ss', StrtoDateTime(cData.Text+cHora.Text));
          cJustificativa.Text := RemoveCaracterXML(cJustificativa.Text);

          Evento := Util.EnviaManDest(Empresas.fieldbyname('UF_WebServiceManifesto').AsString          // Informar "AN" - o WS do Ambiente Nacional (AN) atende destinatário de qualquer UF.
                                     ,Empresas.fieldbyname('Ambiente_NFe').asinteger                   // Informar o código do ambiente desejado: 1- produção ou 2-homologação.
                                     ,Empresas.fieldbyname('Certificado_Digital').AsString             // Informar o certificado digital que será utilizado para assinatura:.
                                     ,Empresas.fieldbyname('Manifesto_LayOut').AsString                // Informar a versão da mensagem do WS : 4.00.
                                     ,Msg                                                              // Retorna a mensagem XML do evento manifestação do destinatário criado pela DLL que foi enviado ao WS.
                                     ,RetWS                                                            // Retorna a mensagem XML de resposta do WS.
                                     ,Status                                                           // Retorna o resultado da chamada do WS.
                                     ,Resultado                                                        // Retorna a literal do resultado da chamada do WS.
                                     ,Notas.FieldbyName('Chave').asstring                              // Informar a chave de acesso da NF-e objeto da manifestação do destinatário.
                                     ,Empresas.fieldbyname('CNPJ').AsString                            // Informar o CNPJ/CPF do autor da manifestação, é o CNPJ ou CPF do destinatário da NF-e.
                                     ,dh                                                               // Informar a data e hora da manifestação no formato "AAAA-MM-DD HH:MM:SS".
                                     ,cMotivo.ItemIndex                                                // Informar o tipo do Evento:
                                     ,cJustificativa.Text                                              // Informar a justificativa da não realizadação da operação.
                                     ,Protocolo                                                        // Retorna o número do protocolo de registro do Evento da Manifestação do Destinatário.
                                     ,ProtocoloData                                                    // Retorna a data e hora de registro do Evento, a data no formato UTC com a indicação do fuso horário.
                                     ,Config.fieldbyname('Servidor_Proxy').AsString                    // Informar 'http://proxyserver:port' quando existir uso de proxy no ambiente.
                                     ,Config.fieldbyname('Usuario_Proxy').AsString                     // Informar o usuário para autenticação no proxy, se necessário.
                                     ,Config.fieldbyname('Senha_Proxy').AsString                       // Informar a senha de autenticação no proxy, se necessário.
                                     ,Empresas.fieldbyname('Licensa_NFE_Util').asstring);              // informar a chave da licenca de uso ou registro.
                                     
          // 135 - Evento registrado e vinculado a NF-e.
          // 136 - Evento registrado, mas nao vinculado a NF-e.
          if Status in[135, 136] then begin
             cMensagens.Lines.Add(''+Resultado);
             cMensagens.Lines.Add('Número do Protocolo de homologação : '+Protocolo + '   Data :'+ProtocoloData);
             cMensagens.Lines.Add('Salvando Protocolo no banco de dados.');

             with Notas do begin
                  edit;
                     fieldbyname('Manifesto_Protocolo').value     := Protocolo;
                     fieldbyname('Manifesto_DataProtocolo').Value := StrtoDateTime(Copy(ProtocoloData,9,2)+'/'+Copy(ProtocoloData,6,2)+'/'+Copy(ProtocoloData,1,4)+' '+Copy(ProtocoloData,12,11));
                     fieldbyname('Manifesto_Motivo').Value        := cMotivo.ItemIndex;
                     fieldbyname('Manifesto_Justificativa').Value := cJustificativa.Text;
                     fieldbyname('Manifestada').Value             := true; 
                  Post;
             end;

             // Salvando o XML do protocolo da manifestação.
             try
                 cMensagens.Lines.Add('Salvando arquivo XML do Protocolo no disco.');
                 TFile.WriteAllText(mPasta+'\NFe_'+Notas.FieldbyName('Chave').asstring+'_Manifestacao'+inttostr(cMotivo.ItemIndex)+'.xml'
                                   ,msg
                                   ,TEncoding.Unicode);
                                  
                 TFile.WriteAllText(mPasta+'\NFe_'+Notas.FieldbyName('Chave').asstring+'_ManifestacaoProtocolo'+inttostr(cMotivo.ItemIndex)+'.xml'
                                   ,retWS
                                   ,TEncoding.Unicode);
             except
                 cMensagens.Lines.Add('Erro ao salvar os arquivos no disco, verifique se as pastas estão corretas nas configurações do sistema.');
             end;
          end else begin
             if Status < 1000 then begin
                if Status = 573 then begin // Quando a nota fiscal já foi manifestada.
                   with Notas do begin 
                        if trim(Notas.fieldbyname('Manifesto_Protocolo').asstring) = '' then begin
                           edit;
                              fieldbyname('Manifesto_Protocolo').Value     := '000000000000000';
                              fieldbyname('Manifesto_DataProtocolo').Value := Date;
                              fieldbyname('Manifesto_Motivo').Value        := cMotivo.ItemIndex;
                              fieldbyname('Manifesto_Justificativa').Value := cJustificativa.Text;
                              fieldbyname('Manifestada').Value             := true; 
                           Post;
                        end;
                   end;
                end else begin
                  cMensagens.Lines.Add(''+Resultado);
                  cMensagens.Lines.Add('Número do Protocolo de homologação : '+Protocolo + '   Data :'+ProtocoloData);
                  cMensagens.Lines.Add('Salvando Protocolo no banco de dados.');
                end;
                cMensagens.Lines.Add('Evento de Manifestação do destinatário rejeitado pelo WS...');
                cMensagens.Lines.Add('   '+Resultado);
             end else begin
                cMensagens.Lines.Add('Falha na chamada do WS...');
                cMensagens.Lines.Add('   '+Resultado);
             end;
          end;
      end;
      Screen.Cursor := crDefault;
end;

procedure TfFiscalNFManifestar.bSairClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFiscalNFManifestar.bConsultarClick(Sender: TObject);
var
  Distribuicao: TNFeDistribuicao;
begin
     Distribuicao := TNFeDistribuicao.Create(Empresas.FieldByName('CNPJ').AsString);
     try
        Distribuicao.Executar;
        cMensagens.lines.add('Processamento concluído.');
        cMensagens.lines.add('   Documentos encontrados: ' +Distribuicao.RespWS);
        cMensagens.lines.add('   Documentos encontrados: ' +IntToStr(Distribuicao.Quantidade));
     finally
        Distribuicao.Free;
     end;
end;

procedure TfFiscalNFManifestar.UniFrameCreate(Sender: TObject);
var
   i: integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TUniPanel then begin
            TuniPanel(Components[i]).Top   := pBarraNav.Top+pBarraNav.Height + 30;
            TuniPanel(Components[i]).Left  := (self.Width - TuniPanel(Components[i]).Width) div 2;
            TuniPanel(Components[i]).Color := clNone;
         end;
     end;
     with Empresas do begin
          sql.clear;
          sql.add('select CNPJ');
          sql.add('      ,Razao_Social');
          sql.add('      ,Filial = iif(Filial = 0, ''MATRIZ'', ''FILIAL ''+cast(Filial as char(2)))');
          sql.add('      ,Certificado_Digital');
          sql.add('      ,UF_WebServiceManifesto');
          sql.add('      ,Ambiente_NFe');
          sql.add('      ,Manifesto_LayOut');
          sql.add('      ,Licensa_NFE_Util');
          sql.add('from Empresas');
          sql.add('where substring(CNPJ, 1, 8) = substring(:pEmp, 1, 8)');
          parambyname('pEmp').asstring := UniMainModule.mEmpresaAtiva;
          open;
          cEmpresa.KeyValue := UniMainModule.mEmpresaAtiva
     end;
     with Config do begin
          sql.clear;
          sql.add('select top 1 Pasta_NFE');
          sql.add('            ,Usuario_Proxy');
          sql.add('            ,Senha_Proxy');
          sql.add('            ,Servidor_Proxy');
          sql.add('from Config');
          open;
     end;
     
     cMensagens.clear;
     FiltraNotas;
     cHora.Text := TimetoStr(Time);
end;

procedure TfFiscalNFManifestar.FiltraNotas;
begin
     with Notas do begin
          sql.clear;
          sql.add('select nf.Chave');
          sql.add('      ,nf.Data_Emissao');
          sql.add('      ,nf.Data_ES');
          sql.add('      ,dst.Nome');
          sql.add('      ,op. Descricao');
          sql.add('      ,nf.Manifestada');
          sql.add('from NotasFiscais nf');
          sql.add('inner join Destinatarios dst on dst.Codigo = nf.Destinatario');
          sql.add('inner join OperacaoFiscal op on op.Codigo = nf.Operacao');
          sql.add('where nf.Empresa = :pEmp');
          sql.add('and nf.Emissao = ''T'' ');
          sql.add('and nf.Modelo = ''55'' ');
          sql.add('and isnull(nf.Desdobramento, 0) = 0');
          sql.add('and isnull(nf.Manifestada, 0) = 0');
          sql.add('and isnull(nf.Manifestada, 0) = :pMan');
          sql.add('and isnull(nf.Provisoria, 0) = 0');
          sql.add('order by Data_ES, Chave');
          parambyname('pEmp').value := UniMainModule.mEmpresaAtiva;
          parambyname('pMan').value := cSit.itemindex = 1;
          open;
     end;
end;

procedure TfFiscalNFManifestar.UniFrameDestroy(Sender: TObject);
var
   i:integer;
begin
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TFDQuery then begin
            TFDQuery(Components[i]).close;
         end;
     end;
end;

procedure TfFiscalNFManifestar.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFiscalNFManifestar.cSitClick(Sender: TObject);
begin
     FiltraNotas;
end;

procedure TfFiscalNFManifestar.Seleciona(Estado: boolean);
begin
    Grade.JSInterface.JSCall('selectAll', []);
end;

end.
