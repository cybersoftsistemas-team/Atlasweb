unit Dialogo;

interface

uses System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Imaging.pngimage, uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel, uniButton, uniImage, uniMemo;

type
   TDialogResultProc = reference to procedure(AResult: Integer);
   TfDialogo = class(TUniForm)
     Icone: TUniImage;
     lTipo: TUniLabel;
     bOK: TUniButton;
    lmsg: TUniMemo;
 
     procedure bOKClick(Sender: TObject);
  public
    class procedure Execute(AOwner: TComponent;const aIcone, aTitulo, aMensagem: string;ACallback: TDialogResultProc = nil);
  end;

implementation

{$R *.dfm}

uses ServerModule;

procedure TfDialogo.bOKClick(Sender: TObject);
begin
    ModalResult := mrOk;
end;

class procedure TfDialogo.Execute(AOwner: TComponent;const aIcone, aTitulo, aMensagem: string;ACallback: TDialogResultProc);
var
  Frm: TfDialogo;
  lArquivo: string;
begin
     Frm               := TfDialogo.Create(AOwner);
     Frm.lTipo.Caption := aTitulo;
     lArquivo          := UniServerModule.FilesFolder +'images\icones\' +aIcone +'.png';
     frm.lmsg.clear;
     Frm.lmsg.Lines.add(aMensagem);

     if FileExists(lArquivo) then Frm.Icone.Picture.LoadFromFile(lArquivo);
     
     Frm.ShowModal(procedure(Sender: TComponent; AResult: Integer)
                   begin
                       if Assigned(ACallback) then begin 
                          ACallback(AResult);
                          frm.free;
                       end;
                   end);
end;



end.
