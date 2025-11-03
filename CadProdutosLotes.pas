unit CadProdutosLotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMultiItem, uniComboBox, uniDBComboBox, uniSweetAlert;

type
  TfCadProdutosLotes = class(TUniFrame)
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
    dsNotas: TDataSource;
    Notas: TFDQuery;
    tRegistro: TFDQuery;
    tTotal: TFDQuery;
    tTotalEntradas: TFDQuery;
    RxDBGrid1: TuniDBGrid;
    Panel1: TuniPanel;
    ProdutosLotes: TFDQuery;
    dsProdutosLotes: TDataSource;
    cQuantidade_Entrada: TUniDBEdit;
    cData_Fabricacao: TUniDBDateTimePicker;
    cProduto: TUniDBLookupComboBox;
    Produtos: TFDQuery;
    dsProdutos: TDataSource;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    cDescricao: TUniDBEdit;
    ProdutosLotesRegistro: TIntegerField;
    ProdutosLotesProduto: TIntegerField;
    ProdutosLotesDescricao: TStringField;
    ProdutosLotesLote: TStringField;
    ProdutosLotesData_Fabricacao: TSQLTimeStampField;
    ProdutosLotesData_Validade: TSQLTimeStampField;
    ProdutosLotesQuantidade_Entrada: TFloatField;
    cData_Validade: TUniDBDateTimePicker;
    ProdutosLotesProduto_Descricao: TStringField;
    cLote: TUniDBEdit;
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
    procedure ProdutosLotesBeforePost(DataSet: TDataSet);
    procedure ProdutosLotesBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadProdutosLotes.bAdicionarClick(Sender: TObject);
begin
      with ProdutosLotes do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadProdutosLotes.bExcluirClick(Sender: TObject);
begin
     with ProdutosLotes do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Detalhe').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadProdutosLotes.bGravarClick(Sender: TObject);
begin
      with ProdutosLotes do begin
           if (State = dsInsert) then begin
              ProdutosLotes.FieldByName('Registro').Value := GeraCodigo('ProdutosLotes', 'Registro');
           end;
          {
           if (State = dsInsert) and (Existe(ProdutosLotes, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           }
           {
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           }
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

procedure TfCadProdutosLotes.bCancelarClick(Sender: TObject);
begin
      ProdutosLotes.Cancel;
      LigaBotoes(true);
end;

procedure TfCadProdutosLotes.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         ProdutosLotes.Edit;
//         cCodigo.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadProdutosLotes.UniFrameDestroy(Sender: TObject);
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

procedure TfCadProdutosLotes.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadProdutosLotes.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     Pasta.ActivePageIndex := 1;
     pficha.Enabled        := not Estado;
end;

procedure TfCadProdutosLotes.UniFrameCreate(Sender: TObject);
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

      ProdutosLotes.sql.clear;
      ProdutosLotes.sql.add('select Registro');
      ProdutosLotes.sql.add('      ,Produto');
      ProdutosLotes.sql.add('      ,Descricao');
      ProdutosLotes.sql.add('      ,Lote');
      ProdutosLotes.sql.add('      ,Data_Fabricacao');
      ProdutosLotes.sql.add('      ,Data_Validade');
      ProdutosLotes.sql.add('      ,Quantidade_Entrada');
      ProdutosLotes.sql.add('from ProdutosLotes');
      ProdutosLotes.sql.add('order by Registro');
      ProdutosLotes.open;

      Produtos.sql.clear;
      Produtos.sql.add('select Codigo');
      PRodutos.sql.add('      ,Descricao_Reduzida');
      Produtos.sql.add('from produtos');
      Produtos.sql.add('where Desativado <> 1');
      Produtos.sql.add('and isnull(Lote_Obrigatorio, 0) = 1');
      Produtos.sql.add('order by Descricao_Reduzida');
      Produtos.Open;
end;

procedure TfCadProdutosLotes.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadProdutosLotes.bPesquisaClick(Sender: TObject);
begin
     ProdutosLotes.Cancel;
     LigaBotoes(true);
     Pesquisa(ProdutosLotes, 'ProdutosLotes', 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadProdutosLotes.ProdutosLotesBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadProdutosLotes.ProdutosLotesBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

end.
