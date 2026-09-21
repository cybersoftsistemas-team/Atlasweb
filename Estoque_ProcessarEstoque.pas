unit Estoque_ProcessarEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniPanel, uniLabel, 
  uniTimer, uniGUIBaseClasses, uniButton, uniScreenMask, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.Phys.Intf, 
  FireDAC.DApt, FireDAC.Comp.DataSet, SyncObjs, uniRadioGroup, uniSweetAlert, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async, Data.DB;

type
  TfEstoque_ProcessarEstoque = class(TUniFrame)
    pnlProcessando: TUniPanel;
    lMsg: TUniLabel;
    bCancelar: TUniButton;
    Timer: TUniTimer;
    bProcessar: TUniButton;
    cDescricao: TUniRadioGroup;
    Alerta: TUniSweetAlert;
    cEmpresa: TUniDBLookupComboBox;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    procedure bCancelarClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure bProcessarClick(Sender: TObject);
  private
    fProcessando: Boolean;
    fConcluido: Boolean;
    fErro: Boolean;
    fMensagemErro: String;
    fLock: TCriticalSection;
    procedure IniciarAnimacao;
    procedure PararAnimacao;
    procedure IniciarProcessamento;
    procedure FinalizarProcessamento(const AMensagem: String; AErro: Boolean);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  MainModule, FichaEstoque, Main;

{$R *.dfm}

constructor TfEstoque_ProcessarEstoque.Create(AOwner: TComponent);
begin
     inherited Create(AOwner);
     fLock           := TCriticalSection.Create;
     fProcessando    := False;
     fConcluido      := False;
     fErro           := False;
     fMensagemErro   := '';
     lMsg.Caption    := 'Aguarde por favor';
     Timer.Interval  := 300;
     Timer.Enabled   := False;
end;

destructor TfEstoque_ProcessarEstoque.Destroy;
begin
     Timer.Enabled := False;
     FLock.Acquire;
     try
        FProcessando := False;
     finally
        FLock.Release;
     end;
     FLock.Free;
     inherited Destroy;
end;

procedure TfEstoque_ProcessarEstoque.bProcessarClick(Sender: TObject);
begin
     lmsg.visible := true;
     IniciarProcessamento;
end;

procedure TfEstoque_ProcessarEstoque.UniFrameCreate(Sender: TObject);
var
  i: Integer;
begin
     // Alinhando o painel principal ao centro do Frame.
     for i := 0 to Pred(ComponentCount) do begin
         if Components[i] is TUniPanel then begin
            TUniPanel(Components[i]).Top  := 100;
            TUniPanel(Components[i]).Left := (Width - TUniPanel(Components[i]).Width) div 2;
         end;
     end;

     with Empresas do begin
          sql.clear;
          sql.add('select CNPJ, Filial, Razao_Social');
          sql.add('from Empresas');
          sql.add('where substring(CNPJ, 1, 8) = :pCNPJ');
          sql.add('order by Filial');
          parambyname('pCNPJ').asstring := copy(UniMainModule.mEmpresaAtiva, 1, 8);
          open;
          cEmpresa.KeyValue := Fieldbyname('CNPJ').asstring;
     end;
     
     lMsg.Caption    := 'Aguarde por favor';
     lMsg.Font.Color := clBlack;

     // Inicia a animação diretamente no navegador.
     IniciarAnimacao;

     FLock.Acquire;
     try
        FProcessando  := True;
        FConcluido    := False;
        FErro         := False;
        FMensagemErro := '';
     finally
        FLock.Release;
     end;

     // Timer somente verifica quando o processamento terminou.
     Timer.Interval := 300;
     Timer.Enabled  := True;
end;

