unit CadDestinatarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame,
  UniPageControl, uniDBGrid, uniPanel, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDBDateTimePicker, Funcoes, Data.DB, uniButton, uniDBNavigator,
  uniEdit, uniDBEdit, uniDBMemo, uniGUIBaseClasses, FireDAC.Comp.Client, uniDBLookUpComboBox, uniCheckBox,uniDBComboBox, uniGroupBox, uniDBRadioGroup,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMemo, uniRadioGroup, uniDateTimePicker, uniMultiItem, uniComboBox, uniBasicGrid, uniBitBtn, uniScreenMask,
  unimToggle, unimDBToggle, uniSweetAlert, uniLabel, uniWidgets;

type
  TfCadDestinatarios = class(TUniFrame)
    Alerta: TUniSweetAlert;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    dsDestinatarios: TDataSource;
    dsIndicadorIE: TDataSource;
    dsTipoProduto: TDataSource;
    dsRegioes: TDataSource;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    UniTabSheet1: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    pFicha1: TUniPanel;
    cCodigo: TUniDBEdit;
    cNome: TUniDBEdit;
    cNome_Fantasia: TUniDBEdit;
    cRua: TUniDBEdit;
    cRua_Numero: TUniDBEdit;
    cComplemento: TUniDBEdit;
    cBairro: TUniDBEdit;
    cMunicipio: TUniDBLookupComboBox;
    cEstado: TUniDBLookupComboBox;
    cCEP: TUniDBEdit;
    cTelefone1: TUniDBEdit;
    cTelefone2: TUniDBEdit;
    cContato: TUniDBEdit;
    cData_Cadastro: TUniDBDateTimePicker;
    UniTabSheet2: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    pFicha2: TUniPanel;
    cData_Nascimento: TUniDBDateTimePicker;
    cNaturalidade: TUniDBEdit;
    cNome_Mae: TUniDBEdit;
    cNome_Pai: TUniDBEdit;
    cProfissao: TUniDBEdit;
    cSexo: TUniDBRadioGroup;
    cEstadoCivil: TUniDBRadioGroup;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniTabSheet3: TUniTabSheet;
    UniScrollBox3: TUniScrollBox;
    pFicha3: TUniPanel;
    UniTabSheet4: TUniTabSheet;
    UniScrollBox4: TUniScrollBox;
    pFicha4: TUniPanel;
    cAvalista_Nome: TUniDBEdit;
    cAvalista_CNPJ: TUniDBEdit;
    cAvalista_CPF: TUniDBEdit;
    cAvalista_RG: TUniDBEdit;
    cAvalista_Endereco: TUniDBEdit;
    cAvalista_Bairro: TUniDBEdit;
    cAvalista_Cidade: TUniDBLookupComboBox;
    cAvalista_Estado: TUniDBLookupComboBox;
    cAvalista_CEP: TUniDBEdit;
    UniTabSheet5: TUniTabSheet;
    UniScrollBox5: TUniScrollBox;
    pFicha5: TUniPanel;
    UniTabSheet6: TUniTabSheet;
    UniScrollBox6: TUniScrollBox;
    pFicha6: TUniPanel;
    cObservacao: TUniDBMemo;
    UniTabSheet7: TUniTabSheet;
    UniScrollBox7: TUniScrollBox;
    pFicha7: TUniPanel;
    cDesconto_Dupl_Tipo: TUniDBLookupComboBox;
    cDesconto_Dupl_Dias: TUniDBEdit;
    cDesconto_Dupl_Campo: TUniDBLookupComboBox;
    cVencimento_Contrato: TUniDBDateTimePicker;
    cVencimento_Radar: TUniDBDateTimePicker;
    cVencimento_Vinculacao: TUniDBDateTimePicker;
    cCondicao_Pagamento: TUniDBEdit;
    cAtraso_Maximo: TUniDBEdit;
    cDesconto_Dupl_Valor: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    UniDBEdit16: TUniDBEdit;
    UniDBEdit17: TUniDBEdit;
    UniDBEdit18: TUniDBEdit;
    UniDBEdit19: TUniDBEdit;
    UniDBEdit20: TUniDBEdit;
    UniDBEdit21: TUniDBEdit;
    UniDBEdit22: TUniDBEdit;
    cLimiteSaldo: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniTabSheet10: TUniTabSheet;
    UniScrollBox10: TUniScrollBox;
    pFicha10: TUniPanel;
    cCobranca_Endereco: TUniDBEdit;
    cCobranca_Bairro: TUniDBEdit;
    cCobranca_Cidade: TUniDBLookupComboBox;
    cCobranca_Estado: TUniDBLookupComboBox;
    cCobranca_CEP: TUniDBEdit;
    cCobranca_Boleto: TUniDBCheckBox;
    cMensalidade_Dia: TUniDBEdit;
    cCliente_Diferenciado: TUniDBCheckBox;
    UniTabSheet12: TUniTabSheet;
    UniScrollBox12: TUniScrollBox;
    pFicha12: TUniPanel;
    UniTabSheet11: TUniTabSheet;
    UniScrollBox11: TUniScrollBox;
    pFicha11: TUniPanel;
    cEmail: TUniDBEdit;
    cSite: TUniDBEdit;
    cEnviar_Email: TUniDBCheckBox;
    cEmail_Copia: TUniDBMemo;
    UniTabSheet9: TUniTabSheet;
    UniScrollBox9: TUniScrollBox;
    UniTabSheet8: TUniTabSheet;
    UniScrollBox8: TUniScrollBox;
    UniPanel1: TUniPanel;
    cPraca_Pagamento: TUniDBEdit;
    UniDBRadioGroup1: TUniDBRadioGroup;
    UniDBEdit25: TUniDBEdit;
    gPerfil: TUniGroupBox;
    cIsento: TUniDBCheckBox;
    cAtivo: TUniDBCheckBox;
    cSimples_Nacional: TUniDBCheckBox;
    cZona_Franca: TUniDBCheckBox;
    cConsumidor_Final: TUniDBCheckBox;
    cMEI: TUniDBCheckBox;
    cInscricaoST: TUniDBCheckBox;
    cCliente: TUniDBCheckBox;
    cFornecedor: TUniDBCheckBox;
    cOrgao_Publico: TUniDBCheckBox;
    cTransportador: TUniDBCheckBox;
    cFabricante: TUniDBCheckBox;
    cRepresentante: TUniDBCheckBox;
    gReg: TUniGroupBox;
    cCNPJ: TUniDBEdit;
    cCPF: TUniDBEdit;
    cRG: TUniDBEdit;
    cInscricao_Estadual: TUniDBEdit;
    cInscricao_Municipal: TUniDBEdit;
    cSUFRAMA: TUniDBEdit;
    cPassaporte: TUniDBEdit;
    cRegistro_Alfandega: TUniDBEdit;
    cCNAE: TUniDBEdit;
    cDesoneracao: TUniDBLookupComboBox;
    cIndicadorIE: TUniDBLookupComboBox;
    gOrgao: TUniGroupBox;
    cEstado_Municipio: TUniDBEdit;
    cAbreviatura: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniGroupBox1: TUniGroupBox;
    cTempo_Servico: TUniDBEdit;
    cTrabalho_Local: TUniDBEdit;
    cTrabalho_Endereco: TUniDBEdit;
    cTrabalho_Bairro: TUniDBEdit;
    cTrabalho_Cidade: TUniDBLookupComboBox;
    cTrabalho_CEP: TUniDBEdit;
    cTrabalho_Estado: TUniDBLookupComboBox;
    cTrabalho_Telefone: TUniDBEdit;
    UniGroupBox4: TUniGroupBox;
    UniGroupBox5: TUniGroupBox;
    UniGroupBox6: TUniGroupBox;
    UniGroupBox7: TUniGroupBox;
    UniGroupBox8: TUniGroupBox;
    cReferencias_Banco1: TUniDBEdit;
    cReferencias_Banco1Agencia: TUniDBEdit;
    cReferencias_Banco1Conta: TUniDBEdit;
    cReferencias_Banco1Data: TUniDBDateTimePicker;
    cReferencias_Banco2: TUniDBEdit;
    cReferencias_Banco2Agencia: TUniDBEdit;
    cReferencias_Banco2Conta: TUniDBEdit;
    cReferencias_Banco2Data: TUniDBDateTimePicker;
    cReferencias_Cartoes: TUniDBEdit;
    cSwift_Code: TUniDBEdit;
    cIBAN: TUniDBEdit;
    cReferencias_Comercial1: TUniDBEdit;
    cReferencias_Comercial2: TUniDBEdit;
    cReferencias_Comercial3: TUniDBEdit;
    cReferencias_ComercialContato1: TUniDBEdit;
    cReferencias_ComercialContato2: TUniDBEdit;
    cReferencias_ComercialContato3: TUniDBEdit;
    cReferencias_ComercialData1: TUniDBDateTimePicker;
    cReferencias_ComercialPontual1: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    UniGroupBox9: TUniGroupBox;
    cRua_Entrega: TUniDBEdit;
    cRua_EntregaNumero: TUniDBEdit;
    cBairro_Entrega: TUniDBEdit;
    cMunicipio_Entrega: TUniDBLookupComboBox;
    cEstado_Entrega: TUniDBLookupComboBox;
    cCEP_Entrega: TUniDBEdit;
    cCNPJ_Entrega: TUniDBEdit;
    cIE_Entrega: TUniDBEdit;
    cCPF_Entrega: TUniDBEdit;
    cRecebedor_Entrega: TUniDBEdit;
    cRua_ComplEntrega: TUniDBEdit;
    cEmail_Entrega: TUniDBEdit;
    cTelefone_Entrega: TUniDBEdit;
    cPais_Entrega: TUniDBLookupComboBox;
    cEndereco_Entrega: TUniDBCheckBox;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniGroupBox10: TUniGroupBox;
    UniGroupBox11: TUniGroupBox;
    cRepresentante_Codigo: TUniDBEdit;
    cRepresentante_Senha: TUniDBEdit;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    cRepresentante_Comissao: TUniDBEdit;
    cComissao_Gerencia: TUniDBEdit;
    cTrader: TUniDBLookupComboBox;
    cTipo_Comissao: TUniDBLookupComboBox;
    UniDBEdit23: TUniDBEdit;
    cAtendente: TUniDBLookupComboBox;
    UniDBEdit24: TUniDBEdit;
    cLayoutLote_Fabricacao: TUniDBEdit;
    cLayoutLote_Numero: TUniDBEdit;
    cLayoutLote_Validade: TUniDBEdit;
    UniGroupBox12: TUniGroupBox;
    cFTP_Usuario: TUniDBEdit;
    cFTP_Senha: TUniDBEdit;
    cFTP_IP: TUniDBEdit;
    cFTP_Passive: TUniDBCheckBox;
    cConsignacao: TUniDBCheckBox;
    cPais: TUniDBLookupComboBox;
    Destinatarios: TFDQuery;
    Estados: TFDQuery;
    ClassDupl: TFDQuery;
    Municipios: TFDQuery;
    Paises: TFDQuery;
    Desoneracao: TFDQuery;
    PlanoContas: TFDQuery;
    Ramo: TFDQuery;
    ModalImp: TFDQuery;
    IndicadorIE: TFDQuery;
    Regioes: TFDQuery;
    TipoProduto: TFDQuery;
    Pedidos: TFDQuery;
    Notas: TFDQuery;
    Grade: TUniDBGrid;
    OrigemContas: TFDQuery;
    Empresas: TFDQuery;
    dsEmrpesas: TDataSource;
    UniDBCheckBox2: TUniDBCheckBox;
    UniScreenMask1: TUniScreenMask;
    UniTabSheet13: TUniTabSheet;
    pFicha9: TUniPanel;
    GradeModal: TUniDBGrid;
    pModal: TUniContainerPanel;
    cModal: TUniDBLookupComboBox;
    UniContainerPanel1: TUniContainerPanel;
    DestModal: TFDQuery;
    dsDestModal: TDataSource;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    bNavegaTrib: TUniDBNavigator;
    bAddTrib: TUniSpeedButton;
    bEditTrib: TUniSpeedButton;
    bExcTrib: TUniSpeedButton;
    bCancTrib: TUniSpeedButton;
    bGravTrib: TUniSpeedButton;
    UniButton1: TUniButton;
    cRamo_Atividade: TUniDBLookupComboBox;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniDBLookupComboBox11: TUniDBLookupComboBox;
    DestModalDestinatario: TIntegerField;
    DestModalModalidade: TSmallintField;
    DestModalNome: TStringField;
    DestModalCliente: TStringField;
    DestModalCliente_Adiant: TStringField;
    DestModalCliente_Devol: TStringField;
    DestModalFornecedor: TStringField;
    DestModalFornecedor_Adiant: TStringField;
    DestModalFornecedor_Devol: TStringField;
    UniDBCheckBox3: TUniDBCheckBox;
    UniPanel2: TUniPanel;
    cPO: TUniDBEdit;
    cMascara_PO: TUniDBEdit;
    cMascara_Processo: TUniDBEdit;
    cModalidade_Importacao: TUniDBLookupComboBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    UniDBCheckBox8: TUniDBCheckBox;
    UniDBCheckBox9: TUniDBCheckBox;
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado, Edita:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBFormattedNumberEdit2ChangeValue(Sender: TObject);
    procedure UniDBFormattedNumberEdit3ChangeValue(Sender: TObject);
    procedure cOrgao_PublicoClick(Sender: TObject);
    function  Obriga(NomeCampo:TObject; NomeField:string):boolean;
    procedure DestinatariosBeforePost(DataSet: TDataSet);
    procedure DestinatariosBeforeDelete(DataSet: TDataSet);
    procedure cEstadoChange(Sender: TObject);
    procedure cCodigoChangeValue(Sender: TObject);
    procedure bEditTribClick(Sender: TObject);
    procedure bAddTribClick(Sender: TObject);
    procedure bExcTribClick(Sender: TObject);
    procedure bGravTribClick(Sender: TObject);
    procedure bCancTribClick(Sender: TObject);
  private
    procedure LigaBotoes2(Estado: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadDestinatarios.bAddTribClick(Sender: TObject);
begin
      with DestModal do begin
           try
               LigaBotoes2(false);
               Append;
                     FieldByName('Destinatario').Value := Destinatarios.FieldByName('Codigo').Value;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadDestinatarios.bAdicionarClick(Sender: TObject);
begin
      with Destinatarios do begin
           try
               LigaBotoes(false, true);
               Append;
               cCodigo.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadDestinatarios.bCancelarClick(Sender: TObject);
begin
      Destinatarios.Cancel;
      LigaBotoes(true, true);
end;

procedure TfCadDestinatarios.bCancTribClick(Sender: TObject);
begin
     with DestModal do begin
          Cancel;
          LigaBotoes2(true);
     end;
end;

procedure TfCadDestinatarios.bEditarClick(Sender: TObject);
begin
     with Destinatarios do begin
          if Existe(Destinatarios, 'Nome', FieldByName('Codigo').Asstring) then begin
             Showmessage('Não pode editar o registro corrente!'+#13+#13+'Existem "Pedidos" feitos utilizando esse destinatário."'+#13+'Exclua o "Pedido" para poder alterar este destinatário.');
             Abort;
          end;

          try
              LigaBotoes(false, true);
              Destinatarios.Edit;
              cCodigo.setfocus;
          except
              Showmessage('Não pode editar o registro corrente!');
          end;
     end;
end;

procedure TfCadDestinatarios.bEditTribClick(Sender: TObject);
begin
      with DestModal do begin
           try
               LigaBotoes2(false);
               Edit;
               cModal.SetFocus;
           except
               Showmessage('Não pode editar o registro corrente!');
           end;
      end;

end;

procedure TfCadDestinatarios.bExcluirClick(Sender: TObject);
begin
     with Destinatarios do begin
          // Não deixa excluir se ja existe movimento para o cliente.
          if Existe(Notas, 'Destinatario', FieldByName('Codigo').Asstring) then begin
             MessageDlg('Este Destinatário não pode ser excluido, pois existem "Notas Fiscais" emitidas para ele.'+#13+#13+
                        'Para que ele não apareça mais na relação marque-o como "Desativado".', mtConfirmation, [mbok]);
             Cancel;
             Abort;
          end;

          // DELETE A CONTA DO PLANO DE CONTAS.
          MessageDlg('Deseja realmente excluir este "Destinatário" ?'+#13+#13+FieldByName('Codigo').AsString+' > '+FieldByName('Nome').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadDestinatarios.bExcTribClick(Sender: TObject);
begin
     with DestModal do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Modalidade').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadDestinatarios.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadDestinatarios.bGravTribClick(Sender: TObject);
begin
      with DestModal do begin
           post;
           LigaBotoes2(true);
      end;
end;

procedure TfCadDestinatarios.bSalvarClick(Sender: TObject);
var
   mCliTerc
  ,mForTerc :string;
   mConta:integer;
begin
      with Destinatarios do begin
           // Verificando os campos obrigatorios do cadastro do cliente.
           if (State = dsInsert) then begin
              if trim(FieldByName('CNPJ').AsString) <> '' then begin
                 if Existe(Destinatarios, 'CNPJ', FieldByName('CNPJ').AsString) then begin
                    MessageDlg('Já existe um "Destinatário" cadastrado com esse CNPJ!'+#13+#13, mtError, [mbOK]);
                    cCNPJ.SetFocus;
                    Abort;
                 end;
              end;
              if trim(FieldByName('CPF').AsString) <> '' then begin
                 if Existe(Destinatarios, 'CPF', FieldByName('CPF').AsString) then begin
                    MessageDlg('Já existe um "Destinatário" cadastrado com esse CPF!'+#13+#13, mtError, [mbOK]);
                    cCPF.SetFocus;
                    Abort;
                 end;
              end;
           end;

           if not Obriga(cNome, 'Nome') then abort;
           if not Obriga(cPais, 'Pais') then abort;
           if not Obriga(cIndicadorIE, 'Indicador_IE') then abort;
           if not Obriga(cDesoneracao, 'Desoneracao') then abort;

           if FieldByName('Pais').Value = '1058' then begin
              if not Obriga(cEstado, 'Estado') then abort;
              if not Obriga(cMunicipio, 'Municipio') then abort;

              if (trim(FieldByName('CNPJ').asstring) = '') and (trim(FieldByName('CPF').asstring) = '') then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o "CNPJ" se pessoa jurídica ou o "CPF" se pessoa física.', mtError, [mbOK]);
                 cCNPJ.SetFocus;
                 Abort;
              end;
              if (trim(FieldByName('CNPJ').asstring) <> '') and (trim(FieldByName('CPF').asstring) <> '') then begin
                 MessageDlg('Erro de conteúdo!'+#13+#13+'Informe apenas o "CNPJ" para pesso jurídica ou o "CPF" par pessoa física.', mtError, [mbOK]);
                 cCNPJ.SetFocus;
                 Abort;
              end;
              if (trim(FieldByName('Inscricao_Estadual').asstring) = '') and (not FieldByName('Isento').asboolean) then begin
                 MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar a Inscrição Estadual ou informar se o destinatáio é Isento.', mtError, [mbOK]);
                 cIndicadorIE.SetFocus;
                 Abort;
              end;
           end;

           mCliTerc := iif(fieldByName('Estado').AsString = 'EX', 'CE', 'CN');
           mForTerc := iif(fieldByName('Estado').AsString = 'EX', 'FE', 'FN');

           try
               // Gera o código novo em caso de inclusão.
               if State = dsInsert then begin
                  FieldByName('Codigo').Value := GeraCodigo('Destinatarios', 'Codigo');
               end;
               if (Trim(FieldByName('CPF').asstring) <> '') and (Trim(FieldByName('Inscricao_Estadual').asstring) = '') and (FieldByName('Desoneracao').asinteger = 9) then begin
                  FieldByName('Consumidor_Final').Value := true;
               end;

               Post;
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;

               Empresas.SQL.Clear;
               Empresas.SQL.Add('select CNPJ, Modulo_Contabil from Empresas where CNPJ = :pCNPJ');
               Empresas.ParamByName('pCNPJ').AsString := uniMainModule.mEmpresaAtiva;
               Empresas.Open;

               if Empresas.fieldbyname('Modulo_Contabil').asboolean then begin
                  // Cria a conta do cliente no plano de contas se estiver parametrizado.
                  if fieldbyName('Cliente').AsBoolean then begin
                     mConta := CriaConta( fieldByName('Nome').AsString                                                                         // Nome.
                                         ,'Clientes'                                                                                           // Origem.
                                         ,fieldByName('Codigo').AsString                                                                       // Código da origem.
                                         ,iif(fieldByName('Pais').asstring = '1058', 'N', 'E')                                                 // Nacional ou Estrangeiro.
                                         ,'D'                                                                                                  // Natureza da conta.
                                         ,iif(fieldByName('CNPJ').asstring = '', fieldByName('CPF').asstring, fieldByName('CNPJ').asstring)    // CNPJ/CPF do cliente.
                                         ,iif(fieldByName('CNPJ').asstring = '', 'F', 'J')                                                     // Pessoa Fisica/Juridica.
                                         ,fieldByName('Consignacao').asboolean );
                     if mConta > 0 then begin
                        edit;
                            FieldByName('Conta_Cliente').Value := mConta;
                        post;
                     end;
                  end;

                  // Cria a conta do fornecedor no plano de contas se estiver parametrizado.
                  if cFornecedor.Checked then begin
                     if fieldbyName('Fornecedor').AsBoolean then begin
                        mConta := CriaConta( fieldByName('Nome').AsString                                                                         // Nome.
                                            ,'Fornecedores'                                                                                       // Origem.
                                            ,fieldByName('Codigo').AsString                                                                       // Código da origem.
                                            ,iif(fieldByName('Pais').asstring = '1058', 'N', 'E')                                                 // Nacional ou Estrangeiro.
                                            ,'C'                                                                                                  // Natureza da conta.
                                            ,iif(fieldByName('CNPJ').asstring = '', fieldByName('CPF').asstring, fieldByName('CNPJ').asstring)    // CNPJ/CPF do cliente.
                                            ,iif(fieldByName('CNPJ').asstring = '', 'F', 'J')                                                     // Pessoa Fisica/Juridica.
                                            ,fieldByName('Consignacao').asboolean );                                                              // Clientes consignação.
                        if mConta > 0 then begin
                           edit;
                               FieldByName('Conta_Fornecedor').Value := mConta;
                           post;
                        end;
                     end;
                  end;
               end;
               LigaBotoes(true,true);
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadDestinatarios.LigaBotoes(Estado, Edita:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
     pFicha1.Enabled       := not Estado;
     pFicha2.Enabled       := not Estado;
     pFicha3.Enabled       := not Estado;
     pFicha4.Enabled       := not Estado;
     pFicha5.Enabled       := not Estado;
     pFicha6.Enabled       := not Estado;
     pFicha7.Enabled       := not Estado;
     pFicha10.Enabled      := not Estado;
     pFicha11.Enabled      := not Estado;
     pFicha12.Enabled      := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadDestinatarios.UniDBFormattedNumberEdit2ChangeValue(Sender: TObject);
begin
     with Destinatarios do begin
          cLimiteSaldo.Value := FieldByName('Limite_Credito').ascurrency-FieldByName('Limite_Utilizado').ascurrency;
     end;
end;

procedure TfCadDestinatarios.UniDBFormattedNumberEdit3ChangeValue(Sender: TObject);
begin
     with Destinatarios do begin
          cLimiteSaldo.Value := FieldByName('Limite_Credito').ascurrency-FieldByName('Limite_Utilizado').ascurrency;
     end;
end;

procedure TfCadDestinatarios.UniframeCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).color := clNone;
          end;
      end;

      //pFicha1.Top   := 30;
      //pFicha1.Left  := (Pasta.Width - pFicha1.Width) div 2;
      //pFicha1.color := clNone;

      LigaBotoes(true,true);
      LigaBotoes2(true);
      Pasta.ActivePageIndex := 0;
      
      with Destinatarios do begin 
           sql.clear;
           sql.add('select * from Destinatarios order by Nome');
           open;
      end;
      with ClassDupl do begin 
           sql.clear;
           sql.add('select Codigo, Descricao from ClassificacaoDuplicata');
           open;
      end;
      with Desoneracao do begin 
           sql.clear;
           sql.add('select Codigo, Descricao from Desoneracao');
           open;
      end;
      with Paises do begin 
           sql.clear;
           sql.add('select Codigo, Nome from Paises');
           open;
      end;
      with Estados do begin 
           sql.clear;
           sql.add('select UF, Numero, Nome from Estados');
           open;
      end;
      with Municipios do begin 
           sql.clear;
           sql.add('select Codigo, UF, Nome from Municipios');
           open;
      end;
      with PlanoContas do begin
           sql.clear;
           sql.add('select Conta, Codigo, Nome_Contabil from PlanoContas where isnull(Sintetica, 0) = 0');
           open;
      end;
      with Ramo do begin 
           sql.clear;
           sql.add('select Codigo, Descricao from RamoAtividade');
           open;
      end;
      with ModalImp do begin 
           sql.clear;
           sql.add('select Codigo, Descricao from ModalidadeImportacao');
           open;
      end;
      with TipoProduto do begin 
           sql.clear;
           sql.add('select Codigo, Descricao from TipoProduto');
           open;
      end;
      with IndicadorIE do begin 
           sql.clear;
           sql.add('select Codigo, Descricao from IndicadorIE');
           open;
      end;
      {
      with Regioes do begin 
           sql.clear;
           sql.add('select * from Regioes');
           open;
      end;     
      }
end;

procedure TfCadDestinatarios.UniframeDestroy(Sender: TObject);
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

procedure TfCadDestinatarios.cCodigoChangeValue(Sender: TObject);
begin
      with DestModal do begin
           sql.Clear;
           sql.Add('select *');
           sql.Add('from  DestinatariosModalidades dm');
           sql.Add('where Destinatario = :pDest');
           sql.Add('order by Modalidade');
           parambyname('pDest').AsInteger := Destinatarios.FieldByName('Codigo').AsInteger;
           open;
      end;
end;

procedure TfCadDestinatarios.cEstadoChange(Sender: TObject);
begin
      with Municipios do begin
           sql.clear;
           sql.add('select Codigo, UF, Nome from Municipios where UF = :pUF');
           ParamByName('pUF').AsString := Destinatarios.FieldByName('Estado').AsString;
           open;
      end;
end;

procedure TfCadDestinatarios.cOrgao_PublicoClick(Sender: TObject);
begin
    gOrgao.Enabled := cOrgao_Publico.Checked;
    if cOrgao_Publico.Checked then cFornecedor.Checked := true;
end;

procedure TfCadDestinatarios.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadDestinatarios.DestinatariosBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadDestinatarios.DestinatariosBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadDestinatarios.bPesquisaClick(Sender: TObject);
begin
     Destinatarios.Cancel;
     PesquisaFiltro(Destinatarios, 'Destinatarios', 'Nome',cPesquisa.text);
end;

function TfCadDestinatarios.Obriga(NomeCampo:TObject; NomeField:string):boolean;
var
   texto:string;
begin
      result := true;
      with Destinatarios do begin
           if trim(FieldByName(NomeField).AsString) = '' then begin
              if NomeCampo is TuniDBEdit then begin
                 texto := Quotedstr(TuniDBEdit(NomeCampo).FieldLabel);
              end;
              if NomeCampo is TuniDBLookUpComboBox then begin
                 texto := Quotedstr(TuniDBLookUpComboBox(NomeCampo).FieldLabel);
              end;

              MessageDlg('Campo obrigatório!'+#13+#13+'É necessário informar o '+texto+'.', mtError, [mbOK]);

              if NomeCampo is TuniDBEdit then TuniDBEdit(NomeCampo).Setfocus;
              if NomeCampo is TuniDBLookUpComboBox then TuniDBLookUpComboBox(NomeCampo).Setfocus;
              result := false;
           end;
      end;
end;

procedure TfCadDestinatarios.LigaBotoes2(Estado:boolean);
begin
     bNavegaTrib.Enabled := Estado;
     bEditTrib.Enabled   := Estado;
     bExcTrib.Enabled    := Estado;
     bAddTrib.Enabled    := Estado;
     bCancTrib.Enabled   := not Estado;
     bGravTrib.Enabled   := not Estado;
     pModal.Enabled      := not Estado;
end;


end.
