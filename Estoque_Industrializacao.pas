unit Estoque_Industrializacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, 
  uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, 
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, uniCheckBox, uniMultiItem, uniDBComboBox, System.Math, uniMemo, uniScreenMask;

type
  TfEstoque_Industrializacao = class(TuniFrame)
    dsProdutos: TDataSource;
    Produtos: TFDQuery;
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
    Pasta: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    TabDados: TUniTabSheet;
    pFicha: TUniPanel;
    gIndust: TUniDBGrid;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    Panel2: TUniPanel;
    gMateria: TUniDBGrid;
    Ficha: TUniPanel;
    cProduto: TUniDBLookupComboBox;
    cQtde: TUniDBEdit;
    cData: TUniDBDateTimePicker;
    cNota: TUniDBEdit;
    cValor_Unitario: TUniDBEdit;
    cProcesso: TUniDBLookupComboBox;
    cEstoque: TUniEdit;
    EstoqueTransf: TFDQuery;
    dsEstoqueTransf: TDataSource;
    cDestinatario: TUniDBLookupComboBox;
    cCFOP: TUniDBLookupComboBox;
    Fornecedores: TFDQuery;
    dsFornecedores: TDataSource;
    CFOP: TFDQuery;
    dsCFOP: TDataSource;
    IndustrialEmpresa: TStringField;
    IndustrialData: TDateField;
    IndustrialCodigo_Mercadoria: TIntegerField;
    IndustrialProcesso: TStringField;
    IndustrialQuantidade: TFloatField;
    IndustrialValor_Unitario: TCurrencyField;
    IndustrialDestinatario: TSmallintField;
    IndustrialNotas: TStringField;
    IndustrialCFOP: TStringField;
    tValor: TFDQuery;
    IndustrialRegistro: TFDAutoIncField;
    cEmpresa: TUniDBLookupComboBox;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    FichaEstoque: TFDQuery;
    MascaraSal: TUniScreenMask;
    MascaraExc: TUniScreenMask;
    procedure UniFrameCreate(Sender: TObject);
    procedure cCodigoExit(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
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
    procedure gIndustDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure FiltraMateria;
    function SaldoMatPrima: boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, ValidaCRUD, Dialogo, FichaEstoque;

procedure TfEstoque_Industrializacao.UniFrameCreate(Sender: TObject);
var
  i: integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to pred(ComponentCount) do begin
         if (Components[i] is TUniPanel) then begin
            if TuniPanel(Components[i]).Tag <> 1 then begin 
               TuniPanel(Components[i]).Top   := 30;
               TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
               TuniPanel(Components[i]).Color := clNone
            end;
         end;
     end;
     Pasta.ActivePageIndex := 0;
     
     with Empresas do begin
          sql.clear;
          sql.add('select CNPJ, Filial, Razao_Social');
          sql.add('from Empresas');
          sql.add('where substring(CNPJ, 1, 8) = :pCNPJ');
          sql.add('order by Filial');
          parambyname('pCNPJ').asstring := copy(UniMainModule.mEmpresaAtiva, 1, 8);
          open;
          cEmpresa.KeyValue := Fieldbyname('CNPJ').asstring;
     end;
     with Industrial do begin
          sql.clear;
          sql.Add('select * from Industrializacao order by Data desc, Codigo_Mercadoria');
          open;
     end;
     with Produtos do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao_Reduzida');
          sql.add('      ,Descricao');
          sql.add('      ,NCM');
          sql.add('      ,UM');
          sql.add('from Produtos p');
          sql.add('where exists (select 1 from ProdutosMateriaPrima pm where pm.Codigo_Produto = p.Codigo)');
          open;
     end;     
     with Fornecedores do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,CNPJ');
          sql.add('      ,CPF');
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
     FiltraMateria;
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
          sql.add('                        else');
          sql.add('                             0');
          sql.add('                        end)');
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

procedure TfEstoque_Industrializacao.gIndustDblClick(Sender: TObject);
begin
     bEditar_Click(self);
end;

procedure TfEstoque_Industrializacao.bAdicionar_Click(Sender: TObject);
begin
      with Industrial do begin
           try
              Pasta.ActivePageIndex := 1;
              LigaBotoes(false);
              Append;
                   FieldByName('Empresa').Value := UniMainModule.mEmpresaAtiva;
                   FieldByName('Data').Value    := date;
                   
              cProduto.SetFocus;     
           except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfEstoque_Industrializacao.bExcluir_Click(Sender: TObject);
var
   mCodigos: string;
   mNota_id: integer;
begin
     with Industrial do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo_Mercadoria').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; aRes: Integer)
                    begin
                         if aRes = mrYes then begin
                            mNota_id := IndustrialRegistro.asinteger;
                            
                            // Exclui os itens da industrialização. 
                            with ttmp do begin
                                 sql.clear;  
                                 sql.add('delete from IndustrializacaoMateria where Registro_id = :pReg'); 
                                 parambyname('pReg').asinteger := mNota_id;
                                 execsql;
                            end;
                            
                            // Processa a ficha de Estoque/Inventario de todos os produtos industrializado (Principal e Matérias-primas).
                            with ttmp do begin
                                 sql.clear;  
                                 sql.add('select Produtos = string_agg(convert(nvarchar(max), isnull(Codigo_MateriaPrima, '''')), '','')');
                                 sql.add('within group (order by Codigo_MateriaPrima)');
                                 sql.add('from ProdutosMateriaprima');
                                 sql.add('where Codigo_Produto = :pCod');
                                 parambyname('pCod').asinteger := IndustrialCodigo_Mercadoria.asinteger;
                                 open;
                                 mCodigos := IndustrialCodigo_Mercadoria.asstring+','+ fieldbyname('Produtos').asstring;
                            end;
                            
                            // Excluir o registro principal.
                            Delete;

                            ProcessaFichas(FichaEstoque
                                          ,0
                                          ,Empresas.FieldByName('Razao_Social').asstring
                                          ,Empresas.FieldByName('CNPJ').asstring
                                          ,1                                                   // Descrição Mercadoria: 0=Nota fiscal, 1=Cadastro do produto.
                                          ,mNota_id
                                          ,mCodigos
                                          ,'IND');
                                          
                            Alerta.Text := 'Registro excluído do banco de dados!';
                            Alerta.Execute;
                         end;
                    end);
     end;
end;

procedure TfEstoque_Industrializacao.bSalvar_Click(Sender: TObject);
var
  mProdutos: string;
begin
     // Verifica todos os campos obrigatórios: O campo obrigatório deve estar com a propriedade "Tag = 1".
     if not TValidaCRUD.ValidarFormulario(Ficha) then abort;
     // Verifica se todas as matérias-primas do produto tem estoque disponível.
     //if not SaldoMatPrima then abort;

     with Industrial do begin
          try
              post;

              // Salva as matérias primas na tabela "IndustrializacaoMateria" itens de industrialização.
              mProdutos := IndustrialCodigo_Mercadoria.asstring + ',';
              with ttmp do begin
                   sql.clear;
                   sql.add('delete from IndustrializacaoMateria where Registro_id = :pid;');
                   sql.add('insert into IndustrializacaoMateria (Registro_id, Codigo_Mercadoria, Quantidade, Quantidade_Total, Valor_Unitario)');
                   sql.add('select v.Registro_id');
                   sql.add('      ,v.Codigo_Mercadoria');
                   sql.add('      ,v.Quantidade');
                   sql.add('      ,v.Quantidade_Total');
                   sql.add('      ,isnull(fe.Unitario_Saida, 0)');
                   sql.add('from (values');
                   MatPrima.first;
                   while not MatPrima.eof do begin
                         sql.add('('+Industrial.fieldbyname('Registro').asstring+
                                 ', '+MatPrima.FieldByName('Codigo_MateriaPrima').AsString+
                                 ', '+StringReplace(MatPrima.FieldByName('Quantidade_Utilizada').AsString, ',', '.', [rfReplaceAll])+
                                 ', '+StringReplace(formatfloat('##.000', MatPrima.FieldByName('Quantidade_Utilizada').asfloat * IndustrialQuantidade.asfloat), ',', '.', [rfReplaceAll])+')');
                        
                         // Pegando a relação de produtos para as fichas de "Estoque/Inventario".
                         mProdutos := mProdutos + MatPrima.FieldByName('Codigo_MateriaPrima').AsString;
                         MatPrima.Next;
                
                         if not MatPrima.eof then begin 
                            sql.text  := sql.text + ',';
                            mProdutos := mProdutos + ',';
                         end;
                   end;
                   sql.add(') v (Registro_id, Codigo_Mercadoria, Quantidade, Quantidade_Total)');
                   sql.add('outer apply (');
                   sql.add('   select top (1) fe.Unitario_Saida');
                   sql.add('   from FichaEstoque fe');
                   sql.add('   where fe.Codigo_Mercadoria = v.Codigo_Mercadoria');
                   sql.add('   and fe.Nota <> :pNota');
                   sql.add('   and fe.Unitario_Saida > 0');
                   sql.add('   order by fe.Item desc');
                   sql.add(') fe;');
                   paramByName('pid').AsInteger   := Industrial.FieldByName('Registro').AsInteger;
                   paramByName('pNota').AsInteger := Industrial.FieldByName('Registro').AsInteger;
                   //sql.savetofile('c:\temp\Atlas_Industrialização_Materia_Prima.sql');
                   execsQL;
              end;
              // Processa a ficha de Estoque/Inventario de todos os produtos industrializado (Principal e Matérias-primas).
              ProcessaFichas(FichaEstoque
                            ,0
                            ,Empresas.FieldByName('Razao_Social').asstring
                            ,Empresas.FieldByName('CNPJ').asstring
                            ,1                                              // Descrição Mercadoria: 0=Nota fiscal, 1=Cadastro do produto.
                            ,Industrial.FieldByName('Registro').AsInteger
                            ,mProdutos
                            ,'IND');

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
         Pasta.ActivePageIndex := 1;
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
     Industrial.Cancel;
     LigaBotoes(true);
     Filtra(Industrial, 'Codigo', cPesquisa.text);
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
          sql.add('with MateriasPrimas as (select Codigo = pmp.Codigo_MateriaPrima');
          sql.add('                              ,pmp.Quantidade_Utilizada');
          sql.add('                        from ProdutosMateriaPrima pmp');
          sql.add('                        where pmp.Codigo_Produto = :pCod),');
          sql.add('Movimentacoes as (select ni.Codigo_Mercadoria');
          sql.add('                        ,Quantidade_Entrada = sum(case when ni.ES = 0 then ni.Quantidade else 0 end)');
          sql.add('                        ,Quantidade_Saida   = sum(case when ni.ES = 1 then ni.Quantidade else 0 end)');
          sql.add('                  from NotasFiscais nf');
          sql.add('                  inner join NotasItens ni on ni.Nota_id = nf.Nota_id ');
          sql.add('                  inner join OperacaoFiscal op on op.Codigo = nf.Operacao');
          sql.add('                  inner join MateriasPrimas mp on mp.Codigo = ni.Codigo_Mercadoria');
          sql.add('                  where nf.Empresa = :pEmp');
          sql.add('                  and op.Movimenta_Estoque = 1');
          sql.add('                  and nf.Cancelada <> 1');
          sql.add('                  and nf.Denegada <> 1');
          sql.add('                  and nf.Provisoria <> 1');
          sql.add('                  group by ni.Codigo_Mercadoria),');
          sql.add('Transferencias as (select Codigo_MateriaPrima');
          sql.add('                         ,Quantidade_Entrada = sum(Quantidade_Entrada)');
          sql.add('                         ,Quantidade_Saida   = sum(Quantidade_Saida)');
          sql.add('                   from (select Codigo_MateriaPrima = et.Produto_Entrada');
          sql.add('                               ,et.Quantidade_Entrada');
          sql.add('                               ,Quantidade_Saida = cast(0 as decimal(18,4))');
          sql.add('                         from EstoqueTransferencia et ');
          sql.add('                         inner join MateriasPrimas mp on mp.Codigo = et.Produto_Entrada');
          sql.add('                         where et.Empresa = :pEmp');
          sql.add('                         union all');
          sql.add('                         select Codigo_MateriaPrima = et.Produto_Saida');
          sql.add('                               ,Quantidade_Entrada = cast(0 as decimal(18,4))');
          sql.add('                               ,et.Quantidade_Saida');
          sql.add('                         from EstoqueTransferencia et ');
          sql.add('                         inner join MateriasPrimas mp on mp.Codigo = et.Produto_Saida');
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
          parambyname('pCod').AsInteger := Industrial.FieldByName('Codigo_Mercadoria').asinteger;
          parambyname('pQtde').AsFloat  := Industrial.FieldByName('Quantidade').AsFloat;
          //sql.savetofile('c:\temp\Atlas_Industrializacao_Estoque_Materia_Prima.sql');
          open;
          
          result := recordcount = 0;
          if not result then begin
             mProd := 'Matérias-primas sem estoque disponivel:'+#13+#13;
             while not eof do begin
                   mProd := concat(mProd, '     '
                                  ,formatfloat('000000', fieldbyname('Codigo').asinteger), ': '
                                  ,copy(fieldbyname('Descricao').AsString, 1, 50) + ' Estoque: '
                                  ,formatfloat(',##0.000', fieldbyname('Saldo').asfloat), #13);
                   next;
             end;
             mProd := concat(mProd, #13, 'Industrialização não pode ser efetuada com a quantidade solicitada!');
             TfDialogo.Execute(UniApplication, 'erro', 'Sem estoque!', mProd);  
          end;
     end;
end;


end.