procedure TfEstoque_ProcessarEstoque.IniciarAnimacao;
begin
     lMsg.ClientEvents.ExtEvents.Values['afterrender'] :=
       'function(sender) {' +
       'var el = sender.getEl().dom;' +
       'el.innerHTML = "Aguarde por favor " +' +
       '  "<span class=''atlas-dots''>" +' +
       '  "<span class=''dot d1''></span>" +' +
       '  "<span class=''dot d2''></span>" +' +
       '  "<span class=''dot d3''></span>" +' +
       '  "</span>";' +
       'if (!document.getElementById("atlas-dots-css")) {' +
       'var css = document.createElement("style");' +
       'css.id = "atlas-dots-css";' +
       'css.innerHTML = ' +
       '''.atlas-dots {' +
       'display:inline-flex;' +
       'margin-left:8px;' +
       'gap:5px;' +
       'vertical-align:middle;' +
       '}' +
       '.atlas-dots .dot {' +
       'width:8px;' +
       'height:8px;' +
       'border-radius:50%;' +
       'background:#3498db;' +
       'display:inline-block;' +
       'opacity:.25;' +
       'animation:atlasDots 1.2s infinite ease-in-out;' +
       '}' +
       '.atlas-dots .d1 {' +
       'animation-delay:0s;' +
       '}' +
       '.atlas-dots .d2 {' +
       'animation-delay:.2s;' +
       '}' +
       '.atlas-dots .d3 {' +
       'animation-delay:.4s;' +
       '}' +
       '@keyframes atlasDots {' +
       '0%, 60%, 100% {' +
       'opacity:.25;' +
       'transform:scale(.7);' +
       '}' +
       '30% {' +
       'opacity:1;' +
       'transform:scale(1.3);' +
       '}' +
       '}'';' +
       'document.head.appendChild(css);' +
       '}' +
       '}';
end;

procedure TfEstoque_ProcessarEstoque.IniciarProcessamento;
var
  fParamsLocal: TStringList;
begin
     fParamsLocal  := TStringList.Create;

     try
        fParamsLocal.Assign(uniMainModule.Conecta.Params);
     except
        on E: Exception do begin
           fParamsLocal.Free;
           fLock.Acquire;
           try
              fErro         := True;
              fConcluido    := True;
              fMensagemErro := E.ClassName + ': ' + E.Message;
           finally
              fLock.Release;
           end;
           exit;
        end;
     end;

     TThread.CreateAnonymousThread(
       procedure
       var
         Conexao: TFDConnection;
         Query: TFDQuery;
         MensagemErro: String;
         OcorreuErro: Boolean;
       begin
         Conexao      := nil;
         Query        := nil;
         MensagemErro := '';
         OcorreuErro  := False;
         try
            try
               Conexao := TFDConnection.Create(nil);
               Query   := TFDQuery.Create(nil);
               Conexao.LoginPrompt := False;
               Conexao.Params.Assign(FParamsLocal);
               Conexao.Connected := True;
               Query.Connection  := Conexao;

               // Descomente para testar a animação durante 10 segundos.
               ProcessaFichas(Query
                             ,0
                             ,Empresas.FieldByName('Razao_Social').asstring
                             ,Empresas.FieldByName('CNPJ').asstring
                             ,cDescricao.ItemIndex
                             ,0
                             ,''
                             ,'');
            except
               on E: Exception do begin
                  OcorreuErro  := true;
                  MensagemErro := E.ClassName + ': ' + E.Message;
               end;
            end;
         finally
            Query.Free;
            Conexao.Free;
            FParamsLocal.Free;
         end;

         FLock.Acquire;
         try
            FErro         := OcorreuErro;
            FMensagemErro := MensagemErro;
            FConcluido    := True;
         finally
            FLock.Release;
         end;
       end
     ).Start;
end;

procedure TfEstoque_ProcessarEstoque.TimerTimer(Sender: TObject);
var
  Concluido: Boolean;
  Erro: Boolean;
  MensagemErro: String;
begin
     fLock.Acquire;
     try
        Concluido    := fConcluido;
        Erro         := fErro;
        MensagemErro := fMensagemErro;
     finally
        FLock.Release;
     end;

     if not Concluido then Exit;

     Timer.Enabled := False;

     if Erro then begin
        FinalizarProcessamento(MensagemErro, True);
     end else begin
        FinalizarProcessamento('', false);
        Alerta.Execute; 
        bCancelarclick(self);
     end;
end;

procedure TfEstoque_ProcessarEstoque.PararAnimacao;
begin
     UniSession.AddJS(
       'try {' +
       '  var el = ' + lMsg.JSName + '.getEl();' +
       '  if (el && el.dom) {' +
       '    el.dom.innerHTML = "";' +
       '  }' +
       '} catch(e) {}'
     );
     lMsg.ClientEvents.ExtEvents.Values['afterrender'] := '';
end;

procedure TfEstoque_ProcessarEstoque.FinalizarProcessamento(const AMensagem: String; AErro: Boolean);
begin
     fLock.Acquire;
     try
        fProcessando := false;
        fConcluido   := true;
     finally
        fLock.Release;
     end;
     Timer.Enabled := false;
     PararAnimacao;
     if aErro then begin
        lMsg.Caption    := aMensagem;
        lMsg.Font.Color := clRed;
     end else begin
        lMsg.Caption    := aMensagem;
        lMsg.Font.Color := clGreen;
     end;
end;

procedure TfEstoque_ProcessarEstoque.bCancelarClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;



end.

