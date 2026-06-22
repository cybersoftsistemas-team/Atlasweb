unit ValidaCRUD;

interface

uses System.SysUtils, System.Classes, Vcl.Controls, uniGUIClasses, uniGUIApplication, uniDBEdit, uniDBComboBox, uniDBLookUpComboBox, uniDBDateTimePicker,
     uniDBCheckBox, uniDBMemo, uniDBRadioGroup, uniGuiDialogs, Dialogs, Dialogo, Vcl.Graphics;

  type
     TValidaCRUD = class
  private
     class function CampoVazio(Comp: TUniControl): Boolean; static;
     class procedure Focar(Comp: TUniControl); static;
     class function Processar(Container: TWinControl): Boolean; static;
  public
     mComp: TUniControl;
     class function ValidarFormulario(Container: TWinControl): Boolean; static;
  end;

implementation

// VERIFICA CAMPO VAZIO
class function TValidaCRUD.CampoVazio(Comp: TUniControl): Boolean;
begin
     result := true;
     if Comp is TUniDBEdit                then result := Trim(TUniDBEdit(Comp).Text) = '';
     if Comp is TUniDBComboBox            then result := TUniDBComboBox(Comp).Text = '';
     if Comp is TUniDBLookUpComboBox      then result := TUniDBComboBox(Comp).Text = '';
     if Comp is TUniDBDateTimePicker      then result := TuniDBDateTimePicker(Comp).DateTime = 0;
     if Comp is TUniDBMemo                then result := Trim(TUniDBMemo(Comp).Text) = '';
     if Comp is TUniDBCheckBox            then result := not TUniDBCheckBox(Comp).Checked;
     if Comp is TUniDBFormattedNumberEdit then result := (TUniDBFormattedNumberEdit(Comp).Text = '') or (TUniDBFormattedNumberEdit(Comp).text = '0');
     if Comp is TuniDBRadioGroup          then result := TuniDBRadioGroup(Comp).ItemIndex = -1;
end;

// FOCO NO CAMPO
class procedure TValidaCRUD.Focar(Comp: TUniControl);
begin
    Comp.SetFocus;
    //UniSession.AddJS(Comp.JSName + '.focus();');
end;

// PROCESSAMENTO RECURSIVO
class function TValidaCRUD.Processar(Container: TWinControl): Boolean;
   function Percorrer(c: TWinControl): Boolean;
   var
     i: Integer;
     Ctrl: TControl;
     Comp: TUniControl;
   begin
       Result := true;
       for i := 0 to pred(c.ControlCount) do begin
           Ctrl := c.Controls[i];
           if Ctrl is TWinControl then 
              if not Percorrer(TWinControl(Ctrl)) then Exit(false);
              if not (Ctrl is TUniControl) then Continue;

          Comp := TUniControl(Ctrl);
          if (Comp.Tag = 1) and CampoVazio(Comp) then begin
             TfDialogo.Execute(UniApplication, 'Obrigatorio', Comp.Hint);
             UniSession.AddJS('setTimeout(function(){'+Comp.JSName + '.focus();' +'}, 150);');
             Exit(False);
          end;
       end;
   end;
begin
     Result := Percorrer(Container);
end;

//ENTRY POINT
class function TValidaCRUD.ValidarFormulario(Container: TWinControl): Boolean;
begin
     Result := Processar(Container);
end;

end.

