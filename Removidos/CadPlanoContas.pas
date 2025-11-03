unit CadPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StrUtils,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDBDateTimePicker, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, uniDBRadioGroup, uniGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniRadioGroup, uniMultiItem, uniComboBox, uniDBComboBox, uniCheckBox, uniDateTimePicker, uniBitBtn,
  uniBasicGrid, uniSweetAlert;

type
  TfCadPlanoContas = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Grade: TUniDBGrid;
    uniTabSheet1: TuniTabSheet;
    UniScrollBox1: TUniScrollBox;
    pFicha1: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    pBarraPesq: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    dsPlanoContas: TDataSource;
    cConta: TUniDBEdit;
    cCodigo: TUniDBNumberEdit;
    cNome: TUniDBEdit;
    cSaldo_Anterior: TUniDBFormattedNumberEdit;
    cData_Inclusao: TUniDBDateTimePicker;
    UniGroupBox1: TUniGroupBox;
    cSintetica: TUniDBCheckBox;
    cLALUR: TUniDBCheckBox;
    cMostrar_Balanco: TUniDBCheckBox;
    cDRE: TUniDBCheckBox;
    cConta_Resultado: TUniDBCheckBox;
    cTerceiros_Grupo: TUniDBLookupComboBox;
    dsTerceiros: TDataSource;
    cNatureza: TUniDBRadioGroup;
    cGrupo: TUniDBLookupComboBox;
    dsGrupos: TDataSource;
    PlanoContas: TFDQuery;
    Grupos: TFDQuery;
    Terceiros: TFDQuery;
    dsConfig: TDataSource;
    Config: TFDQuery;
    PlanoECF: TFDQuery;
    dsPlanoECF: TDataSource;
    cConta_ECF: TUniDBLookupComboBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure GradeDrawColumnCell(Sender: TObject; ACol, ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure PlanoContasBeforePost(DataSet: TDataSet);
    procedure PlanoContasBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadPlanoContas.bAdicionarClick(Sender: TObject);
begin
      with PlanoContas do begin
           try
               LigaBotoes(false);
               Append;
               cConta.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadPlanoContas.bCancelarClick(Sender: TObject);
begin
      PlanoContas.Cancel;
      LigaBotoes(true);
end;

procedure TfCadPlanoContas.bEditarClick(Sender: TObject);
begin
      try
          LigaBotoes(false);
          PlanoContas.Edit;
          cConta.setfocus;
      except
          Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadPlanoContas.bExcluirClick(Sender: TObject);
begin
     with PlanoContas do begin
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

procedure TfCadPlanoContas.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadPlanoContas.bSalvarClick(Sender: TObject);
begin
      with PlanoContas do begin
           if (State = dsInsert) then begin
              PlanoContas.FieldByName('Codigo').Value := GeraCodigo('PlanoContas', 'Codigo');
           end;
           if (State = dsInsert) and (Existe(PlanoContas, 'Codigo', FieldByName('Codigo').AsString)) then begin
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
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadPlanoContas.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
     pFicha1.Enabled       := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadPlanoContas.PlanoContasBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString, 'Delete');
end;

procedure TfCadPlanoContas.PlanoContasBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadPlanoContas.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone;
          end;
      end;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      PlanoContas.sql.clear;
      PlanoContas.sql.add('select * from PlanoContas order by Conta, Nome');
      PlanoContas.open;

      PlanoECF.sql.clear;
      PlanoECF.sql.add('select * from PlanoContasECF order by Conta, Nome');
      PlanoECF.open;

      Config.SQL.Clear;
      Config.SQL.Add('select Empresa, Mascara_PlanoContas from config where empresa = :pEmpresa');
      Config.ParamByName('pEmpresa').AsString := uniMainModule.mEmpresaAtiva;
      Config.Open;

      Terceiros.SQL.Clear;
      Terceiros.SQL.Add('select * from Terceiros order by Nome');
      Terceiros.Open;

      Grupos.SQL.Clear;
      Grupos.SQL.Add('select * from PlanoContasGrupos order by Nome');
      Grupos.Open;
end;

procedure TfCadPlanoContas.UniFrameDestroy(Sender: TObject);
begin
      PlanoContas.close;
      Config.Close;
      Terceiros.Close;
      Grupos.Close;
      Config.Close;
end;

procedure TfCadPlanoContas.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadPlanoContas.GradeDrawColumnCell(Sender: TObject; ACol, ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
     if Column.FieldName = 'Conta' then begin
        TStringField(Column.Field).EditMask := copy(Config.FieldByName('Mascara_PlanoContas').asstring, 1, Length(TStringField(Column.Field).Value))+';0; ';
     end;
end;

procedure TfCadPlanoContas.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(PlanoContas, 'PlanoContas', 'Codigo', 'Nome', cPesquisa.text);
end;


end.
