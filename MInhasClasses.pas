unit MinhasClasses;

interface

uses Vcl.Dialogs, sysutils, FireDAC.Comp.Client, FireDAC.Stan.Param;

type
  TRegLan = class
    Empresa: string;
    Data: TDate;
    TipoDoc: string;
    Recriar: boolean;
    constructor Create;
    destructor Destroy;
end;

TLancamento = class(TRegLan)
    Numero: integer;
    ContaDebito: string;
    ContaCredito: string;
    Historico: integer;
    Complemento: string;
    Processo: string;
    Origem: string;
    Documento: string;
    DataDoc: TDate;
    Lote: integer;
    NumeroOrigem: integer;
    Valor: real;
    Obs: string;
    Destinatario: string;
    Classificacao: string;
    Validado: boolean;

    procedure Validar;
    constructor Create;
    destructor Destroy;
end;

implementation

uses MainModule;

constructor TRegLan.Create;
begin
     Self.Empresa := '';
     Self.Data    := 0;
     Self.TipODoc := '';
     Self.Recriar := true;
end;

destructor TRegLan.Destroy;
begin
     Self.Empresa := '';
     Self.Data    := 0;
     Self.TipODoc := '';
     Self.Recriar := true;
end;

{ TLancamento }
procedure TLancamento.Validar;
var
   Tmp: TFDQuery;
   mHist:string;
begin
     Validado := true;
     if Trim(Empresa) = '' then Validado := false;
     if Data          = 0  then Validado := false;
     if Numero        = 0  then Validado := false;
     if Valor         = 0  then Validado := false;
     if (Trim(ContaDebito)+trim(ContaCredito)) = '' then Validado := false;

     Tmp := TFDQuery.Create(nil);
     if (Validado) and (Historico > 0) then begin
        with Tmp do begin
             Connection := uniMainModule.Conecta;
             sql.Clear;
             sql.add('select Macro from Historicos where codigo = :pHist');
             ParamByName('pHist').asinteger := Historico;
             Open;
             if RecordCount > 0 then begin
                mHist := FieldByName('Macro').AsString;
                mHist := StringReplace(mHist, '<{PROCESSO}>'         , Destinatario      , [rfReplaceAll, rfIgnoreCase]);
                mHist := StringReplace(mHist, '<{BENEFICIARIO}>'     , Destinatario      , [rfReplaceAll, rfIgnoreCase]);
                mHist := StringReplace(mHist, '<{TIPO DE DOCUMENTO}>', TipoDoc           , [rfReplaceAll, rfIgnoreCase]);
                mHist := StringReplace(mHist, '<{Nº DOCUMENTO}>'     , Documento         , [rfReplaceAll, rfIgnoreCase]);
                mHist := StringReplace(mHist, '<{DATA DOCUMENTO}>'   , DatetoStr(DataDoc), [rfReplaceAll, rfIgnoreCase]);
                mHist := StringReplace(mHist, '<{OBSERVAÇÃO}>'       , Obs               , [rfReplaceAll, rfIgnoreCase]);
                mHist := StringReplace(mHist, '<{CLASSIFICAÇÃO}>'    , Classificacao     , [rfReplaceAll, rfIgnoreCase]);
                Complemento := trim(mHist);
             end;
        end;
     end;

     Tmp.Free;
end;

constructor TLancamento.Create;
begin
    Numero       := 0;
    ContaDebito  := '';
    ContaCredito := '';
    Historico    := 0;
    Complemento  := '';
    Processo     := '';
    Origem       := '';
    Documento    := '';
    DataDoc      := 0;
    Lote         := 0;
    NumeroOrigem := 0;
    Valor        := 0;
    Obs          := '';
    Destinatario := '';
    Classificacao:= '';
    Validado     := false;
end;

destructor TLancamento.Destroy;
begin
    Numero       := 0;
    ContaDebito  := '';
    ContaCredito := '';
    Historico    := 0;
    Complemento  := '';
    Processo     := '';
    Origem       := '';
    Documento    := '';
    DataDoc      := 0;
    Lote         := 0;
    NumeroOrigem := 0;
    Valor        := 0;
    Obs          := '';
    Destinatario := '';
    Classificacao:= '';
    Validado     := false;
end;



end.

