unit CadOrigemContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniButton, uniDBNavigator, uniEdit,
  uniGUIBaseClasses, FireDAC.Comp.Client, Data.DB, uniRadioGroup, uniDBRadioGroup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMultiItem, uniComboBox, uniDBComboBox, uniCheckBox, uniBitBtn, uniBasicGrid, uniSweetAlert;

type
  TfCadOrigemContas = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Grade: TUniDBGrid;
    uniTabSheet1: TuniTabSheet;
    uniScrollBox1: TUniScrollBox;
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
    dsOrigemContas: TDataSource;
    cConsignacao: TUniDBCheckBox;
    dsPlanoContas: TDataSource;
    cConta: TUniDBLookupComboBox;
    cOrigem: TUniDBRadioGroup;
    cPgto_Rec: TUniDBRadioGroup;
    cNac_Estr: TUniDBRadioGroup;
    cModalidade: TUniDBLookupComboBox;
    dsModalidades: TDataSource;
    dsTerceiros: TDataSource;
    cTerceiros: TUniDBLookupComboBox;
    Terceiros: TFDQuery;
    OrigemContas: TFDQuery;
    PlanoContas: TFDQuery;
    Modalidades: TFDQuery;
    cConta_ECF: TUniDBLookupComboBox;
    PlanoECF: TFDQuery;
    dsPlanoECF: TDataSource;
    cGrupo_Financeiro: TUniDBLookupComboBox;
    Grupos: TFDQuery;
    dsGrupos: TDataSource;
    cGrupo_Processo: TUniDBRadioGroup;
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
    procedure cOrigemClick(Sender: TObject);
    procedure OrigemContasBeforePost(DataSet: TDataSet);
    procedure OrigemContasBeforeDelete(DataSet: TDataSet);
    procedure OrigemContasAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, Funcoes;

procedure TfCadOrigemContas.bAdicionarClick(Sender: TObject);
begin
      with OrigemContas do begin
           try
               LigaBotoes(false);
               Append;
               cConta.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadOrigemContas.bCancelarClick(Sender: TObject);
begin
      OrigemContas.Cancel;
      LigaBotoes(true);
end;

procedure TfCadOrigemContas.bEditarClick(Sender: TObject);
begin
      try
          LigaBotoes(false);
          OrigemContas.Edit;
          cConta.setfocus;
      except
          Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadOrigemContas.bExcluirClick(Sender: TObject);
begin
     with OrigemContas do begin
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

procedure TfCadOrigemContas.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadOrigemContas.bSalvarClick(Sender: TObject);
begin
      with OrigemContas do begin
           if trim(FieldByName('Conta').Asstring) = '' then begin
              MessageDlg('O campo "Grupo do Plano de Contas" não pode ficar em branco!', mtError, [mbOK]);
              cConta.SetFocus;
              Abort;
           end;
           try
               if cNac_Estr.ItemIndex < 0 then begin
                  FieldByName('Nac_Estr').value := 0;
               end;
               FieldByName('Nome').value := trim(PlanoContas.FieldByName('Nome').Asstring);
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadOrigemContas.LigaBotoes(Estado:boolean);
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

procedure TfCadOrigemContas.OrigemContasAfterScroll(DataSet: TDataSet);
begin
     cConsignacao.Enabled      := cOrigem.ItemIndex = 0;
     cNac_Estr.Enabled         := cOrigem.ItemIndex < 2;
     cGrupo_Processo.Enabled   := cOrigem.ItemIndex = 3;
     cGrupo_Financeiro.Enabled := cOrigem.ItemIndex = 4;
     cPgto_Rec.Enabled         := cOrigem.ItemIndex = 4;
end;

procedure TfCadOrigemContas.OrigemContasBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadOrigemContas.OrigemContasBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadOrigemContas.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).color := clnone;
          end;
      end;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      OrigemContas.sql.clear;
      OrigemContas.sql.add('select * from OrigemContas order by Conta');
      OrigemContas.open;

      PlanoContas.SQL.Clear;
      PlanoContas.SQL.Add('select Conta, Codigo, Nome');
      PlanoContas.SQL.Add('from PlanoContas pl');
      PlanoContas.SQL.Add('where sintetica = 1');
      PlanoContas.SQL.Add('and   Nivel > 3');
      PlanoContas.SQL.Add('and   len(Conta) = (select max(len(Conta)) from PlanoContas pl2 where Sintetica = 1 and pl2.Conta like pl.Conta+''%'')');
      PlanoContas.SQL.Add('order by Conta');
      PlanoContas.Open;

      PlanoECF.SQL.Clear;
      PlanoECF.SQL.Add('select Conta, Nome');
      PlanoECF.SQL.Add('from PlanoContasECF');
      PlanoECF.SQL.Add('order by Conta');
      PlanoECF.Open;

      Modalidades.SQL.Clear;
      Modalidades.SQL.Add('select Codigo, Descricao from ModalidadeImportacao order by Codigo');
      Modalidades.Open;

      Terceiros.SQL.Clear;
      Terceiros.SQL.Add('select * from Terceiros order by Codigo');
      Terceiros.Open;

      Grupos.SQL.Clear;
      Grupos.sql.add('select * from PlanoFinanceiroGrupos order by Nome');
      Grupos.Open;
end;

procedure TfCadOrigemContas.UniFrameDestroy(Sender: TObject);
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

procedure TfCadOrigemContas.cOrigemClick(Sender: TObject);
begin
     cConsignacao.Enabled      := cOrigem.ItemIndex = 0;
     cNac_Estr.Enabled         := cOrigem.ItemIndex < 2;
     cGrupo_Processo.Enabled   := cOrigem.ItemIndex = 3;
     cGrupo_Financeiro.Enabled := cOrigem.ItemIndex = 4;
     cPgto_Rec.Enabled         := cOrigem.ItemIndex = 4;
end;

procedure TfCadOrigemContas.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadOrigemContas.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(OrigemContas, 'OrigemContas', 'Conta', 'Nome',cPesquisa.text);
end;


end.
