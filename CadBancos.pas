unit CadBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDBDateTimePicker, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, uniDBRadioGroup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniRadioGroup,
  uniCheckBox, uniDateTimePicker, uniMultiItem, uniComboBox, uniDBComboBox, uniBitBtn, uniBasicGrid, uniSweetAlert;

type
  TfCadBancos = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Grade: TUniDBGrid;
    uniTabSheet1: TuniTabSheet;
    uniTabSheet2: TuniTabSheet;
    UniScrollBox1: TUniScrollBox;
    UniScrollBox2: TUniScrollBox;
    pFicha1: TUniPanel;
    pFicha2: TUniPanel;
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
    dsBancos: TDataSource;
    cCodigo: TUniDBNumberEdit;
    cNome: TUniDBEdit;
    cConta: TUniDBEdit;
    cAgencia: TUniDBEdit;
    cSaldo: TUniDBFormattedNumberEdit;
    cNumero_Banco: TUniDBNumberEdit;
    cCheque: TUniDBNumberEdit;
    cCodigo_Destinatario: TUniDBLookupComboBox;
    cData_Fechamento: TUniDBDateTimePicker;
    cCarteira: TUniDBEdit;
    cCodigo_Cedente: TUniDBEdit;
    cDesativado: TUniDBCheckBox;
    cNome_Boleto: TUniDBEdit;
    cConvenio: TUniDBEdit;
    cBoleto_LocalPagamento: TUniDBEdit;
    cBoletos_Remessa: TUniDBNumberEdit;
    cNome_Remessa: TUniDBEdit;
    cCarteira_Remessa: TUniDBEdit;
    cCodigo_Transmissao: TUniDBEdit;
    cSwift_Code: TUniDBEdit;
    cIBAN: TUniDBEdit;
    cContaContabil: TUniDBLookupComboBox;
    cTipoConta: TUniDBRadioGroup;
    Destinatarios: TFDQuery;
    Bancos: TFDQuery;
    Plano: TFDQuery;
    Config: TFDQuery;
    dsConfig: TDataSource;
    cDigito_cc: TUniDBEdit;
    cDigito_ag: TUniDBEdit;
    BancosCodigo: TSmallintField;
    BancosNome: TStringField;
    BancosDesativado: TBooleanField;
    BancosConta: TLargeintField;
    BancosDigito_cc: TStringField;
    BancosAgencia: TIntegerField;
    BancosDigito_Ag: TStringField;
    BancosSaldo: TCurrencyField;
    BancosNumero_Banco: TSmallintField;
    BancosCheque: TIntegerField;
    BancosCodigo_Destinatario: TIntegerField;
    BancosData_Fechamento: TSQLTimeStampField;
    BancosCarteira: TStringField;
    BancosCodigo_Cedente: TStringField;
    BancosTipo_Conta: TStringField;
    BancosNome_Boleto: TStringField;
    BancosConvenio: TStringField;
    BancosBoleto_LocalPgto: TStringField;
    BancosUltima_Remessa: TIntegerField;
    BancosNome_Remessa: TStringField;
    BancosCarteira_Remessa: TStringField;
    BancosCodigo_Transmissao: TStringField;
    BancosSwift_Code: TStringField;
    BancosIBAN: TStringField;
    BancosConta_Contabil: TIntegerField;
    BancosBoleto_CNPJ: TStringField;
    BancosEmpresa: TStringField;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
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
    procedure BancosBeforePost(DataSet: TDataSet);
    procedure BancosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadBancos.bAdicionarClick(Sender: TObject);
begin
      with Bancos do begin
           try
               LigaBotoes(false, true);
               Append;
               FieldByName('Desativado').Value := false;
               FieldByName('Tipo_Conta').Value := 'CORRENTE';
               FieldByName('Saldo').Value      := 0;
               cConta.Enabled := true;
               cCodigo.setfocus;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfCadBancos.BancosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadBancos.BancosBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadBancos.bCancelarClick(Sender: TObject);
begin
      Bancos.Cancel;
      LigaBotoes(true, true);
end;

procedure TfCadBancos.bEditarClick(Sender: TObject);
begin
      try
          LigaBotoes(false, true);
          Bancos.Edit;
          cCodigo.setfocus;
      except
          MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
      end;
end;

procedure TfCadBancos.bExcluirClick(Sender: TObject);
var
  tTemp:TFDQuery;
