unit CadPlanoContasECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniSweetAlert;

type
  TfCadPlanoContasECF = class(TUniFrame)
    Alerta: TUniSweetAlert;
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
    tRegistro: TFDQuery;
    Grade: TuniDBGrid;
    PlanoContasECF: TFDQuery;
    dsPlanoContasECF: TDataSource;
    cConta: TUniDBEdit;
    cNome: TUniDBEdit;
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
    procedure PlanoContasECFBeforePost(DataSet: TDataSet);
    procedure PlanoContasECFBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadPlanoContasECF.bAdicionarClick(Sender: TObject);
begin
      with PlanoContasECF do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadPlanoContasECF.bExcluirClick(Sender: TObject);
begin
     with PlanoContasECF do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Conta').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadPlanoContasECF.bGravarClick(Sender: TObject);
begin
      with PlanoContasECF do begin
           if (State = dsInsert) then begin
              PlanoContasECF.FieldByName('Registro').Value := GeraCodigo('PlanoContasECF', 'Registro');
           end;
           if (State = dsInsert) and (Existe(PlanoContasECF, 'Conta', FieldByName('Conta').AsString)) then begin
              MessageDlg('Já existe um "Nome" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cConta.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Conta').AsString) = '' then begin
              MessageDlg('O campo "Conta" não pode ficar em branco!', mtError, [mbOK]);
              cConta.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Nome').AsString) = '' then begin
              MessageDlg('O campo "Nome" não pode ficar em branco!', mtError, [mbOK]);
              cNome.SetFocus;
              Abort;
           end;

           try
               Post;
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
               LigaBotoes(true);
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadPlanoContasECF.bCancelarClick(Sender: TObject);
begin
      PlanoContasECF.Cancel;
      LigaBotoes(true);
end;

procedure TfCadPlanoContasECF.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         PlanoContasECF.Edit;
         cConta.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadPlanoContasECF.UniFrameDestroy(Sender: TObject);
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

procedure TfCadPlanoContasECF.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadPlanoContasECF.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     pFicha.Enabled        := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadPlanoContasECF.UniFrameCreate(Sender: TObject);
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

      PlanoContasECF.sql.clear;
      PlanoContasECF.sql.add('select Registro');
      PlanoContasECF.sql.add('      ,Conta');
      PlanoContasECF.sql.add('      ,Nome');
      PlanoContasECF.sql.add('from PlanoContasECF');
      PlanoContasECF.sql.add('order by Conta');
      PlanoContasECF.open;
end;
procedure TfCadPlanoContasECF.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadPlanoContasECF.bPesquisaClick(Sender: TObject);
begin
     PlanoContasECF.Cancel;
     LigaBotoes(true);
     Pesquisa(PlanoContasECF, 'PlanoContasECF', 'Conta', 'Nome',cPesquisa.text)
end;

procedure TfCadPlanoContasECF.PlanoContasECFBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadPlanoContasECF.PlanoContasECFBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;



end.
