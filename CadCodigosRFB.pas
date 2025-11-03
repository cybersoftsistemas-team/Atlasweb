unit CadCodigosRFB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, uniCheckBox, uniMemo, FireDAC.Comp.DataSet, uniSweetAlert;

type
  TfCadCodigosRFB = class(TUniFrame)
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
    Grade: TuniDBGrid;
    CodigosRFB: TFDQuery;
    dsCodigosRFB: TDataSource;
    cCodigo: TUniDBEdit;
    cDescricao: TUniDBMemo;
    cComex: TUniDBCheckBox;
    cAtivo: TUniDBCheckBox;
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
    procedure CodigosRFBBeforePost(DataSet: TDataSet);
    procedure CodigosRFBBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadCodigosRFB.bAdicionarClick(Sender: TObject);
begin
      with CodigosRFB do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadCodigosRFB.bExcluirClick(Sender: TObject);
begin
     with CodigosRFB do begin
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

procedure TfCadCodigosRFB.bGravarClick(Sender: TObject);
begin
      with CodigosRFB do begin
           if (State = dsInsert) and (Existe(CodigosRFB, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Descricao').AsString) = '' then begin
              MessageDlg('O campo "Descricao" não pode ficar em branco!', mtError, [mbOK]);
              cDescricao.SetFocus;
              Abort;
           end;
           try
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadCodigosRFB.bCancelarClick(Sender: TObject);
begin
      CodigosRFB.Cancel;
      LigaBotoes(true);
end;

procedure TfCadCodigosRFB.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         CodigosRFB.Edit;
         cCodigo.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadCodigosRFB.UniFrameDestroy(Sender: TObject);
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

procedure TfCadCodigosRFB.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadCodigosRFB.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     pFicha.Enabled        := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfCadCodigosRFB.UniFrameCreate(Sender: TObject);
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

      with CodigosRFB do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao');
           sql.add('      ,Comex');
           sql.add('      ,Inativo');
           sql.add('from CodigosRFB');
           sql.add('order by Codigo');
           open;
      end;
end;
procedure TfCadCodigosRFB.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadCodigosRFB.bPesquisaClick(Sender: TObject);
begin
     CodigosRFB.Cancel;
     LigaBotoes(true);
     Pesquisa(CodigosRFB, 'CodigosRFB', 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadCodigosRFB.CodigosRFBBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadCodigosRFB.CodigosRFBBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;



end.