begin
     tTemp            := TFDQuery.Create(nil);
     tTemp.Connection := uniMainModule.Conecta;
     with Bancos do begin
          // Verifica se o banco tem movimento financeiro.
          tTemp.sql.Clear;
          tTemp.sql.Add('select (select count(*) from PagarReceber where(banco = :pbanco))+(select count(*) from pagarreceberbaixas where(banco = :pbanco)) as movimento');
          tTemp.ParamByName('pBanco').AsInteger := FieldByName('Codigo').AsInteger;
          tTemp.open;
          if tTemp.FieldByName('Movimento').AsInteger > 0 then begin
             MessageDlg('Este Banco não pode ser excluído, pois possui movimentação financeira.', mtInformation, [mbOK]);
             Bancos.Cancel;
             Abort;
          end;

          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+'Banco :'+FieldByName('Nome').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
     tTemp.Free;
end;

procedure TfCadBancos.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadBancos.bSalvarClick(Sender: TObject);
var
   mConta:integer;
begin
      with Bancos do begin
           if Trim(FieldByName('Nome').AsString) = '' then begin
              MessageDlg('O campo "Nome" não pode ficar em branco!', mtError, [mbOK]);
              cNome.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Conta').AsString) = '' then begin
              MessageDlg('O campo "Conta Corrente" não pode ficar em branco!', mtError, [mbOK]);
              cConta.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Digito_cc').AsString) = '' then begin
              MessageDlg('O campo "Dígito da Conta Corrente" não pode ficar em branco!', mtError, [mbOK]);
              cDigito_cc.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Agencia').AsString) = '' then begin
              MessageDlg('O campo "Agência" não pode ficar em branco!', mtError, [mbOK]);
              cAgencia.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Digito_Ag').AsString) = '' then begin
              MessageDlg('O campo "Dígito da Agência" não pode ficar em branco!', mtError, [mbOK]);
              cDigito_Ag.SetFocus;
              Abort;
           end;
           if (State = dsInsert) and (Existe(Bancos, 'Conta', FieldByName('Conta').AsString)) then begin
              MessageDlg('Já existe uma "Conta" cadastrado com esse número!'+#13+#13, mtError, [mbOK]);
              cConta.SetFocus;
              Abort;
           end;

           // Salva o registro.
           try
               // Gera o código novo em caso de inclusão.
               if State = dsInsert then begin
                  FieldByName('Codigo').Value := GeraCodigo('Bancos', 'Codigo');
                  Post;
               end;

               // Cria a conta do banco no plano de contas se estiver parametrizado o grupo dos bancos.
               mConta := CriaConta( fieldByName('Nome').AsString     // Nome.
                                   ,'Bancos'                         // Origem.
                                   ,fieldByName('Codigo').AsString   // Código da origem.
                                   ,'N'                              // Nacional ou Estrangeiro.
                                   ,'D'                              // Natureza da conta.
                                   ,''                               // CNPJ/CPF do cliente.
                                   ,'J'                              // Pessoa Fisica/Juridica.
                                   ,false );                         // Consignacao - somente para o cadastro de destinatarios.

               if mConta > 0 then begin
                  edit;
                      FieldByName('Conta').Value := mConta;
                  post;
               end;

               LigaBotoes(true, true);

               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;

               Refresh;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
               Abort;
           end;
      end;
end;

procedure TfCadBancos.LigaBotoes(Estado, Edita:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bSalvar.Enabled    := not Estado;
     pFicha1.Enabled    := not Estado;
     pFicha2.Enabled    := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfCadBancos.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as fichas de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).color := clNone;
          end;
      end;

      LigaBotoes(true, true);
      Pasta.ActivePageIndex := 0;
      with Bancos do begin
           sql.clear;
           sql.add('select * from Bancos order by Nome');
           open;
      end;
      with Destinatarios do begin
           sql.clear;
           sql.add('select Codigo, Nome from Destinatarios');
           open;
      end;
      with Empresas do begin
           sql.clear;
           sql.add('select CNPJ, Razao_Social from Empresas order by Razao_Social');
           open;
      end;
      with Config do begin 
           sql.Clear;
           sql.Add('select * from Config where Empresa = :pEmpresa');
           ParamByName('pEmpresa').AsString := UniMainModule.mEmpresaAtiva;
           Open;
      end;
      with Plano do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome_Contabil');
           sql.add('      ,Conta');
           sql.add('from  PlanoContas');
           sql.Add('where Conta like :pGrupo');
           sql.Add('and   Sintetica <> 1');
           ParamByName('pGrupo').AsString := Config.FieldByName('Contab_GrupoBanco').AsString+'%';
           open;
      end;
end;

procedure TfCadBancos.UniFrameDestroy(Sender: TObject);
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

procedure TfCadBancos.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadBancos.bPesquisaClick(Sender: TObject);
begin
     Bancos.Cancel;
     LigaBotoes(false, false);
     Pesquisa(Bancos, 'Bancos', 'Codigo', 'Nome',cPesquisa.text);
end;


end.
