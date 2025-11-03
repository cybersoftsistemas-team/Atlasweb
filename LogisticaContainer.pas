unit LogisticaContainer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, 
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, uniDBComboBox, uniMemo, uniMultiItem, uniCheckBox;

type
  TfLogisticaContainer = class(TUniFrame)
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
    dsArmazens: TDataSource;
    Armazens: TFDQuery;
    tContainer: TFDQuery;
    tPesquisa: TFDQuery;
    ArmazensCodigo: TIntegerField;
    ArmazensCNPJ: TStringField;
    ArmazensNome: TStringField;
    DBGrid2: TuniDBGrid;
    Container: TFDQuery;
    dsContainer: TDataSource;
    cNumero: TUniDBEdit;
    cHora_Entrada: TUniDBEdit;
    cHora_Saida: TUniDBEdit;
    cFree_Time: TUniDBEdit;
    cTipo: TUniDBEdit;
    cTamanho: TUniDBEdit;
    cArmador: TUniDBEdit;
    clArmazem: TUniDBLookupComboBox;
    cDocumento_Carga: TUniDBEdit;
    cTerminal: TUniDBEdit;
    cHora_Entrega: TUniDBEdit;
    clTransportadora_Entrada: TUniDBLookupComboBox;
    clTransportadora_Saida: TUniDBLookupComboBox;
    cTipo_Embarque: TUniDBComboBox;
    cDemurrage: TUniFormattedNumberEdit;
    cTotalME: TUniFormattedNumberEdit;
    cTotalReal: TUniFormattedNumberEdit;
    cTaxa: TUniFormattedNumberEdit;
    cMemo_Processos: TUniDBMemo;
    cValor_Demurrage: TUniDBEdit;
    cObservacao: TUniDBMemo;
    cData_Entrada: TUniDBDateTimePicker;
    cData_Saida: TUniDBDateTimePicker;
    cData_Entrega: TUniDBDateTimePicker;
    cData_Pagamento: TUniDBDateTimePicker;
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
    procedure ContainerBeforePost(DataSet: TDataSet);
    procedure ContainerBeforeDelete(DataSet: TDataSet);
//    procedure cData_EntradaChange(Sender: TObject);
//    procedure cData_EntradaExit(Sender: TObject);
//    procedure DBGrid2DblClick(Sender: TObject);
//    procedure cNumeroChange(Sender: TObject);
//    procedure cNumeroExit(Sender: TObject);
//    procedure cHora_EntradaExit(Sender: TObject);
//    procedure cFree_TimeExit(Sender: TObject);
//    procedure cValor_DemurrageChange(Sender: TObject);
//    procedure cProcessoChange(Sender: TObject);
//    procedure cTipo_EmbarqueExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfLogisticaContainer.bAdicionarClick(Sender: TObject);
begin
      with Container do begin
           try
               LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfLogisticaContainer.bExcluirClick(Sender: TObject);
begin
     with Container do begin
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

procedure TfLogisticaContainer.bGravarClick(Sender: TObject);
begin
      with Container do begin
          {
           if (State = dsInsert) then begin
              Container.FieldByName('Numero').Value := GeraCodigo(Container, 'Numero');
           end;
          }
           if (State = dsInsert) and (Existe(Container, 'Numero', FieldByName('Numero').AsString)) then begin
              MessageDlg('Já existe um "Numero" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cNumero.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Numero').AsString) = '' then begin
              MessageDlg('O campo "Numero" não pode ficar em branco!', mtError, [mbOK]);
              cNumero.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Numero').AsString) = '' then begin
              MessageDlg('O campo "Numero" não pode ficar em branco!', mtError, [mbOK]);
              cNumero.SetFocus;
              Abort;
           end;

           try
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfLogisticaContainer.bCancelarClick(Sender: TObject);
begin
      Container.Cancel;
      LigaBotoes(true);
end;

procedure TfLogisticaContainer.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Container.Edit;
         cNumero.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfLogisticaContainer.UniFrameDestroy(Sender: TObject);
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

procedure TfLogisticaContainer.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfLogisticaContainer.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bGravar.Enabled    := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfLogisticaContainer.UniFrameCreate(Sender: TObject);
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

      with Container do begin
           sql.clear;
           sql.add('select Registro');
           sql.add('      ,Empresa');
           sql.add('      ,Numero');
           sql.add('      ,Processos');
           sql.add('      ,Armazem');
           sql.add('      ,Data_Entrada');
           sql.add('      ,Hora_Entrada');
           sql.add('      ,Data_Saida');
           sql.add('      ,Hora_Saida');
           sql.add('      ,Free_Time');
           sql.add('      ,Valor_Demurrage');
           sql.add('      ,Tipo');
           sql.add('      ,Tamanho');
           sql.add('      ,Armador');
           sql.add('      ,Documento_Carga');
           sql.add('      ,Terminal');
           sql.add('      ,Data_Entrega');
           sql.add('      ,Hora_Entrega');
           sql.add('      ,Transportadora_Entrada');
           sql.add('      ,Transportadora_Saida');
           sql.add('      ,Observacao');
           sql.add('      ,Tipo_Embarque');
           sql.add('      ,Data_Pagamento');
           sql.add('from Container');
           sql.add('order by Numero');
           open;
      end;
end;
procedure TfLogisticaContainer.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfLogisticaContainer.bPesquisaClick(Sender: TObject);
begin
     Container.Cancel;
     LigaBotoes(true);
     Pesquisa(Container,'Container','Numero', 'Numero',cPesquisa.text)
end;

procedure TfLogisticaContainer.ContainerBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, EstadoTabela(DataSet));
end;


procedure TfLogisticaContainer.ContainerBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, 'Delete');
end;













end.
