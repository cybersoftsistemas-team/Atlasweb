
unit frmDMComercial;

interface

uses
  System.SysUtils, System.Classes, DB, MemDS, DBAccess, MSAccess;

type
  TdmComercial = class(TDataModule)
    TabelaComissoes: TMSQuery;
    dsTabelaComissoes: TDataSource;
    TabelaComissoesDescricao: TStringField;
    TabelaComissoesComissao: TBCDField;
    TabelaComissoesDesconto: TBCDField;
    TabelaComissoesCodigo: TSmallintField;
    EComm: TMSQuery;
    dsEComm: TDataSource;
    ECommRegistro: TIntegerField;
    ECommAtivo: TBooleanField;
    ECommTempo_Verificacao: TSmallintField;
    ECommURL: TStringField;
    ECommConsumer_Key: TStringField;
    ECommconsumer_Secret: TStringField;
    PedidoCompra: TMSQuery;
    dsPedidoCompra: TDataSource;
    PedidoCompraItens: TMSQuery;
    dsPedidoCompraItens: TDataSource;
    PedidoCompraParcelas: TMSQuery;
    dsPedidoCompraParcelas: TDataSource;
    PedidoCompraRegistro: TIntegerField;
    PedidoCompraPedido: TIntegerField;
    PedidoCompraData_Pedido: TDateTimeField;
    PedidoCompraEmpresa: TSmallintField;
    PedidoCompraFornecedor: TSmallintField;
    PedidoCompraUsuario: TStringField;
    PedidoCompraSolicitante: TStringField;
    PedidoCompraComprador: TStringField;
    PedidoCompraGerente: TStringField;
    PedidoCompraDiretor: TStringField;
    PedidoCompraDescricao: TStringField;
    PedidoCompraParcelas2: TSmallintField;
    PedidoCompraItens2: TSmallintField;
    PedidoCompraTotal_Produtos: TBCDField;
    PedidoCompraTotal_IPI: TBCDField;
    PedidoCompraTotal_ICMS: TBCDField;
    PedidoCompraTotal_Geral: TBCDField;
    PedidoCompraObs_Pedido: TMemoField;
    PedidoCompraObs_Entrega: TMemoField;
    PedidoCompraItensRegistro: TIntegerField;
    PedidoCompraItensPedido: TIntegerField;
    PedidoCompraItensCodigo: TSmallintField;
    PedidoCompraItensDescricao: TStringField;
    PedidoCompraItensData_Entrega: TDateTimeField;
    PedidoCompraItensQuantidade: TBCDField;
    PedidoCompraItensUnidade: TStringField;
    PedidoCompraItensValor_Unitario: TBCDField;
    PedidoCompraItensAliquota_IPI: TBCDField;
    PedidoCompraItensAliquota_ICMS: TBCDField;
    PedidoCompraParcelasRegistro: TIntegerField;
    PedidoCompraParcelasPedido: TIntegerField;
    PedidoCompraParcelasParcela: TSmallintField;
    PedidoCompraParcelasData_Vencimento: TDateTimeField;
    PedidoCompraParcelasPercentual_Pgto: TBCDField;
    PedidoCompraParcelasValor_Parcela: TBCDField;
    PedidoCompraItensItem: TSmallintField;
    PedidoCompraSolicitante_Nome: TStringField;
    PedidoCompraFornecedor_Nome: TStringField;
    PedidoCompraFechado: TBooleanField;
    PedidoCompraCondicao_Pgto: TSmallintField;
    PedidoCompraCancelado: TBooleanField;
    PedidoCompraItensValor_Total: TBCDField;
    PedidoCompraEmail: TStringField;
    PedidoCompraReferencia_Cliente: TStringField;
    ECommToken: TMemoField;
    TabelaComissoesPercentual_Venda: TBCDField;
    TabelaComissoesDesativada: TBooleanField;
    TabelaComissoesTabela_Padrao: TBooleanField;
    procedure PedidoCompraItensCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmComercial: TdmComercial;

implementation

{$R *.dfm}

procedure TdmComercial.PedidoCompraItensCalcFields(DataSet: TDataSet);
begin
     DataSet.FieldByName('Valor_Total').Value :=      DataSet.FieldByName('Quantidade').asfloat * DataSet.FieldByName('Valor_Unitario').ascurrency;
end;

end.
