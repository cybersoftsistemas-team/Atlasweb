unit PagarReceber.Service;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, PagarReceber.Dados, funcoes;

type
  TPagarReceberService = class
  public
    class function NovoTitulo: TPagarReceberDados;
    class function GerarCambio(aContratoCambio, aClassificacao: TFDQuery; aValorReal, aValorME, aTaxaME: Currency; aEmpresa: string; aFilial: Integer): TPagarReceberDados;
  end;

implementation

class function TPagarReceberService.NovoTitulo: TPagarReceberDados;
begin
     Result.Clear;
     Result.Adiantamento       := false;
     Result.Devolucao          := false;
     Result.Tributo            := false;
     Result.Transferencia      := false;
     Result.Provisorio         := false;
     Result.Emprestimo         := false;
     Result.Recuperavel        := false;
     Result.PagoCliente        := false;
     Result.CustoEntrada       := false;
     Result.CustoSaida         := false;
     Result.CustoSeletivo      := false;
     Result.CustoOutros        := false;
     Result.PermutaRecebimento := false;
     Result.ValorDocumento     := 0;
     Result.ValorParcela       := 0;
     Result.ValorMulta         := 0;
     Result.ValorJuros         := 0;
     Result.ValorDesconto      := 0;
     Result.ValorTotal         := 0;
     Result.ValorPedido        := 0;
     Result.ValorOperacao      := 0;
     Result.ValorBaixado       := 0;
     Result.DescontoLiquidacao := 0;
     Result.ValorME            := 0;
     Result.TaxaME             := 0;
end;

class function TPagarReceberService.GerarCambio(aContratoCambio, aClassificacao: TFDQuery; aValorReal, aValorME, aTaxaME: Currency; aEmpresa: string; aFilial: Integer): TPagarReceberDados;
begin
     Result                 := NovoTitulo;
     Result.Titulo          := GeraCodigo('PagarReceber', 'Titulo');
     Result.Empresa         := aEmpresa;
     Result.ValorDocumento  := aValorReal;
     Result.ValorParcela    := aValorReal;
     Result.ValorTotal      := aValorReal;
     Result.ValorPedido     := aValorReal;
     Result.ValorOperacao   := aValorReal;
     Result.ValorME         := aValorME;
     Result.TaxaME          := aTaxaME;
     Result.DocumentoTipo   := 'CB';
     Result.Origem          := 'CB';
     Result.Classificacao   := aContratoCambio.FieldByName('Classificacao').AsString;
     Result.CentroCusto     := aContratoCambio.FieldByName('Centro_Custo').AsString;
     Result.DataPrevisao    := aContratoCambio.FieldByName('Data_Vencimento').AsDateTime;
     Result.DataVencimento  := aContratoCambio.FieldByName('Data_Vencimento').AsDateTime;
     Result.DocumentoData   := aContratoCambio.FieldByName('Data').AsDateTime;
     Result.NumeroDocumento := aContratoCambio.FieldByName('Numero').AsString;
     Result.Beneficiario    := aContratoCambio.FieldByName('Beneficiario').AsInteger;
     Result.DocumentoNumero := aContratoCambio.FieldByName('Numero').AsString;
     Result.PagoCliente     := aContratoCambio.FieldByName('Pago_Cliente').AsBoolean;
     result.OrigemNumero    := aContratoCambio.FieldByName('Numero').AsString;
     Result.Tipo            := aClassificacao.FieldByName('Tipo').AsString;
     Result.Nivel           := aClassificacao.FieldByName('Nivel').AsInteger;
     Result.CustoEntrada    := aClassificacao.FieldByName('Custo_Entrada').AsBoolean;
     Result.CustoSeletivo   := aClassificacao.FieldByName('Custo_Seletivo').AsBoolean;
     Result.CustoSaida      := aClassificacao.FieldByName('Custo_Saida').AsBoolean;
     Result.CustoOutros     := aClassificacao.FieldByName('Custo_Outros').AsBoolean;

     
{
                           PagarReceberDocumento.Value        := Configuracao.FieldByName('ContratoCambio_Documento').AsString;
                           PagarReceberTipo_Nota.Value        := 'CB';
                           PagarReceberPago_Cliente.Value     := ContratoCambio.FieldByName('Pago_Cliente').asboolean;
                           PagarReceberEmpresa.Value          := Menu_Principal.mEmpresa;
}

     
end;




end.
