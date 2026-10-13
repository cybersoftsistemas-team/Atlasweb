unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniBitBtn, Vcl.Imaging.jpeg, uniImage, uniPanel, uniEdit, uniComboBox, uniDBLookupComboBox, Vcl.Imaging.pngimage, Data.DB, uniLabel, uniDBGrid, uniMultiItem, uniDBComboBox,
  uniButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMemo, uniSweetAlert, uniHTMLFrame, System.MaskUtils;

type
  TTelaLogin = class(TUniLoginForm)
    UniContainerPanel1: TUniContainerPanel;
    pLogin: TUniContainerPanel;
    iLogoAtlas: TUniImage;
    UniHTMLFrame1: TUniHTMLFrame;
    Clientes: TFDQuery;
    UniLabel1: TUniLabel;
    cLogUser: TUniEdit;
    cLogSenha: TUniEdit;
    bEntrar: TUniBitBtn;
    procedure bEntrarClick(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function TelaLogin: TTelaLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, Main, Funcoes;

function TelaLogin: TTelaLogin;
begin
//     keybd_event(VK_F11, 0, 0, 0);
//     keybd_event(VK_F11, 0, KEYEVENTF_KEYUP, 0);
     Result := TTelaLogin(UniMainModule.GetFormInstance(TTelaLogin));
end;

procedure TTelaLogin.bEntrarClick(Sender: TObject);
var
  tTmp: TFDQuery;
  vFoto, vLogo, vEmpresaCNPJ, vEmpresaNome, vEmail: string;
  vMatricula, vIdioma: string;
begin
  bEntrar.Enabled := False;
  try
    try
    if (Trim(cLogUser.Text) = '') or (cLogSenha.Text = '') then
    begin
      ShowMessage('Informe o usuário e a senha.');
      Exit;
    end;

    Clientes.Close;
    Clientes.SQL.Text :=
      'select * from Clientes ' +
      'where Email = :pEmail ' +
      'and Senha collate Latin1_General_CS_AS = :pSenha ' +
      'and Ativa = 1 and Inadimplente = 0 ' +
      'and NULLIF(Banco, :pVazio) IS NOT NULL';
    Clientes.ParamByName('pEmail').AsString := Trim(cLogUser.Text);
    Clientes.ParamByName('pSenha').AsString := cLogSenha.Text;
    Clientes.ParamByName('pVazio').AsString := '';
    Clientes.Open;

    if Clientes.IsEmpty then
    begin
      ShowMessage('Usuário ou senha inválidos!');
      Exit;
    end;

    vEmpresaCNPJ := Clientes.FieldByName('Empresa_CNPJ').AsString;
    vEmpresaNome := Clientes.FieldByName('Empresa').AsString;
    vEmail := Clientes.FieldByName('Email').AsString;

    // ATENÇÃO: esta versão pressupõe que o banco operacional usa
    // as mesmas credenciais do banco central, conforme configuração atual.
    // Caso sejam diferentes, usar configuração segura específica por cliente.
    with UniMainModule.Conecta do
    begin
      Connected := False;
      Params.Clear;
      LoginPrompt := False;
      Params.Values['DriverID'] := 'MSSQL';
      Params.Values['Server'] := Clientes.FieldByName('Server').AsString;
      Params.Values['Database'] := Clientes.FieldByName('Banco').AsString;
      Params.Values['User_Name'] := UniMainModule.AtlasConect.Params.Values['User_Name'];
      Params.Values['Password'] := UniMainModule.AtlasConect.Params.Values['Password'];
      Connected := True;
    end;

    tTmp := TFDQuery.Create(nil);
    try
      tTmp.Connection := UniMainModule.Conecta;
      tTmp.SQL.Text :=
        'select u.Foto, e.Logo, u.Matricula, u.Idioma ' +
        'from Usuarios u ' +
        'inner join Empresas e on e.CNPJ = u.Empresa ' +
        'where u.Email = :pEmail and u.Empresa = :pEmp ' +
        'and u.Chave = :pPass';
      tTmp.ParamByName('pEmail').AsString := vEmail;
      tTmp.ParamByName('pEmp').AsString := vEmpresaCNPJ;
      tTmp.ParamByName('pPass').AsString := Clientes.FieldByName('Senha').AsString;
      tTmp.Open;

      if tTmp.IsEmpty then
      begin
        ShowMessage('Usuário não autorizado para esta empresa.');
        UniMainModule.Conecta.Connected := False;
        Exit;
      end;

      vMatricula := tTmp.FieldByName('Matricula').AsString;
      vIdioma := tTmp.FieldByName('Idioma').AsString;
      vFoto := tTmp.FieldByName('Foto').AsString;
      vLogo := tTmp.FieldByName('Logo').AsString;
    finally
      tTmp.Free;
    end;

    with MainForm do
    begin
      lUser.Caption := vEmail;
      lEmpresa.Caption :=
        FormatMaskText('##.###.###/####-##;0', vEmpresaCNPJ) +
        ' - ' + vEmpresaNome;
      if FileExists(UniMainModule.mLogoAtlas) then
        iLogoAtlas.Picture.LoadFromFile(UniMainModule.mLogoAtlas);
      if FileExists(UniMainModule.mLogoCyber) then
        iLogoCyber.Picture.LoadFromFile(UniMainModule.mLogoCyber);
      if FileExists(vFoto) then
        iFoto.Picture.LoadFromFile(vFoto);
      if FileExists(vLogo) then
        iLogoEmpresa.Picture.LoadFromFile(vLogo);
    end;

    UniMainModule.mEmpresaAtiva := vEmpresaCNPJ;
    UniMainModule.mUsuarioAtivo := vEmail;
    UniMainModule.mUsuarioMatricula := vMatricula;
    UniMainModule.mIdioma := vIdioma;
    ModalResult := mrOK;
    except
      on E: Exception do
    begin
      UniMainModule.Conecta.Connected := False;
      ShowMessage('Não foi possível concluir o login. Verifique a conexão e tente novamente.');
      // Registrar E.ClassName e E.Message em log protegido do servidor.
      end;
    end;
  finally
    bEntrar.Enabled := True;
  end;
end;

procedure TTelaLogin.UniLoginFormShow(Sender: TObject);
begin
    UniHTMLFrame1.HTML.Add(' <!DOCTYPE html> '+
                           ' <html> '+
                           ' <body> '+
                           '    <video width="'+ IntToStr(UniHTMLFrame1.Width) +'" height="'+ IntToStr(UniHTMLFrame1.Height) +'" autoplay muted loop controlsList="nodownload">'+
                           '    <source src="files/images/Earth.mp4" type="video/mp4"> '+
                           '    </video> '+
                           ' </body> '+
                           ' </html> ');

     pLogin.Left := (TelaLogin.Width - pLogin.Width) div 2;
     pLogin.Top  := (TelaLogin.Height- pLogin.Height) div 2;
     
     if FileExists(uniMainModule.mLogoAtlas) then begin
        iLogoAtlas.Picture.LoadFromFile(uniMainModule.mLogoAtlas);
     end;

     cLogUser.Text := '';
     cLogSenha.Text := '';
end;

initialization
  RegisterAppFormClass(TTelaLogin);

end.
