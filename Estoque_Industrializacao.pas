unit Estoque_Industrializacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, 
  uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, 
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, uniCheckBox, uniMultiItem, uniDBComboBox, System.Math;

type
  TfEstoque_Industrializacao = class(TuniFrame)
    dsProdutos: TDataSource;
    Produtos: TFDQuery;
    ProdutosCodigo: TIntegerField;
    ttmp: TFDQuery;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    Alerta: TUniSweetAlert;
    MatPrima: TFDQuery;
    dsMatPrima: TDataSource;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar_: TUniSpeedButton;
    bEditar_: TUniSpeedButton;
    bExcluir_: TUniSpeedButton;
    bCancelar_: TUniSpeedButton;
    bSalvar_: TUniSpeedButton;
    bFechar_: TUniSpeedButton;
    Industrial: TFDQuery;
    dsIndustrial: TDataSource;
    IndustrialRegistro: TIntegerField;
    IndustrialCodigo_Mercadoria: TIntegerField;
    IndustrialQuantidade: TFloatField;
    IndustrialValor_Unitario: TCurrencyField;
    IndustrialData: TSQLTimeStampField;
    IndustrialNotas: TStringField;
    IndustrialProcesso: TStringField;
    IndustrialMovimenta_Estoque: TBooleanField;
    IndustrialMovimenta_Inventario: TBooleanField;
    Pasta: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    TabDados: TUniTabSheet;
    pFicha: TUniPanel;
    DBGrid1: TUniDBGrid;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    Panel2: TUniPanel;
    DBGrid2: TUniDBGrid;
    ProdutosDescricao_Reduzida: TStringField;
    IndustrialDescricao: TStringField;
    IndustrialEmpresa: TStringField;
    Ficha: TUniPanel;
    cProduto: TUniDBLookupComboBox;
    cQtde: TUniDBEdit;
    cData: TUniDBDateTimePicker;
    cNota: TUniDBEdit;
    cValor_Unitario: TUniDBEdit;
    cProcesso: TUniDBLookupComboBox;
    DBCheckBox1: TUniDBCheckBox;
    DBCheckBox2: TUniDBCheckBox;
    cEstoque: TUniEdit;
    EstoqueTransf: TFDQuery;
    dsEstoqueTransf: TDataSource;
    cDestinatario: TUniDBLookupComboBox;
    IndustrialDestinatario: TSmallintField;
    IndustrialCFOP: TStringField;
    cCFOP: TUniDBLookupComboBox;
    Fornecedores: TFDQuery;
    dsFornecedores: TDataSource;
    CFOP: TFDQuery;
    dsCFOP: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure cCodigoExit(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bCancelar_Click(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvar_Click(Sender: TObject);
    procedure bExcluir_Click(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionar_Click(Sender: TObject);
    procedure bEditar_Click(Sender: TObject);
    procedure bFechar_Click(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure IndustrializacaoAfterPost(DataSet: TDataSet);
    procedure IndustrializacaoBeforeDelete(DataSet: TDataSet);
    procedure IndustrialAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure FiltraMateria;
    procedure SalvaMov;
    procedure DeletaMov;
    function SaldoMatPrima: boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, ValidaCRUD, Dialogo;

procedure TfEstoque_Industrializacao.UniFrameCreate(Sender: TObject);
var
  i: integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TUniPanel then begin
            TuniPanel(Components[i]).Top   := 30;
            TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
            TuniPanel(Components[i]).Color := clNone
         end;
     end;
     Pasta.ActivePageIndex := 0;
     with Industrial do begin
          sql.clear;
          sql.Add('select * from Industrializacao order by Data desc, Codigo_Mercadoria');
          open;
     end;
     with Produtos do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao_Reduzida');
          sql.add('from Produtos p');
          sql.add('where exists (select 1 from ProdutosMateriaPrima pm where pm.Codigo_Produto = p.Codigo)');
          open;
     end;     
     with Fornecedores do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,CNPJ');
          sql.add('      ,Nome');
          sql.add('from Destinatarios');
          sql.add('where Fornecedor = 1');
          sql.add('and Desativado <> 1');
          open;
     end;     
     with CFOP do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('from CFOP');
          sql.add('where Desativada <> 1');
          sql.add('and ES = 0');
          sql.add('and Servico <> 1');
          sql.add('and Descricao like ''%NDUSTR%'' and Descricao like ''%Retorno%'' ');
          open;
     end;     
     {
     with tNotas do begin
          sql.clear;
          sql.add('select distinct Nota');
          sql.add('               ,Data_Emissao');
          sql.add('from NotasTerceirosItens');
          sql.add('where Codigo_Mercadoria in(select distinct Codigo_Mercadoria from ProdutosMateriaPrima)');
          open;
     end;
     with tEmpresa do begin
          sql.clear;
          sql.add('select Codigo, CNPJ, Razao_Social');
          sql.add('from Empresas');
          sql.add('where Codigo = :pCod');
          ParamByName('pCod').Value := Menu_Principal.mEmpresa;
          open;
     end;
     }
//     FiltraMateria;
end;

procedure TfEstoque_Industrializacao.cCodigoExit(Sender: TObject);
begin
{
     FiltraMateria;
     
     with ttmp do begin
          // Retorna uma lista de notas em uma string.
          sql.Clear;
          sql.Add('select Notas = stuff((select ''/'' + cast(Nota as varchar(9))');
          sql.Add('from NotasTerceirosItens');
          sql.Add('where Codigo_Mercadoria in(select Codigo_MateriaPrima from ProdutosMateriaPrima where Codigo_Produto = :pCodigo)');
          sql.Add('for xml path(''''), type).value(''.'', ''nvarchar(max)''), 1, 2, '''')');
          parambyname('pCodigo').value := Dados.Industrial.FieldByName('Codigo_Mercadoria').asinteger;
          //sql.SaveToFile('c:\temp\Industrialização_NotasTerceirosItens.sql');
          open;
          Dados.Industrial.fieldbyname('Notas').AsString := fieldbyname('Notas').AsString;
     end;
     with tSaldo do begin 
          // Pega o valor unitario do produto industrializa na ficha de estoque.
          sql.clear;
          sql.add('select Unitario_Saldo');
          sql.add('from FichaEstoque');
          sql.add('where Codigo = :pCodigo');
          sql.add('and Registro = (select max(Registro) from FichaEstoque where Codigo = :pCodigo and Unitario_Saldo > 0)');
          parambyName('pCodigo').AsInteger := Dados.Industrial.FieldByName('Codigo_Mercadoria').asinteger;
          open;
          if Dados.Industrial.State = dsInsert then begin
             Dados.Industrial.FieldByName('Valor_Unitario').Value := fieldbyname('Unitario_Saldo').asfloat;
          end;

          // Estoque do produto industrializado
          cEstoque.Text := formatfloat(',##0.000', EstoqueProduto(Dados.Industrial.fieldbyname('Codigo_Mercadoria').AsInteger));
     end;
     }
end;

procedure TfEstoque_Industrializacao.cProdutoExit(Sender: TObject);
begin
//     FiltraMateria;
end;

procedure TfEstoque_Industrializacao.FiltraMateria;
begin
     with Processos do begin
          sql.clear;
          sql.add('select Processo');
          sql.Add('      ,Modalidade');
          sql.Add('from ProcessosImp');
          sql.add('where exists(select 1 from Adicoes ad where ad.Codigo_Mercadoria = :pCod)');
          sql.Add('and isnull(Desativado, 0) = 0');
          sql.Add('order by Processo');
          parambyname('pCod').Value := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
          open; 
     end;
     with MatPrima do begin
          sql.clear;
          sql.add('with');
          sql.add('    MovimentacaoNotas as');
          sql.add('    (select ni.Codigo_Mercadoria');
          sql.add('           ,Saldo = sum(case when nf.es = 0 then ni.Quantidade');
          sql.add('                             when nf.es = 1 then -ni.Quantidade');
          sql.add('                       else');
          sql.add('                            0');
          sql.add('                       end)');
          sql.add('    from NotasItens as ni');
          sql.add('    inner join NotasFiscais as nf on nf.nota_id = ni.nota_id');
          sql.add('    inner join OperacaoFiscal as op on op.Codigo = nf.Operacao');
          sql.add('    where op.Movimenta_Estoque = 1');
          sql.add('    and nf.Cancelada <> 1');
          sql.add('    and nf.Denegada <> 1');
          sql.add('    group by ni.Codigo_Mercadoria),');
          sql.add('    MovimentacaoTransferencia as');
          sql.add('    (select produto');
          sql.add('           ,Saldo = sum(Quantidade)');
          sql.add('            from (select et.Produto_Entrada as Produto');
          sql.add('                        ,et.Quantidade_Entrada as Quantidade');
          sql.add('            from EstoqueTransferencia as et');
          sql.add('            union all');
          sql.add('            select et.Produto_Saida');
          sql.add('                 ,-et.Quantidade_Saida');
          sql.add('            from EstoqueTransferencia as et');
          sql.add('            ) as x');
          sql.add('    group by Produto)');
          sql.add('select mp.*');
          sql.add('      ,Saldo = isnull(n.Saldo, 0) + isnull(t.Saldo, 0)');
          sql.add('      ,p.Descricao');
          sql.add('from ProdutosMateriaPrima as mp');
          sql.add('inner join produtos as p on p.codigo = mp.codigo_materiaprima');
          sql.add('left join MovimentacaoNotas as n on n.Codigo_Mercadoria = mp.Codigo_MateriaPrima');
          sql.add('left join MovimentacaoTransferencia as t on t.Produto = mp.Codigo_Materiaprima');
          sql.add('where mp.Codigo_Produto = :pCod');
          parambyname('pCod').asinteger := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
          open;
     end;
end;
{
procedure TfEstoque_Industrializacao.FiltraMateria;
begin
     with Processos do begin
          sql.clear;
          sql.add('select prc.Processo ');
          sql.add('      ,Modalidade = (select Descricao from ModalidadeImportacao where Codigo = prc.Modalidade)');
          sql.add('from ProcessosImp prc');
          sql.add('where Desativado <> 1');
          sql.add('and exists(select 1 from Adicoes a where a.DUIMP = prc.DUIMP and a.Codigo_Mercadoria = :pCod)');
          sql.add('and prc.Desativado <> 1');
          sql.add('order by prc.Processo');
          paramByName('pCod').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
          open;
          cProcessoOrigem.Enabled := not IsEmpty;
     end;
     with MatPrima do begin
//          if (not IsEmpty) or (Industrial.State = dsInsert) then begin
             sql.clear;
             sql.add('with Materias as(select distinct Codigo_MateriaPrima from ProdutosMateriaPrima where Codigo_Produto = :pCod)');
             sql.add('     select pmp.*');
             sql.add('           ,Saldo = isnull(nt.Quantidade, 0)');
             sql.add('                  + isnull(ni.Entrada, 0)');
             sql.add('                  + isnull(pt.Entrada, 0)');
             sql.add('                  - isnull(ni.Saida, 0)');
             sql.add('                  - isnull(pt.Saida, 0)');
             sql.add('from ProdutosMateriaPrima pmp');
             sql.add('left join(sql.add(select nti.Codigo_Mercadoria');
             sql.add('                        ,sum(nti.Quantidade) as Quantidade');
             sql.add('                  from NotasTerceirosItens nti');
             sql.add('                  inner join Materias m on m.Codigo_MateriaPrima = nti.Codigo_Mercadoria');
             sql.add('                  where nti.Movimenta_Estoque = 1');
             sql.add('                  group by nti.Codigo_Mercadoria');
             sql.add('         ) nt on nt.Codigo_Mercadoria = pmp.Codigo_MateriaPrima');
             sql.add('left join(select npi.Codigo_Mercadoria');
             sql.add('                ,sum(case when npi.Saida_Entrada = 0 then npi.Quantidade else 0 end) as Entrada');
             sql.add('                ,sum(case when npi.Saida_Entrada = 1 then npi.Quantidade else 0 end) as Saida');
             sql.add('          from NotasItens npi');
             sql.add('          inner join Materias m on m.Codigo_MateriaPrima = npi.Codigo_Mercadoria');
             sql.add('          where npi.Movimenta_Estoque = 1');
             sql.add('          and npi.Saida_Entrada in(0, 1)');
             sql.add('          group by npi.Codigo_Mercadoria');
             sql.add('         ) ni on ni.Codigo_Mercadoria = pmp.Codigo_MateriaPrima');
             sql.add('left join(select x.Codigo_Mercadoria');
             sql.add('                ,sum(x.Entrada) as Entrada');
             sql.add('                ,sum(x.Saida) as Saida');
             sql.add('          from(select prt.Produto_Entrada as Codigo_Mercadoria');
             sql.add('                     ,sum(prt.Quantidade_Entrada) as Entrada');
             sql.add('                     ,0 as Saida');
             sql.add('               from ProdutosTransferencia prt');
             sql.add('               inner join Materias m on m.Codigo_MateriaPrima = prt.Produto_Entrada');
             sql.add('               where prt.Estoque = 1');
             sql.add('               group by prt.Produto_Entrada');
             sql.add('               union all');
             sql.add('               select prt.Produto_Saida as Codigo_Mercadoria');
             sql.add('                     ,0 as Entrada');
             sql.add('                     ,sum(prt.Quantidade) as Saida');
             sql.add('               from ProdutosTransferencia prt');
             sql.add('               inner join Materias m on m.Codigo_MateriaPrima = prt.Produto_Saida');
             sql.add('               where prt.Estoque = 1');
             sql.add('               group by prt.Produto_Saida');
             sql.add('         ) x');
             sql.add('group by x.Codigo_Mercadoria');
             sql.add(') pt on pt.Codigo_Mercadoria = pmp.Codigo_MateriaPrima');
             sql.add('where pmp.Codigo_Produto = :pCod');
             paramByName('pCod').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
             sql.savetofile('c:\temp\Atlas_INdustriali_Materia_Prima.sql');
             open;
//          end;
     end;
end;
 }
procedure TfEstoque_Industrializacao.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
   mProd: widestring;
begin
//     ActiveControl  := nil;
(*
   begin
          if Button = nbPost then begin
             // Verifica todos os campos obrigatórios.
             if trim(Industrial.FieldByName('Codigo_Mercadoria').asstring) = '' then begin
                MessageDlg('Produto não informado!', mtError, [mbOK], 0);
                cCodigo.SetFocus;
                Abort;
             end;
             if Industrial.FieldByName('Quantidade').asfloat <= 0 then begin
                MessageDlg('Quantidade informada inválida!', mtError, [mbOK], 0);
                cQtde.SetFocus;
                Abort;
             end;
             // Verifica se há materia prima suficiente para a quantidade de produtos no estoque.
             with tSaldo do begin
                  sql.Clear;
                  sql.add('select Codigo_MateriaPrima');
                  sql.Add('      ,Descricao = (select Descricao_Reduzida from Produtos prd where prd.Codigo = pmp.Codigo_MateriaPrima)');
                  sql.Add('      ,Quantidade_Utilizada');
                  sql.add('      ,Saldo = ((select isnull(sum(Quantidade), 0) from NotasTerceirosItens nti where nti.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Movimenta_Estoque = 1) + ');
                  sql.add('                (select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 0 and Movimenta_Estoque = 1) +');
                  sql.add('                (select isnull(sum(Quantidade_Entrada), 0) from ProdutosTransferencia prt where prt.Produto_Entrada = pmp.Codigo_MateriaPrima and Estoque = 1)) -');
                  sql.add('               ((select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 1 and Movimenta_Estoque = 1) +');
                  sql.add('                (select isnull(sum(Quantidade), 0) from ProdutosTransferencia prt where prt.Produto_Saida = pmp.Codigo_MateriaPrima and Estoque = 1))');
                  sql.add('into #temp');
                  sql.add('from ProdutosMateriaPrima pmp');
                  sql.add('where Codigo_Produto = :pCodigo');
                  sql.add('select * from #temp where Saldo < (Quantidade_Utilizada * :pQtde)');
                  sql.add('drop table #temp');
                  parambyname('pCodigo').asinteger := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
                  parambyname('pQtde').asfloat     := Industrial.FieldByName('Quantidade').asfloat;
                  open;
                  if recordcount > 0 then begin
                     mProd := 'Materias primas sem estoque disponivel: '+#13+#13;
                     while not eof do begin
                           mProd := concat(mProd, fieldbyname('Codigo_MateriaPrima').AsString, ' - ', fieldbyname('Descricao').AsString, ' :', formatfloat(',##0.000', fieldbyname('Saldo').asfloat), #13);
                           next;
                     end;
                     mProd := concat(mProd, #13, 'Industrialização não pode ser efetuada com a quantidade solicitada!');
                     showmessage(mProd);
                     abort;
                  end;
             end;
             if Industrial.State = dsEdit then begin
                DeletaMov;
             end;
             if Industrial.State = dsInsert then begin
                with ttmp do begin
                     sql.clear;
                     sql.add('select isnull(max(Registro), 0)+1 as Registro from Estoque_Industrializacao');
                     open;
                     Industrial.fieldbyname('Registro').value := FieldByName('Registro').asinteger;
                end;
             end;
          end;
          if Button = nbDelete then begin
             if Messagedlg('Deseja realmente remover este item?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
                Abort
             end;
             DeletaMov;
          end;
     end;
*)     
end;

procedure TfEstoque_Industrializacao.DeletaMov;
begin
   begin
          with ttmp do begin 
               sql.clear;
               sql.add('delete from ProdutosTransferencia where Nota = :pNota and Data_Transferencia = :pData and Motivo = ''IND'' ');
               parambyname('pNota').AsInteger := Industrial.fieldbyname('Registro').asinteger;
               parambyname('pData').AsDate    := Industrial.fieldbyname('Data').value;
               execute;
          end;
     end;
end;

procedure TfEstoque_Industrializacao.NavegaClick(Sender: TObject; Button: TNavigateBtn);
var
  i: integer;
begin 
(*
     Panel2.Enabled := false;
   begin
          if (Button = nbEdit) or (Button = nbInsert) then begin
             for i := 0 to 6 do begin
                 Navega.Controls[i].Enabled := False;
             end;
             Panel2.Enabled := true;
             cCodigo.SetFocus;
          end;
          if Button = nbInsert then begin
             Industrial.FieldByName('Movimenta_Estoque').Value    := true;
             Industrial.FieldByName('Movimenta_Inventario').Value := true;
             Industrial.FieldByName('Data').Value                 := date;
          end;
          if Button = nbPost then begin
             with FichaEstoque do begin 
                  sql.clear;
                  sql.add('select * from FichaEstoque where Nota = :pNota and Data = :pData and Destinatario_CNPJ = :pDest');
                  parambyname('pNota').AsInteger := Industrial.fieldbyname('Registro').asinteger;
                  parambyname('pData').value     := Industrial.fieldbyname('Data').value;
                  parambyname('pDest').value     := tEmpresa.fieldbyname('CNPJ').asstring;
                  open;
             end;
             with FichaInventario do begin 
                  sql.clear;
                  sql.add('select * from FichaInventario where Nota = :pNota and Data = :pData and Destinatario_CNPJ = :pDest');
                  parambyname('pNota').AsInteger := Industrial.fieldbyname('Registro').asinteger;
                  parambyname('pData').value     := Industrial.fieldbyname('Data').value;
                  parambyname('pDest').value     := tEmpresa.fieldbyname('CNPJ').asstring;
                  open;
             end;
             if Industrial.fieldbyname('Movimenta_Estoque').asboolean then SalvaMov;
          end;
          if Button in[nbPost, nbDelete] then begin
             FiltraMateria;
          end;
          Navega.Controls[6].Enabled := Industrial.RecordCount > 0;
     end;
*)     
end;

// Ficha de estoque - "ENTRADA" (Efetua a baixa da matéria prima de industrialização).
procedure TfEstoque_Industrializacao.SalvaMov;
var
  mReg: integer;
begin
     // Adiciona "ENTRADA" do produto industrializado na tabela de transferência com tipo = "IND: industrialização".
     with ttmp do begin
          sql.clear;
          sql.Add('select isnull(max(Registro), 0)+1 as Registro from EstoqueTransferencia');
          Open;
          mReg := fieldbyname('Registro').asinteger;
     end;
     with ttmp do begin
          sql.clear;
//          sql.add('insert into EstoqueTransferencia values('
     end;
     with EstoqueTransf do begin
          sql.clear;
          sql.add('select * from EstoqueTransferencia where 1 = 0 order by registro desc');
          open;
          append;
               fieldbyname('Registro').value             := mReg;
               fieldbyname('Empresa').value              := Industrial.fieldbyname('Empresa').asstring;
               fieldbyname('Produto_Entrada').value      := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
               fieldbyname('Produto_Saida').value        := 0;
               fieldbyname('Quantidade_Entrada').value   := Roundto(Industrial.fieldbyname('Quantidade').AsFloat, -3);
               fieldbyname('Quantidade_Saida').value     := 0;
               fieldbyname('Valor_Unitario').value       := Industrial.fieldbyname('Valor_Unitario').ascurrency;
               fieldbyname('Data_Transferencia').value   := Industrial.fieldbyname('Data').value;
               fieldbyname('Processo_Entrada').value     := Industrial.fieldbyname('Processo').asstring;
               fieldbyname('Processo_Saida').value       := null;
               fieldbyname('Motivo').value               := 'IND';
               fieldbyname('Nota').value                 := Industrial.fieldbyname('Registro').value;
               fieldbyname('CFOP').value                 := Industrial.fieldbyname('CFOP').value;
               fieldbyname('Observacao').value           := 'ENTRADA DE MERCADORIA INDUSTRIALIZADA REGISTRO FISCAL:' + Industrial.fieldbyname('Registro').asstring+ ' DE '+Industrial.fieldbyname('Data').AsString;
               fieldbyname('Movimenta_Estoque').value    := Industrial.fieldbyname('Movimenta_Estoque').asboolean;
               fieldbyname('Movimenta_Inventario').value := Industrial.fieldbyname('Movimenta_Inventario').asboolean;
          post;
     end;



{
     with ttmp do begin
          // Exclui os itens criados na tabela de transferências anteriormente.
          sql.clear;
          sql.add('delete from EstoqueTransferencia where Empresa = :pEmp and Nota = :pNota and Data_Transferencia = :pData and Motivo = ''IND'' ');
          parambyname('pEmp').value  := Industrial.fieldbyname('Empresa').asstring;
          parambyname('pNota').value := Industrial.fieldbyname('Registro').asinteger;
          parambyname('pData').value := Industrial.FieldByName('Data').value;
          execute;
     end;
}     
(*
          with ttmp do begin
               sql.clear;
               sql.Add('select RegEst = (select isnull(max(Registro), 0)+1 from FichaEstoque)');
               sql.Add('      ,RegInv = (select isnull(max(Registro), 0)+1 from FichaInventario)');
               Open;
               mRegEst := fieldbyname('RegEst').asinteger;
               mRegInv := fieldbyname('RegInv').asinteger;
               
               sql.Clear;
               sql.Add('select ItemEst = (select isnull(max(Item), 0)+1 from FichaEstoque where Codigo = :pCodigo)');
               sql.Add('      ,ItemInv = (select isnull(max(Item), 0)+1 from FichaInventario where Codigo = :pCodigo)');
               ParamByName('pCodigo').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').asinteger;
               Open;
               mItemEst := fieldbyname('ItemEst').asinteger;
               mItemInv := fieldbyname('ItemInv').asinteger;
          end;
          with ProdutosMateriaPrima do begin
               sql.clear;
               sql.add('select Registro');
               sql.add('      ,Codigo_Produto');
               sql.add('      ,Codigo_MateriaPrima');
               sql.add('      ,Conversao_M2M3');
               sql.add('      ,Quantidade_Utilizada');
               sql.add('      ,Descricao = (select Descricao from Produtos where Codigo = Codigo_MateriaPrima)');
               sql.add('      ,Unidade = (select Unidade from Produtos where Codigo = Codigo_MateriaPrima)');
               sql.add('      ,Altura = (select Altura from Produtos where Codigo = Codigo_Produto)');
               sql.add('      ,Saldo = ((select isnull(sum(Quantidade), 0) from NotasTerceirosItens nti where nti.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Movimenta_Estoque = 1) + ');
               sql.add('                (select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 0 and Movimenta_Estoque = 1) +');
               sql.add('                (select isnull(sum(Quantidade_Entrada), 0) from ProdutosTransferencia prt where prt.Produto_Entrada = pmp.Codigo_MateriaPrima and Estoque = 1)) -');
               sql.add('               ((select isnull(sum(Quantidade), 0) from NotasItens npi where npi.Codigo_Mercadoria = pmp.Codigo_MateriaPrima and Saida_Entrada = 1 and Movimenta_Estoque = 1) +');
               sql.add('                (select isnull(sum(Quantidade), 0) from ProdutosTransferencia prt where prt.Produto_Saida = pmp.Codigo_MateriaPrima and Estoque = 1))');
               sql.add('from  ProdutosMateriaPrima pmp');
               sql.add('where Codigo_Produto = :pCodigo');
               parambyName('pCodigo').AsInteger := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
               open;
          end;
          with tSaldo do begin 
               sql.clear;
               sql.add('select Qtde_Saldo');
               sql.add('      ,Unitario_Saldo');
               sql.add('      ,Total_Saldo');
               sql.add('from FichaEstoque');
               sql.add('where Codigo = :pCodigo');
               sql.add('and Registro = (select max(Registro) from FichaEstoque where Codigo = :pCodigo)');
               parambyName('pCodigo').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').asinteger;
               open;
          end;
          // Adiciona "ENTRADA" do produto industrializado na tabela de transferência com tipo '"IND: industrialização".
          with ttmp do begin
               sql.clear;
               sql.Add('select isnull(max(Registro), 0)+1 as Registro from ProdutosTransferencia');
               Open;
          end;
          with ProdutosTransferencia do begin
               Append;
                    fieldbyname('Registro').value           := ttmp.FieldByName('Registro').AsInteger;
                    fieldbyname('Produto_Entrada').value    := Industrial.FieldByName('Codigo_Mercadoria').AsInteger;
                    fieldbyname('Quantidade').value         := Roundto(Industrial.fieldbyname('Quantidade').AsFloat, -3);
                    fieldbyname('Quantidade_Entrada').value := Roundto(Industrial.fieldbyname('Quantidade').AsFloat, -3);
                    fieldbyname('Inventario').value         := Industrial.fieldbyname('Movimenta_Inventario').asboolean;
                    fieldbyname('Data_Transferencia').value := Industrial.fieldbyname('Data').value;
                    fieldbyname('Nota').value               := Industrial.fieldbyname('Registro').value;
                    fieldbyname('Observacao').value         := 'ENTRADA DE MERCADORIA INDUSTRIALIZADA REGISTRO FISCAL:' + Industrial.fieldbyname('Registro').asstring+ ' DE '+Industrial.fieldbyname('Data').AsString;
                    fieldbyname('Estoque').value            := Industrial.fieldbyname('Movimenta_Estoque').asboolean;
                    fieldbyname('Processo_Entrada').value   := Industrial.fieldbyname('Processo').asstring;
                    fieldbyname('Motivo').value             := 'IND';
                    fieldbyname('Valor_Unitario').value     := Industrial.fieldbyname('Valor_Unitario').ascurrency;
                Post;
          end;
          {===============================================================================[ PRODUTO INDUSTRIALIZADO ]=========================================================================================}
          // Entrada do produto industrializado na ficha de estoque.
          if Industrial.fieldbyname('Movimenta_Estoque').asboolean then begin
             with FichaEstoque do begin
                  Append;                           
                       fieldbyname('Registro').value          := mRegEst;
                       fieldbyname('Item').value              := mItemEst;
                       fieldbyname('Codigo').value            := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
                       fieldbyname('Descricao').value         := Industrial.FieldByName('Descricao').AsString;
                       fieldbyname('UM').value                := Produtos.FieldByName('Unidade').AsString;
                       fieldbyname('NCM').value               := Produtos.FieldByName('NCM').AsString;
                       fieldbyname('Historico').value         := '* ENTRADA DE INDUSTRIALIZAÇÃO *';
                       fieldbyname('Estoque').value           := '0-EMPRESA';
                       fieldbyname('Emissor').value           := 'P';
                       fieldbyname('Nota').value              := Industrial.fieldbyname('Registro').asinteger;
                       fieldbyname('Data').value              := Industrial.fieldbyname('Data').value;
                       fieldbyname('ES').value                := 'E';
                       fieldbyname('Destinatario_Nome').value := tEmpresa.FieldByName('Razao_Social').AsString;
                       fieldbyname('Destinatario_CNPJ').value := tEmpresa.FieldByName('CNPJ').AsString;
                       fieldbyname('Finalidade').value        := 0;
                       fieldbyname('Qtde_Saida').value        := 0;
                       fieldbyname('Unitario_Saida').value    := 0;
                       fieldbyname('Total_Saida').value       := 0;
                       fieldbyname('Qtde_Entrada').value      := Industrial.fieldbyname('Quantidade').AsFloat;
                       fieldbyname('Unitario_Entrada').value  := Industrial.fieldbyname('Valor_Unitario').AsFloat;
                       fieldbyname('Total_Entrada').value     := Industrial.fieldbyname('Valor_Unitario').AsFloat * Industrial.fieldbyname('Quantidade').AsFloat;
                       if tSaldo.RecordCount > 0 then begin
                          fieldbyname('Qtde_Saldo').value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + fieldbyname('Qtde_Entrada').AsFloat;
                          fieldbyname('Total_Saldo').value := tSaldo.FieldByName('Total_Saldo').AsFloat + fieldbyname('Total_Entrada').AsFloat;
                       end else begin
                          fieldbyname('Qtde_Saldo').value  := fieldbyname('Qtde_Entrada').Value;
                          fieldbyname('Total_Saldo').value := fieldbyname('Total_Entrada').AsFloat;
                       end;
                       if fieldbyname('Qtde_Saldo').AsFloat > 0 then begin
                          fieldbyname('Unitario_Saldo').value := fieldbyname('Total_Saldo').AsFloat / fieldbyname('Qtde_Saldo').AsFloat;
                       end;
                       fieldbyname('Origem').value        := 'IND';
                       fieldbyname('Processo').value      := Industrial.fieldbyname('Processo').asstring;
                       fieldbyname('Tipo_Processo').value := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                  Post;
             end;
          end;
          // Entrada do produto industrializado na ficha de inventario.
          if Industrial.fieldbyname('Movimenta_Inventario').asboolean then begin
             with FichaInventario do begin
                  Append;                           
                       fieldbyname('Registro').value          := mRegInv;
                       fieldbyname('Item').value              := mItemInv;
                       fieldbyname('Codigo').value            := Industrial.fieldbyname('Codigo_Mercadoria').asinteger;
                       fieldbyname('Descricao').value         := Industrial.FieldByName('Descricao').AsString;
                       fieldbyname('UM').value                := Produtos.FieldByName('Unidade').AsString;
                       fieldbyname('NCM').value               := Produtos.FieldByName('NCM').AsString;
                       fieldbyname('Historico').value         := '* ENTRADA DE INDUSTRIALIZAÇÃO *';
                       fieldbyname('Estoque').value           := '0-EMPRESA';
                       fieldbyname('Emissor').value           := 'P';
                       fieldbyname('Nota').value              := Industrial.fieldbyname('Registro').asinteger;
                       fieldbyname('Data').value              := Industrial.fieldbyname('Data').value;
                       fieldbyname('ES').value                := 'E';
                       fieldbyname('Destinatario_Nome').value := tEmpresa.FieldByName('Razao_Social').AsString;
                       fieldbyname('Destinatario_CNPJ').value := tEmpresa.FieldByName('CNPJ').AsString;
                       fieldbyname('Finalidade').value        := 0;
                       fieldbyname('Qtde_Saida').value        := 0;
                       fieldbyname('Unitario_Saida').value    := 0;
                       fieldbyname('Total_Saida').value       := 0;
                       fieldbyname('Qtde_Entrada').value      := Industrial.fieldbyname('Quantidade').AsFloat;
                       fieldbyname('Unitario_Entrada').value  := Industrial.fieldbyname('Valor_Unitario').AsFloat;
                       fieldbyname('Total_Entrada').value     := Industrial.fieldbyname('Valor_Unitario').AsFloat * Industrial.fieldbyname('Quantidade').AsFloat;
                       if tSaldo.RecordCount > 0 then begin
                          fieldbyname('Qtde_Saldo').value  := tSaldo.FieldByName('Qtde_Saldo').AsFloat  + fieldbyname('Qtde_Entrada').AsFloat;
                          fieldbyname('Total_Saldo').value := tSaldo.FieldByName('Total_Saldo').AsFloat + fieldbyname('Total_Entrada').AsFloat;
                       end else begin
                          fieldbyname('Qtde_Saldo').value  := fieldbyname('Qtde_Entrada').Value;
                          fieldbyname('Total_Saldo').value := fieldbyname('Total_Entrada').AsFloat;
                       end;
                       if fieldbyname('Qtde_Saldo').AsFloat > 0 then begin
                          fieldbyname('Unitario_Saldo').value := fieldbyname('Total_Saldo').AsFloat / fieldbyname('Qtde_Saldo').AsFloat;
                       end;
                       fieldbyname('Origem').value        := 'IND';
                       fieldbyname('Processo').value      := Industrial.fieldbyname('Processo').asstring;
                       fieldbyname('Tipo_Processo').value := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                  Post;
             end;
          end;
          {===============================================================================[ MATERIA PRIMA ]================================================================================================}
          // Materias primas do produto principal.
          ProdutosMateriaPrima.First;
          while not ProdutosMateriaPrima.Eof do begin
                // Pegando o valor de entrada da ficha de estoque/Inventario
                with ttmp do begin
                     sql.clear;
                     sql.add('select isnull(Unitario_Saida, 0) as Unitario');
                     sql.add('from FichaEstoque');
                     sql.add('where Codigo = :pCodigo and Nota <> :pNota and Item = (select max(Item) from FichaEstoque where Codigo = :pCodigo and Nota <> :pNota) ');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     parambyName('pNota').AsInteger   := Industrial.fieldbyname('Registro').asinteger;
                     open;
                     mVlrUniEst := fieldbyname('Unitario').ascurrency;
                     
                     sql.clear;
                     sql.add('select isnull(Unitario_Saida, 0) as Unitario');
                     sql.add('from FichaInventario');
                     sql.add('where Codigo = :pCodigo and Nota <> :pNota and Item = (select max(Item) from FichaInventario where Codigo = :pCodigo and Nota <> :pNota) ');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     parambyName('pNota').AsInteger   := Industrial.fieldbyname('Registro').asinteger;
                     open;
                     mVlrUniInv := fieldbyname('Unitario').ascurrency;
                end;
                with ttmp do begin
                     sql.Clear;
                     sql.Add('select ItemEst = (select isnull(max(Item), 0)+1 from FichaEstoque where Codigo = :pCodigo)');
                     sql.Add('      ,ItemInv = (select isnull(max(Item), 0)+1 from FichaInventario where Codigo = :pCodigo)');
                     ParamByName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').asinteger;
                     Open;
                     mItemEst := fieldbyname('ItemEst').asinteger;
                     mItemInv := fieldbyname('ItemInv').asinteger;
                end;
                with ttmp do begin
                     sql.clear;
                     sql.Add('select RegEst = (select isnull(max(Registro), 0)+1 from FichaEstoque)');
                     sql.Add('      ,RegInv = (select isnull(max(Registro), 0)+1 from FichaEstoque)');
                     Open;
                     mRegEst := fieldbyname('RegEst').asinteger;
                     mRegInv := fieldbyname('RegInv').asinteger;
                     
                     sql.clear;
                     sql.Add('select isnull(max(Registro), 0)+1 as Registro from ProdutosTransferencia');
                     Open;
                end;
                // Adiciona "SAÍDA" na tabela de transferência com tipo "IND: de industrialização".
                with ProdutosTransferencia do begin 
                     Append;
                          fieldbyname('Registro').value           := ttmp.FieldByName('Registro').AsInteger;
                          fieldbyname('Produto_Saida').value      := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                          fieldbyname('Quantidade').value         := Roundto(Industrial.FieldByName('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat, -3);
                          fieldbyname('Quantidade_Entrada').value := 0;
                          fieldbyname('Inventario').value         := Industrial.FieldByName('Movimenta_Inventario').asboolean;
                          fieldbyname('Data_Transferencia').value := Industrial.FieldByName('Data').value;
                          fieldbyname('Nota').value               := Industrial.FieldByName('Registro').asinteger;
                          fieldbyname('Observacao').value         := 'SAÍDA DE MATERIA PRIMA DE INDUSTRIALIZAÇÃO REGISTRO FISCAL:' + Industrial.FieldByName('Registro').AsString + ' DE '+Industrial.FieldByName('Data').AsString;
                          fieldbyname('Estoque').value            := Industrial.FieldByName('Movimenta_Estoque').asboolean;
                          fieldbyname('Processo_Saida').value     := Industrial.FieldByName('Processo').AsString;
                          fieldbyname('Motivo').value             := 'IND';
                          fieldbyname('Valor_Unitario').value     := mVlrUniEst;
                     Post;
                end;
                // Registros de "SAÍDA" da matéria prima na ficha de estoque.
                with tSaldo do begin
                     sql.clear;
                     sql.add('select Qtde_Saldo');
                     sql.add('      ,Unitario_Saldo');
                     sql.add('      ,Total_Saldo');
                     sql.add('from FichaEstoque');
                     sql.add('where Codigo = :pCodigo');
                     sql.add('and Registro = (select max(Registro) from FichaEstoque where Codigo = :pCodigo)');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     open;
                end;
                with FichaEstoque do begin 
                     Append;                           
                          fieldbyname('Registro').Value          := mRegEst;
                          fieldbyname('Item').value              := mItemEst;
                          fieldbyname('Codigo').value            := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                          fieldbyname('Descricao').value         := ProdutosMateriaPrima.FieldByName('Descricao').AsString;
                          fieldbyname('UM').value                := Produtos.FieldByName('Unidade').AsString;
                          fieldbyname('NCM').value               := Produtos.FieldByName('NCM').AsString;
                          fieldbyname('Historico').value         := '* SAÍDA DE INDUSTRIALIZAÇÃO *';
                          fieldbyname('Estoque').value           := '0-EMPRESA';
                          fieldbyname('Emissor').value           := 'P';
                          fieldbyname('Nota').value              := Industrial.fieldbyname('Registro').asinteger;
                          fieldbyname('Data').value              := Industrial.fieldbyname('Data').value;
                          fieldbyname('ES').value                := 'S';
                          fieldbyname('Destinatario_Nome').value := tEmpresa.FieldByName('Razao_Social').AsString;
                          fieldbyname('Destinatario_CNPJ').value := tEmpresa.FieldByName('CNPJ').AsString;
                          fieldbyname('Finalidade').value        := 0;
                          fieldbyname('Qtde_Entrada').value      := 0;
                          fieldbyname('Unitario_Entrada').value  := 0;
                          fieldbyname('Total_Entrada').value     := 0;
                          fieldbyname('Qtde_Saida').value        := Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat;
                          fieldbyname('Unitario_Saida').value    := mVlrUniEst;
                          fieldbyname('Total_Saida').value       := mVlrUniEst * (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          fieldbyname('Qtde_Saldo').value        := tSaldo.FieldByName('Qtde_Saldo').AsFloat - (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          fieldbyname('Total_Saldo').value       := tSaldo.FieldByName('Total_Saldo').AsFloat - fieldbyname('Total_Saida').AsFloat;
                          if (fieldbyname('Total_Saldo').AsCurrency > 0) then
                             fieldbyname('Unitario_Saldo').value := fieldbyname('Total_Saldo').AsCurrency / fieldbyname('Qtde_Saldo').AsFloat
                          else
                             fieldbyname('Unitario_Saldo').value := 0;
                          fieldbyname('Origem').value         := 'IND';
                          fieldbyname('Processo').value       := Industrial.fieldbyname('Processo').asstring;
                          fieldbyname('Tipo_Processo').value  := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                     Post;
                end;
                // Registros de "SAÍDA" da matéria prima na ficha de inventario.
                with tSaldo do begin
                     sql.clear;
                     sql.add('select Qtde_Saldo');
                     sql.add('      ,Unitario_Saldo');
                     sql.add('      ,Total_Saldo');
                     sql.add('from FichaInventario');
                     sql.add('where Codigo = :pCodigo');
                     sql.add('and Registro = (select max(Registro) from FichaInventario where Codigo = :pCodigo)');
                     parambyName('pCodigo').AsInteger := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                     open;
                end;
                with FichaInventario do begin 
                     Append;                           
                          fieldbyname('Registro').Value            := mRegInv;
                          fieldbyname('Item').value                := mItemInv;
                          fieldbyname('Codigo').value              := ProdutosMateriaPrima.FieldByName('Codigo_MateriaPrima').AsInteger;
                          fieldbyname('Descricao').value           := ProdutosMateriaPrima.FieldByName('Descricao').AsString;
                          fieldbyname('UM').value                  := Produtos.FieldByName('Unidade').AsString;
                          fieldbyname('NCM').value                 := Produtos.FieldByName('NCM').AsString;
                          fieldbyname('Historico').value           := '* SAÍDA DE INDUSTRIALIZAÇÃO *';
                          fieldbyname('Estoque').value             := '0-EMPRESA';
                          fieldbyname('Emissor').value             := 'P';
                          fieldbyname('Nota').value                := Industrial.fieldbyname('Registro').asinteger;
                          fieldbyname('Data').value                := Industrial.fieldbyname('Data').value;
                          fieldbyname('ES').value                  := 'S';
                          fieldbyname('Destinatario_Nome').value   := tEmpresa.FieldByName('Razao_Social').AsString;
                          fieldbyname('Destinatario_CNPJ').value   := tEmpresa.FieldByName('CNPJ').AsString;
                          fieldbyname('Finalidade').value          := 0;
                          fieldbyname('Qtde_Entrada').value        := 0;
                          fieldbyname('Unitario_Entrada').value    := 0;
                          fieldbyname('Total_Entrada').value       := 0;
                          fieldbyname('Qtde_Saida').value          := Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat;
                          fieldbyname('Unitario_Saida').value      := mVlrUniInv;
                          fieldbyname('Total_Saida').value         := mVlrUniInv * (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          fieldbyname('Qtde_Saldo').value          := tSaldo.FieldByName('Qtde_Saldo').AsFloat - (Industrial.fieldbyname('Quantidade').AsFloat * ProdutosMateriaPrima.FieldByName('Quantidade_Utilizada').AsFloat);
                          fieldbyname('Total_Saldo').value         := tSaldo.FieldByName('Total_Saldo').AsFloat - fieldbyname('Total_Saida').AsFloat;
                          if (fieldbyname('Total_Saldo').ascurrency > 0) then
                             fieldbyname('Unitario_Saldo').value := fieldbyname('Total_Saldo').AsCurrency / fieldbyname('Qtde_Saldo').AsFloat
                          else
                             fieldbyname('Unitario_Saldo').value := 0;
                          fieldbyname('Origem').value         := 'IND';
                          fieldbyname('Processo').value       := Industrial.fieldbyname('Processo').asstring;
                          fieldbyname('Tipo_Processo').value  := tProcesso.fieldbyname('Modalidade_Importacao').asinteger;
                     Post;
                end;
                
                ProdutosMateriaPrima.Next;
          end;
*)     
end;

procedure TfEstoque_Industrializacao.bAdicionar_Click(Sender: TObject);
begin
      with Industrial do begin
           try
              LigaBotoes(false);
              Append;
                   FieldByName('Empresa').Value              := UniMainModule.mEmpresaAtiva;
                   FieldByName('Data').Value                 := now;
                   FieldByName('Movimenta_Estoque').Value    := true;
                   FieldByName('Movimenta_Inventario').Value := false;
              cProduto.SetFocus;     
           except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfEstoque_Industrializacao.bExcluir_Click(Sender: TObject);
begin
     with Industrial do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo_Mercadoria').AsString, mtConfirmation,mbYesNo,
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

procedure TfEstoque_Industrializacao.bSalvar_Click(Sender: TObject);
begin
     // Verifica todos os campos obrigatórios: O campo obrigatório deve estar com a propriedade "Tag = 1".
     if not TValidaCRUD.ValidarFormulario(Ficha) then abort;
     
     // Verifica se todas as matérias-primas do produto tem estoque disponível.
     if not SaldoMatPrima then abort;
      
     with Industrial do begin
          try
              // Gera o registro em caso de inclusão.
              if State = dsInsert then begin
                 fieldbyname('Registro').Value := GeraCodigo('Industrializacao', 'Registro');
              end;
              
              post;

              // Movimentações de estoque e inventario.
              if Industrial.fieldbyname('Movimenta_Estoque').asboolean then SalvaMov;
              
              LigaBotoes(true);
              Alerta.Text := 'Registro salvo no banco de dados!'; 
              Alerta.Execute;
          except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfEstoque_Industrializacao.bCancelar_Click(Sender: TObject);
begin
     Industrial.Cancel;
     LigaBotoes(true);
end;

procedure TfEstoque_Industrializacao.bEditar_Click(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Industrial.Edit;
         cProduto.setfocus;
     except on E: Exception do
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;
 
procedure TfEstoque_Industrializacao.UniFrameDestroy(Sender: TObject);
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
 
procedure TfEstoque_Industrializacao.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled      := Estado;
     bEditar_.Enabled    := Estado;
     bExcluir_.Enabled   := Estado;
     bAdicionar_.Enabled := Estado;
     bCancelar_.Enabled  := not Estado;
     bSalvar_.Enabled    := not Estado;
     Ficha.Enabled       := not Estado;
end;

procedure TfEstoque_Industrializacao.bFechar_Click(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfEstoque_Industrializacao.bPesquisaClick(Sender: TObject);
begin
{
     Industrializacao.Cancel;
     LigaBotoes(true);
     Filtra(Industrializacao, 'Codigo', cPesquisa.text);
}     
end;
 
procedure TfEstoque_Industrializacao.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;
 
procedure TfEstoque_Industrializacao.IndustrialAfterScroll(DataSet: TDataSet);
begin
     FiltraMateria;
end;

procedure TfEstoque_Industrializacao.IndustrializacaoAfterPost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Codigo').AsString, EstadoTabela(DataSet));
end;

procedure TfEstoque_Industrializacao.IndustrializacaoBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Codigo').AsString, 'Delete');
end;

function TfEstoque_Industrializacao.SaldoMatPrima: boolean;
var 
  mProd: string;
begin
     // Verifica se há materia-prima suficiente para a quantidade de produtos no estoque.
     with ttmp do begin
          sql.clear;
          sql.add('with MateriasPrimas as (select pmp.Codigo_MateriaPrima as Codigo');
          sql.add('                              ,pmp.Quantidade_Utilizada');
          sql.add('                        from ProdutosMateriaPrima pmp');
          sql.add('                        where pmp.Codigo_Produto = :pCod),');
          sql.add('Movimentacoes as (select ni.Codigo_Mercadoria');
          sql.add('                        ,sum(case when ni.ES = 0 then ni.Quantidade else 0 end) as Quantidade_Entrada');
          sql.add('                        ,sum(case when ni.ES = 1 then ni.Quantidade else 0 end) as Quantidade_Saida');
          sql.add('                  from NotasFiscais nf');
          sql.add('                  inner join NotasItens ni on ni.Nota_id = nf.Nota_id inner join OperacaoFiscal op ON op.Codigo = nf.Operacao');
          sql.add('                  inner join MateriasPrimas mp ON mp.Codigo = ni.Codigo_Mercadoria');
          sql.add('                  where nf.Empresa = :pEmp');
          sql.add('                  and op.Movimenta_Estoque = 1');
          sql.add('                  group by ni.Codigo_Mercadoria),');
          sql.add('Transferencias as (select Codigo_MateriaPrima');
          sql.add('                         ,sum(Quantidade_Entrada) as Quantidade_Entrada');
          sql.add('                         ,sum(Quantidade_Saida) as Quantidade_Saida');
          sql.add('                   from (select et.Produto_Entrada as Codigo_MateriaPrima');
          sql.add('                               ,et.Quantidade_Entrada');
          sql.add('                               ,cast(0 as decimal(18,4)) as Quantidade_Saida');
          sql.add('                         from EstoqueTransferencia et inner join MateriasPrimas mp on mp.Codigo = et.Produto_Entrada');
          sql.add('                         where et.Empresa = :pEmp');
          sql.add('                         union all');
          sql.add('                         select et.Produto_Saida as Codigo_MateriaPrima');
          sql.add('                               ,cast(0 as decimal(18,4)) as Quantidade_Entrada');
          sql.add('                               ,et.Quantidade_Saida');
          sql.add('                         from EstoqueTransferencia et inner join MateriasPrimas mp on mp.Codigo = et.Produto_Saida');
          sql.add('                         where et.Empresa = :pEmp');
          sql.add(') as T');
          sql.add('group by Codigo_MateriaPrima),');
          sql.add('Resultado as (select mp.Codigo');
          sql.add('                    ,prd.Descricao_Reduzida as Descricao');
          sql.add('                    ,mp.Quantidade_Utilizada');
          sql.add('                    ,isnull(mv.Quantidade_Entrada, 0) + isnull(tr.Quantidade_Entrada, 0) - isnull(mv.Quantidade_Saida, 0) - isnull(tr.Quantidade_Saida, 0) as Saldo');
          sql.add('              from MateriasPrimas mp ');
          sql.add('              left join Produtos prd on prd.Codigo = mp.Codigo');
          sql.add('              left join Movimentacoes mv ON mv.Codigo_Mercadoria = mp.Codigo');
          sql.add('              left join Transferencias tr ON tr.Codigo_MateriaPrima = mp.Codigo)');
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('      ,Quantidade_Utilizada');
          sql.add('      ,Saldo = cast(Saldo as decimal(18, 3))');
          sql.add('from Resultado');
          sql.add('where Saldo < (Quantidade_Utilizada * :pQtde)');
          sql.add('order by Descricao');
          parambyname('pEmp').AsString  := UniMainModule.mEmpresaAtiva;
          parambyname('pCod').AsInteger := Industrial.FieldByName('Codigo_Mercaria').asinteger;
          parambyname('pQtde').AsFloat  := Industrial.FieldByName('Quantidade').AsFloat;
          //sql.savetofile('c:\temp\Atlas_Industrializacao_Estoque_Materia_Prima.sql');
          open;
          
          result := recordcount = 0;
          if not result then begin
             mProd := 'Matérias-primas sem estoque disponivel:'+#13;
             while not eof do begin
                   mProd := concat(mProd, '     '
                                  ,formatfloat('000000', fieldbyname('Codigo').asinteger), ': '
                                  ,fieldbyname('Descricao').AsString + ' Estoque: '
                                  ,formatfloat(',##0.000', fieldbyname('Saldo').asfloat), #13);
                   next;
             end;
             mProd := concat(mProd, #13, 'Industrialização não pode ser efetuada com a quantidade solicitada!');
             TfDialogo.Execute(UniApplication, 'aviso', 'Atenção', mProd);  
          end;
     end;
end;


end.
