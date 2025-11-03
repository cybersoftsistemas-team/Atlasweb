unit CadTabelaPISCOFINS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMultiItem, uniComboBox, uniDBComboBox, uniRadioGroup, uniDBRadioGroup, uniSweetAlert;

type
  TfCadTabelaPISCOFINS = class(TUniFrame)
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
    PISCOFINS: TFDQuery;
    dsPISCOFINS: TDataSource;
    cEntrada: TUniDBEdit;
    cRegime_Apuracao: TUniDBRadioGroup;
    cSaida: TUniDBEdit;
    cMajorada: TUniDBEdit;
    cImposto: TUniDBComboBox;
    cTipo: TUniDBRadioGroup;
    cData_Inicio: TUniDBDateTimePicker;
    clModalidade: TUniDBLookupComboBox;
    cData_Final: TUniDBDateTimePicker;
    Modalidade: TFDQuery;
    dsModalidade: TDataSource;
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
    procedure cTipoClick(Sender: TObject);
    procedure PISCOFINSBeforePost(DataSet: TDataSet);
    procedure PISCOFINSBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadTabelaPISCOFINS.bAdicionarClick(Sender: TObject);
begin
      with PISCOFINS do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadTabelaPISCOFINS.bExcluirClick(Sender: TObject);
begin
     with PISCOFINS do begin
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

procedure TfCadTabelaPISCOFINS.bGravarClick(Sender: TObject);
begin
      with PISCOFINS do begin
           try
               if State = dsInsert then begin
                 FieldByName('Registro').Value := GeraCodigo('TabelaPISCOFINS', 'Registro');
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

procedure TfCadTabelaPISCOFINS.bCancelarClick(Sender: TObject);
begin
      PISCOFINS.Cancel;
      LigaBotoes(true);
end;

procedure TfCadTabelaPISCOFINS.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         PISCOFINS.Edit;
         cImposto.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadTabelaPISCOFINS.UniFrameDestroy(Sender: TObject);
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

procedure TfCadTabelaPISCOFINS.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadTabelaPISCOFINS.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bGravar.Enabled    := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfCadTabelaPISCOFINS.PISCOFINSBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Imposto').AsString, EstadoTabela(DataSet));
end;

procedure TfCadTabelaPISCOFINS.PISCOFINSBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadTabelaPISCOFINS.UniFrameCreate(Sender: TObject);
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

      with PISCOFINS do begin
           sql.clear;
           sql.add('select Registro');
           sql.add('      ,Imposto');
           sql.add('      ,Entrada');
           sql.add('      ,Saida');
           sql.add('      ,Majorada');
           sql.add('      ,Data_Inicio');
           sql.add('      ,Data_Final');
           sql.add('      ,Tipo');
           sql.add('      ,Modalidade');
           sql.add('      ,Modalidade_Desc = (select Descricao from ModalidadeImportacao where Codigo = Modalidade)');
           sql.add('      ,Regime_Apuracao');
           sql.add('      ,Tipo_Desc = case when Tipo = ''B'' then ''Basica'' ');
           sql.add('      	                when Tipo = ''M'' then ''DI'' ');
           sql.add('      						      when Tipo = ''T'' then ''Terceiros'' ');
           sql.add('                   end');
           sql.add('      ,Modalidade_Desc = (select Descricao from ModalidadeImportacao where Codigo = Modalidade)');
           sql.add('      ,Regime_Desc = case when Regime_Apuracao = ''R'' then ''Lucro Real'' ELSE ''Lucro Presumido'' end');
           sql.add('from TabelaPISCOFINS');
           sql.add('order by Imposto, Tipo, Tipo_Desc');
           open;
      end;
      with Modalidade do begin
           sql.clear;
           sql.add('select Codigo, Descricao from ModalidadeImportacao order by Codigo');
           open;
      end;
end;
procedure TfCadTabelaPISCOFINS.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadTabelaPISCOFINS.bPesquisaClick(Sender: TObject);
begin
     PISCOFINS.Cancel;
     LigaBotoes(true);
     Pesquisa(PISCOFINS, 'TabelaPISCOFINS', 'Codigo', 'Imposto',cPesquisa.text)
end;

procedure TfCadTabelaPISCOFINS.cTipoClick(Sender: TObject);
begin
//      cRegime.Enabled := cTipo.ItemIndex = 0;
//      cSaida.Enabled  := cTipo.ItemIndex < 2;
//      lSaida.Enabled  := cTipo.ItemIndex < 2;
//      If cTipo.ItemIndex < 2 then
//         lDI.Caption := 'Alíquota na DI'
//      else
//         lDI.Caption := 'Alíquota na NF';
//
end;




end.
