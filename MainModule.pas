unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, uniGUIBaseClasses, uniGUIClasses, uniImageList, FireDAC.Comp.DataSet,
  FireDAC.Phys.Intf, FireDAC.Phys.MSSQLDef, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, iniFiles, Dialogs;

type
  TUniMainModule = class(TUniGUIMainModule)
    imgBotoes: TUniNativeImageList;
    AtlasConect: TFDConnection;
    dsTipoCombustivel: TDataSource;
    dsTipoVeiculo: TDataSource;
    dsEspecieVeiculo: TDataSource;
    dsCondicaoVeiculo: TDataSource;
    TipoCombustivel: TFDQuery;
    TipoVeiculo: TFDQuery;
    EspecieVeiculo: TFDQuery;
    CondicaoVeiculo: TFDQuery;
    Conecta: TFDConnection;
    Log: TFDQuery;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure UniGUIMainModuleDestroy(Sender: TObject);    
  public
    { Public declarations }
    mEmpresaAtiva
   ,mUsuarioAtivo
   ,mIdioma
   ,mMatricula
   ,mPath
   ,mLogoCyber
   ,mLogoAtlas: string;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, Main, Funcoes;

function UniMainModule: TUniMainModule;
begin
     Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
   i:integer;
   aINI:Tinifile;
begin
      // Carregando os dados de conexão do banco de dados "AtlasWeb.ini".
      mPath      := GetDLLPath;
      aINI       := Tinifile.Create(mPath+'\AtlasWeb.ini');
      mLogoCyber := aINI.ReadString('SERVIDOR', 'LogoCyber', EmptyStr);
      mLogoAtlas := aINI.ReadString('SERVIDOR', 'LogoAtlas', EmptyStr);
      with AtlasConect do begin
           Connected := false;
           Params.Clear;
           Params.Values['DriverID']     := aINI.ReadString('SERVIDOR', 'DriverID'  , EmptyStr);
           Params.Values['DriverName']   := aINI.ReadString('SERVIDOR', 'DriverName', EmptyStr);
           Params.Values['Port']         := aINI.ReadString('SERVIDOR', 'port'      , EmptyStr);
           Params.Values['Server']       := aINI.ReadString('SERVIDOR', 'Server'    , EmptyStr);
           Params.Values['Database']     := aINI.ReadString('SERVIDOR', 'DataBase'  , EmptyStr);
           Params.Values['User_name']    := aINI.ReadString('SERVIDOR', 'UserName'  , EmptyStr);
           Params.Values['Password']     := aINI.ReadString('SERVIDOR', 'Password'  , EmptyStr);
           Params.Values['ODBCAdvanced'] := 'Encrypt=yes;TrustServerCertificate=yes';
           LoginPrompt := False;
           try
              Connected := True;
           except
              on E: Exception do begin
                 UniSession.Log('ATLAS - ERRO SQL: ' + E.ClassName + ' - ' + E.Message);
                 Abort;
              end;
           end;
      end;

      FreeAndNil(aINI);
end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
end;

initialization
  RegisterMainModuleClass(TUniMainModule);

  
  
end.
