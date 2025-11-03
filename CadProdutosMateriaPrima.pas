unit CadProdutosMateriaPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniCheckBox, uniMultiItem, uniComboBox, uniDBComboBox, uniSweetAlert;

type
  TfCadProdutosMateriaPrima = class(TUniFrame)
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
    dstProdutosMat: TDataSource;
    tProdutosMat: TFDQuery;
    tRegistro: TFDQuery;
    RxDBGrid1: TuniDBGrid;
    Panel1: TuniPanel;
    MateriaPrima: TFDQuery;
    dsMateriaPrima: TDataSource;
    cCodigo_MateriaPrima: TUniDBLookupComboBox;
    cConversao_M2M3: TUniDBCheckBox;
    cQuantidade_Utilizada: TUniDBEdit;
    cCodigo_Produto: TUniDBLookupComboBox;
    tProdutos: TFDQuery;
    dstProdutos: TDataSource;
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
    procedure ProdutosMateriaPrimaBeforePost(DataSet: TDataSet);
    procedure ProdutosMateriaPrimaBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadProdutosMateriaPrima.bAdicionarClick(Sender: TObject);
begin
      with MateriaPrima do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadProdutosMateriaPrima.bExcluirClick(Sender: TObject);
begin
     with MateriaPrima do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Registro').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadProdutosMateriaPrima.bGravarClick(Sender: TObject);
begin
      with MateriaPrima do begin
           if State = dsInsert then begin
              MateriaPrima.FieldByName('Registro').Value := GeraCodigo('MateriaPrima', 'Registro');
           end;
           if FieldByName('Codigo_Produto').asinteger = 0 then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo_Produto.SetFocus;
              Abort;
           end;
           if FieldByName('Quantidade_Utilizada').Asfloat = 0 then begin
              MessageDlg('O campo "Quantidade Utilizada" deve ser informada !', mtError, [mbOK]);
              cQuantidade_Utilizada.SetFocus;
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

procedure TfCadProdutosMateriaPrima.bCancelarClick(Sender: TObject);
begin
      MateriaPrima.Cancel;
      LigaBotoes(true);
end;

procedure TfCadProdutosMateriaPrima.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         MateriaPrima.Edit;
         cCodigo_Produto.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadProdutosMateriaPrima.UniFrameDestroy(Sender: TObject);
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

procedure TfCadProdutosMateriaPrima.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadProdutosMateriaPrima.LigaBotoes(Estado:boolean);
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

procedure TfCadProdutosMateriaPrima.UniFrameCreate(Sender: TObject);
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

      with MateriaPrima do begin
           sql.clear;
           sql.add('select Registro');
           sql.add('      ,Codigo_Produto');
           sql.add('      ,Codigo_MateriaPrima');
           sql.add('      ,Conversao_M2M3');
           sql.add('      ,Quantidade_Utilizada');
           sql.add('from ProdutosMateriaPrima');
           sql.add('order by Codigo_Produto');
           open;
      end;
      with tProdutosMat do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao_Reduzida');
           sql.add('from Produtos');
           sql.add('where Materia_Prima = 1');
           sql.add('order by Descricao_Reduzida');
           open;
      end;
      with tProdutos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao_Reduzida');
           sql.add('      ,NCM');
           sql.add('from Produtos');
           sql.add('where Materia_Prima <> 1');
           sql.add('order by Descricao_Reduzida');
           open;
      end;
end;
procedure TfCadProdutosMateriaPrima.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadProdutosMateriaPrima.bPesquisaClick(Sender: TObject);
begin
     MateriaPrima.Cancel;
     LigaBotoes(true);
     Pesquisa(MateriaPrima, 'MateriaPrima', 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadProdutosMateriaPrima.ProdutosMateriaPrimaBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Registro').AsString, EstadoTabela(DataSet));
end;

procedure TfCadProdutosMateriaPrima.ProdutosMateriaPrimaBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Registro').AsString,'Delete');
end;



end.
