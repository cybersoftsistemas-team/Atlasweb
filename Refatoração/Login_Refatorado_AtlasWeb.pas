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
  vFoto, vLogo: string;
begin
     if (Trim(cLogUser.Text) = '') or (cLogSenha.Text = '') then begin
        ShowMessage('Informe o usuário e a senha!');
        Exit;
     end;

     bEntrar.Enabled := False;
     try
       try
        // Validando o login do usuário.
        with Clientes do begin
             Close;
             SQL.Clear;
             SQL.Add('select *');
             SQL.Add('from Clientes');
             SQL.Add('where Email = :pEmail');
             SQL.Add('and Senha collate Latin1_General_CS_AS = :pSenha');
             SQL.Add('and Ativa = 1');
             SQL.Add('and Inadimplente = 0');
             SQL.Add('and isnull(Banco, '''') <> '''' ');
             ParamByName('pEmail').AsString := Trim(cLogUser.Text);
             ParamByName('pSenha').AsString := cLogSenha.Text;
             //SQL.SaveToFile('c:\temp\Clientes_WEB.sql');
             Open;

             if IsEmpty then begin
                ShowMessage('Usuário ou senha inválidos!');
                Exit;
             end;

             with UniMainModule do begin
                  with Conecta do begin
                       Connected := False;
                       Params.Clear;
                       Params.Values['DriverID']  := 'MSSQL';
                       Params.Values['Server']    := Clientes.FieldByName('Server').AsString;
                       Params.Values['Database']  := Clientes.FieldByName('Banco').AsString;
                       Params.Values['User_Name'] := 'sa';
                       Params.Values['Password']  := 'cybersoft@123';
                       Connected := True;
                  end;

                  // Pegando a foto do usuario no cadastro de usuarios.
                  tTmp := TFDQuery.Create(nil);
                  try
                     with tTmp do begin
                          Connection := Conecta;
                          SQL.Clear;
                          SQL.Add('select u.Foto');
                          SQL.Add('      ,e.Logo');
                          SQL.Add('      ,u.Matricula');
                          SQL.Add('      ,u.Idioma');
                          SQL.Add('from Usuarios u');
                          SQL.Add('inner join Empresas e on e.CNPJ = u.Empresa');
                          SQL.Add('where u.Email = :pEmail');
                          SQL.Add('and u.Empresa = :pEmp');
                          SQL.Add('and u.Chave = :pPass');
                          ParamByName('pEmail').AsString := Clientes.FieldByName('Email').AsString;
                          ParamByName('pEmp').AsString   := Clientes.FieldByName('Empresa_CNPJ').AsString;
                          ParamByName('pPass').AsString  := Clientes.FieldByName('Senha').AsString;
                          //SQL.SaveToFile('c:\temp\Usuarios_temp.sql');
                          Open;

                          if IsEmpty then begin
                             ShowMessage('Usuário não autorizado para esta empresa!');
                             Conecta.Connected := False;
                             Exit;
                          end;

                          vFoto := FieldByName('Foto').AsString;
                          vLogo := FieldByName('Logo').AsString;
                          mUsuarioMatricula := FieldByName('Matricula').AsString;
                          mIdioma           := FieldByName('Idioma').AsString;
                     end;
                  finally
                     tTmp.Free;
                  end;

                  mEmpresaAtiva := Clientes.FieldByName('Empresa_CNPJ').AsString;
                  mUsuarioAtivo := Trim(cLogUser.Text);
             end;

             with MainForm do begin
                  lUser.Caption    := cLogUser.Text;
                  lEmpresa.Caption := FormatMaskText('##.###.###/####-##;0', Clientes.FieldByName('Empresa_CNPJ').AsString) + ' - ' + Clientes.FieldByName('Empresa').AsString;
                  if FileExists(UniMainModule.mLogoAtlas) then begin
                     iLogoAtlas.Picture.LoadFromFile(UniMainModule.mLogoAtlas);
                  end;
                  if FileExists(UniMainModule.mLogoCyber) then begin
                     iLogoCyber.Picture.LoadFromFile(UniMainModule.mLogoCyber);
                  end;
                  if FileExists(vFoto) then begin
                     iFoto.Picture.LoadFromFile(vFoto);
                  end;
                  if FileExists(vLogo) then begin
                     iLogoEmpresa.Picture.LoadFromFile(vLogo);
                  end;
             end;

             ModalResult := mrOK;
        end;
       except
        on E: Exception do begin
           UniMainModule.Conecta.Connected := False;
           ShowMessage('Não foi possível concluir o login. Verifique a conexão ou contate o suporte.');
           // Durante o desenvolvimento, registrar E.Message em log protegido.
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

     //-----------------------------[ REMOVER APÓS TESTES ]--------------------------------\\
     cLogUser.text  := '';
     cLogSenha.Text := '';
     if (NomeComputador = 'PROGRAMACAO1') or (NomeComputador = 'NOTE-DED') or (NomeComputador = 'OMINIHOST') then begin
        cLogUser.text  := 'administrador@cybersoftsistemas.com.br';
        cLogSenha.Text := 'Cybersoft@123';
     end;
end;

initialization
  RegisterAppFormClass(TTelaLogin);

end.
