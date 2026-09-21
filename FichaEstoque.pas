unit FichaEstoque;

interface

uses System.SysUtils, Data.DB, FireDAC.Comp.Client, MainModule, funcoes, uniguiDialogs;

procedure GravarFichas(aEmpresa: string;
                       aCodigo: Integer;
                       const aDescricao: string;
                       const aNCM: string;
                       const aUM: string;
                       const aCFOP: string;
                       aFinalidade: Integer;
                       aNotaid: Integer;
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
                       aOrigem: string);
                         
//procedure ProcessaFichas(pFicha: TFDQuery; pCodEmp: integer; pNomeEmp, pCNPJEmp: String; pDesc: integer; pProdutos: string);
procedure ProcessaFichas(pFicha: TFDQuery; pCodEmp: integer; pNomeEmp, pCNPJEmp: String; pDesc, pNota: integer; pProdutos, pOrigem: string);
                                    
implementation

procedure GravarFichas(aEmpresa: string;
                       aCodigo: Integer;
                       const aDescricao: string;
                       const aNCM: string;
                       const aUM: string;
                       const aCFOP: string;
                       aFinalidade: Integer;
                       aNotaid: Integer;
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
                       aOrigem: string);
var
  Ficha: TFDQuery;
  Historico: string;
  Estoque: string;
  Documento: string;
  TotalEntrada: Currency;
  TotalSaldoNovo: Currency;
  QtdeSaldoNovo: Double;
  UnitarioSaldo: Currency;
  mItemEst, mItemInv: integer;
begin
     case aFinalidade of
          0: Historico := 'COMPRA - REVENDA';
          1: Historico := 'COMPRA - CONSUMO';
          2: Historico := 'DEVOLUÇÃO';
          3: Historico := 'EXPORTAÇÃO';
          4: Historico := 'PRÓPRIAS EM PODER DE TERCEIROS';
          5: Historico := 'TERCEIROS EM PODER DA EMPRESA';
          6: Historico := 'COMPRA - IMOBILIZADO';
          9: Historico := 'INDUSTRIALIZAÇÃO';
         10: Historico := 'OUTRAS';
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
            Connection := uniMainModule.Conecta;
            mItemEst   := GeraItem('FichaEstoque'   , 'Item', 'Empresa = '+aEmpresa+' and Nota_id = '+inttostr(aNotaId)+' and Codigo_Mercadoria = '+inttostr(aCodigo));       
            if aMovEst then begin
               // FICHA DE ESTOQUE - (Entrada Normal).
               sql.Text := 'insert into FichaEstoque ( Empresa'+
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
                                             'values ( :Empresa'+
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
                                              
               ParamByName('Item').AsInteger                := mItemEst;
               ParamByName('Empresa').asstring              := aEmpresa;
               ParamByName('Codigo').AsInteger              := aCodigo;
               ParamByName('Descricao').AsString            := aDescricao;
               ParamByName('UM').AsString                   := aUM;
               ParamByName('NCM').AsString                  := aNCM;
               ParamByName('CFOP').AsString                 := aCFOP;
               ParamByName('Historico').AsString            := Historico;
               ParamByName('Estoque').AsString              := Estoque;
               ParamByName('Emissor').AsString              := 'T';
               ParamByName('Nota_id').AsInteger             := aNotaid;
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
               ParamByName('Origem').AsString               := aOrigem;
               ParamByName('Modalidade').asinteger          := aModalidade;
               ParamByName('Processo').AsString             := aProcesso;
               execsql;
            end;
            if aMovInv then begin
               mItemInv := GeraItem('FichaInventario', 'Item', 'Empresa = '+aEmpresa+' and Nota_id = '+inttostr(aNotaID)+' and Codigo_Mercadoria = '+inttostr(aCodigo));       
               sql.text := stringreplace(sql.text, ' FichaEstoque', ' FichaInventario', [rfReplaceAll]);
               ParamByName('Item').AsInteger := mItemInv;
               execsql;
            end;
       end;
     finally
       Ficha.Free;
     end;
end;

