unit SiscomexServico;

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  System.Net.HttpClient, System.Net.URLClient;

type
  TCEInfo = record
    Numero: string;
    Tipo: string;
    Situacao: string;
  end;

  TArrayCE = TArray<TCEInfo>;

  TSiscomexService = class
  private
    FClient: TNetHTTPClient;
    FToken: string;
    FCertPath: string;
    FCertPassword: string;

    function DoPost(const URL, Body: string): string;
  public
    constructor Create(const ACertPath, ACertPassword, AToken: string);
    destructor Destroy; override;
    function ConsultarCEPorBL(const BL, Porto, DataInicio, DataFim: string): TArrayCE;
  end;

implementation

{ TSiscomexService }

constructor TSiscomexService.Create(const ACertPath, ACertPassword, AToken: string);
begin
  FCertPath     := ACertPath;
  FCertPassword := ACertPassword;
  FToken        := AToken;
  FClient       := TNetHTTPClient.Create(nil);

  //Certificado
  FClient.ClientCertificate := TCertificate.Create;
  FClient.ClientCertificate.LoadFromFile(FCertPath, FCertPassword);

  // Headers padrão
  FClient.ContentType := 'application/json';
  FClient.CustomHeaders['Authorization'] := 'Bearer ' + FToken;
end;

destructor TSiscomexService.Destroy;
begin
  FClient.Free;
  inherited;
end;

function TSiscomexService.DoPost(const URL, Body: string): string;
var
  Response: IHTTPResponse;
begin
  Response := FClient.Post(URL, TStringStream.Create(Body, TEncoding.UTF8));
  if Response.StatusCode <> 200 then
  raise Exception.CreateFmt('Erro HTTP %d: %s',[Response.StatusCode, Response.ContentAsString]);
  Result := Response.ContentAsString;
end;

function TSiscomexService.ConsultarCEPorBL(const BL, Porto, DataInicio, DataFim: string): TArrayCE;
var
  URL, Body: string;
  Json, Item: TJSONObject;
  Arr: TJSONArray;
  i: Integer;
begin
  URL  := 'https://api.siscomex.gov.br/carga/consultar'; // trocar pelo real
  Body :=
    '{' +
    '"numeroBL":"' + BL + '",' +
    '"porto":"' + Porto + '",' +
    '"dataInicio":"' + DataInicio + '",' +
    '"dataFim":"' + DataFim + '"' +
    '}';

  Json := TJSONObject.ParseJSONValue(DoPost(URL, Body)) as TJSONObject;
  try
    Arr := Json.GetValue<TJSONArray>('resultados');
    SetLength(Result, Arr.Count);
    for I := 0 to Arr.Count - 1 do begin
        Item := Arr.Items[I] as TJSONObject;

        Result[I].Numero   := Item.GetValue<string>('ceMercante');
        Result[I].Tipo     := Item.GetValue<string>('tipo');
        Result[I].Situacao := Item.GetValue<string>('situacao');
    end;
  finally
    Json.Free;
  end;
end;

end.
