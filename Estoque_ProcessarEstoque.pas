unit Estoque_ProcessarEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniPanel, uniLabel, 
  uniTimer, uniGUIBaseClasses, uniButton, uniScreenMask, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.Phys.Intf, 
  FireDAC.DApt, FireDAC.Comp.DataSet, SyncObjs, uniRadioGroup, uniSweetAlert, uniComboBox, uniDBComboBox, uniDBLookupComboBox, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, Data.DB, uniMultiItem;

type
  TfEstoque_ProcessarEstoque = class(TUniFrame)
    pnlProcessando: TUniPanel;
    lMsg: TUniLabel;
    bCancelar: TUniButton;
    bProcessar: TUniButton;
    cDescricao: TUniRadioGroup;
    cEmpresa: TUniDBLookupComboBox;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    Mascara: TUniScreenMask;
    procedure bCancelarClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure bProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  MainModule, Main, Funcoes;

{$R *.dfm}

procedure TfEstoque_ProcessarEstoque.bProcessarClick(Sender: TObject);
begin
     FichasEstInv(Empresas.FieldByName('CNPJ').asstring
                 ,0
                 ,Empresas.FieldByName('Razao_Social').asstring
                 ,Empresas.FieldByName('CNPJ').asstring
                 ,cDescricao.ItemIndex
                 ,0
                 ,''
                 ,'');
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
end;

procedure TfEstoque_ProcessarEstoque.bCancelarClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;



end.

