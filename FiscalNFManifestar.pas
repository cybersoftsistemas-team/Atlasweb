unit FiscalNFManifestar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Graphics, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniDBGrid, uniPanel, uniSpeedButton, uniButton, uniEdit, 
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniRadioGroup, uniDBComboBox, uniDBRadioGroup, 
  uniMultiItem, uniBitBtn, Vcl.Forms, uniDBDateTimePicker, uniDateTimePicker;

type
  TfFiscalNFManifestar = class(TuniFrame)
    Notas: TFDQuery;
    pBarraNav: TUniPanel;
    bFechar: TUniSpeedButton;
    dsNotas: TDataSource;
    bSelTodos: TUniButton;
    bSelNehum: TUniButton;
    bManiFora: TUniButton;
    bManifestar: TUniButton;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    Ficha: TUniPanel;
    cDataEntrada: TUniDBDateTimePicker;
    UniEdit2: TUniEdit;
    cMotivo: TUniComboBox;
    cJustificativa: TUniEdit;
    cSit: TUniRadioGroup;
    GradeManif: TUniDBGrid;
    procedure bSairClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MainModule, Main;

{$R *.dfm}

procedure TfFiscalNFManifestar.bSairClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFiscalNFManifestar.UniFrameCreate(Sender: TObject);
var
   i: integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TUniPanel then begin
            TuniPanel(Components[i]).Top   := pBarraPesq.top+pBarraPesq.Height + 10;
            TuniPanel(Components[i]).Left  := (self.Width - TuniPanel(Components[i]).Width) div 2;
            TuniPanel(Components[i]).Color := clNone;
         end;
     end;
     with Notas do begin
          sql.clear;
          sql.add('select *');
          sql.add('from NotasFiscais');
          sql.add('where Empresa = :pEmpresa');
          sql.add('and Emissao = ''T'' ');
          sql.Add('order by Data_ES, Nota');
          parambyname('pEmpresa').value := UniMainModule.mEmpresaAtiva;
          open;
     end;
end;

procedure TfFiscalNFManifestar.UniFrameDestroy(Sender: TObject);
var
   i:integer;
begin
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TFDQuery then begin
            TFDQuery(Components[i]).close;
         end;
     end;
end;

procedure TfFiscalNFManifestar.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFiscalNFManifestar.bPesquisaClick(Sender: TObject);
begin
     Notas.Cancel;
     with Notas do begin
          sql.Clear;
          sql.add('select * from NotasFiscais where Emissao = ''T'' and Nota like '+quotedstr('%'+cPesquisa.text+'%'));
          open;
          if recordcount = 0 then begin
             MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOK]);
          end;
     end;
end;

procedure TfFiscalNFManifestar.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     if Key = VK_RETURN then begin
        bPesquisaClick(self);
     end;
end;


 
end.
