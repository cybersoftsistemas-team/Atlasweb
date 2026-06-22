unit FatPedidoNFLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniEdit, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniDBEdit, uniButton, uniBitBtn, uniSpeedButton, 
  uniGUIBaseClasses, uniPanel, uniBasicGrid, uniDBGrid;

type
  TfFatPedidoNFLote = class(TUniForm)
    pBarraNav: TUniPanel;
    bFechar: TUniSpeedButton;
    bAddItens: TUniSpeedButton;
    bEditItens: TUniSpeedButton;
    bExcItens: TUniSpeedButton;
    bCancItens: TUniSpeedButton;
    bGravItens: TUniSpeedButton;
    uniPanel1: TUniPanel;
    dstProdutosSeriais: TDataSource;
    dstPedidosSeriais: TDataSource;
    tPedidoSeriais: TFDQuery;
    tProdutoSeriais: TFDQuery;
    gItens: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniDBGrid4: TUniDBGrid;
    procedure bFecharClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
    mPedido
   ,mProduto: integer;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pPedido, pProduto: Integer); reintroduce;
  end;

function fFatPedidoNFLote: TfFatPedidoNFLote;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Funcoes;

constructor TfFatPedidoNFLote.Create(AOwner: TComponent; pPedido, pProduto: Integer);
begin
     inherited Create(AOwner);
     mPedido  := pPedido;
     mProduto := pProduto;
end;

function fFatPedidoNFLote: TfFatPedidoNFLote;
begin
     Result := TfFatPedidoNFLote(UniMainModule.GetFormInstance(TfFatPedidoNFLote));
end;

procedure TfFatPedidoNFLote.bFecharClick(Sender: TObject);
begin
     close;
end;

procedure TfFatPedidoNFLote.UniFormCreate(Sender: TObject);
begin
     with tProdutoSeriais do begin
          sql.Clear;
          sql.Add('select *');
          sql.add('      ,Cor_Nome = (select Nome from Cores where Codigo = Cor)');
          sql.add('from ProdutosSeriais');
          sql.add('where Produto = :pProduto');
          sql.add('and isnull(Disponivel, 0) = 1');
          parambyname('pProduto').AsInteger := mProduto;
          open;
          uniPanel1.Title := 'Seriais disponíveis para faturamento ['+FormatFloat('0000000', RecordCount)+']'; 
     end;
     with tPedidoSeriais do begin
          sql.Clear;
          sql.Add('select *');
          sql.add('      ,Cor_Nome = (select Nome from Cores where Codigo = Cor)');
          sql.add('from ProdutosSeriais');
          sql.add('where Produto = :pProduto');
          sql.add('and isnull(Disponivel, 0) = 1');
          parambyname('pProduto').AsInteger := mProduto;
          open;
          uniPanel2.Title := 'Seriais adicionado ao pedido ['+FormatFloat('0000000', RecordCount)+']'; 
     end;
end;



end.
