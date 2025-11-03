unit CadProdutosDetalhes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMultiItem, uniComboBox, uniDBComboBox, uniSweetAlert;

type
  TfCadProdutosDetalhes = class(TUniFrame)
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
    ProdutosDetalhe: TFDQuery;
    dsProdutosDetalhe: TDataSource;
    cDetalhe: TUniDBLookupComboBox;
    cNota: TUniDBLookupComboBox;
    cQuantidade_Entrada: TUniDBEdit;
    cData_Entrada: TUniDBDateTimePicker;
    cProduto: TUniDBLookupComboBox;
    Detalhes: TFDQuery;
    dsDetalhes: TDataSource;
    Produtos: TFDQuery;
    dsProdutos: TDataSource;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    cProcesso: TUniDBEdit;
    ProdutosDetalheRegistro: TIntegerField;
    ProdutosDetalheProduto: TIntegerField;
    ProdutosDetalheProcesso: TStringField;
    ProdutosDetalheDetalhe: TSmallintField;
    ProdutosDetalheNota_Entrada: TIntegerField;
    ProdutosDetalheData_Entrada: TSQLTimeStampField;
    ProdutosDetalheItem: TSmallintField;
    ProdutosDetalheQuantidade_Entrada: TFloatField;
    ProdutosDetalheQuantidade_Saida: TFloatField;
    ProdutosDetalheDetalhe_Descricao: TStringField;
    ProdutosDetalheProduto_Descricao: TStringField;
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
    procedure ProdutosDetalheBeforePost(DataSet: TDataSet);
    procedure ProdutosDetalheBeforeDelete(DataSet: TDataSet);
    procedure cNotaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadProdutosDetalhes.bAdicionarClick(Sender: TObject);
begin
      with ProdutosDetalhe do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadProdutosDetalhes.bExcluirClick(Sender: TObject);
begin
     with ProdutosDetalhe do begin
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

procedure TfCadProdutosDetalhes.bGravarClick(Sender: TObject);
begin
      with ProdutosDetalhe do begin
           if State = dsInsert then begin
              ProdutosDetalhe.FieldByName('Registro').Value := GeraCodigo('ProdutosDetalhe', 'Registro');
           end;
          {
           if (State = dsInsert) and (Existe(ProdutosDetalhe, 'Codigo', FieldByName('Codigo').AsString)) then begin
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

procedure TfCadProdutosDetalhes.bCancelarClick(Sender: TObject);
begin
      ProdutosDetalhe.Cancel;
      LigaBotoes(true);
end;

procedure TfCadProdutosDetalhes.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         ProdutosDetalhe.Edit;
         cProduto.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadProdutosDetalhes.UniFrameDestroy(Sender: TObject);
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

procedure TfCadProdutosDetalhes.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadProdutosDetalhes.LigaBotoes(Estado:boolean);
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

procedure TfCadProdutosDetalhes.UniFrameCreate(Sender: TObject);
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

      with ProdutosDetalhe do begin
           sql.clear;
           sql.add('select Registro');
           sql.add('      ,Produto');
           sql.add('      ,Processo');
           sql.add('      ,Detalhe');
           sql.add('      ,Nota_Entrada');
           sql.add('      ,Data_Entrada');
           sql.add('      ,Item');
           sql.add('      ,Quantidade_Entrada');
           sql.add('      ,Quantidade_Saida');
           sql.add('from ProdutosDetalhe');
           sql.add('order by Registro');
           open;
      end;
      with Detalhes do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao');
           sql.add('from Detalhes');
           sql.add('order by Descricao');
           open;
      end;
      with Produtos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao_Reduzida');
           sql.add('from produtos');
           sql.add('where isnull(Desativado, 0)   = 0');
           sql.add('and   isnull(Detalhamento, 0) = 1');
           sql.add('order by Descricao_Reduzida');
           Open;
      end;
      with Notas do begin
           sql.clear;
           sql.add('select Nota');
           sql.add('      ,Chave_NFE');
           sql.add('      ,Data');
           sql.add('      ,Processo');
           sql.add('      ,Item');
           sql.add('from NotasItens');
           sql.add('where Saida_Entrada = 0');
           sql.add('and   Codigo_Mercadoria = :pCod');
           sql.add('order by Data');
           ParamByName('pCod').AsInteger := ProdutosDetalhe.fieldByName('Produto').AsInteger;
           Open;
      end;
end;

procedure TfCadProdutosDetalhes.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadProdutosDetalhes.bPesquisaClick(Sender: TObject);
begin
     ProdutosDetalhe.Cancel;
     LigaBotoes(true);
     Pesquisa(ProdutosDetalhe, 'ProdutosDetalhe', 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadProdutosDetalhes.ProdutosDetalheBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Produto').AsString, EstadoTabela(DataSet));
end;

procedure TfCadProdutosDetalhes.ProdutosDetalheBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Produto').AsString,'Delete');
end;


procedure TfCadProdutosDetalhes.cNotaChange(Sender: TObject);
begin
//      With Dados, dmFiscal do begin
//           tTotal.SQL.Clear;
//           tTotal.SQL.Add('SELECT SUM(Quantidade_Entrada) AS Total FROM ProdutosDetalhe WHERE Produto_Codigo = :pCodigo AND Nota_Entrada = :pNota AND Item = :pItem');
//           tTotal.ParamByName('pCodigo').AsInteger := ProdutosCodigo.AsInteger;
//           tTotal.ParamByName('pNota').AsInteger   := tNotasNota.AsInteger;
//           tTotal.ParamByName('pItem').AsInteger   := tNotasItem.AsInteger;
//           tTotal.Open;
//
//           ProdutosDetalheData_Entrada.Value       := tNotasData.Value;
//           ProdutosDetalheProcesso.Value           := tNotasProcesso.Value;
//           ProdutosDetalheQuantidade_Entrada.Value := tNotasQuantidade.Value - tTotal.FieldByName('Total').AsFloat;
//      End;
end;




end.
