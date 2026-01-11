unit Estoque_SaldoAbertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, 
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniCheckBox, uniMultiItem, uniDBComboBox, uniMemo, FireDAC.Comp.DataSet;

type
  TfEstoque_SaldoAbertura = class(TUniFrame)
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
    dsProdutos: TDataSource;
    Produtos: TFDQuery;
    tSaldo: TFDQuery;
    DBGrid2: TuniDBGrid;
    Panel1: TuniPanel;
    Transf: TFDQuery;
    dsTransf: TDataSource;
    cObs: TUniDBMemo;
    cProduto: TUniDBLookupComboBox;
    cSaldo: TUniFormattedNumberEdit;
    cData: TUniDBDateTimePicker;
    cInventario: TUniDBCheckBox;
    cEstoque: TUniDBCheckBox;
    cProcesso: TUniDBLookupComboBox;
    TransfRegistro: TFDAutoIncField;
    TransfEmpresa: TStringField;
    TransfData: TSQLTimeStampField;
    TransfProduto_Entrada: TIntegerField;
    TransfProduto_Saida: TIntegerField;
    TransfQuantidade_Entrada: TFloatField;
    TransfQuantidade_Saida: TFloatField;
    TransfValor_Unitario: TCurrencyField;
    TransfInventario: TBooleanField;
    TransfEstoque: TBooleanField;
    TransfProcesso_Entrada: TStringField;
    TransfProcesso_Saida: TStringField;
    TransfMotivo: TStringField;
    TransfNota: TIntegerField;
    TransfCFOP: TStringField;
    TransfObservacao: TMemoField;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    cQtde: TUniDBFormattedNumberEdit;
    cValor: TUniDBFormattedNumberEdit;
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
    procedure TransfBeforePost(DataSet: TDataSet);
    procedure TransfBeforeDelete(DataSet: TDataSet);
    procedure cProduto_EntradaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfEstoque_SaldoAbertura.bAdicionarClick(Sender: TObject);
begin
      with Transf do begin
           try
               LigaBotoes(false);
               Append;
                    fieldbyname('Empresa').Value    := UniMainModule.mEmpresaAtiva;
                    fieldbyname('Data').Value       := now;
                    fieldbyname('Estoque').Value    := true; 
                    fieldbyname('Inventario').Value := true; 
                    fieldbyname('Motivo').Value     := 'A';
                    
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfEstoque_SaldoAbertura.bExcluirClick(Sender: TObject);
begin
     with Transf do begin
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

procedure TfEstoque_SaldoAbertura.bGravarClick(Sender: TObject);
begin
      with Transf do begin
           if CampoVazio(cProduto,'"Produto" é obrigatório!') then Abort;
           if CampoVazio(cData,'"Data" é obrigatório!') then Abort;
           if CampoVazio(cQtde,'"Quantidade" é obrigatório!') then Abort;
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

procedure TfEstoque_SaldoAbertura.bCancelarClick(Sender: TObject);
begin
      Transf.Cancel;
      LigaBotoes(true);
end;

procedure TfEstoque_SaldoAbertura.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Transf.Edit;
         //cRegistro.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfEstoque_SaldoAbertura.UniFrameDestroy(Sender: TObject);
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

procedure TfEstoque_SaldoAbertura.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfEstoque_SaldoAbertura.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfEstoque_SaldoAbertura.UniFrameCreate(Sender: TObject);
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

      with Transf do begin
           sql.clear;
           sql.add('select *');
           sql.add('      ,Descricao = (select Descricao_Reduzida from Produtos where Codigo = Produto_Entrada)');
           sql.add('from ProdutosTransferencia');
           sql.Add('where Motivo = ''A'' ');
           sql.add('order by Registro');
           open;
      end;
      with Produtos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao = Descricao_Reduzida');
           sql.Add('from Produtos');
           sql.Add('where isnull(Desativado, 0) = 0');
           open;
      end;
      with Processos do begin
           sql.clear;
           sql.add('select Tipo = ''IMP'' ');
           sql.Add('      ,Processo');
           sql.Add('      ,Declaracao = DUIMP');
           sql.add('from ProcessosImp');
           sql.add('where isnull(DUIMP, '''') <> '''' ');
           sql.Add('and isnull(Processo_Fechamento, '''') <> '''' ');
           sql.Add('union all');
           sql.Add('select Tipo = ''EXP'' ');
           sql.add('      ,Processo');
           sql.Add('      ,Declaracao = DE');
           sql.Add('from ProcessosExp');
           sql.Add('where isnull(DE, '''') <> '''' ');
           sql.add('and Processo_Fechamento is not null');
           sql.add('order by Tipo, Processo');
           open;
      end;
end;
procedure TfEstoque_SaldoAbertura.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfEstoque_SaldoAbertura.bPesquisaClick(Sender: TObject);
begin
     Transf.Cancel;
     LigaBotoes(true);
     Pesquisa(Transf, 'Registro', 'Registro',cPesquisa.text)
end;

procedure TfEstoque_SaldoAbertura.TransfBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Registro').AsString, EstadoTabela(DataSet));
end;


procedure TfEstoque_SaldoAbertura.TransfBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Registro').AsString, 'Delete');
end;



procedure TfEstoque_SaldoAbertura.cProduto_EntradaExit(Sender: TObject);
begin
//     tSaldo.SQL.Clear;
//     tSaldo.SQL.Add('SELECT (ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) +');
//     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = :pCodigo) AND (Movimenta_Estoque = 1)), 0) +');
//     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Entrada   = :pCodigo) ), 0) -');
//     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM NotasItens            WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada <> 1) AND (ISNULL(NotasItens.Nfe_Denegada, 0) = 0)), 0) -');
//     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens          WHERE(Codigo_Mercadoria = :pCodigo) AND (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0)) -');
//     tSaldo.SQL.Add('        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia WHERE(Produto_Saida     = :pCodigo) ), 0)');
//     tSaldo.SQL.Add('        AS Disponivel');
//     tSaldo.ParamByName('pCodigo').AsInteger := dmFiscal.ProdutosTransferencia.FieldByName('Produto_Saida').AsInteger;
//     tSaldo.Open;
//     cSaldoOrigem.Value := tSaldo.FieldByName('Disponivel').Value;
end;




end.
