unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUITypes, ShellApi, Dialogs, uniSweetAlert;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

  function UniServerModule: TUniServerModule;
  procedure ExploreWeb(page:pChar);

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
     ExploreWeb('http://localhost:8077');
end;

procedure ExploreWeb(page: PChar);
var
   returnValue: integer;
begin
     ReturnValue := ShellExecute(0, 'Open', page, nil, nil, 1);
     if ReturnValue <= 32 then begin
        case ReturnValue of
             0: Showmessage('Sem memória');
             2: Showmessage('Arquivo não encontrado');
             3: Showmessage('Diretório não encontrado');
            11: Showmessage('Arquivo corrompido ou inválido');
        else
            Showmessage(PChar('Erro nº '+inttostr(ReturnValue)+'Na execução do aplicativo'));
        end;
     end;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);


end.
