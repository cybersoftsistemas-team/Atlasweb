unit ComexInvoiceLPCO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBasicGrid, uniDBGrid, uniEdit, uniButton, uniBitBtn, uniSpeedButton, uniGUIBaseClasses, uniPanel;

type
  TfComexInvoiceLPCO = class(TUniForm)
    pBarraNav: TUniPanel;
    bGravItens: TUniSpeedButton;
    LPCO: TFDQuery;
    dsLPCO: TDataSource;
    LPCOLPCO: TFDAutoIncField;
    LPCOEmpresa: TStringField;
    LPCOOrgao_Anuente: TStringField;
    LPCODocumento: TStringField;
    LPCONumero: TStringField;
    LPCOData_Inicio: TSQLTimeStampField;
    LPCOData_Fim: TSQLTimeStampField;
    OrgaosAnuentes: TFDQuery;
    dsOrgaosAnuentes: TDataSource;
    LPCOOrgao_Nome: TStringField;
    UniPanel1: TUniPanel;
    Grade: TUniDBGrid;
    ItensLPCO: TFDQuery;
    dsItensLPCO: TDataSource;
    ttmp: TFDQuery;
    bCancItens: TUniSpeedButton;
    procedure bFecharClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure bGravItensClick(Sender: TObject);
    procedure bCancItensClick(Sender: TObject);
  private
    { Private declarations }
    mInvoice: string;
    mProduto: integer;
  public
    { Public declarations }
    constructor Create(aOwner: TComponent; pInvoice: string; pProduto: Integer); reintroduce;
  end;

function fComexInvoiceLPCO: TfComexInvoiceLPCO;
  
implementation

uses
  uniGUIApplication, MainModule, ComexInvoice;

{$R *.dfm}

constructor TfComexInvoiceLPCO.Create(aOwner: TComponent; pInvoice: string; pProduto: Integer);
begin
     inherited Create(AOwner);
     mInvoice := pInvoice;
     mProduto := pProduto;
end;

procedure TfComexInvoiceLPCO.bCancItensClick(Sender: TObject);
begin
    close;
end;

procedure TfComexInvoiceLPCO.bFecharClick(Sender: TObject);
begin
    close;
end;

procedure TfComexInvoiceLPCO.bGravItensClick(Sender: TObject);
var
   mSel: integer;
   mscript: widestring;
begin
     // Apaga todos os LPCO's adicionados e adiciona apenas os selecionados.
     for msel := 0 to pred(Grade.SelectedRows.Count) do begin
         LPCO.Bookmark := Grade.SelectedRows[msel];
         mScript := concat(mScript, '(', quotedstr(mInvoice), ',', mProduto.ToString, ',', LPCO.fieldbyname('LPCO').asstring, ',', LPCO.fieldbyname('LPCO').asstring, '),', #13);
     end;
     mScript := concat('insert into InvoiceItensLPCO (Invoice, Codigo_Mercadoria, LPCO, Orgao_Anuente) values', #13, copy(mScript, 1, Length(mScript)-2));
     if Grade.SelectedRows.Count > 0 then begin
        with ttmp do begin
             sql.Clear;
             sql.Add('delete from InvoiceItensLPCO where Invoice = '+ quotedstr(mInvoice)+ ' and Codigo_Mercadoria = '+ mProduto.tostring);
             execute;
             sql.Clear;
             sql.Add(mScript);
             execute;
        end;
        close;
     end else begin
        messagedlg('Nenhum LPCO selecionado para adicionar ao Item!', mtinformation, [mbok]);
        abort;
     end;
end;

procedure TfComexInvoiceLPCO.UniFormCreate(Sender: TObject);
begin
     with LPCO do begin
          sql.Clear;
          sql.Add('select * from LPCO order by Orgao_Anuente');
          Open;
     end;
     with OrgaosAnuentes do begin
          sql.Clear;
          sql.Add('select * from OrgaosAnuentes order by Nome');
          Open;
     end;
end;

function fComexInvoiceLPCO: TfComexInvoiceLPCO;
begin
     Result := TfComexInvoiceLPCO(UniMainModule.GetFormInstance(TfComexInvoiceLPCO));
end;


end.
