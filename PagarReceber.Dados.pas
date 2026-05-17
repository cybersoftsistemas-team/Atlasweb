unit PagarReceber.Dados;

interface

uses
  System.SysUtils;

type
  TPagarReceberDados = record
    Registro: Int64;
    Titulo: Int64;
    Empresa: string;
    Classificacao: string;
    Tipo: string;
    Adiantamento: Boolean;
    Devolucao: Boolean;
    Tributo: Boolean;
    CentroCusto: string;
    DataPrevisao: TDateTime;
    DataVencimento: TDateTime;
    ValorDocumento: Currency;
    ValorParcela: Currency;
    ValorMulta: Currency;
    ValorJuros: Currency;
    ValorDesconto: Currency;
    ValorTotal: Currency;
    ValorPedido: Currency;
    ValorOperacao: Currency;
    Beneficiario: Integer;
    BeneficiarioBanco: string;
    BeneficiarioAgencia: string;
    BeneficiarioConta: string;
    Banco: Integer;
    DocumentoData: TDateTime;
    DocumentoTipo: string;
    DocumentoNumero: string;
    FormaPgto: Integer;
    FormaPgtoDoc: string;
    Observacao: string;
    Processo: string;
    ProcessoTipo: string;
    Origem: string;
    OrigemNumero: string;
    ModalidadePgto: Integer;
    SolicitacaoPgto: Integer;
    SolicitacaoNumerario: Integer;
    Parcela: string;
    Transferencia: Boolean;
    ValorBaixado: Currency;
    AdiantamentoNumero: Integer;
    TransferenciaNumero: Integer;
    TransferenciaBanco: Integer;
    NumeroImportado: Integer;
    Nivel: Integer;
    Desdobramento: Integer;
    Provisorio: Boolean;
    BoletoNumero: Integer;
    DescontoLiquidacao: Currency;
    Emprestimo: Boolean;
    Recuperavel: Boolean;
    Vinculo: Integer;
    PagoCliente: Boolean;
    CustoEntrada: Boolean;
    CustoSaida: Boolean;
    CustoSeletivo: Boolean;
    CustoOutros: Boolean;
    ProvisaoContaD: string;
    ProvisaoContaC: string;
    ProvisaoHistorico: Integer;
    LiquidacaoContaD: string;
    LiquidacaoContaC: string;
    LiquidacaoHistorico: Integer;
    Embarque: Integer;
    CodigoBarras: string;
    ChavePIX: string;
    Lote: Integer;
    NumeroDocumento: string;
    PermutaRecebimento: Boolean;
    ValorME: Currency;
    NumeroFormaTipo: string;
    TaxaME: Currency;
    FormaTipo: string;
    procedure Clear;
  end;

implementation

procedure TPagarReceberDados.Clear;
begin
     FillChar(Self, SizeOf(Self), 0);
end;

end.
