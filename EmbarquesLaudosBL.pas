unit EmbarquesLaudosBL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniButton, 
  uniGUIBaseClasses, uniPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBasicGrid, uniDBGrid;

type
  TLaudosBL = class(TUniForm)
    tBL: TFDQuery;
    dstBL: TDataSource;
    Grade: TUniDBGrid;
    Panel10: TUniPanel;
    bAdicionar: TUniButton;
    bSair: TUniButton;
    procedure bSairClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure GradeSelectionChange(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure bAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNavio: integer;
    mLaudo: string;
  end;

function LaudosBL: TLaudosBL;

implementation

{$R *.dfm}

uses
  MainModule, Embarques, Funcoes;

function LaudosBL: TLaudosBL;
begin
     Result := TLaudosBL(UniMainModule.GetFormInstance(TLaudosBL));
end;

procedure TLaudosBL.bAdicionarClick(Sender: TObject);
var
  i: Integer;
begin
      with Grade do begin
           if SelectedRows.Count > 0 then  begin
              tBL.DisableControls;
              try
                 for i := 0 to pred(SelectedRows.Count) do begin
                     tBL.Bookmark := SelectedRows[i];
                     tBL.Edit;
                         tBL.fieldbyname('Laudo').value :=  mLaudo;
                     tBL.Post;
                 end;
              finally
                 close;
              end;
           end;
      end;
end;

procedure TLaudosBL.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TLaudosBL.GradeSelectionChange(Sender: TObject);
begin
     bAdicionar.Enabled := Grade.SelectedRows.Count > 0;
end;

procedure TLaudosBL.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
     LimpaMemoria;
     LaudosBL.Release; 
end;

procedure TLaudosBL.UniFormShow(Sender: TObject);
begin
      with tBL do begin
           sql.Clear;
           sql.Add('select *');
           sql.Add('from  EmbarquesBL');
           sql.add('where Navio = :pNavio');
           sql.add('and isnull(Laudo, '''') = '''' ');
           sql.add('order by BL');
           parambyname('pNavio').Value := mNavio;
           open;
      end;
end;

end.
