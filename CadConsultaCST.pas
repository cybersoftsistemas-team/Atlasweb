unit CadConsultaCST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMultiItem, uniListBox, uniDBListBox, uniDBLookupListBox, uniSweetAlert;

type
  TfCadConsultaCST = class(TUniFrame)
    Alerta: TUniSweetAlert;
    aLista: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    Pasta: TUnipageControl;
    UniTabSheet1: TUniTabSheet;
    CSTIPI: TFDQuery;
    dsCSTIPI: TDataSource;
    CSTPIS: TFDQuery;
    dsCSTPIS: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniDBGrid2: TUniDBGrid;
    dsCSTCOFINS: TDataSource;
    CSTCOFINS: TFDQuery;
    CSTICMSA: TFDQuery;
    dsCSTICMSA: TDataSource;
    CSTICMSB: TFDQuery;
    dsCSTICMSB: TDataSource;
    UniTabSheet9: TUniTabSheet;
    UniDBGrid8: TUniDBGrid;
    UniDBGrid7: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    UniTabSheet4: TUniTabSheet;
    UniTabSheet5: TUniTabSheet;
    CSTIBS: TFDQuery;
    dsCSTIBS: TDataSource;
    CSTCBS: TFDQuery;
    dsCSTCBS: TDataSource;
    UniDBGrid4: TUniDBGrid;
    UniDBGrid5: TUniDBGrid;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadConsultaCST.UniFrameDestroy(Sender: TObject);
var
   i:integer;
begin
      // Fecha todas as tabelas do form.
      for i := 0 to pred(ComponentCount) do begin
          if Components[i] is TFDQuery then begin
             TFDQuery(Components[i]).close;
          end;
      end;
end;

procedure TfCadConsultaCST.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadConsultaCST.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;

      Pasta.ActivePageIndex := 0;

      with CSTIPI do begin
           sql.clear;
           sql.add('select * from CSTIPI order by Codigo');
           open;
      end;
      with CSTPIS do begin
           sql.clear;
           sql.add('select * from CSTPIS order by Codigo');
           open;
      end;
      with CSTCOFINS do begin
           sql.clear;
           sql.add('select * from CSTCOFINS order by Codigo');
           open;
      end;
      with CSTICMSA do begin
           sql.clear;
           sql.add('select * from CSTICMSTabA order by Codigo');
           open;
      end;
      with CSTICMSB do begin
           sql.clear;
           sql.add('select * from CSTICMSTabB order by Codigo');
           open;
      end;
      with CSTIBS do begin
           sql.clear;
           sql.add('select * from CSTIBS order by Codigo');
           open;
      end;
      with CSTCBS do begin
           sql.clear;
           sql.add('select * from CSTCBS order by Codigo');
           open;
      end;
end;


end.
