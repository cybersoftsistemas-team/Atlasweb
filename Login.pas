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
    UniImage1: TUniImage;
    cLogSenha: TUniEdit;
    bEntrar: TUniBitBtn;
    bCancelar: TUniBitBtn;
    cLogUser: TUniEdit;
    UniImage2: TUniImage;
    UniHTMLFrame1: TUniHTMLFrame;
    Clientes: TFDQuery;
    dsClientes: TDataSource;
    procedure bEntrarClick(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
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
     Result := TTelaLogin(UniMainModule.GetFormInstance(TTelaLogin));
end;

procedure TTelaLogin.bEntrarClick(Sender: TObject);
begin
     // Validando o login do usuário.
     with Clientes do begin
          sql.clear;
          sql.Add('select *');
          sql.Add('from  Clientes');
          sql.Add('where Email = :pEmail');
          sql.Add('and   Senha collate Latin1_General_CS_AS = :pSenha');
          sql.Add('and   Ativa = 1');
          sql.Add('and   Inadimplente = 0');
          sql.Add('and   isnull(Banco, '''') <> '''' ');
          parambyname('pEmail').AsString := cLogUser.text;
          parambyname('pSenha').AsString := cLogSenha.text;
          //sql.savetofile('c:\temp\Clientes_WEB.sql');
          open;

          if recordcount = 0 then begin
             showmessage('Usuário ou senha inválidos!');
             Abort;
          end else begin
             with uniMainModule do begin
                  with Conecta do begin
                       Connected := false;
                       Params.Clear;
                       Params.Values['DriverID']  := 'MSSQL';
                       Params.Values['Server']    := fieldbyname('Server').asstring;
                       Params.Values['Database']  := fieldbyname('Banco').asstring;
                       Params.Values['User_Name'] := 'sa';
                       Params.Values['Password']  := 'cybersoft@123';
                       Connected := true;
                  end;
                  mEmpresaAtiva := FieldByName('Empresa_CNPJ').AsString;
                  mUsuarioAtivo := cLogUser.text;
             end;

             ModalResult := mrOK;

             with MainForm do begin
                  lUser.Caption    := TelaLogin.cLogUser.Text;
                  lEmpresa.Caption := FormatMaskText('##.###.###/####-##;0', fieldByName('Empresa_CNPJ').asstring) + ' - '+fieldByName('Empresa').asstring;
                  if FileExists(FieldByName('Logo').AsString) then begin
                     iLogo.Picture.LoadFromFile(FieldByName('Logo').AsString);
                  end;
                  if FileExists(FieldByName('Foto').AsString) then begin
                     iFoto.Picture.LoadFromFile(FieldByName('Foto').AsString);
                  end;
             end;
          end;
     end;
end;

procedure TTelaLogin.bCancelarClick(Sender: TObject);
begin
     // Se o login é validado entra no sistema.
     ModalResult := mrCancel;
     Application.Terminate;
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

     //-----------------------------[ REMOVER APÓS TESTES ]--------------------------------\\
     cLogUser.text  := '';
     cLogSenha.Text := '';
     if (NomeComputador = 'PROGRAMACAO') or (NomeComputador = 'NOTE-DED') then begin
        cLogUser.text  := 'eder@cybersoftsistemas.com.br';
        cLogSenha.Text := 'Cybersoft@123';
     end;
end;

initialization
  RegisterAppFormClass(TTelaLogin);

end.
