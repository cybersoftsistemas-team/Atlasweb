unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, uniGUIBaseClasses, uniGUIClasses, uniImageList, FireDAC.Comp.DataSet,
  FireDAC.Stan.StorageBin, dialogs, FireDAC.Phys.Intf, FireDAC.Phys.MSSQLDef, FireDAC.DApt.Intf, System.Actions, Vcl.ActnList,
  Vcl.DBActns, uniMainMenu, IniFiles, forms, uniSweetAlert;

type
  TUniMainModule = class(TUniGUIMainModule)
    imgBotoes: TUniNativeImageList;
    ERPImporta: TFDConnection;
    Meses: TFDMemTable;
    MesesMes: TSmallintField;
    MesesNome: TStringField;
    dsMeses: TDataSource;
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
  public
    { Public declarations }
    mEmpresaAtiva
   ,mUsuarioAtivo
   ,mPath: string;
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
      // Carregando os dados de conexão do banco de dados "ERPimporta.ini".
      //mPath := 'c:\Projetos_WEB\erp_importa';
      //mPath := 'v:\ERP_Importa';
      //mPath := PastaDLL;
      mPath := ExtractFileDir(GetCurrentDir)+'\erp_importa';
      aINI  := Tinifile.Create(mPath+'\ERPImporta.ini');

      with ERPImporta do begin
           Connected := false;
           Params.Clear;
           Params.Values['DriverID']   := aINI.ReadString('SERVIDOR', 'DriverID'  , EmptyStr);
           Params.Values['DriverName'] := aINI.ReadString('SERVIDOR', 'DriverName', EmptyStr);
           Params.Values['Server']     := aINI.ReadString('SERVIDOR', 'Server'    , EmptyStr);
           Params.Values['Database']   := aINI.ReadString('SERVIDOR', 'DataBase'  , EmptyStr);
           Params.Values['User_name']  := aINI.ReadString('SERVIDOR', 'UserName'  , EmptyStr);
           Params.Values['Password']   := aINI.ReadString('SERVIDOR', 'Password'  , EmptyStr);
           try
              Connected := True;
           except
              ShowMessage('Erro na conexão com o banco de dados!');
              Abort;
           end;
      end;

      FreeAndNil(aINI);

      Meses.Open;
      for i := 1 to 12 do begin
          Meses.Append;
                Meses.FieldByName('Mes').Value  := i;
                Meses.FieldByName('Nome').Value := NomeMes(i);
          Meses.Post;
      end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);

end.



