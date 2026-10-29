unit Tradutor;

interface

uses
  System.SysUtils,
  System.Classes,
  System.TypInfo,
  System.Generics.Collections,
  System.Diagnostics,
  uniGUIClasses,
  uniGUIBaseClasses,
  uniGUIApplication,
  dialogs,
  FireDAC.Comp.Client;

type
  TTradutor = class
  private
    class procedure PercorrerComponente(AComponente: TComponent; AForm: TComponent; const ATraducoes: TDictionary<string, string>);
    class procedure AplicarTraducao(AForm: TComponent; AComponente: TComponent; const APropriedade: string; const ATraducoes: TDictionary<string, string>);
  public
    class procedure TraduzirFormulario(AForm: TComponent; const AIdioma: string);
    class function TraduzirTexto(const ATexto, AIdioma: string): string;
  end;

implementation

uses MainModule;

class procedure TTradutor.TraduzirFormulario(aForm: TComponent; const aIdioma: string);
var
  Q: TFDQuery;
  Traducoes: TDictionary<string, string>;
  Chave: string;
  SW: TStopwatch;
  TotalRegistros: Integer;
begin
     SW := TStopwatch.StartNew;
     if not Assigned(aForm) then Exit;
     if Trim(aForm.Name) = '' then Exit;
     if Trim(aIdioma) = '' then Exit;

     TotalRegistros := 0;
     Traducoes      := TDictionary<string, string>.Create;
     try
          Q := TFDQuery.Create(nil);
          try
               Q.Connection := UniMainModule.Conecta;
               Q.SQL.Clear;
               Q.SQL.Add('select Chave, Propriedade, Traducao');
               Q.SQL.Add('from Traducoes');
               Q.SQL.Add('where Idioma = :pIdioma');
               Q.SQL.Add('and (Chave = :pForm or Chave like :pPrefixo)');
               Q.SQL.Add('and Traducao is not null');
               Q.SQL.Add('and Traducao <> ''''');
               Q.ParamByName('pIdioma').AsString  := AIdioma;
               Q.ParamByName('pForm').AsString    := AForm.Name;
               Q.ParamByName('pPrefixo').AsString := AForm.Name + '.%';
               UniSession.Log('TRADUTOR - ANTES OPEN: ' + AForm.Name);
               SW.Reset;
               SW.Start;
               Q.Open;
               UniSession.Log('TRADUTOR - OPEN: ' + IntToStr(SW.ElapsedMilliseconds) + ' ms');
               SW.Reset;
               SW.Start;
               while not Q.Eof do begin
                     Chave := UpperCase(Q.FieldByName('Chave').AsString) + #1 +
                              UpperCase(Q.FieldByName('Propriedade').AsString);
                     if not Traducoes.ContainsKey(Chave) then
                        Traducoes.Add(Chave, Q.FieldByName('Traducao').AsString);
                     Inc(TotalRegistros);
                     Q.Next;
               end;
               UniSession.Log('TRADUTOR - CARREGAR: ' + IntToStr(SW.ElapsedMilliseconds) + ' ms / ' + IntToStr(TotalRegistros) + ' registros');
          finally
               Q.Free;
          end;

          SW.Reset;
          SW.Start;
          PercorrerComponente(AForm, AForm, Traducoes);
          UniSession.Log('TRADUTOR - APLICAR: ' + IntToStr(SW.ElapsedMilliseconds) + ' ms');
     finally
          Traducoes.Free;
     end;
end;

class procedure TTradutor.PercorrerComponente(AComponente: TComponent; AForm: TComponent; const ATraducoes: TDictionary<string, string>);
var
  I: Integer;
begin
     if not Assigned(AComponente) then Exit;
     if IsPublishedProp(AComponente, 'Caption')    then AplicarTraducao(AForm, AComponente, 'Caption', ATraducoes);
     if IsPublishedProp(AComponente, 'FieldLabel') then AplicarTraducao(AForm, AComponente, 'FieldLabel', ATraducoes);
     for I := 0 to AComponente.ComponentCount - 1 do PercorrerComponente(AComponente.Components[I], AForm, ATraducoes);
end;

class procedure TTradutor.AplicarTraducao(AForm: TComponent; AComponente: TComponent; const APropriedade: string; const ATraducoes: TDictionary<string, string>);
var
  Chave: string;
  Traducao: string;
  ComponenteAtual: TComponent;
begin
     if not Assigned(AComponente) then
        Exit;
     if Trim(AComponente.Name) = '' then
        Exit;

     Chave           := '';
     ComponenteAtual := AComponente;
     while Assigned(ComponenteAtual) do begin
           if Trim(ComponenteAtual.Name) <> '' then begin
              if Chave = '' then
                 Chave := ComponenteAtual.Name
              else
                 Chave := ComponenteAtual.Name + '.' + Chave;
           end;
           if ComponenteAtual = AForm then Break;
           ComponenteAtual := ComponenteAtual.Owner;
     end;

     if Chave = '' then Exit;
     Chave := UpperCase(Chave) + #1 + UpperCase(APropriedade);
     if ATraducoes.TryGetValue(Chave, Traducao) then
        SetStrProp(AComponente, APropriedade, Traducao);
end;

class function TTradutor.TraduzirTexto(const ATexto, AIdioma: string): string;
var
   Q: TFDQuery;
begin
     Result := ATexto;

     if Trim(ATexto) = '' then Exit;
     if Trim(AIdioma) = '' then Exit;

     Q := TFDQuery.Create(nil);
     try
        Q.Connection := UniMainModule.Conecta;
        Q.SQL.Clear;
        Q.SQL.Add('select top 1 Traducao');
        Q.SQL.Add('from Traducoes');
        Q.SQL.Add('where TextoOriginal = :pTextoOriginal');
        Q.SQL.Add('and Idioma = :pIdioma');
        Q.SQL.Add('and Traducao is not null');
        Q.SQL.Add('and Traducao <> ''''');
        Q.ParamByName('pTextoOriginal').AsString := ATexto;
        Q.ParamByName('pIdioma').AsString        := AIdioma;
        Q.Open;
        if not Q.IsEmpty then Result := Q.FieldByName('Traducao').AsString;
     finally
       Q.Free;
     end;
end;

end.
