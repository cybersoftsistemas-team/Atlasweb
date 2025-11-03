unit ConfigCampos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniGroupBox, uniGUIBaseClasses, uniPanel, uniBasicGrid, uniDBGrid, uniScrollBox, uniButton, uniBitBtn, uniSpeedButton, uniDBNavigator, uniEdit,
  uniRadioGroup, uniSweetAlert;

type
  TfConfigCampos = class(TUniFrame)
    tCampos: TFDQuery;
    dstCampos: TDataSource;
    UniScrollBox1: TUniScrollBox;
    pFicha5: TUniPanel;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bExcluir: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    bAdicionar: TUniSpeedButton;
    UniDBGrid1: TUniDBGrid;
    UniContainerPanel1: TUniContainerPanel;
    cPesq: TUniEdit;
    cTipo: TUniRadioGroup;
    cCampo: TUniEdit;
    Alerta: TUniSweetAlert;
    procedure UniFrameCreate(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure cPesqChange(Sender: TObject);
    procedure cTipoClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bGravarClick(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure UniDBGrid1DblClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
  private
    procedure FiltraCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfConfigCampos.bAdicionarClick(Sender: TObject);
begin
     tCampos.Append;
end;

procedure TfConfigCampos.bCancelarClick(Sender: TObject);
begin
     tCampos.Cancel;
end;

procedure TfConfigCampos.bEditarClick(Sender: TObject);
begin
    tCampos.Edit;
end;

procedure TfConfigCampos.bExcluirClick(Sender: TObject);
begin
     with tCampos do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfConfigCampos.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfConfigCampos.bGravarClick(Sender: TObject);
begin
     tCampos.Post;
end;

procedure TfConfigCampos.UniDBGrid1DblClick(Sender: TObject);
begin
    tCampos.Edit;
end;

procedure TfConfigCampos.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (UniScrollBox1.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;
      FiltraCampos;
end;

procedure TfConfigCampos.cPesqChange(Sender: TObject);
begin
     FiltraCampos;
end;

procedure TfConfigCampos.cTipoClick(Sender: TObject);
begin
     FiltraCampos;
end;

procedure TfConfigCampos.FiltraCampos;
begin
      with tCampos do begin
           sql.clear;
           sql.add('select *');
           sql.add('from Campos');
           sql.Add('where Codigo is not null');
           if cPesq.Text <> ''then sql.add('and Tabela like '+quotedstr('%'+cPesq.Text+'%'));
           if cCampo.Text <> ''then sql.add('and Campo like '+quotedstr('%'+cCampo.Text+'%'));
           if cTipo.ItemIndex = 0 then sql.add('and Calculavel = 1');
           if cTipo.ItemIndex = 1 then sql.add('and Calculavel <> 1');
           if cTipo.ItemIndex = 2 then sql.add('and Funcao = 1');
           if cTipo.ItemIndex = 3 then sql.add('and isnull(Comando_SQL,'''') <> '''' ');
           if cTipo.ItemIndex = 4 then sql.add('and Visivel = 1');
           sql.add('order by Funcao desc, Descricao, Tabela, Campo');
           //sql.SaveToFile('c:\temp\Campos.sql');
           Open;
      end;
end;

end.
