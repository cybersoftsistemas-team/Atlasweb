unit Tradutor;

interface

uses
  System.SysUtils,
  System.Classes,
  System.TypInfo,
  uniGUIClasses,
  uniGUIBaseClasses,
  dialogs,
  FireDAC.Comp.Client;

type
  TTradutor = class
  private
    class procedure PercorrerComponente(AComponente: TComponent; AForm: TComponent; const AIdioma: string);
    class procedure AplicarTraducao(AForm: TComponent; AComponente: TComponent; const APropriedade, AIdioma: string);
  public
    class procedure TraduzirFormulario(AForm: TComponent; const AIdioma: string);
  end;

implementation

uses MainModule;

class procedure TTradutor.TraduzirFormulario(AForm: TComponent; const AIdioma: string);
begin
     if not Assigned(AForm) then Exit;
     PercorrerComponente(AForm, AForm, AIdioma);
end;

class procedure TTradutor.PercorrerComponente(AComponente: TComponent; AForm: TComponent; const AIdioma: string);
var
  I: Integer;
begin
     if not Assigned(AComponente) then Exit;
     if IsPublishedProp(AComponente, 'Caption')    then AplicarTraducao(AForm, AComponente, 'Caption', AIdioma);
     if IsPublishedProp(AComponente, 'FieldLabel') then AplicarTraducao(AForm, AComponente, 'FieldLabel', AIdioma);
     for I := 0 to AComponente.ComponentCount - 1 do PercorrerComponente(AComponente.Components[I], AForm, AIdioma);
end;

class procedure TTradutor.AplicarTraducao(AForm: TComponent; AComponente: TComponent; const APropriedade, AIdioma: string);
var
  Q: TFDQuery;
  Chave: string;
  Traducao: string;
  ComponenteAtual: TComponent;
begin
     if not Assigned(AComponente) then Exit;
     if Trim(AComponente.Name) = '' then Exit;

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
     Q := TFDQuery.Create(nil);
     try
          Q.Connection := UniMainModule.Conecta;
          Q.SQL.Clear;
          Q.SQL.Add('select Traducao');
          Q.SQL.Add('from Traducoes');
          Q.SQL.Add('where Chave = :pChave');
          Q.SQL.Add('and Idioma = :pIdioma');
          Q.SQL.Add('and Propriedade = :pPropriedade');
          Q.SQL.Add('and Traducao is not null');
          Q.SQL.Add('and Traducao <> ''''');
          Q.ParamByName('pChave').AsString := Chave;
          Q.ParamByName('pIdioma').AsString := AIdioma;
          Q.ParamByName('pPropriedade').AsString := APropriedade;
          Q.Open;
          if not Q.IsEmpty then begin
             Traducao := Q.FieldByName('Traducao').AsString;
             SetStrProp(AComponente, APropriedade, Traducao);
          end;
     finally
          Q.Free;
     end;
end;



end.
