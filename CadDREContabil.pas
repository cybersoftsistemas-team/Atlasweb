unit CadDREContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker,
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  uniMultiItem, uniComboBox, uniDBComboBox, uniRadioGroup, uniDBRadioGroup;

type
  TfCadDREContabil = class(TUniFrame)
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
    dsDREContabilSubGrupos: TDataSource;
    DREContabilSubGrupos: TFDQuery;
    DREContabilSubGruposConta: TStringField;
    DREContabilSubGruposDescricao: TStringField;
    DREContabilGrupos: TFDQuery;
    dsDREContabilGrupos: TDataSource;
    cCodigo: TUniDBEdit;
    RxDBLookupCombo1: TUniDBLookupComboBox;
    cCalculo: TUniDBRadioGroup;
    cNome: TUniDBEdit;
    Grade: TUniDBGrid;
    GradePlano: TUniDBGrid;
    bAdiciona: TUniSpeedButton;
    bRemove: TUniSpeedButton;
    SpeedButton1: TUniSpeedButton;
    GradeSub: TUniDBGrid;
    UniDBGrid1: TUniDBGrid;
    bLimpar: TUniSpeedButton;
    cIndicador_Valor: TUniDBRadioGroup;
    Totalizadores: TFDQuery;
    dsTotalizadores: TDataSource;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
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
    procedure DREContabilGruposBeforePost(DataSet: TDataSet);
    procedure DREContabilGruposBeforeDelete(DataSet: TDataSet);
    procedure bLimparClick(Sender: TObject);
    procedure bAdicionaClick(Sender: TObject);
    procedure bRemoveClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cCodigoChange(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadDREContabil.bAdicionarClick(Sender: TObject);
begin
      with DREContabilGrupos do begin
           try
               LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfCadDREContabil.bExcluirClick(Sender: TObject);
begin
     with DREContabilGrupos do begin
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

procedure TfCadDREContabil.bGravarClick(Sender: TObject);
begin
      with DREContabilGrupos do begin
          {
           if (State = dsInsert) then begin
              DREContabilGrupos.FieldByName('Codigo').Value := GeraCodigo(DREContabilGrupos, 'Codigo');
           end;
          }
           if (State = dsInsert) and (Existe(DREContabilGrupos, 'Codigo', FieldByName('Codigo').AsString)) then begin
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

procedure TfCadDREContabil.bCancelarClick(Sender: TObject);
begin
      DREContabilGrupos.Cancel;
      LigaBotoes(true);
end;

procedure TfCadDREContabil.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         DREContabilGrupos.Edit;
         cCodigo.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfCadDREContabil.UniFrameDestroy(Sender: TObject);
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

procedure TfCadDREContabil.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadDREContabil.LigaBotoes(Estado:boolean);
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

procedure TfCadDREContabil.UniFrameCreate(Sender: TObject);
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

      with DREContabilGrupos do begin
            sql.clear;
            sql.add('select Codigo');
            sql.add('      ,Nome');
            sql.add('      ,Calculo');
            sql.add('      ,Codigo_Conta');
            sql.add('      ,Totalizador');
            sql.add('      ,Indicador_Valor');
            sql.add('from DREContabilGrupos');
            sql.add('order by Codigo');
            open;
      end;
      with Totalizadores do begin
           sql.clear;
           sql.add('select * ');
           sql.add('from DREContabilGrupos');
           sql.add('order by Codigo');
           open;
      end;
end;

procedure TfCadDREContabil.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadDREContabil.bPesquisaClick(Sender: TObject);
begin
     DREContabilGrupos.Cancel;
     LigaBotoes(true);
     Pesquisa(DREContabilGrupos, 'DREContabilGrupos', 'Codigo', 'Nome',cPesquisa.text)
end;

procedure TfCadDREContabil.DREContabilGruposBeforePost(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadDREContabil.DREContabilGruposBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;


procedure TfCadDREContabil.bLimparClick(Sender: TObject);
begin
//     cPesquisa.Clear;
end;

procedure TfCadDREContabil.bAdicionaClick(Sender: TObject);
begin
//     with dmContab do begin
//           GradeSub.DisableScroll;
//           DREContabilSubGrupos.SQL.Clear;
//           DREContabilSubGrupos.SQL.Add('UPDATE PlanoContas SET Selecao = 0, DRE = :pDRE WHERE Selecao = 1');
//           DREContabilSubGrupos.ParamByName('pDRE').AsInteger    := DREContabilGruposCodigo.AsInteger;
//           DREContabilSubGrupos.Execute;
//           DREContabilSubGrupos.SQL.Clear;
//           DREContabilSubGrupos.SQL.Add('SELECT Grupo     = DRE');
//           DREContabilSubGrupos.SQL.Add('      ,Conta     = Codigo');
//           DREContabilSubGrupos.SQL.Add('      ,Descricao = Descricao');
//           DREContabilSubGrupos.SQL.Add('FROM PlanoContas');
//           DREContabilSubGrupos.SQL.Add('WHERE DRE = :pDRE');
//           DREContabilSubGrupos.SQL.Add('ORDER BY Grupo, Conta');
//           DREContabilSubGrupos.ParamByName('pDRE').AsInteger := DREContabilGruposCodigo.AsInteger;
//           DREContabilSubGrupos.Open;
//           GradeSub.EnableScroll;
//
//           PlanoContas.Refresh;
//     end;
end;

procedure TfCadDREContabil.bRemoveClick(Sender: TObject);
begin
//     with dmContab do begin
//           PlanoContas.Edit;
//                       PlanoContasDRE.Clear;
//           PlanoContas.Post;
//                       
//           DREContabilSubGrupos.SQL.Clear;
//           DREContabilSubGrupos.SQL.Add('SELECT Grupo     = DRE');
//           DREContabilSubGrupos.SQL.Add('      ,Conta     = Codigo');
//           DREContabilSubGrupos.SQL.Add('      ,Descricao = Descricao');
//           DREContabilSubGrupos.SQL.Add('FROM PlanoContas');
//           DREContabilSubGrupos.SQL.Add('WHERE DRE = :pDRE');
//           DREContabilSubGrupos.SQL.Add('ORDER BY Grupo, Conta');
//           DREContabilSubGrupos.ParamByName('pDRE').AsInteger := DREContabilGruposCodigo.AsInteger;
//           DREContabilSubGrupos.Open;
//
//           PlanoContas.Refresh;
//     end;
end;

procedure TfCadDREContabil.SpeedButton1Click(Sender: TObject);
begin
//           GradeSub.DisableScroll;
//           DREContabilSubGrupos.SQL.Clear;
//           DREContabilSubGrupos.SQL.Add('UPDATE PlanoContas SET DRE = NULL WHERE DRE = :pDRE');
//           DREContabilSubGrupos.ParamByName('pDRE').AsInteger := dmCOntab.DREContabilGruposCodigo.AsInteger;
//           DREContabilSubGrupos.Execute;
//           DREContabilSubGrupos.SQL.Clear;
//           DREContabilSubGrupos.SQL.Add('SELECT Grupo     = DRE');
//           DREContabilSubGrupos.SQL.Add('      ,Conta     = Codigo');
//           DREContabilSubGrupos.SQL.Add('      ,Descricao = Descricao');
//           DREContabilSubGrupos.SQL.Add('FROM PlanoContas');
//           DREContabilSubGrupos.SQL.Add('WHERE DRE = :pDRE');
//           DREContabilSubGrupos.SQL.Add('ORDER BY Grupo, Conta');
//           DREContabilSubGrupos.ParamByName('pDRE').AsInteger := dmCOntab.DREContabilGruposCodigo.AsInteger;
//           DREContabilSubGrupos.Open;
//           GradeSub.EnableScroll;
//
//           dmContab.PlanoContas.Refresh;
end;

procedure TfCadDREContabil.cCodigoChange(Sender: TObject);
begin
//     DREContabilSubGrupos.Connection := Dados.Banco_Contabilidade;
//     GradeSub.DisableScroll;
//     DREContabilSubGrupos.SQL.Clear;
//     DREContabilSubGrupos.SQL.Add('SELECT Grupo     = DRE');
//     DREContabilSubGrupos.SQL.Add('      ,Conta     = Codigo');
//     DREContabilSubGrupos.SQL.Add('      ,Descricao = Descricao');
//     DREContabilSubGrupos.SQL.Add('FROM PlanoContas');
//     DREContabilSubGrupos.SQL.Add('WHERE DRE = :pDRE');
//     DREContabilSubGrupos.SQL.Add('ORDER BY Grupo, Conta');
//     DREContabilSubGrupos.ParamByName('pDRE').AsInteger := dmContab.DREContabilGruposCodigo.AsInteger;
//     DREContabilSubGrupos.Open;
//     GradeSub.EnableScroll;
end;

procedure TfCadDREContabil.cPesquisaChange(Sender: TObject);
begin
//      with dmContab do begin
//           GradePlano.DisableScroll;
//           PlanoContas.SQL.Clear;
//           if Trim(cPesquisa.Text) <> '' then
//              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Sintetica = 1 AND DRE IS NULL AND (Descricao LIKE'+QuotedStr('%'+cPesquisa.Text+'%')+') ORDER BY Conta, Codigo')
//           else
//              PlanoContas.SQL.Add('SELECT * FROM PlanoContas WHERE Sintetica = 1 AND DRE IS NULL ORDER BY Conta, Codigo');
//           PlanoContas.Open;
//           GradePlano.EnableScroll;
//      end;
end;


end.
