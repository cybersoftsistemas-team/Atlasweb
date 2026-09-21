set nocount on;
set xact_abort ON;
begin transaction;
if object_id('tempdb..#TEMPDT')    is not null drop table #tempdt;
if object_id('tempdb..#TEMP')      is not null drop table #temp;
if object_id('tempdb..#TEMP2')     is not null drop table #temp2;
if object_id('FichaEstoque','U') is not null truncate table FichaEstoque;

select min(Data_Emissao) as Data
into #tempdt
from NotasFiscais
where isnull(Cancelada,0) = 0
and isnull(Denegada,0) = 0

union all
select min(Data_ES)
from NotasFiscais 
where isnull(Provisoria, 0) <> 1

union all
select min(Data_Transferencia)
from EstoqueTransferencia;

delete from #tempdt where Data is null;
declare @Menor_Data datetime;
declare @Maior_Data datetime;
select @Menor_Data = min(Data), @Maior_Data = getdate() from #TEMPDT;

select Codigo = ni.Codigo_Mercadoria
      ,Descricao = cast(ni.Descricao_Mercadoria as varchar(500))
      ,UM = ni.UM
      ,NCM = ni.NCM
      ,ni.CFOP
      ,Historico = fn.Descricao
      ,Estoque = cast(case op.Finalidade_Mercadoria
                           when 0 then '0-EMPRESA'
                           when 1 then '0-EMPRESA'
                           when 2 then '0-EMPRESA'
                           when 3 then '0-EMPRESA'
                           when 4 then '1-ARMAZEM'
                           when 5 then '2-TERCEIROS'
                           when 6 then '0-EMPRESA'
                           when 9 then '0-EMPRESA'
                 end as varchar(15))
      ,nf.Nota
      ,Data = nf.Data_Emissao
      ,Destinatario_Codigo = nf.Destinatario
      ,Destinatario_Nome = nf.Destinatario_Nome
      ,Destinatario_CNPJ = nf.Destinatario_CNPJ_CPF
      ,Finalidade = op.Finalidade_Mercadoria
      ,ES = 'E'
      ,Processo = ni.Processo
      ,Tipo_Processo = pd.Modalidade
      ,Qtde_Entrada = case when isnull(nf.Complementar,0) = 0 then ni.Quantidade else 0 end
      ,Unitario_Entrada = round(ni.Valor_Inventario,4)
      ,Total_Entrada = round(ni.Valor_Inventario,2) * ni.Quantidade
      ,Qtde_Saida = cast(0 as float)
      ,Unitario_Saida = cast(0 as money)
      ,Total_Saida = cast(0 as money)
      ,Qtde_Saldo = cast(0 as float)
      ,Unitario_Saldo = cast(0 as money)
      ,Total_Saldo = cast(0 as money)
      ,Emissor = 'P'
      ,Origem = 'NFP'
