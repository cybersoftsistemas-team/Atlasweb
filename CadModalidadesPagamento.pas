unit CadModalidadesPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, uniRadioGroup, uniDBRadioGroup, FireDAC.Comp.DataSet, uniSweetAlert;

type
  TfCadModalidadesPagamento = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
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
    Modal: TFDQuery;
    dsModal: TDataSource;
    UniTabSheet1: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    pFicha: TUniPanel;
    cDescricao: TUniDBEdit;
    cCodigo: TUniDBEdit;
    cForma_Pagamento: TUniDBRadioGroup;
    cNumero_Parcelas: TUniDBEdit;
    cPrazo_Primeira: TUniDBEdit;
    cPrazo_Demais: TUniDBEdit;
    cPrazo_Dia: TUniDBEdit;
    Grade: TUniDBGrid;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure ModalidadesPagamentoBeforePost(DataSet: TDataSet);
    procedure ModalidadesPagamentoBeforeDelete(DataSet: TDataSet);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPrazo_PrimeiraExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadModalidadesPagamento.bAdicionarClick(Sender: TObject);
begin
      with Modal do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadModalidadesPagamento.bExcluirClick(Sender: TObject);
begin
      with Modal do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('cDescricao').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadModalidadesPagamento.bGravarClick(Sender: TObject);
begin
      with Modal do begin
           if (State = dsInsert) then begin
              Modal.FieldByName('Codigo').Value := GeraCodigo('Modal', 'Codigo');
           end;
           if (State = dsInsert) and (Existe(Modal, 'Descricao', FieldByName('Descricao').AsString)) then begin
              MessageDlg('Já existe uma "Descricao" cadastrada com esse codigo!'+#13+#13, mtError, [mbOK]);
              cDescricao.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Código" não pode ficar em branco!', mtError, [mbOK]);
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

procedure TfCadModalidadesPagamento.bCancelarClick(Sender: TObject);
begin
      Modal.Cancel;
      LigaBotoes(true);
end;

procedure TfCadModalidadesPagamento.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Modal.Edit;
         cDescricao.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadModalidadesPagamento.UniFrameDestroy(Sender: TObject);
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

procedure TfCadModalidadesPagamento.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadModalidadesPagamento.LigaBotoes(Estado:boolean);
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

procedure TfCadModalidadesPagamento.UniFrameCreate(Sender: TObject);
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

      Modal.sql.clear;
      Modal.sql.add('select Codigo');
      Modal.sql.add('      ,Descricao');
      Modal.sql.add('      ,Numero_Parcelas');
      Modal.sql.add('      ,Prazo_Primeira');
      Modal.sql.add('      ,Prazo_Demais');
      Modal.sql.add('      ,Forma_Pagamento');
      Modal.sql.add('      ,Prazo_Dia');
      Modal.sql.add('from ModalidadesPagamento');
      Modal.sql.add('order by Codigo');
      Modal.open;
end;

procedure TfCadModalidadesPagamento.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadModalidadesPagamento.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Modal, 'ModalidadesPagamento', 'Codigo', 'Descricao', cPesquisa.text);
end;

procedure TfCadModalidadesPagamento.ModalidadesPagamentoBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadModalidadesPagamento.ModalidadesPagamentoBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadModalidadesPagamento.cPrazo_PrimeiraExit(Sender: TObject);
begin
      If Modal.fieldbyname('Prazo_Primeira').AsInteger > 0 then
         cForma_Pagamento.ItemIndex := 1
      else
         cForma_Pagamento.ItemIndex := 0;
end;


end.
