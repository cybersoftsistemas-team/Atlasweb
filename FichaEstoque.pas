unit FichaEstoque;

interface

uses
  System.SysUtils,
  Data.DB,
  FireDAC.Comp.Client;
  procedure GravarFichaEstoqueEntrada(aConnection: TFDConnection;
                                      aRegistro: Integer;
                                      aEmpresa: string;
                                      aItem: Integer;
                                      aCodigo: Integer;
                                      const aDescricao: string;
                                      const aNCM: string;
                                      const aUM: string;
                                      const aCFOP: string;
                                      aFinalidade: Integer;
                                      aid: Integer;
                                      aNota: Integer;
                                      aData: TDateTime;
                                      aItemNota: Integer;
                                      aDestinatarioCodigo: Integer;
                                      const aDestinatarioNome: string;
                                      const aDestinatarioCNPJ: string;
                                      const aDestinatarioCPF: string;
                                      aQuantidade: Double;
                                      aValorUnitario: Currency;
                                      const aProcesso: string;
                                      const aModalidade: integer;
                                      aQtdeSaldo: Double;
                                      aTotalSaldo: Currency;
                                      aMovEst: boolean;
                                      aMovInv: boolean;
                                      aMovInd: boolean);

implementation
  procedure GravarFichaEstoqueEntrada(aConnection: TFDConnection;
                                      aRegistro: Integer;
                                      aEmpresa: string;
                                      aItem: Integer;
                                      aCodigo: Integer;
                                      const aDescricao: string;
                                      const aNCM: string;
                                      const aUM: string;
                                      const aCFOP: string;
                                      aFinalidade: Integer;
                                      aid: Integer;
                                      aNota: Integer;
                                      aData: TDateTime;
                                      aItemNota: Integer;
                                      aDestinatarioCodigo: Integer;
                                      const aDestinatarioNome: string;
                                      const aDestinatarioCNPJ: string;
                                      const aDestinatarioCPF: string;
                                      aQuantidade: Double;
                                      aValorUnitario: Currency;
                                      const AProcesso: string;
                                      const aModalidade: integer;
                                      aQtdeSaldo: Double;
                                      aTotalSaldo: Currency;
                                      aMovEst: boolean;
                                      aMovInv: boolean;
                                      aMovInd: boolean);
var
  Ficha: TFDQuery;
  Historico: string;
  Estoque: string;
  Documento: string;
  TotalEntrada: Currency;
  TotalSaldoNovo: Currency;
  QtdeSaldoNovo: Double;
  UnitarioSaldo: Currency;
