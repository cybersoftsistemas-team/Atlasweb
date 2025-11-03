unit CadCores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, 
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, 
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfCadCores = class(TUniFrame)
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
    Alerta: TUniSweetAlert;
    pFicha: TUniPanel;
    Grade: TuniDBGrid;
    dsCores: TDataSource;
    cNome: TUniDBEdit;
    cCodigo: TUniDBEdit;
    Cores: TFDQuery;
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
    procedure CoresBeforePost(DataSet: TDataSet);
    procedure CoresBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadCores.bAdicionarClick(Sender: TObject);
begin
      with Cores do begin
           try
               LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfCadCores.bExcluirClick(Sender: TObject);
begin
     with Cores do begin
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

procedure TfCadCores.bGravarClick(Sender: TObject);
begin
      with Cores do begin
          {
           if (State = dsInsert) then begin
              Cores.FieldByName('Codigo').Value := GeraCodigo(Cores, 'Codigo');
           end;
          }
           if (State = dsInsert) and (Existe(Cores, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Nome" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
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

procedure TfCadCores.bCancelarClick(Sender: TObject);
begin
      Cores.Cancel;
      LigaBotoes(true);
end;

procedure TfCadCores.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Cores.Edit;
         cCodigo.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfCadCores.UniFrameDestroy(Sender: TObject);
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

procedure TfCadCores.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadCores.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     (*
     *)
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfCadCores.UniFrameCreate(Sender: TObject);
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

      with Cores do begin
           sql.clear;
           sql.add('select *');
           sql.add('from Cores');
           sql.add('order by Codigo');
           open;
      end;
end;
procedure TfCadCores.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadCores.bPesquisaClick(Sender: TObject);
begin
     Cores.Cancel;
     LigaBotoes(true);
     Pesquisa(Cores, 'Cores', 'Codigo', 'Nome',cPesquisa.text)
end;

procedure TfCadCores.CoresBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadCores.CoresBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;



end.