into #temp
from NotasItens NI
inner join NotasFiscais NF on nf.Nota_id = ni.Nota_id 
left join Produtos P ON P.Codigo = ni.Codigo_Mercadoria
left join OperacaoFiscal op ON op.Codigo = nf.Operacao
left join FinalidadesMercadorias fn ON fn.Codigo = op.Finalidade_Mercadoria
outer apply (select top 1 pd.Modalidade from ProcessosImp PD where pd.Processo = ni.Processo) pd
where Codigo_Mercadoria = 44
and ni.ES = 0
and ni.Valor_Unitario > 0
and isnull(nf.Cancelada,0) <> 1
and isnull(nf.Denegada,0) <> 1
and (isnull(op.Movimenta_Estoque,0) = 1 OR isnull(nf.Complementar,0) = 1);
/*
insert into #temp
select Codigo = ni.Codigo_Mercadoria
      ,Descricao = cast(ni.Descricao_Mercadoria as varchar(500))
      ,UM = ni.Unidade_Medida
      ,NCM = ni.NCM
      ,CFOP = nf.Natureza_Codigo
      ,Historico = case ni.Finalidade_Mercadoria
                        when 0 then 'REVENDA'
                        when 1 then 'CONSUMO'
                        when 2 then 'DEVOLUÇÃO'
                        when 3 then 'EXPORTAÇÃO'
                        when 4 then 'PRÓPRIAS EM PODER DE TERCEIROS'
                        when 5 then 'TERCEIROS EM PODER DA EMPRESA'
                        when 6 then 'IMOBILIZADO'
                        when 9 then 'OUTRAS'
                   end
      ,Estoque = case ni.Finalidade_Mercadoria
                      when 0 then '0-EMPRESA'
                      when 1 then '0-EMPRESA'
                      when 2 then '0-EMPRESA'
                      when 3 then '0-EMPRESA'
                      when 4 then '1-ARMAZEM'
                      when 5 then '2-TERCEIROS'
                      when 6 then '0-EMPRESA'
                      when 9 then '0-EMPRESA'
                 end
      ,Nota = ni.Nota
      ,Data = ni.Data
      ,Destinatario_Codigo = nf.Cliente_Codigo
      ,Destinatario_Nome = nf.Destinatario_Nome
      ,Destinatario_CNPJ = nf.Destinatario_CNPJ_CPF
      ,Finalidade = ni.Finalidade_Mercadoria
      ,ES = 'S'
      ,Processo = ni.Processo
      ,Tipo_Processo = pd.Modalidade_Importacao
      ,Qtde_Entrada = cast(0 as float)
      ,Unitario_Entrada = cast(0 as money)
      ,Total_Entrada = cast(0 as money)
      ,Qtde_Saida = case when isnull(nf.Complementar,0) = 0 then ni.Quantidade else 0 end
      ,Unitario_Saida = cast(0 as money)
      ,Total_Saida = cast(0 as money)
      ,Qtde_Saldo = cast(0 as float)
      ,Unitario_Saldo = cast(0 as money)
      ,Total_Saldo = cast(0 as money)
      ,Emissor = 'P'
      ,Origem = 'NFP'
from NotasItens NI
inner join NotasFiscais nf on nf.Nota_id = ni.Nota_id
left join Produtos p on p.Codigo = ni.Codigo_Mercadoria
outer apply (select top 1 pd.Modalidade_Importacao
             from ProcessosImp pd
             where pd.Processo = ni.Processo
             and pd.Tipo = 'IMPORTAÇÃO') pd
where Codigo_Mercadoria = 44
and ni.Saida_Entrada = 1
and ni.Cancelada <> 1
and ni.Nfe_Denegada <> 1
and ni.Movimenta_Estoque = 1
and ni.Valor_Unitario > 0
and nf.Complementar <> 1;
insert into #temp
select Codigo = pt.Produto_Entrada
      ,Descricao = cast(p.Descricao as varchar(500))
      ,UM = p.Unidade
      ,NCM = p.NCM
      ,CFOP = null
      ,Historico = case pt.Motivo
                        when 'A'   then '* SALDO DE ABERTURA DE ESTOQUE *'
                        when 'TRF' then '* TRANSFERÊNCIA SALDO DE ESTOQUE *'
                        when 'I'   then '* ENTRADA (INDUSTRIALIZAÇÃO) *'
                        when 'IND' then '* ENTRADA (INDUSTRIALIZAÇÃO) *'
                   end
      ,Estoque = '0-EMPRESA'
      ,Nota = IIF(isnull(PT.Nota,0) = 0,PT.Registro,PT.Nota)
      ,Data = PT.Data_Transferencia
      ,Destinatario_Codigo = 1
      ,Destinatario_Nome = 'RADAR'
      ,Destinatario_CNPJ = '000'
      ,Finalidade = 0
      ,ES = 'E'
      ,Processo = PT.Processo_Entrada
      ,Tipo_Processo = pd.Modalidade_Importacao
      ,Qtde_Entrada = PT.Quantidade_Entrada
      ,Unitario_Entrada = round(PT.Valor_Unitario,2)
      ,Total_Entrada = round(PT.Valor_Unitario,2) * PT.Quantidade_Entrada
      ,Qtde_Saida = cast(0 as float)
      ,Unitario_Saida = cast(0 as money)
      ,Total_Saida = cast(0 as money)
      ,Qtde_Saldo = cast(0 as float)
      ,Unitario_Saldo = cast(0 as money)
      ,Total_Saldo = cast(0 as money)
      ,Emissor = 'P'
      ,Origem = PT.Motivo
from ProdutosTransferencia pt
left join Produtos P ON P.Codigo = PT.Produto_Entrada
outer apply (select top 1 pd.Modalidade_Importacao
             from ProcessosImp pd
             where pd.Processo = pt.Processo_Entrada
             and pd.Tipo = 'IMPORTAÇÃO') pd
where Produto_Entrada = 44
and pt.Estoque = 1;
insert into #temp
select Codigo = PT.Produto_Saida
      ,Descricao = cast(P.Descricao as varchar(500))
      ,UM = P.Unidade
      ,NCM = P.NCM
      ,CFOP = NULL
      ,Historico = case PT.Motivo
                        when 'A'   then '* SALDO DE ABERTURA DE ESTOQUE *'
                        when 'TRF' then '* TRANSFERÊNCIA SALDO DE ESTOQUE *'
                        when 'I'   then '* SAÍDA (INDUSTRIALIZAÇÃO) *'
                        when 'IND' then '* SAÍDA (INDUSTRIALIZAÇÃO) *'
                   end
      ,Estoque = '0-EMPRESA'
      ,Nota = iif(isnull(pt.Nota,0) = 0, pt.Registro, pt.Nota)
      ,Data = pt.Data_Transferencia
      ,Destinatario_Codigo = 1
      ,Destinatario_Nome = 'RADAR'
      ,Destinatario_CNPJ = '000'
      ,Finalidade = 0
      ,ES = 'S'
      ,Processo = pt.Processo_Saida
      ,Tipo_Processo = pd.Modalidade_Importacao
      ,Qtde_Entrada = cast(0 as float)
      ,Unitario_Entrada = cast(0 as money)
      ,Total_Entrada = cast(0 as money)
      ,Qtde_Saida = PT.Quantidade
      ,Unitario_Saida = cast(0 as money)
      ,Total_Saida = cast(0 as money)
      ,Qtde_Saldo = cast(0 as float)
      ,Unitario_Saldo = cast(0 as money)
      ,Total_Saldo = cast(0 as money)
      ,Emissor = 'P'
      ,Origem = PT.Motivo
from ProdutosTransferencia pt
left join Produtos P ON P.Codigo = PT.Produto_Saida
outer apply (select top 1 pd.Modalidade_Importacao
             from ProcessosImp pd
             where pd.Processo = PT.Processo_Saida
             and pd.Tipo = 'IMPORTAÇÃO') pd
where Produto_Saida = 44
and pt.Motivo in ('TRF','IND')
and pt.Estoque = 1;
insert into #temp
select Codigo = NTI.Codigo_Mercadoria
      ,Descricao = cast(NTI.Descricao_Mercadoria as varchar(500))
      ,UM = NTI.Unidade_Medida
      ,NCM = NTI.NCM
      ,CFOP = NTI.Natureza_Codigo
      ,Historico = case RF.Finalidade_Mercadoria
                        when 0 then 'COMPRA - REVENDA'
                        when 1 then 'COMPRA - CONSUMO'
                        when 2 then 'DEVOLUÇÃO'
                        when 3 then 'EXPORTAÇÃO'
                        when 4 then 'PRÓPRIAS EM PODER DE TERCEIROS'
                        when 5 then 'TERCEIROS EM PODER DA EMPRESA'
                        when 6 then 'COMPRA - IMOBILIZADO'
                        when 9 then 'OUTRAS'
                   end
      ,Estoque = case RF.Finalidade_Mercadoria
                      when 0 then '0-EMPRESA'
                      when 1 then '0-EMPRESA'
                      when 2 then '0-EMPRESA'
                      when 3 then '0-EMPRESA'
                      when 4 then '1-ARMAZEM'
                      when 5 then '2-TERCEIROS'
                      when 6 then '0-EMPRESA'
                      when 9 then '0-EMPRESA'
                 end
      ,Nota = nti.Nota
      ,Data = nti.Data_Entrada
      ,Destinatario_Codigo = nti.Fornecedor
      ,Destinatario_Nome = F.Nome
      ,Destinatario_CNPJ = F.CNPJ
      ,Finalidade = RF.Finalidade_Mercadoria
      ,ES = 'E'
      ,Processo = nti.Processo
      ,Tipo_Processo = pd.Modalidade_Importacao
      ,Qtde_Entrada = nti.Quantidade
      ,Unitario_Entrada = round(NTI.Valor_Inventario,2)
      ,Total_Entrada = round(NTI.Valor_Inventario,2) * NTI.Quantidade
      ,Qtde_Saida = cast(0 as float)
      ,Unitario_Saida = cast(0 as money)
      ,Total_Saida = cast(0 as money)
      ,Qtde_Saldo = cast(0 as float)
      ,Unitario_Saldo = cast(0 as money)
      ,Total_Saldo = cast(0 as money)
      ,Emissor = 'T'
      ,Origem = 'NFT'
from NotasTerceirosItens NTI
left join Produtos P on P.Codigo = NTI.Codigo_Mercadoria
left join Fornecedores F on F.Codigo = NTI.Fornecedor
left join ReferenciasFiscais RF on RF.Codigo = NTI.Referencia_Fiscal
outer apply (select top 1 pd.Modalidade_Importacao
             from ProcessosImp PD
             where pd.Processo = NTI.Processo
             and pd.Tipo = 'IMPORTAÇÃO') pd
where Codigo_Mercadoria = 44
and nti.Movimenta_Estoque = 1
and exists (select 1 from NotasTerceiros nt where nt.Nota = nti.Nota and nt.Data_Emissao = nti.Data_Emissao and nt.Fornecedor = nti.Fornecedor and nt.Provisoria <> 1)
*/
create clustered index ix_temp_cod_data on #temp (Codigo, Data, ES, Nota);
select Linha = row_number() over (order by Codigo, Data, ES, Nota)
      ,Item  = row_number() over (partition by Codigo order by Data, ES, Nota)
      ,*
