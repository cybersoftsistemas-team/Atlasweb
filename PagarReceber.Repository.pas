unit PagarReceber.Repository;

interface

uses
  FireDAC.Comp.Client, PagarReceber.Dados;

type
  TPagarReceberRepository = class
  public
    class procedure Inserir(aQuery: TFDQuery; const aDados: TPagarReceberDados);
  end;

implementation

class procedure TPagarReceberRepository.Inserir(aQuery: TFDQuery; const aDados: TPagarReceberDados);
begin
     with aQuery do begin
          open;
          append;
               fieldbyname('Titulo').AsLargeInt               := aDados.Titulo;
               fieldbyname('Empresa').AsString                := aDados.Empresa;
               fieldbyname('Classificacao').AsString          := aDados.Classificacao;
               fieldbyname('Tipo').AsString                   := aDados.Tipo;
               fieldbyname('Adiantamento').AsBoolean          := aDados.Adiantamento;
               fieldbyname('Devolucao').AsBoolean             := aDados.Devolucao;
               fieldbyname('Tributo').AsBoolean               := aDados.Tributo;
               fieldbyname('Centro_Custo').AsString           := aDados.CentroCusto;
               fieldbyname('Data_Previsao').AsDateTime        := aDados.DataPrevisao;
               fieldbyname('Data_Vencimento').AsDateTime      := aDados.DataVencimento;
               fieldbyname('Valor_Documento').AsCurrency      := aDados.ValorDocumento;
               fieldbyname('Valor_Parcela').AsCurrency        := aDados.ValorParcela;
               fieldbyname('Valor_Multa').AsCurrency          := aDados.ValorMulta;
               fieldbyname('Valor_Juros').AsCurrency          := aDados.ValorJuros;
               fieldbyname('Valor_Desconto').AsCurrency       := aDados.ValorDesconto;
               fieldbyname('Valor_Total').AsCurrency          := aDados.ValorTotal;
               fieldbyname('Valor_Pedido').AsCurrency         := aDados.ValorPedido;
               fieldbyname('Valor_Operacao').AsCurrency       := aDados.ValorOperacao;
               fieldbyname('Beneficiario').AsInteger          := aDados.Beneficiario;
               fieldbyname('Beneficiario_Banco').AsString     := aDados.BeneficiarioBanco;
               fieldbyname('Beneficiario_Agencia').AsString   := aDados.BeneficiarioAgencia;
               fieldbyname('Beneficiario_Conta').AsString     := aDados.BeneficiarioConta;
               fieldbyname('Banco').AsInteger                 := aDados.Banco;
               fieldbyname('Documento_Data').AsDateTime       := aDados.DocumentoData;
               fieldbyname('Documento_Tipo').AsString         := aDados.DocumentoTipo;
               fieldbyname('Documento_Numero').AsString       := aDados.DocumentoNumero;
               fieldbyname('Forma_Pgto').AsInteger            := aDados.FormaPgto;
               fieldbyname('Forma_PgtoDoc').AsString          := aDados.FormaPgtoDoc;
               fieldbyname('Observacao').AsString             := aDados.Observacao;
               fieldbyname('Processo').AsString               := aDados.Processo;
               fieldbyname('Processo_Tipo').AsString          := aDados.ProcessoTipo;
               fieldbyname('Origem').AsString                 := aDados.Origem;
               fieldbyname('Origem_Numero').AsString          := aDados.OrigemNumero;
               fieldbyname('Modalidade_Pgto').AsInteger       := aDados.ModalidadePgto;
               fieldbyname('Solicitacao_Pgto').AsInteger      := aDados.SolicitacaoPgto;
               fieldbyname('Solicitacao_Numerario').AsInteger := aDados.SolicitacaoNumerario;
               fieldbyname('Parcela').AsString                := aDados.Parcela;
               fieldbyname('Transferencia').AsBoolean         := aDados.Transferencia;
               fieldbyname('Valor_Baixado').AsCurrency        := aDados.ValorBaixado;
               fieldbyname('Adiantamento_Numero').AsInteger   := aDados.AdiantamentoNumero;
               fieldbyname('Transferencia_Numero').AsInteger  := aDados.TransferenciaNumero;
               fieldbyname('Transferencia_Banco').AsInteger   := aDados.TransferenciaBanco;
               fieldbyname('Numero_Importado').AsInteger      := aDados.NumeroImportado;
               fieldbyname('Nivel').AsInteger                 := aDados.Nivel;
               fieldbyname('Desdobramento').AsInteger         := aDados.Desdobramento;
               fieldbyname('Provisorio').AsBoolean            := aDados.Provisorio;
               fieldbyname('Boleto_Numero').AsInteger         := aDados.BoletoNumero;
               fieldbyname('Desconto_Liquidacao').AsCurrency  := aDados.DescontoLiquidacao;
               fieldbyname('Emprestimo').AsBoolean            := aDados.Emprestimo;
               fieldbyname('Recuperavel').AsBoolean           := aDados.Recuperavel;
               fieldbyname('Vinculo').AsInteger               := aDados.Vinculo;
               fieldbyname('Pago_Cliente').AsBoolean          := aDados.PagoCliente;
               fieldbyname('Custo_Entrada').AsBoolean         := aDados.CustoEntrada;
               fieldbyname('Custo_Saida').AsBoolean           := aDados.CustoSaida;
               fieldbyname('Custo_Seletivo').AsBoolean        := aDados.CustoSeletivo;
               fieldbyname('Custo_Outros').AsBoolean          := aDados.CustoOutros;
               fieldbyname('Provisao_ContaD').AsString        := aDados.ProvisaoContaD;
               fieldbyname('Provisao_ContaC').AsString        := aDados.ProvisaoContaC;
               fieldbyname('Provisao_Historico').AsInteger    := aDados.ProvisaoHistorico;
               fieldbyname('Liquidacao_ContaD').AsString      := aDados.LiquidacaoContaD;
               fieldbyname('Liquidacao_ContaC').AsString      := aDados.LiquidacaoContaC;
               fieldbyname('Liquidacao_Historico').AsInteger  := aDados.LiquidacaoHistorico;
               fieldbyname('Embarque').AsInteger              := aDados.Embarque;
               fieldbyname('Codigo_Barras').AsString          := aDados.CodigoBarras;
               fieldbyname('Chave_PIX').AsString              := aDados.ChavePIX;
               fieldbyname('Lote').AsInteger                  := aDados.Lote;
               fieldbyname('Permuta_Recebimento').AsBoolean   := aDados.PermutaRecebimento;
               fieldbyname('Valor_ME').AsCurrency             := aDados.ValorME;
               fieldbyname('Numero_FormaTipo').AsString       := aDados.NumeroFormaTipo;
               fieldbyname('Taxa_ME').AsCurrency              := aDados.TaxaME;
               fieldbyname('Forma_Tipo').AsString             := aDados.FormaTipo;
          post;
          close;
     end;
end;

end.