begin
     if not Assigned(AConnection) then raise Exception.Create('Conexão com o banco não informada.');
     case AFinalidade of
          0: Historico := 'COMPRA - REVENDA';
          1: Historico := 'COMPRA - CONSUMO';
          2: Historico := 'DEVOLUÇÃO';
          3: Historico := 'EXPORTAÇÃO';
          4: Historico := 'PRÓPRIAS EM PODER DE TERCEIROS';
          5: Historico := 'TERCEIROS EM PODER DA EMPRESA';
          6: Historico := 'COMPRA - IMOBILIZADO';
          9: Historico := 'OUTRAS';
     else
          Historico := 'OUTRAS';
     end;
     case AFinalidade of
          4: Estoque := '1-ARMAZEM';
          5: Estoque := '2-TERCEIROS';
     else
          Estoque := '0-EMPRESA';
     end;

     if Trim(ADestinatarioCNPJ) <> '' then
       Documento := aDestinatarioCNPJ
     else
       Documento := aDestinatarioCPF;

     TotalEntrada   := AQuantidade * AValorUnitario;
     QtdeSaldoNovo  := AQtdeSaldo + AQuantidade;
     TotalSaldoNovo := ATotalSaldo + TotalEntrada;
     if QtdeSaldoNovo > 0 then
        UnitarioSaldo := TotalSaldoNovo / QtdeSaldoNovo
     else
        UnitarioSaldo := 0;

     try
       Ficha := TFDQuery.Create(nil);
       with Ficha do begin
            Connection := aConnection;
            if aMovEst then begin
               // FICHA DE ESTOQUE - (Entrada Normal).
               sql.Text := 'insert into FichaEstoque ( Registro'+
                                                     ',Empresa'+
                                                     ',Item'+
                                                     ',Codigo_Mercadoria'+
                                                     ',Descricao'+
                                                     ',NCM'+
                                                     ',UM'+
                                                     ',CFOP'+
                                                     ',Historico'+
                                                     ',Estoque'+
                                                     ',Emissor'+
                                                     ',Nota_id'+
                                                     ',Nota'+
                                                     ',Data'+
                                                     ',Item_Nota'+
                                                     ',ES'+
                                                     ',Destinatario_Codigo'+
                                                     ',Destinatario_Nome'+
                                                     ',Destinatario_CNPJ'+
                                                     ',Finalidade'+
                                                     ',Qtde_Entrada'+
                                                     ',Unitario_Entrada'+
                                                     ',Total_Entrada'+
                                                     ',Qtde_Saida'+
                                                     ',Unitario_Saida'+
                                                     ',Total_Saida'+
                                                     ',Qtde_Saldo'+
                                                     ',Unitario_Saldo'+
                                                     ',Total_Saldo'+
                                                     ',Origem'+
                                                     ',Modalidade'+
                                                     ',Processo )'+
                                             'values ( :Registro'+
                                                     ',:Empresa'+
                                                     ',:Item'+
                                                     ',:Codigo'+
                                                     ',:Descricao'+
                                                     ',:NCM'+
                                                     ',:UM'+
                                                     ',:CFOP'+
                                                     ',:Historico'+
                                                     ',:Estoque'+
                                                     ',:Emissor'+
                                                     ',:Nota_id'+
                                                     ',:Nota'+
                                                     ',:Data'+
                                                     ',:ItemNota'+
                                                     ',:ES'+
                                                     ',:Destinatario_Codigo'+
                                                     ',:Destinatario_Nome'+
                                                     ',:Destinatario_CNPJ'+
                                                     ',:Finalidade'+
                                                     ',:Qtde_Entrada'+
                                                     ',:Unitario_Entrada'+
                                                     ',:Total_Entrada'+
                                                     ',0'+
                                                     ',0'+
                                                     ',0'+
                                                     ',:Qtde_Saldo'+
                                                     ',:Unitario_Saldo'+
                                                     ',:Total_Saldo'+
                                                     ',:Origem'+
                                                     ',:Modalidade'+
                                                     ',:Processo )';
                                              
               ParamByName('Registro').AsInteger            := aRegistro;
               ParamByName('Item').AsInteger                := aItem;
               ParamByName('Empresa').asstring              := aEmpresa;
               ParamByName('Codigo').AsInteger              := aCodigo;
               ParamByName('Descricao').AsString            := aDescricao;
               ParamByName('UM').AsString                   := aUM;
               ParamByName('NCM').AsString                  := aNCM;
               ParamByName('CFOP').AsString                 := aCFOP;
               ParamByName('Historico').AsString            := Historico;
               ParamByName('Estoque').AsString              := Estoque;
               ParamByName('Emissor').AsString              := 'T';
               ParamByName('Nota_id').AsInteger             := aid;
               ParamByName('Nota').AsInteger                := aNota;
               ParamByName('Data').AsDateTime               := aData;
               ParamByName('ES').AsString                   := 'E';
               ParamByName('ItemNota').asinteger            := aItemNota;
               ParamByName('Destinatario_Codigo').AsInteger := aDestinatarioCodigo;
               ParamByName('Destinatario_Nome').AsString    := aDestinatarioNome;
               ParamByName('Destinatario_CNPJ').AsString    := Documento;
               ParamByName('Finalidade').AsInteger          := aFinalidade;
               ParamByName('Qtde_Entrada').AsFloat          := aQuantidade;
               ParamByName('Unitario_Entrada').AsCurrency   := aValorUnitario;
               ParamByName('Total_Entrada').AsCurrency      := TotalEntrada;
               ParamByName('Qtde_Saldo').AsFloat            := QtdeSaldoNovo;
               ParamByName('Unitario_Saldo').AsCurrency     := UnitarioSaldo;
               ParamByName('Total_Saldo').AsCurrency        := TotalSaldoNovo;
               ParamByName('Origem').AsString               := 'NFT';
               ParamByName('Modalidade').asinteger          := aModalidade;
               ParamByName('Processo').AsString             := aProcesso;
               execsql;
            end;
            if aMovInv then begin
               sql.text := stringreplace(sql.text, ' FichaEstoque', ' FichaInventario', [rfReplaceAll]);
               execsql;
            end;
       end;
     finally
       Ficha.Free;
     end;
end;

end.
