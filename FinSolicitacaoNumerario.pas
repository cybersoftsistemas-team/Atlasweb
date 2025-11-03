unit FinSolicitacaoNumerario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, 
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, 
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, uniMemo, uniMultiItem, uniComboBox, uniDBComboBox,
  uniCheckBox;

type
  TfFinSolicitacaoNumerario = class(TUniFrame)
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
    SolicitacaoNumerario: TFDQuery;
    dsSolicitacaoNumerario: TDataSource;
    cProcesso: TUniDBLookupComboBox;
    cNumero: TUniDBEdit;
    cData_Vencimento: TUniDBDateTimePicker;
    cData_Previsao: TUniDBDateTimePicker;
    cValor_Total: TUniDBEdit;
    clClassificacao: TUniDBLookupComboBox;
    clCentro_Custo: TUniDBLookupComboBox;
    clCliente: TUniDBLookupComboBox;
    cObservacao: TUniDBMemo;
    clDocumento: TUniDBLookupComboBox;
    clBanco: TUniDBLookupComboBox;
    cData: TUniDBEdit;
    cHora_Cadastro: TUniDBEdit;
    Processos: TFDQuery;
    dsProcesso: TDataSource;
    dsClientes: TDataSource;
    Clientes: TFDQuery;
    dsPlanoFin: TDataSource;
    PlanoFin: TFDQuery;
    TipoDoc: TFDQuery;
    dsTipoDoc: TDataSource;
    CentroCusto: TFDQuery;
    dsCentroCusto: TDataSource;
    Bancos: TFDQuery;
    dsBancos: TDataSource;
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
    procedure SolicitacaoNumerarioBeforePost(DataSet: TDataSet);
    procedure SolicitacaoNumerarioBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfFinSolicitacaoNumerario.bAdicionarClick(Sender: TObject);
begin
      with SolicitacaoNumerario do begin
           try
               LigaBotoes(false);
               Append;
                    fieldbyname('Data').Value          := date;
                    fieldbyname('Hora_Cadastro').Value := time;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfFinSolicitacaoNumerario.bExcluirClick(Sender: TObject);
begin
     with SolicitacaoNumerario do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Numero').AsString, mtConfirmation,mbYesNo,
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

procedure TfFinSolicitacaoNumerario.bGravarClick(Sender: TObject);
begin
      with SolicitacaoNumerario do begin
           if FieldByName('Valor_Total').Ascurrency <= 0 then begin
              MessageDlg('Campo "Valor" inválido!', mtError, [mbOK]);
              cValor_Total.SetFocus;
              Abort;
           end;

           try
               if State = dsInsert then begin
                  fieldByName('Numero').Value := GeraCodigo('SolicitacaoNumerario', 'Numero');
               end;

               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfFinSolicitacaoNumerario.bCancelarClick(Sender: TObject);
begin
      SolicitacaoNumerario.Cancel;
      LigaBotoes(true);
end;

procedure TfFinSolicitacaoNumerario.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         SolicitacaoNumerario.Edit;
         cNumero.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfFinSolicitacaoNumerario.UniFrameDestroy(Sender: TObject);
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

procedure TfFinSolicitacaoNumerario.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFinSolicitacaoNumerario.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bGravar.Enabled    := not Estado;
     pFicha.Enabled     := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfFinSolicitacaoNumerario.UniFrameCreate(Sender: TObject);
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

      with SolicitacaoNumerario do begin
           sql.clear;
           sql.add('select *');
           sql.add('from SolicitacaoNumerario');
           sql.add('order by Numero');
           open;
      end;
      with Processos do begin
           sql.clear;
           sql.add('select Processo');
           sql.add('      ,Declaracao = DI');
           sql.add('  	  ,Tipo = ''IMPORTAÇÃO'' ');
           sql.add('from ProcessosImp PI');
           sql.add('where Data_Encerramento is null');
           sql.add('union all');
           sql.add('select Processo');
           sql.add('      ,Declaracao = DE');
           sql.add('  	  ,Tipo = ''EXPORTAÇÃO'' ');
           sql.add('from ProcessosExp PE');
           sql.add('where Data_Encerramento is null');
           sql.add('order by Tipo, Declaracao');
           open;
      end;
      with Clientes do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from Destinatarios');
           sql.add('where Cliente = 1');
           sql.add('and isnull (Desativado,0)=0');
           sql.add('order by Nome');
           open;
      end;
      with PlanoFin do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome_Financeiro');
           sql.add('from PlanoContas');
           sql.add('where isnull (Desativada,0) = 0');
           sql.add('order by Nome_Financeiro');
           open;
      end;
      with TipoDoc do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from TipoDocumento');
           sql.add('where isnull (Desativada,0)=0');
           sql.add('order by Nome');
           open;
      end;
      with CentroCusto do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from CentroCusto');
           sql.add('order by Codigo');
           open;
      end;
      with Bancos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,Conta');
           sql.add('from Bancos');
           sql.add('where isnull (Desativado,0)=0');
           sql.add('order by Nome,Conta');
           open;
      end;
end;
procedure TfFinSolicitacaoNumerario.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfFinSolicitacaoNumerario.bPesquisaClick(Sender: TObject);
begin
     SolicitacaoNumerario.Cancel;
     LigaBotoes(true);
     Pesquisa(SolicitacaoNumerario,'SolicitacaoNumerario','Numero', 'Processo',cPesquisa.text)
end;

procedure TfFinSolicitacaoNumerario.SolicitacaoNumerarioBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Processo').AsString, EstadoTabela(DataSet));
end;


procedure TfFinSolicitacaoNumerario.SolicitacaoNumerarioBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Processo').AsString, 'Delete');
end;


end.