procedure ProcessaFichas(pFicha: TFDQuery; pCodEmp: integer; pNomeEmp, pCNPJEmp: String; pDesc, pNota: integer; pProdutos, pOrigem: string);
{ PARÂMETROS:
      pFicha    = Tabela
      pCodEmp   = Codigo do Fornecedor ou da Empresa.
      pNomeEmp  = Nome do Fornecedor ou da Empresa.
      pCNPJEmp  = CNPJ do Fornecedor ou da Empresa.
      pNota     = Número de indentificação da nota "Nota_id".
      pData     = Datga da Nota.
      pProdutos = Lista de produtos para processar ('' = para todos).
      pOrigem   = Origem dos dados "NFP, NFT, ABR, TRF, IND...".
}
var
  mscript: widestring;
begin 
     try
        with pFicha do begin
             sql.clear;
             sql.add('set nocount on;');
             sql.add('set xact_abort ON;');
             sql.add('begin transaction;');
             sql.add('if object_id(''tempdb..#TEMPDT'')    is not null drop table #tempdt;');
             sql.add('if object_id(''tempdb..#TEMP'')      is not null drop table #temp;');
             sql.add('if object_id(''tempdb..#TEMP2'')     is not null drop table #temp2;');
             sql.add('if object_id(''FichaEstoque'',''U'') is not null begin');
             if trim(pProdutos) = '' then begin
                sql.add('   truncate table FichaEstoque');
             end else begin
                sql.add('   delete from FichaEstoque where Nota_id = :pNota and Origem = :pOrigem');
             end;             
             sql.add('end;');
             sql.add('');
             sql.add('select min(Data_Emissao) as Data into #tempdt from NotasFiscais where Cancelada <> 1 and Denegada <> 1 and Provisoria <> 1 ');
             sql.add('union all');
             sql.add('select min(Data_Transferencia) from EstoqueTransferencia ');
             sql.add('union all');
             sql.add('select min(Data_Entrada) from EstoqueAbertura');
             sql.add('union all');
             sql.add('select min(Data) from Industrializacao;');
             sql.add('');
             sql.add('delete from #tempdt where Data is null;');
             sql.add('declare @Menor_Data datetime;');
             sql.add('declare @Maior_Data datetime;');
             sql.add('select @Menor_Data = min(Data), @Maior_Data = getdate() from #tempdt;');
             sql.add('');
             sql.add('----------------------------- NOTAS FISCAIS DE ENTRADA E SAÍDA -------------------------------------');
             sql.add('select ni.Codigo_Mercadoria');
             sql.add('      ,Descricao = cast(iif(:pDesc = 0, ni.Descricao_Mercadoria, p.Descricao) as varchar(500))');
             sql.add('      ,UM = ni.UM');
             sql.add('      ,NCM = ni.NCM');
             sql.add('      ,ni.CFOP');
             sql.add('      ,Historico = iif(fn.Descricao is null, ''???'', upper(cast(fn.Descricao as varchar(70))))');
             sql.add('      ,Estoque = case when op.Finalidade_Mercadoria in(0,1,2,3,6) then ''0-EMPRESA'' ');
             sql.add('                      when op.Finalidade_Mercadoria in(4)         then ''1-ARMAZEM'' ');
             sql.add('                      when op.Finalidade_Mercadoria in(2)         then ''2-TERCEIROS'' ');
             sql.add('                 end');
             sql.add('      ,Nota = nF.Nota');
             sql.add('      ,Data = nF.Data_Emissao');
             sql.add('      ,Destinatario_Codigo = nf.Destinatario');
             sql.add('      ,Destinatario_Nome   = nf.Destinatario_Nome');
             sql.add('      ,Destinatario_CNPJ   = nf.Destinatario_CNPJ_CPF');
             sql.add('      ,Finalidade = op.Finalidade_Mercadoria');
             sql.add('      ,ES = iif(nf.ES = 0, ''E'', ''S'')');
             sql.add('      ,Processo = ni.Processo');
             sql.add('      ,pd.Modalidade');
             sql.add('      ,Qtde_Entrada     = iif(nf.ES = 0, isnull(ni.Quantidade, 0), 0)');
             sql.add('      ,Unitario_Entrada = iif(nf.ES = 0, round(isnull(ni.Valor_Inventario, 0), 4), 0)');
             sql.add('      ,Total_Entrada    = iif(nf.ES = 0, round(isnull(ni.Valor_Inventario, 0), 2) * ni.Quantidade, 0)');
             sql.add('      ,Qtde_Saida       = iif(nf.ES = 1, isnull(ni.Quantidade, 0), 0) ');
             sql.add('      ,Unitario_Saida   = iif(nf.ES = 1, round(isnull(ni.Valor_Inventario, 0), 4), 0)');
             sql.add('      ,Total_Saida      = iif(nf.ES = 1, round(isnull(ni.Valor_Inventario, 0), 2) * ni.Quantidade, 0)');
             sql.add('      ,Qtde_Saldo       = cast(0 as decimal(18,3))');
             sql.add('      ,Unitario_Saldo   = cast(0 as decimal(18,4))');
             sql.add('      ,Total_Saldo      = cast(0 as decimal(18,4))');
             sql.add('      ,Emissor = nf.Emissao');
             sql.add('      ,Origem = cast(''NFE'' as char(3))');
             sql.add('      ,nf.Empresa');
             sql.add('      ,ni.Nota_id');
             sql.add('      ,Item_Nota = ni.Item');
             sql.add('into #temp');
             sql.add('from NotasItens ni');
             sql.add('inner join NotasFiscais nf on nf.Nota_id = ni.Nota_id');
             sql.add('left  join Produtos p on p.Codigo = ni.Codigo_Mercadoria');
             sql.add('left  join OperacaoFiscal op on op.Codigo = nf.Operacao');
             sql.add('left  join FinalidadesMercadorias fn on fn.Codigo = op.Finalidade_Mercadoria');
             sql.add('outer apply (select top 1 pd.Modalidade from ProcessosImp pd where pd.Processo = ni.Processo) pd');
             sql.add('where nf.Empresa = :pCNPJEmp');
             if trim(pProdutos) <> '' then begin
                sql.add('and ni.Codigo_Mercadoria in('+pProdutos+')');
             end;
             sql.add('and ni.Valor_Unitario > 0');
             sql.add('and nf.Cancelada <> 1');
             sql.add('and nf.Denegada <> 1');
             sql.add('and (op.Movimenta_Estoque = 1 or nf.Complementar = 1);');
             sql.add('');
             sql.add('----------------------------- ABERTURA DE ESTOQUE -----------------------------');
             sql.add('insert into #temp');
             sql.add('select Codigo_Mercadoria = ea.Codigo_Mercadoria');
             sql.add('      ,Descricao = cast(p.Descricao as varchar(500))');
             sql.add('      ,p.UM');
             sql.add('      ,NCM = p.NCM');
             sql.add('      ,ea.CFOP');
             sql.add('      ,Historico = ''<< SALDO DE ABERTURA DE ESTOQUE >>'' ');
             sql.add('      ,Estoque = ''0-EMPRESA'' ');
             sql.add('      ,Nota = ea.Nota');
             sql.add('      ,Data = ea.Data_Entrada');
             sql.add('      ,Destinatario_Codigo = :pCodEmp');
             sql.add('      ,Destinatario_Nome   = :pNomeEmp');
             sql.add('      ,Destinatario_CNPJ   = :pCNPJEmp');
             sql.add('      ,Finalidade = 0');
             sql.add('      ,ES = ''E'' ');
             sql.add('      ,ea.Processo');
             sql.add('      ,pd.Modalidade');
             sql.add('      ,Qtde_Entrada     = ea.Quantidade');
             sql.add('      ,Unitario_Entrada = ea.Valor_Unitario');
             sql.add('      ,Total_Entrada    = ea.Valor_Unitario * ea.Quantidade');
             sql.add('      ,Qtde_Saida       = cast(0 as float)');
             sql.add('      ,Unitario_Saida   = cast(0 as float)');
             sql.add('      ,Total_Saida      = cast(0 as float)');
             sql.add('      ,Qtde_Saldo       = cast(0 as float)');
             sql.add('      ,Unitario_Saldo   = cast(0 as float)');
             sql.add('      ,Total_Saldo      = cast(0 as float)');
             sql.add('      ,Emissor          = ''P'' ');
             sql.add('      ,Origem = ''ABR'' ');
             sql.add('      ,ea.Empresa');
             sql.add('      ,Nota_id = isnull(ea.Nota, 0)');
             sql.add('      ,Item_Nota = 1');
             sql.add('from EstoqueAbertura ea');
             sql.add('left join Produtos p on p.Codigo = ea.Codigo_Mercadoria');
             sql.add('outer apply (select top 1 pd.Modalidade from ProcessosImp pd where pd.Processo = ea.Processo ) pd');
             sql.add('where ea.Empresa = :pCNPJEmp');
             if trim(pProdutos) <> '' then begin
                sql.add('and ea.Codigo_Mercadoria in('+pProdutos+')');
             end;
             sql.add('');
             sql.add('----------------------------- TRANSFERÊNCIAS DE ESTOQUE -----------------------------');
             sql.add('insert into #temp');
             sql.add('select Codigo_Mercadoria = x.Codigo_Mercadoria');
             sql.add('      ,Descricao = cast(p.Descricao as varchar(500))');
             sql.add('      ,p.UM');
             sql.add('      ,NCM = p.NCM');
             sql.add('      ,pt.CFOP');
             sql.add('      ,Historico = ''<< TRANSFERÊNCIA DE SALDO DE ESTOQUE >>'' ');
             sql.add('      ,Estoque = ''0-EMPRESA'' ');
             sql.add('      ,Nota = iif(isnull(pt.Nota,0) = 0, pt.Registro, pt.Nota)');
             sql.add('      ,Data = pt.Data_Transferencia');
             sql.add('      ,Destinatario_Codigo = :pCodEmp');
             sql.add('      ,Destinatario_Nome   = :pNomeEmp');
             sql.add('      ,Destinatario_CNPJ   = :pCNPJEmp');
             sql.add('      ,Finalidade = 0');
             sql.add('      ,ES = x.ES');
             sql.add('      ,Processo = x.Processo');
             sql.add('      ,pd.Modalidade');
             sql.add('      ,Qtde_Entrada     = case when x.ES = ''E'' then x.Quantidade else cast(0 as float) end');
             sql.add('      ,Unitario_Entrada = case when x.ES = ''E'' then round(pt.Valor_Unitario,2) else cast(0 as float) end');
             sql.add('      ,Total_Entrada    = case when x.ES = ''E'' then round(pt.Valor_Unitario,2) * x.Quantidade else cast(0 as float) end');
             sql.add('      ,Qtde_Saida       = case when x.ES = ''S'' then x.Quantidade else cast(0 as float) end');
             sql.add('      ,Unitario_Saida   = case when x.ES = ''S'' then round(pt.Valor_Unitario,2) else cast(0 as float) end');
             sql.add('      ,Total_Saida      = case when x.ES = ''S'' then round(pt.Valor_Unitario,2) * x.Quantidade else cast(0 as float) end');
             sql.add('      ,Qtde_Saldo       = cast(0 as float)');
             sql.add('      ,Unitario_Saldo   = cast(0 as float)');
             sql.add('      ,Total_Saldo      = cast(0 as float)');
             sql.add('      ,Emissor          = ''P'' ');
             sql.add('      ,Origem = ''TRF'' ');
             sql.add('      ,pt.Empresa');
             sql.add('      ,Nota_id = pt.Registro');
             sql.add('      ,Item_Nota = 1');
             sql.add('from EstoqueTransferencia pt');
             sql.add('cross apply (values (pt.Produto_Entrada, pt.Quantidade_Entrada,pt.Processo_Entrada, ''E''), (pt.Produto_Saida, pt.Quantidade_Saida,pt.Processo_Saida, ''S'') ) x(Codigo_Mercadoria, Quantidade, Processo, ES)');
             sql.add('left join Produtos p on p.Codigo = x.Codigo_Mercadoria');
             sql.add('outer apply (select top 1 pd.Modalidade from ProcessosImp pd where pd.Processo = x.Processo ) pd');
             sql.add('where pt.Empresa = :pCNPJEmp');
             if trim(pProdutos) <> '' then begin
                sql.add('and (pt.Produto_Entrada in('+pProdutos+') or pt.Produto_Saida in('+pProdutos+'))');
             end;
             sql.add('and pt.Movimenta_Estoque = 1');
             sql.add('and isnull(x.Codigo_Mercadoria,0) <> 0;');
             sql.add('');
             sql.add('----------------------------- INDUSTRIALIZAÇÃO - ENTRADAS DE PRODUTO INDUSTRIALIZADO -------------------------------------');
             sql.add('insert into #temp');
             sql.add('select Codigo_Mercadoria = ind.Codigo_Mercadoria');
             sql.add('      ,Descricao = cast(p.Descricao as varchar(500))');
             sql.add('      ,p.UM');
             sql.add('      ,NCM = p.NCM');
             sql.add('      ,ind.CFOP');
             sql.add('      ,Historico = ''<< ENTRADA DE PRODUTO INDUSTRIALIZADO >>'' ');
             sql.add('      ,Estoque = ''0-EMPRESA'' ');
             sql.add('      ,Nota = ind.Registro');
             sql.add('      ,ind.Data');
             sql.add('      ,Destinatario_Codigo = ind.Destinatario');
             sql.add('      ,Destinatario_Nome = d.Nome');
             sql.add('      ,Destinatario_CNPJ = d.CNPJ');
             sql.add('      ,Finalidade = 0');
             sql.add('      ,ES = ''E'' ');
             sql.add('      ,ind.Processo');
             sql.add('      ,pd.Modalidade');
             sql.add('      ,Qtde_Entrada     = ind.Quantidade');
             sql.add('      ,Unitario_Entrada = ind.Valor_Unitario');
             sql.add('      ,Total_Entrada    = round(ind.Valor_Unitario * ind.Quantidade, 3)');
             sql.add('      ,Qtde_Saida       = cast(0 as float)');
             sql.add('      ,Unitario_Saida   = cast(0 as float)');
             sql.add('      ,Total_Saida      = cast(0 as float)');
             sql.add('      ,Qtde_Saldo       = cast(0 as float)');
             sql.add('      ,Unitario_Saldo   = cast(0 as float)');
             sql.add('      ,Total_Saldo      = cast(0 as float)');
             sql.add('      ,Emissor = ''P'' ');
             sql.add('      ,Origem = ''IND'' ');
             sql.add('      ,ind.Empresa');
             sql.add('      ,Nota_id = Registro');
             sql.add('      ,Item_Nota = 1');
             sql.add('from Industrializacao ind');
             sql.add('left join Produtos p on p.Codigo = ind.Codigo_Mercadoria');
             sql.add('left join Destinatarios d on d.Codigo = ind.Destinatario');
             sql.add('outer apply (select top 1 pd.Modalidade from ProcessosImp pd where pd.Processo = ind.Processo) pd');
             sql.add('where ind.Empresa = :pCNPJEmp');
             if trim(pProdutos) <> '' then begin
                sql.add('and ind.Registro = :pNota');
                sql.add('and ind.Codigo_Mercadoria in('+pProdutos+');');
             end;
             sql.add('');
             sql.add('----------------------------- INDUSTRIALIZAÇÃO - SAÍDA DE MATÉRIA-PRIMAS -------------------------------------');
             sql.add('insert into #temp');
             sql.add('select Codigo_Mercadoria = im.Codigo_Mercadoria');
             sql.add('      ,Descricao = cast(p.Descricao as varchar(500))');
             sql.add('      ,p.UM');
             sql.add('      ,NCM = p.NCM');
             sql.add('      ,ind.CFOP');
             sql.add('      ,Historico = ''<< SAÍDA DE MATÉRIAS-PRIMAS INDUSTRALIZAÇÃO >>'' ');
             sql.add('      ,Estoque = ''0-EMPRESA'' ');
             sql.add('      ,Nota = im.Registro_id');
             sql.add('      ,ind.Data');
             sql.add('      ,Destinatario_Codigo = ind.Destinatario');
             sql.add('      ,Destinatario_Nome = d.Nome');
             sql.add('      ,Destinatario_CNPJ = d.CNPJ');
             sql.add('      ,Finalidade = 0');
             sql.add('      ,ES = ''S'' ');
             sql.add('      ,ind.Processo');
             sql.add('      ,pd.Modalidade');
             sql.add('      ,Qtde_Entrada     = 0');
             sql.add('      ,Unitario_Entrada = 0');
             sql.add('      ,Total_Entrada    = 0');
             sql.add('      ,Qtde_Saida       = im.Quantidade_Total');
             sql.add('      ,Unitario_Saida   = im.Valor_Unitario');
             sql.add('      ,Total_Saida      = round(im.Valor_Unitario * im.Quantidade_Total, 3)');
             sql.add('      ,Qtde_Saldo       = cast(0 as float)');
             sql.add('      ,Unitario_Saldo   = cast(0 as float)');
             sql.add('      ,Total_Saldo      = cast(0 as float)');
             sql.add('      ,Emissor = ''P'' ');
             sql.add('      ,Origem = ''IND'' ');
             sql.add('      ,ind.Empresa');
             sql.add('      ,Nota_id = Registro_id');
             sql.add('      ,Item_Nota = 1');
             sql.add('from IndustrializacaoMateria im');
             sql.add('left join Industrializacao ind on ind.Registro = im.Registro_id');
             sql.add('left join Produtos p on p.Codigo = ind.Codigo_Mercadoria');
             sql.add('left join Destinatarios d on d.Codigo = ind.Destinatario');
             sql.add('outer apply (select top 1 pd.Modalidade from ProcessosImp pd where pd.Processo = ind.Processo) pd');
             sql.add('where ind.Empresa = :pCNPJEmp');
             if trim(pProdutos) <> '' then begin
                sql.add('and ind.Registro = :pNota');
                sql.add('and im.Codigo_Mercadoria in('+pProdutos+');');
             end;
             sql.add('');
             sql.add('create clustered index ix_temp_cod_data on #temp (Codigo_Mercadoria, Data, ES, Nota);');
             sql.add('');
             sql.add('select Linha = row_number() over (order by Codigo_Mercadoria, Data, ES, Nota)');
             sql.add('      ,Item  = row_number() over (partition by Codigo_Mercadoria order by Data, ES, Nota)');
             sql.add('      ,*');
             sql.add('into #temp2');
             sql.add('from #temp;');
             sql.add('');
             sql.add('create clustered index ix_temp2_cod_item on #temp2 (Codigo_Mercadoria, Item);');
             sql.add('');
             sql.add('with Estoque as (');
             sql.add('   select t.Linha');
             sql.add('         ,t.Empresa ');
             sql.add('         ,t.Item');
             sql.add('         ,t.Codigo_Mercadoria');
             sql.add('         ,t.NCM');
             sql.add('         ,t.Descricao');
             sql.add('         ,t.UM');
             sql.add('         ,t.CFOP');
             sql.add('         ,t.Historico');
             sql.add('         ,t.Estoque');
             sql.add('         ,t.Emissor');
             sql.add('         ,t.Origem');
             sql.add('         ,t.Nota_id');
             sql.add('         ,t.Nota');
             sql.add('         ,t.Data');
             sql.add('         ,t.Item_Nota');
             sql.add('         ,t.ES');
             sql.add('         ,t.Destinatario_Codigo');
             sql.add('         ,t.Destinatario_Nome');
             sql.add('         ,t.Destinatario_CNPJ');
             sql.add('         ,t.Finalidade');
             sql.add('         ,t.Processo');
             sql.add('         ,t.Modalidade');
             sql.add('         ,t.Qtde_Entrada');
             sql.add('         ,t.Unitario_Entrada');
             sql.add('         ,t.Total_Entrada');
             sql.add('         ,Qtde_Saida     = T.Qtde_Saida');
             sql.add('         ,Unitario_Saida = cast(0 as float)');
             sql.add('         ,Total_Saida    = cast(0 as float)');
             sql.add('         ,Qtde_Saldo     = cast(round(T.Qtde_Entrada - T.Qtde_Saida, 3) as decimal(18,3))');
             sql.add('         ,Total_Saldo    = cast(T.Total_Entrada - T.Total_Saida as float)');
             sql.add('         ,Unitario_Saldo = cast(iif(T.Qtde_Entrada - T.Qtde_Saida > 0, (T.Total_Entrada - T.Total_Saida) / (T.Qtde_Entrada - T.Qtde_Saida), 0) as float)');
             sql.add('   from #TEMP2 T');
             sql.add('   where T.Item = 1');
             sql.add('   union all');
             sql.add('   select t.Linha');
             sql.add('         ,t.Empresa ');
             sql.add('         ,t.Item');
             sql.add('         ,t.Codigo_Mercadoria');
             sql.add('         ,t.NCM');
             sql.add('         ,t.Descricao');
             sql.add('         ,t.UM');
             sql.add('         ,t.CFOP');
             sql.add('         ,t.Historico');
             sql.add('         ,t.Estoque');
             sql.add('         ,t.Emissor');
             sql.add('         ,t.Origem');
             sql.add('         ,t.Nota_id');
             sql.add('         ,t.Nota');
             sql.add('         ,t.Data');
             sql.add('         ,t.Item_Nota');
             sql.add('         ,t.ES');
             sql.add('         ,t.Destinatario_Codigo');
             sql.add('         ,t.Destinatario_Nome');
             sql.add('         ,t.Destinatario_CNPJ');
             sql.add('         ,t.Finalidade');
             sql.add('         ,t.Processo');
             sql.add('         ,t.Modalidade');
             sql.add('         ,t.Qtde_Entrada');
             sql.add('         ,t.Unitario_Entrada');
             sql.add('         ,t.Total_Entrada');
             sql.add('         ,Qtde_Saida     = T.Qtde_Saida');
             sql.add('         ,Unitario_Saida = cast(e.Unitario_Saldo as float)');
             sql.add('         ,Total_Saida    = cast(e.Unitario_Saldo * t.Qtde_Saida as float)');
             sql.add('         ,Qtde_Saldo     = cast(round(E.Qtde_Saldo + t.Qtde_Entrada - t.Qtde_Saida, 3) as decimal(18,3))');
             sql.add('         ,Total_Saldo    = cast(case when e.Qtde_Saldo + t.Qtde_Entrada - t.Qtde_Saida > 0 then');
             sql.add('                                    case when t.ES = ''E'' then');
             sql.add('                                         e.Total_Saldo + t.Total_Entrada');
             sql.add('                                    else');
             sql.add('                                         e.Total_Saldo - (e.Unitario_Saldo * t.Qtde_Saida)');
             sql.add('                                    end');
             sql.add('                                else');
             sql.add('                                    0');
             sql.add('                                end as float)');
             sql.add('         ,Unitario_Saldo = cast(case when e.Qtde_Saldo + t.Qtde_Entrada - t.Qtde_Saida > 0 then');
             sql.add('                                     case when t.ES = ''E'' then');
             sql.add('                                          (e.Total_Saldo + t.Total_Entrada) / (e.Qtde_Saldo + t.Qtde_Entrada)');
             sql.add('                                     else');
             sql.add('                                          (e.Total_Saldo - (e.Unitario_Saldo * t.Qtde_Saida)) / (e.Qtde_Saldo - t.Qtde_Saida)');
             sql.add('                                     end');
             sql.add('                                else');
             sql.add('                                     0');
             sql.add('                                end as float)');
             sql.add('   from Estoque e');
             sql.add('   inner join #temp2 t on t.Codigo_Mercadoria = e.Codigo_Mercadoria and t.Item = e.Item + 1)');
             sql.add('');
             sql.add('insert into FichaEstoque(');
             sql.add('       Empresa');
             sql.add('      ,Item');
             sql.add('      ,Codigo_Mercadoria');
             sql.add('      ,NCM');
             sql.add('      ,Descricao');
             sql.add('      ,UM');
             sql.add('      ,CFOP');
             sql.add('      ,Historico');
             sql.add('      ,Estoque');
             sql.add('      ,Emissor');
             sql.add('      ,Origem');
             sql.add('      ,Nota_id');
             sql.add('      ,Nota');
             sql.add('      ,Data');
             sql.add('      ,Item_Nota');
             sql.add('      ,ES');
             sql.add('      ,Destinatario_Codigo');
             sql.add('      ,Destinatario_Nome');
             sql.add('      ,Destinatario_CNPJ');
             sql.add('      ,Finalidade');
             sql.add('      ,Processo');
             sql.add('      ,Modalidade');
             sql.add('      ,Qtde_Entrada');
             sql.add('      ,Unitario_Entrada');
             sql.add('      ,Total_Entrada');
             sql.add('      ,Qtde_Saida');
             sql.add('      ,Unitario_Saida');
             sql.add('      ,Total_Saida');
             sql.add('      ,Qtde_Saldo');
             sql.add('      ,Unitario_Saldo');
             sql.add('      ,Total_Saldo)');
             sql.add('select Empresa');
             sql.add('      ,Item');
             sql.add('      ,Codigo_Mercadoria');
             sql.add('      ,NCM');
             sql.add('      ,Descricao');
             sql.add('      ,UM');
             sql.add('      ,CFOP');
             sql.add('      ,Historico');
             sql.add('      ,Estoque');
             sql.add('      ,Emissor');
             sql.add('      ,Origem');
             sql.add('      ,Nota_id');
             sql.add('      ,Nota');
             sql.add('      ,Data');
             sql.add('      ,Item_Nota');
             sql.add('      ,ES');
             sql.add('      ,Destinatario_Codigo');
             sql.add('      ,ltrim(rtrim(Destinatario_Nome))');
             sql.add('      ,Destinatario_CNPJ');
             sql.add('      ,Finalidade');
             sql.add('      ,Processo');
             sql.add('      ,Modalidade');
             sql.add('      ,Qtde_Entrada');
             sql.add('      ,Unitario_Entrada');
             sql.add('      ,Total_Entrada');
             sql.add('      ,Qtde_Saida');
             sql.add('      ,Unitario_Saida');
             sql.add('      ,Total_Saida');
             sql.add('      ,Qtde_Saldo');
             sql.add('      ,Unitario_Saldo');
             sql.add('      ,Total_Saldo');
             sql.add('from Estoque');
             sql.add('order by Codigo_Mercadoria, Data, ES, Nota');
             sql.add('option (maxrecursion 0);');
             sql.add('');
             sql.add('drop table #temp2;');
             sql.add('drop table #temp;');
             sql.add('drop table #tempdt;');
             sql.add('');
             sql.add('commit transaction;');
             sql.add('');
             parambyname('pDesc').asinteger   := pDesc;
             parambyname('pCodEmp').asinteger := pCodEmp;
             parambyname('pNomeEmp').asstring := pNomeEmp;
             parambyname('pCNPJEmp').asstring := pCNPJEmp;
             if trim(pProdutos) <> '' then begin
                parambyname('pNota').asinteger  := pNota;
                parambyname('pOrigem').asstring := pOrigem;
             end;
             
             mscript := stringreplace(sql.text, 'FichaEstoque', 'FichaInventario', [rfReplaceAll]);
             mscript := stringreplace(mscript, 'Movimenta_Estoque', 'Movimenta_Inventario', [rfReplaceAll]);
             //sql.savetofile('c:\temp\Atlas_Processa_Estoque.sql');
             execsql;
          
             sql.clear;
             sql.add(mscript);
             parambyname('pDesc').asinteger   := pDesc;
             parambyname('pCodEmp').asinteger := pCodEmp;
             parambyname('pNomeEmp').asstring := pNomeEmp;
             parambyname('pCNPJEmp').asstring := pCNPJEmp;
             if trim(pProdutos) <> '' then begin
                parambyname('pNota').asinteger  := pNota;
                parambyname('pOrigem').asstring := pOrigem;
             end;
             //sql.savetofile('c:\temp\Atlas_Processa_Inventario.sql');
             execsql;
        end;
     except on E: Exception do
        showmessageN('Erro ao executar script!'+e.Message);  
     end;
end;



end.
