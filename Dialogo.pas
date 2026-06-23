unit Dialogo;

interface

uses System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Imaging.pngimage, uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel, uniButton, uniImage;

type
   TDialogResultProc = reference to procedure(AResult: Integer);
   TfDialogo = class(TUniForm)
     Icone: TUniImage;
     lTipo: TUniLabel;
     lmsg: TUniLabel;
     bOK: TUniButton;
 
     procedure bOKClick(Sender: TObject);
  public
    class procedure Execute(AOwner: TComponent;const ATipo,AMensagem: string;ACallback: TDialogResultProc = nil);
  end;

implementation

{$R *.dfm}

uses ServerModule;

procedure TfDialogo.bOKClick(Sender: TObject);
begin
    ModalResult := mrOk;
end;

class procedure TfDialogo.Execute(AOwner: TComponent;const ATipo,AMensagem: string;ACallback: TDialogResultProc);
var
  Frm: TfDialogo;
  lArquivo: string;
begin
     Frm               := TfDialogo.Create(AOwner);
     Frm.lTipo.Caption := ATipo + '!';
     Frm.lmsg.Caption  := AMensagem;
     lArquivo          := UniServerModule.FilesFolder +'images\icones\' +aTipo +'.png';

     if FileExists(lArquivo) then Frm.Icone.Picture.LoadFromFile(LArquivo);
     
     Frm.ShowModal(procedure(Sender: TComponent; AResult: Integer)
                   begin
                       if Assigned(ACallback) then ACallback(AResult);
                   end);                   
end;



end.
