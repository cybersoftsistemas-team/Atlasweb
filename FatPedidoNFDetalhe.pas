unit FatPedidoNFDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, 
  uniDateTimePicker, uniDBDateTimePicker, uniButton, uniEdit, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, 
  uniPanel, uniPageControl, uniGUIBaseClasses, uniBitBtn, uniSpeedButton, Data.DB, MemDS, DBAccess, MSAccess, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniSweetAlert;

type
  TfFatPedidoNFDetalhe = class(TUniForm)
    pBarraNav: TUniPanel;
    bFechar: TUniSpeedButton;
    PanelDados: TUniPanel;
    cQtde: TUniDBFormattedNumberEdit;
    cDetalhe: TUniDBLookupComboBox;
    cLote: TUniDBLookupComboBox;
    UniPanel2: TUniPanel;
    cEstoqueMinimo: TUniFormattedNumberEdit;
    cDisponivel: TUniFormattedNumberEdit;
    cInventario: TUniFormattedNumberEdit;
    cEstoqueLote: TUniFormattedNumberEdit;
    cEstoqueNavio: TUniFormattedNumberEdit;
    dstProdutosDetalhe: TDataSource;
    dstItensDetalhe: TDataSource;
    tItensDetalhe: TFDQuery;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    tProdutosDetalhe: TFDQuery;
    tProdutosLote: TFDQuery;
    dstProdutosLote: TDataSource;
    Alerta: TUniSweetAlert;
    procedure bFecharClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bGravarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
  private
    { Private declarations }
    mPedido
   ,mProduto: integer;
    procedure LigaBotoes(Estado: boolean);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pPedido, pProduto: Integer); reintroduce;
  end;

function fFatPedidoNFDetalhe: TfFatPedidoNFDetalhe;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, FatPedidoNFItem;

constructor TfFatPedidoNFDetalhe.Create(AOwner: TComponent; pPedido, pProduto: Integer);
begin
     inherited Create(AOwner);
     mPedido  := pPedido;
     mProduto := pProduto;
end;

function fFatPedidoNFDetalhe: TfFatPedidoNFDetalhe;
begin
    Result := TfFatPedidoNFDetalhe(UniMainModule.GetFormInstance(TfFatPedidoNFDetalhe));
end;

procedure TfFatPedidoNFDetalhe.bAdicionarClick(Sender: TObject);
begin
     with tItensDetalhe do begin
          try
              LigaBotoes(false);
              Append;
              cDetalhe.SetFocus;
          except
              MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
          end;
     end;
end;

procedure TfFatPedidoNFDetalhe.bCancelarClick(Sender: TObject);
begin
     LigaBotoes(true);
//     PanelDados.Enabled := false;
end;

procedure TfFatPedidoNFDetalhe.bEditarClick(Sender: TObject);
begin
     with tItensDetalhe do begin
          try
              LigaBotoes(false);
              Edit;
              cDetalhe.SetFocus;
          except
              MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
          end;
     end;
end;

procedure TfFatPedidoNFDetalhe.bExcluirClick(Sender: TObject);
begin
     with titensDetalhe do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Pedido').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer) begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfFatPedidoNFDetalhe.bFecharClick(Sender: TObject);
begin
     close;
end;

procedure TfFatPedidoNFDetalhe.bGravarClick(Sender: TObject);
begin
     LigaBotoes(true);
     Alerta.Text := 'Registro salvo no banco de dados!';
     Alerta.Execute;
//     PanelDados.Enabled := false;
end;

procedure TfFatPedidoNFDetalhe.UniFormCreate(Sender: TObject);
begin
     LigaBotoes(true);
     with tItensDetalhe do begin 
          sql.Clear;
          sql.add('select *');
          sql.add('from PedidosItensDetalhe');
          sql.add('where Pedido = :pPedido');
          sql.add('and Produto = :pProduto');
          sql.Add('order by Registro');
          parambyname('pPedido').AsInteger  := mPedido;
          parambyname('pProduto').AsInteger := mProduto;
          open;
     end;
     with tProdutosDetalhe do begin
          sql.clear;
          sql.add('select distinct Detalhe');
          sql.add('      ,Nome_Detalhe = (select Descricao from Detalhes dt where dt.Codigo = pd.Detalhe)');
          sql.add('from ProdutosDetalhe pd');
          sql.add('where Produto = :pProduto');
          sql.add('and Detalhe is not null');
          sql.add('order by Nome_Detalhe');
          parambyName('pProduto').AsInteger := mProduto;
          open;
     end;
     with tProdutosLote do begin
          sql.clear;
          sql.add('select distinct Detalhe');
          sql.add('      ,Nome_Detalhe = (select Descricao from Detalhes dt where dt.Codigo = pd.Detalhe)');
          sql.add('from ProdutosDetalhe pd');
          sql.add('where Produto = :pProduto');
          sql.add('and Lote is not null');
          sql.add('and (select isnull(sum(Quantidade_Entrada),0) from ProdutosDetalhe pd2 where pd2.Produto = :pProduto and pd2.Lote = pd.Lote) -');
          sql.add('    ((select isnull(sum(Quantidade),0) from NotasItensDetalhe nid where nid.Produto = :pProduto and nid.Lote = pd.Lote and isnull(nid.Cancelada, 0) = 0 and isnull(nid.Denegada, 0) = 0) +');
          sql.add('    (select isnull(sum(Quantidade),0) from PedidosItensDetalhe pid where pid.Produto = :pProduto and pid.Lote = pd.Lote)) > 0');
          sql.add('order by Nome_Detalhe');
          parambyName('pProduto').AsInteger := mProduto;
          open;
     end;
//     cMinimo.Value := Pedido_ItensOutros.cMinimo.Value;
//     lLote.Enabled := ProdutosLote_Obrigatorio.AsBoolean;
//     cLote.Enabled := lLote.Enabled;
//     lDetalhe.Enabled := ProdutosSerial_Obrigatorio.AsBoolean;
//     cDetalhe.Enabled := lDetalhe.Enabled;
//     ApuraEstoque;
end;

procedure TfFatPedidoNFDetalhe.LigaBotoes(Estado:boolean);
begin
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bGravar.Enabled    := not Estado;
     PanelDados.Enabled := not Estado;
end;


end.
