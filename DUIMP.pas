unit DUIMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniLabel,
  System.Net.HttpClient, System.Net.URLClient, System.JSON, uniEdit, uniPanel, IdHTTP, IdSSLOpenSSL;

type
  TfDUIMP = class(TUniForm)
    UniPanel1: TUniPanel;
    cToken: TUniEdit;
    bBuscar: TUniButton;
    UniButton1: TUniButton;
    UniLabel1: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
    function ObterTokenSiscomex: string;
    procedure bBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fDUIMP: TfDUIMP;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function fDUIMP: TfDUIMP;
begin
  Result := TfDUIMP(UniMainModule.GetFormInstance(TfDUIMP));
end;

procedure TfDUIMP.UniButton1Click(Sender: TObject);
begin
    close;
end;

procedure TfDUIMP.bBuscarClick(Sender: TObject);
begin
      cToken.text := ObterTokenSiscomex;
end;
{
function TfDUIMP.ObterTokenSiscomex: string;
var
  Http: THTTPClient;
  Resp: IHTTPResponse;
  Json: TJSONObject;
  Params: TStringStream;
begin
     Result := '';
     Http   := THTTPClient.Create;
     try
       // Corpo do POST (ajuste conforme a API do Siscomex)
       Params := TStringStream.Create(
                 'grant_type=client_credentials' +
                 '&client_id=SEU_CLIENT_ID' +
                 '&client_secret=SEU_CLIENT_SECRET',
                 TEncoding.UTF8 );
       try
          Http.CustomHeaders['Content-Type'] := 'application/x-www-form-urlencoded';
          //Resp := Http.Post('https://api.siscomex.gov.br/oauth/token',Params);
          Resp := http.post('https://val.portalunico.siscomex.gov.br/oauth/token/', Params);
          if Resp.StatusCode = 200 then begin
             Json := TJSONObject.ParseJSONValue(Resp.ContentAsString) as TJSONObject;
             try
                Result := Json.GetValue<string>('access_token');
             finally
                Json.Free;
             end;
          end else raise Exception.Create('Erro ao obter token: ' + Resp.ContentAsString);
       finally
           Params.Free;
       end;
     finally
       Http.Free;
     end;
end;
}

function TfDUIMP.ObterTokenSiscomex: string;
var
  Http: TIdHTTP;
  SSL : TIdSSLIOHandlerSocketOpenSSL;
  Params: TStringStream;
  Resp: string;
  Json: TJSONObject;
begin
  Result := '';

  Http := TIdHTTP.Create(nil);
  SSL  := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    // 🔐 SSL / TLS
    SSL.SSLOptions.Method := sslvTLSv1_2;
    SSL.SSLOptions.Mode   := sslmClient;

    // 🔐 Certificado A1 convertido
    SSL.SSLOptions.CertFile := 'C:\Certificados\portalunico.pem';
    SSL.SSLOptions.KeyFile  := 'C:\Certificados\portalunico.key';
    SSL.SSLOptions.RootCertFile := 'C:\Certificados\ca.pem';

    Http.IOHandler := SSL;

    Http.Request.ContentType := 'application/x-www-form-urlencoded';
    Http.Request.Accept := 'application/json';
    Http.Request.UserAgent := 'Delphi/DUIMP';

    Params := TStringStream.Create(
      'grant_type=client_credentials' +
      '&client_id=SEU_CLIENT_ID_REAL' +
      '&client_secret=SEU_CLIENT_SECRET_REAL',
      TEncoding.UTF8
    );
    try
      Resp := Http.Post(
        'https://val.portalunico.siscomex.gov.br/oauth/token',
        Params
      );

      Json := TJSONObject.ParseJSONValue(Resp) as TJSONObject;
      try
        Result := Json.GetValue<string>('access_token');
      finally
        Json.Free;
      end;

    finally
      Params.Free;
    end;

  finally
    Http.Free;
    SSL.Free;
  end;
end;

end.
