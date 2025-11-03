unit CadUnidadeMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniSweetAlert;

type
  TfCadUnidadeMedida = class(TUniFrame)
    aLista: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    pBarraPesq: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    Pasta: TUnipageControl;
    UniTabSheet1: TUniTabSheet;
    pFicha: TUniPanel;
    DBGrid2: TuniDBGrid;
    Unidades: TFDQuery;
    dsUnidades: TDataSource;
    cCodigo: TUniDBEdit;
    cNome: TUniDBEdit;
    cNome_Ingles: TUniDBEdit;
    Alerta: TUniSweetAlert;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure UnidadeMedidaBeforePost(DataSet: TDataSet);
    procedure UnidadeMedidaBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadUnidadeMedida.bAdicionarClick(Sender: TObject);
begin
      with Unidades do begin
           try
               LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfCadUnidadeMedida.bExcluirClick(Sender: TObject);
begin
     with Unidades do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído com sucesso!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfCadUnidadeMedida.bGravarClick(Sender: TObject);
begin
      with Unidades do begin
           if (State = dsInsert) then begin
              FieldByName('Registro').Value := GeraCodigo('Unidades', 'Registro');
           end;
           if (State = dsInsert) and (Existe(Unidades, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe uma "Unidades de Medidas" cadastrada com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Nome').AsString) = '' then begin
              MessageDlg('O campo "Nome" não pode ficar em branco!', mtError, [mbOK]);
              cNome.SetFocus;
              Abort;
           end;

           try
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo com sucesso!';
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfCadUnidadeMedida.bCancelarClick(Sender: TObject);
begin
      Unidades.Cancel;
      LigaBotoes(true);
end;

procedure TfCadUnidadeMedida.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Unidades.Edit;
         cCodigo.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfCadUnidadeMedida.UniFrameDestroy(Sender: TObject);
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

procedure TfCadUnidadeMedida.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadUnidadeMedida.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bGravar.Enabled    := not Estado;
     (*
     *)
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfCadUnidadeMedida.UniFrameCreate(Sender: TObject);
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

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      with Unidades do begin
           sql.clear;
           sql.add('select Registro');
           sql.add('      ,Codigo');
           sql.add('      ,Nome');
           sql.add('      ,Nome_Ingles');
           sql.add('from UnidadeMedida');
           sql.add('order by Nome');
           open;
      end;
end;
procedure TfCadUnidadeMedida.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadUnidadeMedida.bPesquisaClick(Sender: TObject);
begin
     Unidades.Cancel;
     LigaBotoes(true);
     Pesquisa(Unidades, 'Unidades', 'Codigo', 'Nome',cPesquisa.text)
end;

procedure TfCadUnidadeMedida.UnidadeMedidaBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadUnidadeMedida.UnidadeMedidaBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;



end.

