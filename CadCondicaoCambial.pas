unit CadCondicaoCambial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, uniMemo, uniMultiItem, uniComboBox, uniDBComboBox, FireDAC.Comp.DataSet, uniSweetAlert;

type
  TfCadCondicaoCambial = class(TUniFrame)
    Alerta: TUniSweetAlert;
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Grade: TUniDBGrid;
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
    CondicaoCambial: TFDQuery;
    dsCondicaoCambial: TDataSource;
    UniScrollBox2: TUniScrollBox;
    pFicha: TUniPanel;
    cDescricao: TUniDBEdit;
    cCodigo: TUniDBEdit;
    cPercentual1: TUniDBEdit;
    cPercentual2: TUniDBEdit;
    cPercentual3: TUniDBEdit;
    cVencimento1: TUniDBEdit;
    cVencimento2: TUniDBEdit;
    cVencimento3: TUniDBEdit;
    cVencimento4: TUniDBEdit;
    RxDBLookupCombo1: TUniDBLookupComboBox;
    RxDBLookupCombo2: TUniDBLookupComboBox;
    RxDBLookupCombo3: TUniDBLookupComboBox;
    RxDBLookupCombo4: TUniDBLookupComboBox;
    cTermos_Comerciais: TUniDBMemo;
    cObservacao: TUniDBMemo;
    cTotalPercentual: TUniFormattedNumberEdit;
    cTotalDias: TUniFormattedNumberEdit;
    Plano: TFDQuery;
    dsPlano: TDataSource;
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
    procedure CondicaoCambialBeforePost(DataSet: TDataSet);
    procedure CondicaoCambialBeforeDelete(DataSet: TDataSet);
    procedure cPercentual1Change(Sender: TObject);
    procedure cVencimento1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadCondicaoCambial.bAdicionarClick(Sender: TObject);
begin
      with CondicaoCambial do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadCondicaoCambial.bExcluirClick(Sender: TObject);
begin
     with CondicaoCambial do begin
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

procedure TfCadCondicaoCambial.bGravarClick(Sender: TObject);
begin
      with CondicaoCambial do begin
           if (State = dsInsert) and (Existe(CondicaoCambial, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Descricao').AsString) = '' then begin
              MessageDlg('O campo "Descricao" não pode ficar em branco!', mtError, [mbOK]);
              cDescricao.SetFocus;
              Abort;
           end;

           try
               if (State = dsInsert) then begin
                  CondicaoCambial.FieldByName('Codigo').Value := GeraCodigo('CondicaoCambial', 'Codigo');
               end;

               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadCondicaoCambial.bCancelarClick(Sender: TObject);
begin
      CondicaoCambial.Cancel;
      LigaBotoes(true);
end;

procedure TfCadCondicaoCambial.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         CondicaoCambial.Edit;
         cCodigo.setfocus;
     except
         Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadCondicaoCambial.UniFrameDestroy(Sender: TObject);
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

procedure TfCadCondicaoCambial.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadCondicaoCambial.LigaBotoes(Estado:boolean);
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

procedure TfCadCondicaoCambial.UniFrameCreate(Sender: TObject);
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

      CondicaoCambial.sql.clear;
      CondicaoCambial.sql.add('select *');
      CondicaoCambial.sql.add('from   CondicaoCambial');
      CondicaoCambial.sql.add('order by Codigo');
      CondicaoCambial.open;

      Plano.open;
      Plano.sql.clear;
      Plano.sql.add('select Codigo');
      Plano.sql.add('      ,Nome');
      Plano.sql.add('from PlanoFinanceiro');
      Plano.sql.add('order by Nome');
      Plano.open;
end;
procedure TfCadCondicaoCambial.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadCondicaoCambial.bPesquisaClick(Sender: TObject);
begin
      CondicaoCambial.Cancel;
      LigaBotoes(true);
      Pesquisa(CondicaoCambial, 'CondicaoCambial', 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadCondicaoCambial.CondicaoCambialBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadCondicaoCambial.CondicaoCambialBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadCondicaoCambial.cPercentual1Change(Sender: TObject);
begin
      cTotalPercentual.Value := (CondicaoCambial.FieldByName('Percentual1').asfloat + CondicaoCambial.fieldbyname('Percentual2').asFloat + CondicaoCambial.fieldbyname('Percentual3').asfloat);
      cTotalDias.Value       := (CondicaoCambial.FieldByName('Vencimento1').asfloat + CondicaoCambial.FieldByName('Vencimento2').asfloat + CondicaoCambial.FieldByName('Vencimento3').asfloat);
end;

procedure TfCadCondicaoCambial.cVencimento1Change(Sender: TObject);
begin
      cTotalPercentual.Value := (CondicaoCambial.FieldByName('Percentual1').asfloat + CondicaoCambial.fieldbyname('Percentual2').asFloat + CondicaoCambial.fieldbyname('Percentual3').asfloat);
      cTotalDias.Value       := (CondicaoCambial.FieldByName('Vencimento1').asfloat + CondicaoCambial.FieldByName('Vencimento2').asfloat + CondicaoCambial.FieldByName('Vencimento3').asfloat);
end;


end.