into #temp2
from #temp;
create clustered index ix_temp2_cod_item on #temp2 (Codigo, Item);
with Estoque as (
   select T.Linha
         ,T.Item
         ,T.Codigo
         ,T.NCM
         ,T.Descricao
         ,T.UM
         ,T.CFOP
         ,T.Historico
         ,T.Estoque
         ,T.Emissor
         ,T.Origem
         ,T.Nota
         ,T.Data
         ,T.ES
         ,T.Destinatario_Codigo
         ,T.Destinatario_Nome
         ,T.Destinatario_CNPJ
         ,T.Finalidade
         ,T.Processo
         ,T.Tipo_Processo
         ,T.Qtde_Entrada
         ,T.Unitario_Entrada
         ,T.Total_Entrada
         ,Qtde_Saida = T.Qtde_Saida
         ,Unitario_Saida = cast(0 as money)
         ,Total_Saida = cast(0 as money)
         ,Qtde_Saldo = cast(round(T.Qtde_Entrada - T.Qtde_Saida, 3) as decimal(18,3))
         ,Total_Saldo = cast(T.Total_Entrada - T.Total_Saida as money)
         ,Unitario_Saldo = cast(iif(T.Qtde_Entrada - T.Qtde_Saida > 0, (T.Total_Entrada - T.Total_Saida) / (T.Qtde_Entrada - T.Qtde_Saida), 0) as money)
   from #TEMP2 T
   where T.Item = 1
   union all
   select T.Linha
         ,T.Item
         ,T.Codigo
         ,T.NCM
         ,T.Descricao
         ,T.UM
         ,T.CFOP
         ,T.Historico
         ,T.Estoque
         ,T.Emissor
         ,T.Origem
         ,T.Nota
         ,T.Data
         ,T.ES
         ,T.Destinatario_Codigo
         ,T.Destinatario_Nome
         ,T.Destinatario_CNPJ
         ,T.Finalidade
         ,T.Processo
         ,T.Tipo_Processo
         ,T.Qtde_Entrada
         ,T.Unitario_Entrada
         ,T.Total_Entrada
         ,Qtde_Saida = T.Qtde_Saida
         ,Unitario_Saida = cast(E.Unitario_Saldo as money)
         ,Total_Saida = cast(E.Unitario_Saldo * T.Qtde_Saida as money)
         ,Qtde_Saldo = cast(round(E.Qtde_Saldo + T.Qtde_Entrada - T.Qtde_Saida, 3) as decimal(18,3))
         ,Total_Saldo = cast(case when e.Qtde_Saldo + t.Qtde_Entrada - t.Qtde_Saida > 0 then
                                  case when T.ES = 'E' then
                                       e.Total_Saldo + t.Total_Entrada
                                  else
                                       e.Total_Saldo - (E.Unitario_Saldo * T.Qtde_Saida)
                                  end
                             else
                                  0
                             end as money)
         ,Unitario_Saldo = cast(CASE
                                  when E.Qtde_Saldo + T.Qtde_Entrada - T.Qtde_Saida > 0
                                  then CASE
                                     when T.ES = 'E'
                                     then (E.Total_Saldo + T.Total_Entrada) / (E.Qtde_Saldo + T.Qtde_Entrada)
                                     ELSE (E.Total_Saldo - (E.Unitario_Saldo * T.Qtde_Saida)) / (E.Qtde_Saldo - T.Qtde_Saida)
                                  END
                                  ELSE 0
                                END as money)
   from Estoque e
   inner join #temp2 t on t.Codigo = e.Codigo and t.Item = e.Item + 1)
insert into FichaEstoque
select Linha
      ,Item
      ,Codigo
      ,NCM
      ,Descricao
      ,UM
      ,CFOP
      ,Historico
      ,Estoque
      ,Emissor
      ,Origem
      ,Nota
      ,Data
      ,ES
      ,Destinatario_Codigo
      ,LTRIM(RTRIM(Destinatario_Nome))
      ,Destinatario_CNPJ
      ,Finalidade
      ,Processo
      ,Tipo_Processo
      ,Qtde_Entrada
      ,Unitario_Entrada
      ,Total_Entrada
      ,Qtde_Saida
      ,Unitario_Saida
      ,Total_Saida
      ,Qtde_Saldo
      ,Unitario_Saldo
      ,Total_Saldo
from Estoque
order by Codigo, Data, ES,Nota
option (maxrecursion 0);
drop table #temp2;
drop table #temp;
drop table #tempdt;
commit transaction;
select * from FichaEstoque order by Codigo_Mercadoria, Item;
