unit Funcoes;

interface

uses
    SysUtils, Windows, FireDAC.Comp.Client, Dialogs, MaskUtils, System.Variants, DB, Forms, uniSpeedButton, uniPanel, UniPageControl, System.Classes, CalcExpress, UniGUIClasses,
    uniGUIForm, uniGUIFrame, uniMemo, DBCommon, uniDBLookUpComboBox, uniDBComboBox, uniComboBox, uniDBDateTimePicker, uniDBEdit, uniEdit, uniGuiDialogs, TypInfo, Data.SqlTimSt,
    uniSweetAlert, FireDAC.Stan.Param, uniMainMenu, uniDBNavigator, uniButton, uniScrollBox, System.RegularExpressions, System.Rtti, uniStringGrid, DateUtils, ComObj, uniDBMemo,
    uniDBRadioGroup, ClipBrd;


// Funções de checagens.
function ChecaCNPJ(Num: string): boolean;
function ChecaCPF(Num: String): Boolean;
//function CampoVazio(Campo:TObject; msg:string): boolean;
function CampoVazio(Campo:TComponent; msg:string): boolean;
function ValidaCampo(Campo:TObject; Valor1, Valor2:Variant; Condicao, msg, Titulo:string): boolean;
function Aviso(Valor1, Valor2:Variant; Condicao, msg, Titulo:string): boolean;
function ImportaEXCEL(xStringGrid: TuniStringGrid; xFileXLS: string; NomeAba: TuniPageControl; Aba, lIni, lFim:Integer; Titulo:Boolean): Boolean;

// Funções de ordem gerais.
procedure LimpaMemoria;
procedure AtivaEdicao(Nav, bAdi, bEdi, bExc, bGra, bCan: TObject; aPageControl: TuniPageControl);
procedure AtivaBotoes(Nav, bAdi, bEdi, bExc, bGra, bCan: TObject);
procedure AtivaPanel(aParent: TuniControl; aValue: Boolean);
function NomeComputador:string;
function RemoveAcentos(Str:String): String;
function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
function PastaDLL: string;
function Calculo(Formula: widestring): string;
function Percentual(Valor, Percent: Real): Real;
function CalculaTudo(pOper: integer; pTipo: string; gFormula: TuniStringGrid; cLog: tuniMemo; pTabDestino: TFDQuery; pFrame: TuniFrame; pForm: TuniForm): boolean;
function CalculaMacro(pForm: TComponent; pFormula, Campo: String): Real;
function SubstituirCampos(pForm: TComponent; pCampo: string): string;
function SubstituirCondicao(Campo: string): string;
function PegaCSTIPI(pOper, pProd: integer): string;
function PegaCSTPIS(pOper, pProd, pDest: Integer): string;
function PegaCSTCOFINS(pOper, pProd, pDest: Integer): string;
function PegaCSTICMS(TabItens: TFDQuery; pOper, pProd, pRegTrib, pDest: Integer): string;
function PegaCSTCBS(TabItens: TFDQuery; pOper, pProd: Integer): string;
function PegaCSTIBS(TabItens: TFDQuery; pOper, pProd: Integer): string;

// Funções de strings.
function QuebraString(BaseString, BreakString: string): TStringList;
function ApenasNumeros(Const Texto:String):String;
function ApenasLetras(Const Texto:String):String;
function SinalSequencia(s: string): boolean;
function RemoveCaracter(PesquisarPor, TrocarPor : String; Texto :String):String;
function RemoveCaracterXML(Str:String): String;

//Funções de Data.
function NomeMes(Mes: Integer) :String;
function SomaData(Data: TSQLTimeStamp; Dias: Integer): TSQLTimeStamp;

// Funções / procedures de banco de dados.
procedure LogDados(Tabela: TDataSet; Descricao, Estado: String);
procedure LogErros(Tabela, Operacao, Descricao:String);
function GeraCodigo(Tabela, Campo:string):integer;
function Existe(Tabela:TFDQuery;Campo,Codigo:string):boolean;
function ExisteData(Tabela:TFDQuery;Campo:String; pData:TDate):boolean;
function Pesquisa(Tabela:TFDQuery; CampoChave, CampoPesq, Busca:string):string;
function Filtra(Tabela:TFDQuery; CampoPesq, Busca:string):string;
function NomeTabela(Tabela:TFDQuery):string;
function EstadoTabela(DataSet: TDataSet): String;
function ListaCampos(pFormula: string; pCampo:Integer): WideString;
function GeraProcPO(Empresa: string; Cliente: integer; ProcPO: string): string;

// Funções contabeis.
function CriaConta(Nome, Origem, Origem_Cod, Nac_Est, Natureza, CNPJ_CPF, Pessoa: string; Consig:Boolean):integer;
function NivelConta(Conta, Mascara: String): Integer;
function ContaPai(Conta, Mascara: String; Nivel:Integer): String;
//function PegaContaFin(pConta, pBenef, pProcessoImp, pProcessoExp, pBanco, pTipo: string; pModal: integer): TStringList;
//function LanContabilFin(pTipo, pTitulo: string): boolean;
//function LanContabilNFP(pChave: string): boolean;
function GeraLote(pData: TDate; pEmpresa, pDescricao, pOrigem: string): integer;
function GeraNumeroLan(pLote:integer; pData:TDate):integer;
procedure LancamentoContabil(pOrigem, pNumero, pTipo: string; pMetodo:integer);

// Funções de estoque.
function EstoqueProduto(pProduto: Integer): Real;
function InventarioProduto(pProduto: Integer): Real;
function EstoqueDetalhe(pProduto: Integer; pLote: string): Real;
function EstoqueProdutoEmb(pProduto, pEmbarque: Integer): Real;
function InventarioProdutoEmb(pProduto, pEmbarque: Integer): Real;

// Funcções de sistema.
function GetDLLPath: string;
function VersaoExe(pEXE:String): String;

implementation

uses MainModule, Main;

// Verifica se o CNPJ esta correto.
Function ChecaCNPJ(Num: String): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
   // Retira cada numero do Edit, e joga p/ variavel
   if Length(Num) <> 14 then begin
      ChecaCNPJ := False;
   end else begin
      n1  := StrToInt(num[1]);
      n2  := StrToInt(num[2]);
      n3  := StrToInt(num[3]);
      n4  := StrToInt(num[4]);
      n5  := StrToInt(num[5]);
      n6  := StrToInt(num[6]);
      n7  := StrToInt(num[7]);
      n8  := StrToInt(num[8]);
      n9  := StrToInt(num[9]);
      n10 := StrToInt(num[10]);
      n11 := StrToInt(num[11]);
      n12 := StrToInt(num[12]);
      d1  := n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
      d1  := 11-(d1 mod 11);

      if d1 >= 10 then d1 := 0;
      d2 := d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
      d2 := 11-(d2 mod 11);
      if d2 >= 10 then d2 := 0;

      calculado := inttostr(d1)+inttostr(d2);
      digitado  := num[13]+num[14];
      if calculado = digitado then ChecaCNPJ := true else ChecaCNPJ := false;
   End;
end;

// Verificar se o CPF esta correto.
Function ChecaCPF(Num: String): Boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9,d1,d2 : integer;
   digitado, calculado : string;
begin
      if (Trim(Num) <> '') and (Length(Num) = 11) then begin
         n1 := StrToInt(Num[1]);
         n2 := StrToInt(Num[2]);
         n3 := StrToInt(Num[3]);
         n4 := StrToInt(Num[4]);
         n5 := StrToInt(Num[5]);
         n6 := StrToInt(Num[6]);
         n7 := StrToInt(Num[7]);
         n8 := StrToInt(Num[8]);
         n9 := StrToInt(Num[9]);
         d1 := n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
         d1 := 11-(d1 mod 11);
         If d1 >= 10 then d1 := 0;
         d2 := d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
         d2 := 11-(d2 mod 11);
         If d2 >= 10 then d2 := 0;
         calculado := InttoStr(d1)+inttostr(d2);
         digitado  := Num[10]+Num[11];
         Result    := calculado = digitado
      end else begin
         result := false;
      end;
end;

// Retorna o nome do computador.
Function NomeComputador: String;
var
  I: DWord;
begin
     I := MAX_COMPUTERNAME_LENGTH + 1;
     SetLength(Result, I);
     GetComputerName(PChar(Result), I);
     Result := String(PChar(Result));
End;

function Existe(Tabela:TFDQuery; Campo, Codigo:string):boolean;
var
   Pesq: TFDQuery;
   TabNome: string;
begin
     TabNome := GetTableNameFromSQL(Tabela.sql.Text);
     Pesq    := TFDQuery.Create(nil);
     with Pesq do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('if exists (select 1 from '+TabNome+' where '+Campo+' = '+QuotedStr(Codigo)+')');
          sql.add('   select cast(1 as bit) as Existe');
          sql.add('else');
          sql.add('   select cast(0 as bit) as Existe');
          sql.savetofile('c:\temp\Atlas_NFTerceiros_Excluir_Destinatario.sql.');
          open;
          Existe := fieldbyname('Existe').asboolean;
     end;
     Pesq.Free;
end;

// Verifica se existe data na tabela informa.
function ExisteData(Tabela:TFDQuery; Campo:String; pData:TDate):boolean;
var
   Pesq:TFDQuery;
   TabNome:string;
begin
     TabNome := GetTableNameFromSQL(Tabela.sql.Text);
     Pesq    := TFDQuery.Create(nil);
     with Pesq do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Achou = count(*) from '+TabNome+' where '+Campo+' = :pData');
          ParamByName('pData').AsDatetime := pData;
          Open;
          ExisteData := FieldByName('Achou').AsInteger > 0;
          Free;
     end;
end;

function GeraCodigo(Tabela, Campo:string):integer;
var
   Tab:TFDQuery;
begin
     Tab := TFDQuery.Create(nil);
     with Tab do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.Add('select isnull(max('+Campo+'), 0)+1 as '+Campo+' from '+Tabela);
          Open;
          GeraCodigo := FieldByName(Campo).AsInteger;
     end;
     Tab.Free;
end;

function GeraNumeroLan(pLote:integer; pData:TDate):integer;
var
   Tab:TFDQuery;
begin
     Tab := TFDQuery.Create(nil);
     with Tab do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.Add('select isnull(max(Numero), 0)+1 as Numero from Lancamentos where Data = :pData and Lote = :pLote');
          parambyname('pData').AsDate    := pData;
          parambyname('pLote').Asinteger := pLote;
          Open;
          GeraNumeroLan := FieldByName('Numero').AsInteger;
     end;
     Tab.Free;
end;

function GeraLote(pData: TDate; pEmpresa, pDescricao, pOrigem: string): integer;
var
   Tab: TFDQuery;
   lote: integer;
begin
     Tab := TFDQuery.Create(nil);
     with Tab do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.Add('select Lote = isnull(max(Lote), 0)+1 from Lotes where Data = :pData and Empresa = :pEmpresa');
          ParamByName('pData').asDate   := pData;
          ParamByName('pEmpresa').value := pEmpresa;
          open;
          lote := fieldbyname('Lote').AsInteger;
          sql.clear;
          sql.Add('select top 1 * from Lotes where Data = :pData and Empresa = :pEmpresa order by Data desc');
          ParamByName('pData').asDate   := pData;
          ParamByName('pEmpresa').value := pEmpresa;
          open;

          Append;
                FieldByName('Registro').value     := GeraCodigo('Lotes', 'Registro');
                FieldByName('Data').value         := pData;
                FieldByName('Lote').value         := lote;
                FieldByName('Empresa').value      := pEmpresa;
                FieldByName('Origem').value       := pOrigem;
                FieldByName('Descricao').value    := pDescricao;
                FieldByName('Contabilizar').value := true;
                FieldByName('Aberto').value       := false;
                FieldByName('Recriar').value      := 1;
          Post;
     end;
     result := lote;
     Tab.Free;
end;

// Remove caracteres acentuados de uma string.
function RemoveAcentos(Str:String): String;
const ComAcento = 'àâêôûãõáéíóúçüñÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
      SemAcento = 'aaeouaoaeioucuNAAEOUAOAEIOUCU';
Var
      x : Integer;
begin
      For x := 1 to Length(Str) do Begin
          If Pos(Str[x],ComAcento)<>0 Then begin
             Str[x] := SemAcento[Pos(Str[x],ComAcento)];
          End;
      End;
      Result := Str;
end;

// Função de alternativa entre dois valores;
function iif(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
begin
    if Expressao then
       Result := ParteTRUE
    else
       Result := ParteFALSE;
end;

// Função para a criação da conta no plano de contas contabil.
function CriaConta(Nome, Origem, Origem_Cod, Nac_Est, Natureza, CNPJ_CPF, Pessoa: string; Consig:Boolean):integer;
{
     Parâmetros:
          Nome          : Nome da Conta.
          Grupo         : Grupo da conta configurada em configurações ou em modulos de cadastro.
          Natureza      : Natureza da conta "D = Devedora / C = Credora".
          Origem        : Código de origem do cadastro conforme tabela abaixo.
          Origem_Cod    : Código do cadastro na origem.
          Terceiros_Tipo: O código do tipo terceiros quando a conta for para um grupo de terceiros.
                          CN = Cliente nacional.
                          CE = Cliente exterior.
                          FN = Fornecedor nacional.
                          FE = Fornecedor exterior.
                          PR = Processo.
          Terceiros_Cod : O código do cadastros de terceiros quando a conta for para um grupo de terceiros.

     Códigos das origens das contas criadas, para consulta futura.
     Cadastros:
            Bancos        = Bancos.
            Destinatarios = Clientes / Fornecedores.
            Processos     = Processos.
            Processos     = Plano Financeiro.
}
var
   tCodigos
  ,tConfig
  ,tOrigem
  ,tPlanoContas:TFDQuery;
begin
     result := 0;
     with uniMainModule do begin
          tPlanoContas            := TFDQuery.Create(nil);
          tPlanoContas.Connection := Conecta;
          tOrigem                 := TFDQuery.Create(nil);
          tOrigem.Connection      := Conecta;
          tCodigos                := TFDQuery.Create(nil);
          tCodigos.Connection     := Conecta;
          tConfig                 := TFDQuery.Create(nil);
          tConfig.Connection      := Conecta;

          tOrigem.sql.Clear;
          tOrigem.sql.add('select Conta');
          tOrigem.sql.add('      ,Terceiros');
          tOrigem.sql.add('      ,Conta_ECF');
          tOrigem.sql.add('from  OrigemContas');
          tOrigem.sql.add('where Origem = '+quotedstr(Origem));
          tOrigem.sql.add('and isnull(Consignacao, 0) = '+iif(Consig, '1', '0') );
          tOrigem.sql.add('and Nac_Estr = '+quotedstr(Nac_Est) );
          tOrigem.sql.add('and Grupo_Financeiro = '+quotedstr(Origem_Cod) );
          //tOrigem.SQL.SaveToFile('c:\temp\tOrigem.sql');
          tOrigem.Open;

          // Pegando as configurações da empresa ativa.
          tConfig.sql.Clear;
          tConfig.SQL.Add('select Empresa');
          tConfig.SQL.Add('      ,Mascara_PlanoContas');
          tConfig.SQL.Add('      ,Contab_Numeracao');
          tConfig.SQL.Add('from Config');
          tConfig.SQL.Add('where Empresa = :pEmp');
          tConfig.ParamByName('pEmp').asstring := mEmpresaAtiva;
          tConfig.Open;

          tPlanoContas.sql.clear;
          tPlanoContas.sql.add('select * from PlanoContas where Origem = '+quotedstr(Origem)+' and Origem_Codigo = '+Quotedstr(Origem_Cod) );
          //tPlanoContas.SQL.SaveToFile('c:\temp\tPlanoContas.sql');
          tPlanoContas.open;

          if (tPlanoContas.RecordCount = 0) and (tOrigem.RecordCount > 0) then begin
             try
                 // Pega a última conta e o último código.
                 // Quando configurado p/incrementar o número da conta, incrementa o numero em +1 ou repete a conta analítica.
                 tCodigos.sql.Clear;
                 if tConfig.fieldbyname('Contab_Numeracao').AsBoolean then begin
                    tCodigos.sql.Add( 'select Conta = (select max(cast(Conta AS Bigint))+1 as Conta from PlanoContas where Conta like '+trim(quotedstr(tOrigem.FieldByName('Conta').asstring+'%'))+' and Sintetica <> 1)' );
                 end else begin
                    tCodigos.sql.Add('select Conta = (select max(cast(Conta AS Bigint)) as Conta from PlanoContas where (Conta like :pGrupo) and (Sintetica <> 1))');
                 end;
                 tCodigos.sql.Add('      ,Codigo = (select max(cast(Codigo AS Int))+1 as Codigo from PlanoContas)');
                 tCodigos.Open;

                 tPlanoContas.Append;
                              tPlanoContas.FieldByName('Empresa').Value := mEmpresaAtiva;
                              // Quando não existe uma conta analitica no grupo cria uma com o numero '0001'.
                              tPlanoContas.FieldByName('Conta').Value := tCodigos.FieldByName('Conta').asstring;
                              if trim(tCodigos.FieldByName('Conta').AsString) = '' then begin
                                 tPlanoContas.FieldByName('Conta').Value := tOrigem.FieldByName('Conta').asstring+'0001';
                              end;
                              tPlanoContas.FieldByName('Codigo').Value            := tCodigos.FieldByName('Codigo').AsInteger;
                              tPlanoContas.FieldByName('Nome').Value              := Nome;
                              tPlanoContas.FieldByName('Origem').Value            := Origem;
                              tPlanoContas.FieldByName('Origem_Codigo').Value     := Origem_Cod;
                              tPlanoContas.FieldByName('Saldo_Anterior').Value    := 0;
                              tPlanoContas.FieldByName('Debito').Value            := 0;
                              tPlanoContas.FieldByName('Credito').Value           := 0;
                              tPlanoContas.FieldByName('Sintetica').Value         := false;
                              tPlanoContas.FieldByName('Natureza').Value          := Natureza;
                              tPlanoContas.FieldByName('LALUR').Value             := false;
                              tPlanoContas.FieldByName('Mostrar_Balanco').Value   := false;
                              tPlanoContas.FieldByName('Imprimir_Razao').Value    := false;
                              tPlanoContas.FieldByName('DRE').Value               := false;
                              tPlanoContas.FieldByName('Conta_Resultado').Value   := false;
                              tPlanoContas.FieldByName('Data_Inclusao').Value     := Date;
                              tPlanoContas.FieldByName('Nivel').Value             := NivelConta(tCodigos.FieldByName('Conta').AsString, tConfig.FieldByName('Mascara_PlanoContas').Value);
                              tPlanoContas.FieldByName('Conta_Pai').Value         := ContaPai(tCodigos.Fieldbyname('Conta').asstring, tConfig.FieldByName('Mascara_PlanoContas').Value, tplanoContas.FieldByName('Nivel').Value);
                              tPlanoContas.FieldByName('Grupo').Value             := Copy(tCodigos.FieldByName('Conta').AsString, 1, 1);
                              tPlanoContas.FieldByName('Atualiza_Anterior').Value := 0;
                              tPlanoContas.FieldByName('Atualiza_Debito').Value   := 0;
                              tPlanoContas.FieldByName('Atualiza_Credito').Value  := 0;
                              tPlanoContas.FieldByName('Pessoa').Value            := Pessoa;
                              tPlanoContas.FieldByName('CNPJ_CPF').Value          := CNPJ_CPF;
                              tPlanoContas.FieldByName('Selecao').Value           := false;
                              tPlanoContas.FieldByName('Terceiros_Grupo').Value   := tOrigem.FieldByName('Terceiros').AsString;
                              tPlanoContas.FieldByName('Conta_ECF').Value         := tOrigem.FieldByName('Conta_ECF').AsString;
                 tPlanoContas.Post;
                 result := tPlanoContas.FieldByName('Codigo').asinteger;
             except
                 MessageDlg('Falha desconhecida, não pode criar a conta '+QuotedStr(Nome)+' no "Plano de Contas"!', mtError, [mbOK]);
                 result := 0;
             end;
          end;
     end;

     tCodigos.Free;
     tConfig.Free;
     tPlanoContas.Free;
     tOrigem.Free;
end;

function NivelConta(Conta, Mascara: String): Integer;
var
    i:integer;
begin
      Conta  := FormatMaskText(Mascara+';0; ', Conta);
      result := 1;
      for i := 1 to Length(Conta) do begin
          if (Conta[i] = '.') and (CharInSet(Conta[i+1], ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Inc(result);
          if (Conta[i] = ' ') then Break;
      end;
end;

function ContaPai(Conta, Mascara: String; Nivel:Integer): String;
var
    mNivel,
    i:integer;
begin
      Conta  := FormatMaskText(Mascara+';0; ', Conta);
      mNivel := 1;
      result := '';
      if Nivel > 1 then begin
         for i := 1 to Length(Conta) do begin
             result := result + Conta[i];
             if (Conta[i] = '.') and (Charinset(Conta[i+1], ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'])) then Inc(mNivel);
             if mNivel = (Nivel) then Break;
         end;
         result := StringReplace(result, '.', '', [rfReplaceAll, rfIgnoreCase]);
      end;
end;

// Função para a geração do log de ações das tabelas do sistema.
procedure LogDados(Tabela: TDataSet; Descricao, Estado:String);
var
  i:Integer;
begin
      with uniMainModule, log do begin
           sql.Clear;
           sql.Add('select top 1 * from Log order by Data desc');
           open;

           if Estado = 'Edit' then begin
              for i := 0 to Tabela.FieldCount-1 do begin
                  if (Tabela.Fields[i].NewValue <> null) and (Tabela.Fields[i].NewValue <> Tabela.Fields[i].OldValue) then begin
                     Append;
                          FieldByName('Data').Value          := now;
                          FieldByName('Empresa').asString    := mEmpresaAtiva;
                          FieldByName('Operacao').Value      := Estado.toupper;
                          FieldByName('Descricao').AsString  := Descricao;
                          FieldByName('Usuario').AsString    := Trim(Main.MainForm.lUser.Text);
                          FieldByName('Tabela').AsString     := Tabela.Name;
                          FieldByName('Campo').asString      := Tabela.Fields[i].FieldName;
                          FieldByName('IP_Cliente').Value    := Main.MainForm.UniApplication.RemoteAddress;
                          FieldByName('Modulo').Value        := Main.MainForm.PagePrincipal.ActivePage.Caption;
                          FieldByName('Sessao').Value        := Main.MainForm.UniSession.NewId.ToString;
                          FieldByName('Computador').AsString := NomeComputador;
                          if Tabela.Fields[i].OldValue <> null then FieldByName('Conteudo_Antes').AsString  := Tabela.Fields[i].OldValue;
                          if Tabela.Fields[i].NewValue <> null then FieldByName('Conteudo_Depois').AsString := Tabela.Fields[i].NewValue;
                     Post;
                  end;
              end;
           end;
           if (Estado = 'Insert') or (Estado = 'Delete') or (Estado = 'Outros') then begin
              Append;
                   FieldByName('Data').Value          := now;
                   FieldByName('Empresa').asString    := mEmpresaAtiva;
                   FieldByName('Operacao').Value      := Estado.toupper;
                   FieldByName('Descricao').Value     := Descricao;
                   FieldByName('Usuario').AsString    := Trim(Main.MainForm.lUser.Text);
                   FieldByName('Tabela').AsString     := Tabela.Name;
                   FieldByName('IP_Cliente').Value    := Main.MainForm.UniApplication.RemoteAddress;
                   FieldByName('Modulo').Value        := Main.MainForm.PagePrincipal.ActivePage.Caption;
                   FieldByName('Sessao').Value        := Main.MainForm.UniSession.NewId.ToString;
                   FieldByName('Computador').AsString := NomeComputador;
              Post;
           end;
           close;
      end;
end;

// Função para a geração do log de erros do sistema.
procedure LogErros(Tabela, Operacao, Descricao:String);
begin
      with uniMainModule, log do begin
           try
              sql.Clear;
              sql.Add('select top 1 * from Log order by Data desc');
              open;
              append;
                   FieldByName('Data').Value          := now;
                   FieldByName('Usuario').AsString    := Trim(Main.MainForm.lUser.Text);
                   FieldByName('Tabela').AsString     := Tabela;
                   FieldByName('Operacao').Value      := Operacao;
                   FieldByName('Descricao').Value     := Descricao;
                   FieldByName('Computador').AsString := NomeComputador;
                   FieldByName('Modulo').Value        := Main.MainForm.PagePrincipal.ActivePage.Caption;
                   FieldByName('IP_Cliente').Value    := Main.MainForm.UniApplication.RemoteAddress;
                   FieldByName('Sessao').Value        := Main.MainForm.UniSession.NewId.ToString;
                   FieldByName('Empresa').asString    := mEmpresaAtiva;
              post;
              close;
           except
              //
           end;
      end;
end;

function Pesquisa(Tabela:TFDQuery; CampoChave, CampoPesq, Busca:string):string;
var
  tTemp: TFDQuery;
  tab: string;
begin
     Tab      := GetTableNameFromSQL(Tabela.sql.text);
     Pesquisa := '';
     tTemp    := TFDQuery.Create(nil);
     with tTemp do begin
          Connection := uniMainModule.Conecta;
          sql.Clear;
          sql.add('select '+CampoChave);
          sql.add('from '+Tab);
          sql.add('where '+CampoPesq+' like '+quotedstr('%'+Busca+'%'));
          Open;
          if recordcount > 0 then begin
             Tabela.Locate(CampoChave, FieldByName(CampoChave).asstring, [loCaseInsensitive]);
             Pesquisa := Tabela.FieldByName(CampoChave).AsString;
          end;
     end;
     tTemp.Free;
end;

function Filtra(Tabela:TFDQuery; CampoPesq, Busca:string):string;
var
   scr: string;
begin
    scr := 'select * from '+GetTableNameFromSQL(Tabela.sql.text)+' where '+CampoPesq+' like '+quotedstr('%'+Busca+'%');
    with Tabela do begin
          sql.Clear;
          sql.add(scr);
          Open;
          if recordcount = 0 then begin
             MessageDlg('Nenhum registro encontrado!', mtInformation, [mbOK]);
          end;
     end;
end;

// Retorna o nome da tabela principal da "TFDQuery".
function NomeTabela(Tabela:TFDQuery):string;
var
  x, iSelect, iFrom: Integer;
  Texto, Tab: string;
begin
     texto   := Tabela.sql.Text;
     iSelect := 0;
     iFrom   := 0;
     for x := 1 to Length(Texto) do begin
        if uppercase(Copy(Texto, x, 6)) = 'SELECT' then Inc(iSelect);
        if uppercase(Copy(Texto, x, 4)) = 'FROM'   then Inc(iFrom);
        if ((iSelect + iFrom) >= 2) and (iSelect = iFrom) then begin
           Tab := Copy(Texto, x + 5, 100);
           Tab := Trim(Copy(Tab, 1, Pos(' ', Tab)));
           Break;
        end;
     end;
     //MessageDlg('iSelect: ' + IntToStr(iSelect) + ', iFrom: ' + IntToStr(iFrom) + ', Tabela: ' + Tab, mtError, [mbOK]);
     Nometabela := Tab;
end;

// Retorna o nome do mes em português.
Function NomeMes(Mes: Integer) :String;
Var
   mMes : String;
Begin
     Case Mes of
          1 : mMes := 'Janeiro  ';
          2 : mMes := 'Fevereiro';
          3 : mMes := 'Março    ';
          4 : mMes := 'Abril    ';
          5 : mMes := 'Maio     ';
          6 : mMes := 'Junho    ';
          7 : mMes := 'Julho    ';
          8 : mMes := 'Agosto   ';
          9 : mMes := 'Setembro ';
         10 : mMes := 'Outubro  ';
         11 : mMes := 'Novembro ';
         12 : mMes := 'Dezembro ';
     End;
     Result := mMes;
end;

// Verifica se campo esta vazio.
(*
function CampoVazio(Campo:TObject; msg:string): boolean;
var
   Vazio:boolean;
   Alerta: TUniSweetAlert;
begin
     Vazio := false;
     if Campo is TuniDBLookUpComboBox      then Vazio := TuniDBLookUpComboBox(Campo).Text = '';
     if Campo is TuniDBEdit                then Vazio := TuniDBEdit(Campo).Text = '';
     if Campo is TUniDBFormattedNumberEdit then Vazio := (TUniDBFormattedNumberEdit(Campo).Text = '') or (TUniDBFormattedNumberEdit(Campo).text = '0');
     if Campo is TuniDBComboBox            then Vazio := TuniDBComboBox(Campo).Text = '';
     if Campo is TuniComboBox              then Vazio := TuniComboBox(Campo).Text = '';
     if Campo is TuniDBDateTimePicker      then Vazio := TuniDBDateTimePicker(Campo).DateTime = 0;
     if Campo is TuniDBRadioGroup          then Vazio := TuniDBRadioGroup(Campo).ItemIndex = -1;

     if vazio then begin
        Alerta := TuniSweetAlert.create(nil);
        Alerta.AlertType := atError;
        Alerta.Title     := 'ERRO';
        Alerta.TitleText := 'Campo obrigatório!';
        if msg <> '' then begin
           Alerta.Text := msg;
        end else begin
           Alerta.Text := 'O campo "'+TuniDBLookUpComboBox(Campo).FieldLabel+'" deve ser informado!';
        end;
        MessageBeep(MB_ICONERROR);
        Alerta.Execute;
        Alerta.Free;
//        if Campo is TuniDBLookUpComboBox      then TuniDBLookUpComboBox(Campo).setfocus;
//        if Campo is TuniDBEdit                then TuniDBEdit(Campo).setfocus;
//        if Campo is TuniDBDateTimePicker      then TuniDBDateTimePicker(Campo).setfocus;
//        if Campo is TUniDBFormattedNumberEdit then TUniDBFormattedNumberEdit(Campo).SetFocus;
     end;
     
     CampoVazio := Vazio;
end;
*)
function CampoVazio(Campo:TComponent; msg:string): boolean;
var
   Vazio:boolean;
   Alerta: TUniSweetAlert;
begin
     Vazio := false;
     if Campo is TuniDBLookUpComboBox      then Vazio := TuniDBLookUpComboBox(Campo).Text = '';
     if Campo is TuniDBEdit                then Vazio := TuniDBEdit(Campo).Text = '';
     if Campo is TUniDBFormattedNumberEdit then Vazio := (TUniDBFormattedNumberEdit(Campo).Text = '') or (TUniDBFormattedNumberEdit(Campo).text = '0');
     if Campo is TuniDBComboBox            then Vazio := TuniDBComboBox(Campo).Text = '';
     if Campo is TuniComboBox              then Vazio := TuniComboBox(Campo).Text = '';
     if Campo is TuniDBDateTimePicker      then Vazio := TuniDBDateTimePicker(Campo).DateTime = 0;
     if Campo is TuniDBRadioGroup          then Vazio := TuniDBRadioGroup(Campo).ItemIndex = -1;

     if vazio then begin
        Alerta := TuniSweetAlert.create(nil);
        Alerta.AlertType := atError;
        Alerta.Title     := 'ERRO';
        Alerta.TitleText := 'Campo obrigatório!';
        if msg <> '' then begin
           Alerta.Text := msg;
        end else begin
           Alerta.Text := 'O campo "'+TuniDBLookUpComboBox(Campo).FieldLabel+'" deve ser informado!';
        end;
        MessageBeep(MB_ICONERROR);
        Alerta.Execute;
        Alerta.Free;
//        if Campo is TuniDBLookUpComboBox      then TuniDBLookUpComboBox(Campo).setfocus;
//        if Campo is TuniDBEdit                then TuniDBEdit(Campo).setfocus;
//        if Campo is TuniDBDateTimePicker      then TuniDBDateTimePicker(Campo).setfocus;
//        if Campo is TUniDBFormattedNumberEdit then TUniDBFormattedNumberEdit(Campo).SetFocus;
     end;
     
     CampoVazio := Vazio;
end;

// Compara dois campos do mesmo tipo.
function ValidaCampo(Campo:TObject; Valor1, Valor2:Variant; Condicao, msg, Titulo:string): boolean;
var
    Alerta: TUniSweetAlert;
    mCond: boolean;
begin
     mCond := false;
     if Condicao = '='  then mCond := Valor1 =  Valor2;
     if Condicao = '>'  then mCond := Valor1 >  Valor2;
     if Condicao = '<'  then mCond := Valor1 <  Valor2;
     if Condicao = '<>' then mCond := Valor1 <> Valor2;
     if Condicao = '>=' then mCond := Valor1 >= Valor2;
     if Condicao = '<=' then mCond := Valor1 <= Valor2;
     if mCond then begin
        Alerta           := TuniSweetAlert.create(nil);
        Alerta.AlertType := atError;
        Alerta.Title     := 'ERRO';
        Alerta.TitleText := Titulo;
        Alerta.Text      := msg;
        MessageBeep(MB_ICONERROR);
        Alerta.Execute;
        Alerta.Free;

        if Campo is TuniDBLookUpComboBox      then TuniDBLookUpComboBox(Campo).setfocus;
        if Campo is TuniDBEdit                then TuniDBEdit(Campo).setfocus;
        if Campo is TuniDBDateTimePicker      then TuniDBDateTimePicker(Campo).setfocus;
        if Campo is TUniDBFormattedNumberEdit then TUniDBFormattedNumberEdit(Campo).SetFocus;
     end;
     ValidaCampo := mCond;
end;

// Compara dois campos do mesmo tipo.
function Aviso(Valor1, Valor2:Variant; Condicao, msg, Titulo:string): boolean;
var
    Alerta: TUniSweetAlert;
    mCond: boolean;
begin
     mCond := true;
     if Condicao = '='  then mCond := Valor1 =  Valor2;
     if Condicao = '>'  then mCond := Valor1 >  Valor2;
     if Condicao = '<'  then mCond := Valor1 <  Valor2;
     if Condicao = '<>' then mCond := Valor1 <> Valor2;
     if Condicao = '>=' then mCond := Valor1 >= Valor2;
     if Condicao = '<=' then mCond := Valor1 <= Valor2;
     if mCond then begin
        Alerta           := TuniSweetAlert.create(nil);
        Alerta.AlertType := atInfo;
        Alerta.Title     := 'ATENÇÃO';
        Alerta.TitleText := Titulo;
        Alerta.Text      := msg;
        MessageBeep(MB_ICONINFORMATION);
        Alerta.Execute;
        Alerta.Free;
     end;
     Aviso := mCond;
end;

// Retorna o estado da tabela em formato string.
function EstadoTabela(DataSet: TDataSet): String;
begin
    Result := trim(Copy(GetEnumName(TypeInfo(TDataSetState), Ord(DataSet.State)), 3, 30));
end;

// Pega o caminho da DLL.
function PastaDLL: string;
var
   szFileName: array[0..MAX_PATH] of Char;
begin
    FillChar(szFileName, SizeOf(szFileName), #0);
    GetModuleFileName(hInstance, szFileName, MAX_PATH);
    Result := szFileName;
end;

Function LanContabilFin(pTipo, pTitulo: string): boolean;
{---[ PARÂMETRO ]--------[ DESCRIÇÃO ]-------------------------------------
      pTipo:              Tipo do lançamento a ser criado.
          1 - PROVISÃO        Financeiro.                                   |
          2 - BAIXA           Financeiro (Pagar/Receber).                   |
          3 - ADIANTAMENTO    Financeiro (Pagar/Receber).                   | FINANCEIRO.
          4 - DEVOLUÇÃO       Financeiro (Pagar/Receber).                   |
          5 - COMPENSAÇÃO     Financeiro (Pagar/Receber).                   |

          6 - NFPRO           Entrada/Saida (Própria).                      |
          7 - NFTERC          Terceiros.                                    |  NOTAS FISCAIS.
          8 - NFSPRE          Nota Fiscal de serviço própria (Prestado).    |
          9 - NFSTOM          Nota Fiscal de serviço de terceiros (Tomado). |

         10 - ENCERRAMENTO    Geração é pedida pelo usúario.                | CONTABEIS.

      pNumero:            Número do registro que vai gerar o lançamento.
                          (Ex. Numero to Título/ Numero da Nota etc...).  }
var
   tTemp
  ,tOrig
  ,tLanc: TFDQuery;
   mContaD
  ,mContaC
  ,mHist: string;
   i
  ,mHistCod
  ,mPart: integer;
begin
     tTemp  := TFDQuery.Create(nil);
     tOrig  := TFDQuery.Create(nil);
     tLanc  := TFDQuery.Create(nil);
     result := true;

     with uniMainModule do begin
          tTemp.Connection := Conecta;
          tLanc.Connection := Conecta;
          torig.Connection := Conecta;
          try
             with tOrig do begin
                  sql.clear;
                  sql.add('select Titulo');
                  sql.add('      ,Empresa');
                  sql.add('      ,Conta');
                  sql.add('      ,Nome = (select Nome_Contabil from PlanoFinanceiro PF where PF.Codigo = PR.Conta)');
                  sql.add('      ,Provisao_ContaD ');
                  sql.add('      ,Provisao_ContaC');
                  sql.add('      ,Provisao_Historico = (select Provisao_Historico from PlanoFinanceiro PF where PF.Codigo = PR.Conta)');
                  sql.add('      ,Provisao_Macro = (select isnull(ltrim(rtrim(Descricao)), '''')+'' ''+isnull(ltrim(rtrim(cast(Macro as varchar))), '''') from Historicos HT where HT.Codigo = (select Provisao_Historico from PlanoFinanceiro PF where PF.Codigo = PR.Conta))');
                  sql.add('      ,Liquidacao_ContaD');
                  sql.add('      ,Liquidacao_ContaC');
                  sql.add('      ,Liquidacao_Historico = (select Liquidacao_Historico from PlanoFinanceiro PF where PF.Codigo = PR.Conta)');
                  sql.add('      ,Liquidacao_Macro = (select isnull(ltrim(rtrim(Descricao)), '''')+'' ''+isnull(ltrim(rtrim(cast(Macro as varchar))), '''') from Historicos HT where HT.Codigo = (select Provisao_Historico from PlanoFinanceiro PF where PF.Codigo = PR.Conta))');
                  sql.add('      ,Tipo');
                  sql.add('      ,Data_Vencimento');
                  sql.add('      ,Documento_Data');
                  sql.add('      ,Documento_Numero');
                  sql.add('      ,Documento_Tipo');
                  sql.add('      ,Processo');
                  sql.add('      ,Processo_Tipo');
                  sql.add('      ,Declaracao = case when Processo_Tipo = ''I'' then ');
                  sql.add('                         (select DI from ProcessosImp PI where PI.Processo = PR.Processo) ');
                  sql.add('                    else');
                  sql.add('                         (select DE from ProcessosExp PE where PE.Processo = PR.Processo)');
                  sql.add('                    end');
                  sql.add('      ,Destinatario');
                  sql.add('      ,Destinatario_Nome = (select Nome from Destinatarios DT where DT.Codigo = PR.Destinatario)');
                  sql.add('      ,Observacao');
                  sql.add('      ,Banco');
                  sql.add('      ,Banco_Nome = (select Nome from Bancos BC where BC.Codigo = Banco)');
                  sql.add('      ,Valor_Operacao');
                  sql.add('      ,Partida = (select Tipo_Partida from PlanoFinanceiro PF where PF.Codigo = PR.Conta)');
                  sql.add('from  PagarReceber PR');
                  sql.add('where Titulo = '+pTitulo);
                  //sql.savetofile('c:\temp\Função_Lançamento_Contabil.sql');
                  open;

                  if pTipo = 'PROVISÃO' then begin
                     mHistCod := FieldByName('Provisao_Historico').AsInteger;
                     mHist    := trim(FieldByName('Provisao_Macro').AsString);
                     mContaD  := FieldByName('Provisao_ContaD').AsString;
                     mContaC  := FieldByName('Provisao_ContaC').AsString;
                  end else begin
                     mHistCod := FieldByName('Liquidacao_Historico').AsInteger;
                     mHist    := trim(FieldByName('Liquidacao_Macro').AsString);
                     mContaD  := FieldByName('Liquidacao_ContaD').AsString;
                     mContaC  := FieldByName('Liquidacao_ContaC').AsString;
                  end;

                  if  mHist <> '' then begin
                      mHist := StringReplace(mHist, '<{TIPO DE DOCUMENTO}>', FieldByName('Documento_Tipo').AsString   , [rfReplaceAll, rfIgnoreCase]);
                      mHist := StringReplace(mHist, '<{Nº DOCUMENTO}>'     , FieldByName('Documento_Numero').AsString , [rfReplaceAll, rfIgnoreCase]);
                      mHist := StringReplace(mHist, '<{DATA DOCUMENTO}>'   , FieldByName('Documento_Data').AsString   , [rfReplaceAll, rfIgnoreCase]);
                      mHist := StringReplace(mHist, '<{OBSERVAÇÃO}>'       , FieldByName('Observacao').AsString       , [rfReplaceAll, rfIgnoreCase]);
                      mHist := StringReplace(mHist, '<{CLASSIFICAÇÃO}>'    , FieldByName('Descricao').AsString        , [rfReplaceAll, rfIgnoreCase]);
                      mHist := StringReplace(mHist, '<{PROCESSO}>'         , FieldByName('Processo').AsString         , [rfReplaceAll, rfIgnoreCase]);
                      mHist := StringReplace(mHist, '<{BENEFICIARIO}>'     , FieldByName('Destinatario_Nome').asstring, [rfReplaceAll, rfIgnoreCase]);
                      mHist := StringReplace(mHist, '<{DECLARAÇÃO}>'       , FieldByName('Declaracao').asstring       , [rfReplaceAll, rfIgnoreCase]);
                      mHist := StringReplace(mHist, '<{BANCO}>'            , FieldByName('Banco_Nome').asstring       , [rfReplaceAll, rfIgnoreCase]);
                  end;
             end;

             with tTemp do begin
                  // Deleta lançamento existente para evitar duplicidade.
                  sql.clear;
                  sql.add('delete from Lancamentos where Empresa = :pEmp and Lote = :pLote and Origem_Numero = :pNum and Recriar = 1');
                  ParamByName('pEmp').asstring  := tOrig.FieldByName('Empresa').AsString;
                  ParamByName('pLote').asstring := copy(pTipo, 1, 4) + '-' + pTitulo;
                  ParamByName('pNum').asstring  := pTitulo;
                  execute;

                  // Gera o número do lançamento.
                  sql.clear;
                  sql.add('select isnull(max(Numero), 0)+1 as Lancamento from Lancamentos');
             end;

             with tLanc do begin
                  sql.Clear;
                  sql.Add('select * from Lancamentos where Numero = '+tTemp.FieldByName('Lancamento').asstring);
                  Open;

                  mPart := iif(tOrig.FieldByName('Partida').asstring = 'D', 1, 2);

                  for i := 1 to mPart do begin
                      tTemp.open;
                      Append;
                           FieldByName('Empresa').Value               := tOrig.FieldByName('Empresa').AsString;
                           FieldByName('Data').Value                  := tOrig.FieldByName('Documento_Data').AsDateTime;
                           FieldByName('Numero').Value                := tTemp.FieldByName('Lancamento').asinteger;
                           FieldByName('Lote').Value                  := copy(pTipo, 1, 4) + '-' + pTitulo;
                           FieldByName('Historico_Codigo').Value      := mHistCod;
                           FieldByName('Historico_Complemento').Value := mHist;
                           FieldByName('Valor').Value                 := tOrig.FieldByName('Valor_Operacao').asCurrency;
                           FieldByName('Processo').Value              := tOrig.FieldByName('Processo').asstring;
                           FieldByName('Documento').Value             := tOrig.FieldByName('Documento_Numero').asString;
                           FieldByName('Data_Documento').Value        := tOrig.FieldByName('Documento_Data').asDateTime;
                           FieldByName('Recriar').Value               := true;
                           FieldByName('Origem_Numero').Value         := pTitulo;
                           FieldByName('Descricao').Value             := iif(tOrig.FieldByName('Tipo').asString = 'P', pTipo+' (Pagamento)', pTipo+' (Recebimento)');

                           if tOrig.FieldByName('Partida').asstring = 'D' then begin
                              FieldByName('Conta_Debito').Value  := mContaD;
                              FieldByName('Conta_Credito').Value := mContaC;
                           end else begin
                              if i = 1 then begin
                                 FieldByName('Conta_Debito').Value  := mContaD;
                              end else begin
                                 FieldByName('Conta_Credito').Value := mContaC;
                              end;
                           end;
                      Post;
                      tTemp.close;
                  end;
             end;
          except
             on E:Exception do begin
                LogErros('PagarReceberBaixas', 'INCLUSÃO', 'Falha desconhecida, não pode criar o lançamento contabil de '+pTipo+' !'+#13+E.Message);
             End;
          end;
     end;

     tTemp.free;
     tOrig.free;
     tlanc.free;
end;

// Função para quebra string em partes.
Function QuebraString(BaseString, BreakString: string): TStringList;
var
    EndOfCurrentString: integer;
    sList: TStringList;
begin
     sList := TStringList.create;
     Repeat
           EndOfCurrentString := Pos(BreakString, BaseString);
           If EndOfCurrentString = 0 then
              sList.add(BaseString)
           else
              sList.add(Copy(BaseString, 1, EndOfCurrentString));

           BaseString := Copy(BaseString, EndOfCurrentString + length(BreakString), length(BaseString) - EndOfCurrentString);
     Until EndOfCurrentString = 0;
     result := sList;
end;

(*
// Pega a conta contabil dos lançamentos do financeiro.
function PegaContaFin(pConta, pBenef, pProcessoImp, pProcessoExp, pBanco, pTipo: string; pModal: integer): TStringList;
{--[ PARÂMETRO ]-------[ DESCRIÇÃO ]------------------------------------------------------------------------------]
     pClass              Código da Conta.
     pBenef              Código do Destinatario.
     pProcessoImp        Número do processo de importação.
     pProcessoExp        Número do processo de exportação.
     pBanco              Código do banco.
     pTipo               Tipo do lançamento ["P" = Pagamento, "R" = Recebimento]. }
var
   tContas: TFDQuery;
   mLista: TStringList;
   mTabProc, mProc: string;
begin
     mLista   := TStringList.create;
     tContas  := TFDQuery.Create(nil);
     mTabProc := iif(trim(pProcessoImp) <> '', 'ProcessosImp', 'ProcessosExp');
     mProc    := iif(trim(pProcessoImp) <> '', pProcessoImp  , pProcessoExp);

     with uniMainModule, tContas do begin
          Connection := Conecta;

          // Pega todas as contas nas origens.
          sql.clear;
          sql.add('select Provisao_ContaD = case when Provisao_ContraPartida = ''BENEFICIÁRIO'' and  Tipo = ''P'' then (select Fornecedor from DestinatariosModalidades where Modalidade = '+ inttostr(pModal)+' and Destinatario = '+pBenef+' )');
          sql.add('                              when Provisao_ContraPartida = ''BENEFICIÁRIO'' and  Tipo = ''R'' then (select Cliente    from DestinatariosModalidades where Modalidade = '+ inttostr(pModal)+' and Destinatario = '+pBenef+' )');
          sql.add('	                             when Provisao_ContraPartida = ''PROCESSO''     then (select Conta_Despesas from '+mTabProc+' where Processo = '+quotedstr(mProc)+')');
          sql.add('	                             when Provisao_ContraPartida = ''BANCO''        then (select Conta_Contabil from Bancos where Codigo =  '+pBanco+')');
          sql.add('                         else');
          sql.add('	                             Provisao_ContraPartida');
          sql.add('	                        end');
          sql.add('      ,Provisao_ContaC = case when Provisao_ContraPartida = ''BENEFICIÁRIO'' and  Tipo = ''P'' then (select Fornecedor from DestinatariosModalidades where Modalidade = '+ inttostr(pModal)+' and Destinatario = '+pBenef+' )');
          sql.add('                              when Provisao_ContraPartida = ''BENEFICIÁRIO'' and  Tipo = ''R'' then (select Cliente    from DestinatariosModalidades where Modalidade = '+ inttostr(pModal)+' and Destinatario = '+pBenef+' )');
          sql.add('	                             when Provisao_ContraPartida = ''PROCESSO''     then (select Conta_Despesas from '+mTabProc+' where Processo = '+quotedstr(mProc)+')');
          sql.add('	                             when Provisao_ContraPartida = ''BANCO''        then (select Conta_Contabil from Bancos where Codigo =  '+pBanco+')');
          sql.add('                         else');
          sql.add('	                             Provisao_ContraPartida');
          sql.add('	                        end');
          sql.add('      ,Liquidacao_Conta = case when Provisao_ContraPartida = ''BENEFICIÁRIO'' and  Tipo = ''P'' then (select Fornecedor from DestinatariosModalidades where Modalidade = '+ inttostr(pModal)+' and Destinatario = '+pBenef+' )');
          sql.add('                               when Provisao_ContraPartida = ''BENEFICIÁRIO'' and  Tipo = ''R'' then (select Cliente    from DestinatariosModalidades where Modalidade = '+ inttostr(pModal)+' and Destinatario = '+pBenef+' )');
          sql.add('	                              when Provisao_ContraPartida = ''PROCESSO''     then (select Conta_Despesas from '+mTabProc+' where Processo = '+quotedstr(mProc)+')');
          sql.add('	                              when Provisao_ContraPartida = ''BANCO''        then (select Conta_Contabil from Bancos where Codigo =  '+pBanco+')');
          sql.add('                          else');
          sql.add('	                              Provisao_ContraPartida');
          sql.add('	                         end');
          sql.add('	     ,Conta_Cliente           = (select Cliente           from DestinatariosModalidades where Modalidade = '+inttostr(pModal)+' and Destinatario = '+pBenef+')');
          sql.add('	     ,Conta_Adiant_Cliente    = (select Cliente_Adiant    from DestinatariosModalidades where Modalidade = '+inttostr(pModal)+' and Destinatario = '+pBenef+')');
          sql.add('	     ,Conta_Dev_Cliente       = (select Cliente_Devol     from DestinatariosModalidades where Modalidade = '+inttostr(pModal)+' and Destinatario = '+pBenef+')');
          sql.add('	     ,Conta_Fornecedor        = (select Fornecedor       from DestinatariosModalidades where Modalidade = '+inttostr(pModal)+' and Destinatario = '+pBenef+')');
          sql.add('	     ,Conta_Adiant_Fornecedor = (select Fornecedor_Adiant from DestinatariosModalidades where Modalidade = '+inttostr(pModal)+' and Destinatario = '+pBenef+')');
          sql.add('	     ,Conta_Dev_Fornecedor    = (select Fornecedor_Devol  from DestinatariosModalidades where Modalidade = '+inttostr(pModal)+' and Destinatario = '+pBenef+')');
          sql.add('	     ,Conta_Banco             = (select Conta_Contabil         from Bancos         where Codigo   = '+pBanco+')');
          sql.add('	     ,Conta_Despesas_Processo = (select Conta_Despesas         from '+ mTabProc +' where Processo = '+QuotedStr(mProc)+')');
          sql.add('	     ,Conta_Adiant_Processo   = (select Conta_Adiantamento     from '+ mTabProc +' where Processo = '+QuotedStr(mProc)+')');
          sql.add('	     ,Conta_Impostos_Processo = (select Conta_Impostos         from '+ mTabProc +' where Processo = '+QuotedStr(mProc)+')');
          sql.add('from PlanoContas');
          sql.add('where Codigo = '+QuotedStr(pConta));
          //sql.savetofile('c:\temp\Função_PegaConta_Financeiro.sql');
          open;

          // Lançamento de "PROVISÃO".
          mLista.Add(FieldByName('Provisao_ContaD').AsString);             // Linha 0.
          mLista.Add(FieldByName('Provisao_ContaC').AsString);             // Linha 1.

          // Lançamento de "ADIANTAMENTO".
          if pTipo = 'P' then begin
             mLista.add(FieldByName('Conta_Adiant_Fornecedor').AsString);  // Linha 2.
             if FieldByName('Liquidacao_Conta').AsString = 'PROCESSO' then mLista[2] := FieldByName('Conta_Adiant_Processo').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'BANCO'    then mLista[2] := FieldByName('Conta_Banco').AsString;
             mLista.add('');                                               // Linha 3.
          end else begin
             mLista.add('');                                               // Linha 2.
             mLista.Add(FieldByName('Conta_Adiant_Cliente').AsString);     // LinhA 3.
             if FieldByName('Liquidacao_Conta').AsString = 'PROCESSO' then mLista[3] := FieldByName('Conta_Adiant_Processo').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'BANCO'    then mLista[3] := FieldByName('Conta_Banco').AsString;
          end;

          // Lançamento de "DEVOLUÇÃO".
          if pTipo = 'P' then begin
             mLista.Add(FieldByName('Conta_Dev_Cliente').AsString);        // Linha 4.
             if FieldByName('Liquidacao_Conta').AsString = 'PROCESSO' then mLista[4] := FieldByName('Conta_Adiant_Processo').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'BANCO'    then mLista[4] := FieldByName('Conta_Banco').AsString;
             mLista.add('');                                               // Linha 5.
          end else begin
             mLista.add('');                                               // Linha 4.
             mLista.Add(FieldByName('Conta_Dev_Fornecedor').AsString);     // Linha 5.
             if FieldByName('Liquidacao_Conta').AsString = 'PROCESSO' then mLista[5] := FieldByName('Conta_Adiant_Processo').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'BANCO'    then mLista[5] := FieldByName('Conta_Banco').AsString;
          end;

          // Liquidação do título "BAIXA" - Compensação.
          if pTipo = 'P' then begin
             mLista.Add(FieldByName('Liquidacao_Conta').AsString);         // Linha 6.
             mLista.Add(FieldByName('Conta_Adiant_Fornecedor').AsString);  // Linha 7.
             if FieldByName('Liquidacao_Conta').AsString = 'BENEFICIÁRIO' then mLista[6] := FieldByName('Conta_Fornecedor').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'PROCESSO'     then mLista[6] := FieldByName('Conta_Despesas_Processo').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'BANCO'        then mLista[6] := FieldByName('Conta_Banco').AsString;
          end else begin
             mLista.Add(FieldByName('Conta_Adiant_Cliente').AsString);     // Linha 6.
             mLista.Add(FieldByName('Liquidacao_Conta').AsString);         // Linha 7.
             if FieldByName('Liquidacao_Conta').AsString = 'BENEFICIÁRIO' then mLista[7] := FieldByName('Conta_Cliente').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'PROCESSO'     then mLista[7] := FieldByName('Conta_Despesas_Processo').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'BANCO'        then mLista[7] := FieldByName('Conta_Banco').AsString;
          end;

          // Liquidação do título "BAIXA" - Baixa direta.
          if pTipo = 'P' then begin
             mLista.Add(FieldByName('Liquidacao_Conta').AsString);         // Linha 8.
             mLista.Add(FieldByName('Conta_Banco').AsString);              // Linha 9.
             if FieldByName('Liquidacao_Conta').AsString = 'PROCESSO' then mLista[8] := FieldByName('Conta_Despesas_Processo').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'BANCO'    then mLista[8] := FieldByName('Conta_Banco').AsString;
          end else begin
             mLista.Add(FieldByName('Conta_Banco').AsString);              // Linha 8.
             mLista.Add(FieldByName('Liquidacao_Conta').AsString);         // Linha 9.
             if FieldByName('Liquidacao_Conta').AsString = 'PROCESSO' then mLista[9] := FieldByName('Conta_Despesas_Processo').AsString;
             if FieldByName('Liquidacao_Conta').AsString = 'BANCO'    then mLista[9] := FieldByName('Conta_Banco').AsString;
          end;
     end;
     result := mLista;

     tContas.free;
     mLista.free;
end;
*)

(*
// Pega a conta contabil dos nosta fiscais próprias.
function LanContabilNFP(pChave: string): boolean;
{--[ PARÂMETRO ]-------[ DESCRIÇÃO ]--------------]
     pChave              Chave da nota fiscal     }
var
   tLanc, tNota, tCampos, tNum: TFDQuery;
   col: integer;
   mCampoD, mCampoC, mHist: string;
   mListaCampo, mListaVal: TStringList;
//   msql: widestring;
begin
     tNota       := TFDQuery.Create(nil);
     tCampos     := TFDQuery.Create(nil);
     tLanc       := TFDQuery.Create(nil);
     tNum        := TFDQuery.Create(nil);
     mListaCampo := TStringList.Create;
     mListaVal   := TStringList.Create;

     with mListaCampo do begin
          clear;
          add('Conta_ICMSOper');
          add('Conta_ICMSST');
          add('Conta_II');
          add('Conta_IPI');
          add('Conta_PIS');
          add('Conta_COFINS');
          add('Conta_Frete');
          add('Conta_Seguro');
          add('Conta_Despesas');
          add('Conta_Estoque');
          add('Conta_FOB_Fornecedor');
          add('Conta_FOB_Processo');
          add('Conta_TotalProdutos');
          add('Conta_TotalNota');
          add('Conta_Desconto');
     end;
     with mListaVal do begin
          clear;
          add('NF.Valor_ICMS');
          add('NF.Valor_ICMSST');
          add('NF.Valor_II');
          add('NF.Valor_IPI');
          add('NF.Valor_PIS');
          add('NF.Valor_COFINS');
          add('NF.Valor_Frete');
          add('NF.Valor_Seguro');
          add('NF.Valor_Despesas');
          add('NF.Valor_Inventario');
          add('(select isnull(Valor_FOB, 0) from ProcessosImp where Processo = NF.Processo)');       // Pegar do processo.
          add('(select isnull(Valor_FOB, 0) from ProcessosImp where Processo = NF.Processo)');       // Pegar do processo.
          add('NF.Valor_Produtos');
          add('NF.Valor_TotalNota');
          add('NF.Valor_Descontos');
     end;
     with uniMainModule do begin
          with tNota do begin
               Connection := Conecta;
               sql.clear;
               sql.add('--------------------------------------------[ CRIA A FUNÇÃO QUE CONVERTE VARIAVEIS EM CONTA CONTABIL ]------------------------------------------------');
               sql.add('create function PegaConta(@Var_Conta varchar(15), @Processo varchar(15), @Saida_Entrada smallint, @Modal smallint)');
               sql.add('returns varchar(15)');
               sql.add('begin');
               sql.add('    declare @Retorno varchar(15)');
               sql.add('    set @Retorno = case @Var_Conta');
               sql.add('                        when ''BENEFICIARIO'' then (select Conta_Cli_Ativo         from ModalidadeImportacao where Codigo = @Modal)');
               sql.add('                        when ''PROCESSO''     then (select Conta_Proc_Despesas     from ModalidadeImportacao where Codigo = @Modal)');
               sql.add('                        when ''PROCESSOIM''   then (select Conta_Proc_Impostos     from ModalidadeImportacao where Codigo = @Modal)');
               sql.add('                        when ''PROCESSOAD''   then (select Conta_Proc_Adiantamento from ModalidadeImportacao where Codigo = @Modal)');
               sql.add('                        when ''DEVOLUÇÃO''    then iif(@Saida_Entrada = 0, (select Conta_Forn_Devolucao from ModalidadeImportacao where Codigo = @Modal), (select Conta_Cli_Devolucao from ModalidadeImportacao where Codigo = @Modal))');
               sql.add('                   else');
               sql.add('                        @Var_Conta');
               sql.add('                   end');
               sql.add('	   return(@Retorno)');
               sql.add('end');
               //sql.SaveToFile('c:\temp\Lancamento_Contabil_NFP_Nota_Função.sql');
               execute;
               sql.clear;
               sql.add('select NF.Chave');
               sql.add('      ,NF.Nota');
               sql.add('      ,NF.Destinatario');
               sql.add('      ,NF.Data_Emissao');
               sql.add('      ,NF.Saida_Entrada');
               sql.add('      ,NF.Processo');
               sql.add('      ,NF.Declaracao_Numero');
               sql.add('      ,NF.Tipo_Nota');
               sql.add('      ,NF.Devolucao');
               sql.add('from  NotasFiscais NF');
               sql.add('where Chave = '+quotedstr(pChave));
               //sql.SaveToFile('c:\temp\Lancamento_Contabil_NFP_Nota.sql');
               open;
          end;
          with tCampos do begin
               Connection := Conecta;
               sql.clear;
               for col := 0 to pred(mListaCampo.Count) do begin
                   mCampoD := mListaCampo[col]+'_D';
                   mCampoC := mListaCampo[col]+'_C';
                   mHist   := stringreplace(mListaCampo[col], 'Conta_', 'Historico_', [rfReplaceAll,rfIgnoreCase]);

                   sql.add('select Debito    = dbo.PegaConta((select '+mCampoD+' from TipoNota where Codigo = '+tNota.FieldByName('Tipo_Nota').asstring+'), NF.Processo, NF.Saida_Entrada, Modalidade)');
                   sql.add('      ,Credito   = dbo.PegaConta((select '+mCampoC+' from TipoNota where Codigo = '+tNota.FieldByName('Tipo_Nota').asstring+'), NF.Processo, NF.Saida_Entrada, Modalidade)');
                   sql.add('      ,Historico = (select '+mHist+' from TipoNota where Codigo = '+tNota.FieldByName('Tipo_Nota').asstring+')');
                   sql.Add('      ,Valor     = '+mListaVal[col]);
                   sql.Add('      ,Campo     = '+quotedstr(mListaVal[col]));
                   sql.add('from  NotasFiscais NF');
                   sql.add('where Chave = '+quotedstr(pChave));
                   if col < pred(mListaCampo.Count) then begin
                      sql.Add('union all');
                   end;
               end;
               sql.Add('drop function dbo.PegaConta');
               //sql.SaveToFile('c:\temp\Lancamento_Contabil_NFP_Contas.sql');
               open;
          end;
     end;

     tLanc.free;
     tNota.free;
     tNum.free;
     mListaCampo.free;
     result := true;
end;
*)

// Salva o Lançamento contabil no banco de dados.
procedure LancamentoContabil(pOrigem, pNumero, pTipo: string; pMetodo:integer);
{---------------------PARÂMETROS ----------------------
  pOrigem: Origem do lançanmento contabil: 'FNPRV' = Financeiro provisão.
                                           'FNLIQ' = Financeiro liquidação.
                                           'NFPS'  = Nota Fiscal emissão própria "Saída".
                                           'NFPE'  = Nota Fiscal emissão própria "Entrada".
                                           'NFTRC' = Nota Fiscal de "Terceiros".
                                           'NFST'  = Nota Fiscal de serviço tomado.
                                           'NFSP'  = Nota Fiscal de serviço tomado.
  pNumero: Numero da origem "Exemplo: Titulo financeiro / Numero da Nota fiscal etc..."
}
var
   mHist: widestring;
   tTmp, tLan: TFDQuery;
   mLote: integer;
   mOrigemDesc
  ,mOrigemDescLote
  ,mConta
  ,mDest: string;
begin
     tTmp            := TFDQuery.Create(nil);
     tTmp.Connection := uniMainModule.Conecta;
     tLan            := TFDQuery.Create(nil);
     tLan.Connection := uniMainModule.Conecta;

     // Lançamentos de origem do financeiro.
     if (pOrigem = 'FNPRV') or (pOrigem = 'FNLIQ') then begin
        if pOrigem = 'FNPRV' then begin
           mOrigemDesc     := 'Financeiro Provisão ('+pNumero+')';
           mOrigemDescLote := 'Financeiro Provisão';
           mConta          := 'Provisao_';
        end;
        if pOrigem = 'FNLIQ' then begin
           mOrigemDesc     := 'Financeiro Liquidação ('+pNumero+')';
           mOrigemDescLote := 'Financeiro Liquidação';
           mConta          := 'Liquidacao_';
        end;
        if (pTipo = 'P') and (pMetodo = 1) then mDest := 'Fornecedor';
        if (pTipo = 'P') and (pMetodo = 2) then mDest := 'Conta_Forn_Passivo';
        if (pTipo = 'R') and (pMetodo = 1) then mDest := 'Cliente';
        if (pTipo = 'R') and (pMetodo = 2) then mDest := 'Conta_Cli_Ativo';
     
        with tTmp do begin
             sql.Clear;
             sql.add('declare @Conta_Dest      varchar(15)');
             sql.add('declare @Modal           smallint');
             sql.add('declare @Processo        varchar(15)');
             sql.add('declare @Conta_Proc      varchar(15)');
             sql.add('set @Processo = (select isnull(Processo, '''') from PagarReceber pr where Titulo = '+pNumero+')');
             sql.add('set @Conta_Proc = (select Conta_Despesas from ProcessosImp where Processo = @Processo)');
             sql.add('set @Modal = case when @Processo <> '''' then');
             sql.add('                  (select Modalidade_Importacao from ProcessosImp prc where prc.Processo = @Processo)');
             sql.add('             else');
             sql.add('                  (select max(Codigo) from ModalidadeImportacao where isnull(Processo, 0) = 0)');
             sql.add('             end');
             if pMetodo = 1 then begin
                sql.add('set @Conta_Dest = (select '+mDest+' from DestinatariosModalidades where Destinatario = (select Destinatario from PagarReceber where Titulo = '+pNumero+'))');
             end else begin
                sql.add('set @Conta_Dest = (select '+mDest+' from ModalidadeImportacao where Codigo = @Modal)');
             end;
             sql.add('select pr.Titulo');
             sql.add('      ,pr.Empresa');
             sql.add('      ,pr.Tipo');
             sql.add('      ,pr.Data_Vencimento');
             sql.add('      ,pr.Documento_Data');
             sql.add('      ,pr.Documento_Numero');
             sql.add('      ,pr.Documento_Tipo');
             sql.add('      ,pr.Processo');
             sql.add('      ,Declaracao = case when Processo_Tipo = ''I'' then (select DI from ProcessosImp PI where PI.Processo = PR.Processo) else (select DE from ProcessosExp PE where PE.Processo = PR.Processo) end');
             sql.add('      ,pr.Destinatario');
             sql.add('      ,Destinatario_Nome = (select Nome from Destinatarios dt where dt.Codigo = pr.Destinatario)');
             sql.add('      ,Destinatario_CNPJ = (select CNPJ from Destinatarios dt where dt.Codigo = pr.Destinatario)');
             sql.add('      ,Obs_Titulo = pr.Observacao');
             sql.add('      ,Nome = pc.Nome_Financeiro');
             sql.add('      ,Valor = Valor_Operacao');
             sql.add('      ,ContaD = case when pr.Tipo = ''P'' then');
             sql.add('                     pc.Conta');
             sql.add('                else');
             sql.add('                     case pc.'+mConta+'ContraPartida');
             sql.add('                          when ''BENEFICIÁRIO'' then @Conta_Dest');
             sql.add('                          when ''PROCESSO''     then @Conta_Proc');
             sql.add('                     else');
             sql.add('                         pc.'+mConta+'ContraPartida');
             sql.add('                     end');
             sql.add('                end');
             sql.add('      ,ContaC = case when pr.Tipo = ''P'' then');
             sql.add('                     case pc.'+mConta+'ContraPartida');
             sql.add('                          when ''BENEFICIÁRIO'' then @Conta_Dest');
             sql.add('                          when ''PROCESSO''     then @Conta_Proc');
             sql.add('                     else');
             sql.add('                          pc.'+mConta+'ContraPartida');
             sql.add('                     end');
             sql.add('                else');
             sql.add('                     pc.Conta');
             sql.add('                end');
             sql.add('      ,Historico = (select '+mConta+'Historico from PlanoContas PF where PF.Codigo = PR.Conta)');
             sql.add('      ,Macro = (select isnull(ltrim(rtrim(Descricao)), '''')+'' ''+isnull(ltrim(rtrim(cast(Macro as varchar(250)))), '''') from Historicos HT where HT.Codigo = (select Provisao_Historico from PlanoContas PF where PF.Codigo = PR.Conta))');
             sql.Add('      ,Tipo_nota = null');
             sql.add('from  PagarReceber pr, PlanoContas pc');
             sql.add('where Titulo = '+pNumero);
             sql.add('and pc.Conta = pr.Conta');
             //sql.SaveToFile('c:\temp\Lancamento_Contabil_'+mConta+'.sql');
             open;

             mHist := trim(FieldByName('Macro').asstring);
             mHist := StringReplace(mHist, '<{TIPO DE DOCUMENTO}>', FieldByName('Documento_Tipo').AsString   , [rfReplaceAll, rfIgnoreCase]);
             mHist := StringReplace(mHist, '<{Nº DOCUMENTO}>'     , FieldByName('Documento_Numero').AsString , [rfReplaceAll, rfIgnoreCase]);
             mHist := StringReplace(mHist, '<{DATA DOCUMENTO}>'   , FieldByName('Documento_Data').AsString   , [rfReplaceAll, rfIgnoreCase]);
             mHist := StringReplace(mHist, '<{OBSERVAÇÃO}>'       , FieldByName('Obs_Titulo').AsString       , [rfReplaceAll, rfIgnoreCase]);
             mHist := StringReplace(mHist, '<{CLASSIFICAÇÃO}>'    , FieldByName('Nome').AsString             , [rfReplaceAll, rfIgnoreCase]);
             mHist := StringReplace(mHist, '<{PROCESSO}>'         , FieldByName('Processo').AsString         , [rfReplaceAll, rfIgnoreCase]);
             mHist := StringReplace(mHist, '<{BENEFICIARIO}>'     , FieldByName('Destinatario_Nome').asstring, [rfReplaceAll, rfIgnoreCase]);
             mHist := StringReplace(mHist, '<{DECLARAÇÃO}>'       , FieldByName('Declaracao').asstring       , [rfReplaceAll, rfIgnoreCase]);
             mHist := StringReplace(mHist, '<{BANCO}>'            , ''                                       , [rfReplaceAll, rfIgnoreCase]);
        end;
     end;
     // Lançamentos de origem das notas fiscais de emissão própria.
     if (pOrigem = 'NFPE') or (pOrigem = 'NFPS') then begin
     
     end;
     
     with tLan do begin
          sql.Clear;
          sql.Add('select Lote from Lancamentos where Empresa = :pEmpresa and Origem = :pOrigem and Origem_Numero = :pNumero');
          parambyname('pEmpresa').AsString := tTmp.FieldByName('Empresa').AsString;
          parambyname('pOrigem').AsString  := pOrigem;
          parambyname('pNumero').Asinteger := strtoint(pNumero);
          open;
          mLote := fieldByName('Lote').AsInteger;
          if mLote = 0 then begin
             mLote := Geralote(tTmp.FieldByName('Documento_Data').asDatetime, tTmp.FieldByName('Empresa').asstring, mOrigemDescLote, pOrigem);
          end;
          
          sql.Clear;
          sql.Add('delete from Lancamentos where Empresa = :pEmpresa and Origem = :pOrigem and Origem_Numero = :pNumero');
          parambyname('pEmpresa').AsString := tTmp.FieldByName('Empresa').AsString;
          parambyname('pOrigem').AsString  := pOrigem;
          parambyname('pNumero').Asinteger := strtoint(pNumero);
          execute;
          sql.Clear;
          sql.Add('select top 1 * from Lancamentos');
          open;
          Append;
               FieldByName('Empresa').Value               := tTmp.FieldByName('Empresa').AsString;
               FieldByName('Lote').Value                  := mLote;
               FieldByName('Numero').Value                := GeraCodigo('Lancamentos', 'Numero');
               FieldByName('Data').Value                  := tTmp.FieldByName('Documento_Data').AsDateTime;
               FieldByName('Historico_Codigo').Value      := tTmp.FieldByName('Historico').Asinteger;
               FieldByName('Historico_Complemento').Value := mHist;
               FieldByName('Valor').Value                 := tTmp.FieldByName('Valor').asCurrency;
               FieldByName('Tipo_Documento').Value        := tTmp.FieldByName('Documento_Tipo').asstring;
               FieldByName('Documento').Value             := tTmp.FieldByName('Documento_Numero').asString;
               FieldByName('Data_Documento').Value        := tTmp.FieldByName('Documento_Data').value;
               FieldByName('Conta_Debito').Value          := tTmp.FieldByName('ContaD').asstring;
               FieldByName('Conta_Credito').Value         := tTmp.FieldByName('ContaC').asstring;
               FieldByName('Processo_Debito').Value       := tTmp.FieldByName('Processo').asstring;
               FieldByName('Processo_Credito').Value      := tTmp.FieldByName('Processo').asstring;
               FieldByName('Origem').Value                := pOrigem;
               FieldByName('Origem_Descricao').Value      := mOrigemDesc;
               FieldByName('Origem_Numero').Value         := tTmp.FieldByName('Titulo').asinteger;
               FieldByName('Beneficiario').Value          := tTmp.FieldByName('Destinatario').asinteger;
               FieldByName('Beneficiario_CNPJ').Value     := tTmp.FieldByName('Destinatario_CNPJ').asstring;
               FieldByName('Tipo_Nota').Value             := tTmp.FieldByName('Tipo_Nota').asinteger;
               FieldByName('Recriar').Value               := true;
               FieldByName('Contabilizar').Value          := true;
          Post;
          close;
     end;

     tTmp.Free;
     tLan.Free;
end;

// Remove caracteres de uma string deixando apenas numeros.
function ApenasNumeros(Const Texto:String):String;
var
   i:integer;
   s:string;
begin
      s := '';
      for i := 1 To Length(Texto) do begin
          if CharInSet(Texto[i], ['0'..'9']) then begin
             s := s + Copy(Texto, i, 1);
          End;
      end;
      result := s;
end;

// Remove numeros de uma string deixando apenas letras e sinais.
function ApenasLetras(Const Texto:String):String;
var
   i:integer;
   s:string;
begin
      s := '';
      for i := 1 To Length(Texto) do begin
          if not (CharInSet(Texto[i], ['0'..'9'])) and not (CharInSet(Texto[i], ['!'..'/'])) then begin
             s := s + Copy(Texto, I, 1);
          End;
      end;
      result := s;
end;
{
Function BuscaCaption(MyMenu: TuniMenuItems; Localizar: string; DiferentMM: boolean):string;
var
   Lista: String;
   ii : integer;
   function TemNoTexto(Valor, Texto : string; MaiusculaMin : boolean):boolean;
   var
      retorno:boolean;
   begin
      retorno := false;
      if pos(uppercase(Valor),uppercase(Texto)) > 0 then retorno := true;
      TemNoTexto := retorno;
   end;

   Procedure BuscaItem(Menu : TuniMenuItem; Nome : string);
   var i : integer; diretorio:string;
   begin
      for i := 0 to Menu.Count-1 do begin
          diretorio := Menu.Items[i].Caption;
          BuscaItem(Menu.Items[i],diretorio);
          if TemNoTexto(Localizar,Menu.Items[i].Caption,DiferentMM) then
             Lista := diretorio;
      end;
   end;
begin
    Localizar := TrimLeft(TrimRight(Localizar));
    //Lista := TstringList.Create;
    for ii := 0 to MyMenu.Items.Count-1 do begin
        BuscaItem(MyMenu.Items[ii],MyMenu.Items[ii].Caption);
    end;
    BuscaCaption := lista;
end;
}

procedure AtivaEdicao(Nav, bAdi, bEdi, bExc, bGra, bCan: TObject; aPageControl: TuniPageControl);
var 
  i, j, s: integer;
  TabSheet: TuniTabSheet;
  Scroll: TuniScrollBox;
  Component: TComponent;
  Estado: boolean;
begin
     Estado := TuniDBNavigator(Nav).DataSource.State in[dsEdit, dsInsert];
     TuniDBNavigator(Nav).Enabled := not Estado;
     TuniButton(bAdi).Enabled     := not Estado;
     TuniButton(bEdi).Enabled     := not Estado;
     TuniButton(bExc).Enabled     := not Estado;
     TuniButton(bGra).Enabled     := Estado;
     TuniButton(bCan).Enabled     := Estado;
     if Assigned(aPageControl) then begin
        // Percorre todas as abas (TTabSheet)
        for i := 0 to pred(aPageControl.PageCount) do begin
            TabSheet := aPageControl.Pages[i];
            // Percorre todos os componentes dentro da aba
            for j := 0 to pred(TabSheet.ControlCount) do begin
                Component := TabSheet.Controls[j];
                if Component is TuniPanel then begin
                   TuniPanel(Component).Enabled := Estado;
                end;
                if Component is TuniScrollBox then begin
                   Scroll := TuniScrollBox(Component);
                   for s := 0 to Scroll.ControlCount-1 do begin
                       if Scroll.Controls[s] is TuniPanel then begin
                          TuniPanel(Component).Enabled := Estado;
                       end;
                   end;
                end;
            end;
        end;
     end;
end;

procedure AtivaBotoes(Nav, bAdi, bEdi, bExc, bGra, bCan: TObject);
var
  Estado: boolean;
begin
     Estado := TuniDBNavigator(Nav).DataSource.State in[dsEdit, dsInsert];
     TuniDBNavigator(Nav).Enabled := not Estado;
     TuniButton(bAdi).Enabled     := not Estado;
     TuniButton(bEdi).Enabled     := not Estado;
     TuniButton(bExc).Enabled     := not Estado;
     TuniButton(bGra).Enabled     := Estado;
     TuniButton(bCan).Enabled     := Estado;
end;

// Libera memoria.
procedure LimpaMemoria;
var
   MainHandle : THandle;
begin
     try
        MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
        SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
        CloseHandle(MainHandle) ;
     except

     end;
     Application.ProcessMessages;
end;

// Verifica se existem dois sinais matematicos em sequancia para validar a formula.
function SinalSequencia(s: string): boolean;
var
   i:integer;
   c:string;
begin
    c := '';
    result := false;
    for i := 1 to length(s) do begin
        if ((s[i] = '+') or (s[i] = '-') or (s[i] = '*') or (s[i] = '/') or (s[i] = ',') or (s[i] = '.')) and (c <> '') then begin
           result := true;
           break;
        end else begin
           c := '';
        end;
        if ((s[i] = '+') or (s[i] = '-') or (s[i] = '*') or (s[i] = '/') or (s[i] = ',') or (s[i] = '.')) then begin
           c := s[i];
        end;
    end;
end;

// Executa o calculo com base na formula informada.
function Calculo(Formula: widestring): string;
Var
   i:Integer;
   mCampos: String;
   mQuebra: Tstringlist;
   tCampos: TFDQuery;
begin
      result  := '';
      Formula := StringReplace(Formula,  #8, '', [rfReplaceAll, rfIgnoreCase]);
      Formula := stringreplace(Formula, #10, '', [rfReplaceAll]);
      Formula := stringreplace(Formula, #12, '', [rfReplaceAll]);
      Formula := stringreplace(Formula, #13, '', [rfReplaceAll]);
      mQuebra := QuebraString(Formula, ']');

      mCampos := '';
      for i := 0 to pred(mQuebra.Count) do begin
          if trim(mQuebra[i]) <> '' then begin
             mCampos := concat(mCampos, quotedstr(ApenasLetras(trim(quotedstr(trim(mQuebra[i])))))+',');
          end;
      end;
      mCampos := copy(mCampos,1,length(mCampos)-1);

      tCampos := TFDQuery.Create(nil);
      with tCampos do begin
           Connection := uniMainModule.Conecta;
           sql.clear;
           sql.Add('select * ');
           sql.add('from Campos');
           sql.add('where Campo in('+mCampos+')');
           //sql.SaveToFile('c:\temp\Calculo_Campos.sql');
           open;
      end;

      (*

      // Convertendo a fórmula digitada com os valores de teste.
      if Trim(Formula) <> '' then begin
         with tCampos do begin
              DisableControls;
              First;
              while not Eof do begin
                    mValTeste := iif(trim(fieldbyname('Valor_Teste').asstring) <> '', trim(fieldbyname('Valor_Teste').asstring), '0');
                    if not fieldbyname('Funcao').asboolean then begin
                       Formula := stringreplace(Formula, fieldbyname('Campo').AsString, mValTeste, [rfReplaceAll,rfIgnoreCase]);
                    end else begin
                       mTem := true;
                       while mTem do begin
                             mPos := Pos(fieldbyname('Campo').asstring, Formula);
                             for i := mPos to Length(Formula) do begin
                                 mFuncao := mFuncao + Formula[i];
                                 If Formula[i] = '}' then break;
                             end;
                             Formula := stringreplace(Formula, mFuncao, mValTeste, [rfReplaceAll,rfIgnoreCase]);
                             mFuncao  := '';
                             mTem     := Pos(fieldbyname('Campo').asstring, Formula) <> 0;
                       end;
                    end;
                    next;
              end;
              // Teste se a formula esta correta.
              if not SinalSequencia(Formula) then begin
                 with Macro do begin
                      if Length(trim(apenasletras(Formula))) = 0 then begin
                         Formula := Trim(Formula);
                         result  := true;
                      end;
                 end;
              end else begin
                 if not result then begin
                    Alerta.Text      := 'Erro na fórmula do campo: '+tOpFormulas.Fieldbyname('Campo').AsString;
                    Alerta.AlertType := atError;
                    Alerta.TitleText := 'ERRO DE FÓRMULA';
                    Alerta.Execute;
                 end;
              end;
              EnableControls;
         end;
      end else begin
         result := false;
      end;

      tCampos.First;
      *)
      result  := mCampos;
end;

// Remove caracteres acentuados de uma string e de controle do XML.
function RemoveCaracterXML(Str:String): String;
Const ComAcento = '&àâêôûãõáéíóúçüúùñÀÂËÊÔÛÃÕÁÉÍÓÚÇÜÑ&<>§"°ºª´`^~¨¢£_--'+CHR(0178)+CHR(0179)+CHR(39)+CHR(8)+CHR(31)+CHR(8211)+CHR(211)+CHR(11)+CHR(8224);
      SemAcento = 'eaaeouaoaeioucuuunAAEEOUAOAEIOUCUNE()             --23        ';
var
      x : Integer;
begin
      for x := 1 to Length(Str) do Begin
          if Pos(Str[x],ComAcento) <> 0 then begin
              Str[x] := SemAcento[Pos(Str[x],ComAcento)];
          end;
      end;
      for x := 1 to Length(Str) do begin
          if (Ord(Str[x]) < 32) or (ORD(Str[x]) > 125) then begin
              Str[x] := ' ';
          end;
      end;
      Result := Str;
End;

Function ListaCampos(pFormula: string; pCampo:Integer): WideString;
var
    Lista,
    mParte: String;
    mCalculo: widestring;
    Fim: Byte;
begin
     Lista := '';
     if pCampo = 0 then begin
        mCalculo := StringReplace(pFormula, '100',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, 'CONDIÇÃO',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '+',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '-',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '/',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '*',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '(',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, ')',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '{',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '}',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '>',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, ';',' ',[rfReplaceAll]);
        mCalculo := StringReplace(mCalculo, '=',' ',[rfReplaceAll]);
        mCalculo := mCalculo + ' ';
        if Trim(mCalculo) <> '' then begin
           repeat
                Fim := Pos(' ', mCalculo);
                mParte := Trim(Copy(mCalculo, 1, Fim-1));
                if mParte <> '' then begin
                   if Pos(mParte, Lista) = 0 then begin
                      Lista := Lista + QuotedStr(mParte) + ',';
                   end;
                end;
                mCalculo := Copy(mCalculo, Fim+1, Length(mCalculo) - Fim);
           until Fim = 0;
        end;
     end else begin
        {
        if pCampo = 1 then
           mCalculo := TipoNota.FieldByName('Inf_Complementares').AsString
        else   
           mCalculo := TipoNota.FieldByName('Inf_Complementares2').AsString;

        mCalculo := mCalculo + ' ';

        If Trim(mCalculo) <> '' then begin
           Repeat
                Final  := Pos(' ', mCalculo);
                mParte := Trim(Copy(mCalculo, 1, Final- 1));
                If Pos('_', mParte) = 0 then mParte := '';
                mParte := Copy(mParte, 1, Pos(']', mParte));

                If mParte <> '' then begin
                   If Pos(mParte, Lista) = 0 then begin
                      Lista    := Lista    + QuotedStr(mParte) + ',';
                   End;
                End;

                mCalculo := Copy(mCalculo, Final+1, Length(mCalculo) - Final);
           Until Final = 0;
        End;
        }
//     end;
     end;

     If Trim(Lista) <> '' then begin
        Result := Copy(Lista, 1, Length(Lista)-1);
     end else begin
        Result := QuotedStr('');
     End;   
end;

// Retorna a porcentagem de um valor
function Percentual(Valor, Percent: Real): Real;
begin
      Percent := Percent / 100;
      Try
         Valor := Valor * Percent;
      Finally
         Result := Valor;
      End;
end;

// Apura o estoque disponível de um produto informado.
function EstoqueProduto(pProduto: Integer): Real;
var
   tEstoque: TFDQuery;
begin
     tEstoque := TFDQuery.Create(nil);
     with tEstoque do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          {
          sql.Add('select Disponivel = cast((isnull((select sum(Quantidade)');
          sql.Add('                                  from NotasItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 0');
          sql.Add('                                  and isnull(Movimenta_Estoque, 0) = 1');
          sql.Add('                                  and isnull(Cancelada, 0) = 0');
          sql.Add('                                  and isnull(Denegada, 0) = 0), 0) +');
          sql.Add('                          isnull((select sum(Quantidade_Entrada)');
          sql.Add('                                  from EstoqueTransferencia');
          sql.Add('                                  where Produto_Entrada = :pCodigo), 0) +');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from EstoqueAbertura');
          sql.Add('                                  where Produto = :pCodigo), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from NotasItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 1');
          sql.Add('                                  and isnull(Movimenta_Estoque, 0) = 1');
          sql.Add('                                  and isnull(Cancelada, 0) = 0');
          sql.Add('                                  and isnull(Denegada, 0) = 0), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from PedidosNFItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 1');
          sql.Add('                                  and isnull(Movimenta_Estoque, 0) = 1), 0)) -');
          sql.Add('                          isnull((select sum(Quantidade_Entrada)');
          sql.Add('                                  from EstoqueTransferencia');
          sql.Add('                                  where Produto_Saida = :pCodigo), 0) as decimal(14,3)) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from PedidosRepresentantesItens pri');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(Faturamento, 0) = 0');
          sql.Add('                                  and isnull(Faturado, 0) = 0');
          sql.Add('                                  and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
          sql.Add('                                  and (select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) < 4), 0)');
          }
          sql.Add('select Disponivel =  cast(isnull(sum(Movimento), 0) as decimal(18,3)) from');
          sql.Add('/* [ NOTAS FISCAIS ]----------------------------------------------------------------*/');
          sql.Add('(select Movimento = iif(nf.ES = 0, ni.Quantidade, -ni.Quantidade)');
          sql.Add('from Notasitens ni');
          sql.Add('inner join Notasfiscais nf on nf.Nota_id = ni.Nota_id');
          sql.Add('inner join OperacaoFiscal op on op.Codigo = nf.Operacao');
          sql.Add('where ni.Codigo_Mercadoria = :pCodigo');
          sql.Add('and nf.ES in (0,1)');
          sql.Add('and op.Movimenta_Estoque = 1');
          sql.Add('and isnull(nf.Cancelada,0) <> 1');
          sql.Add('and isnull(nf.Denegada,0) <> 1');
          sql.Add('union all');
          sql.Add('/* [ TRANSFERÊNCIA ENTRADA ]--------------------------------------------------------*/');
          sql.Add('select Quantidade_Entrada from EstoqueTransferencia where Produto_Entrada = :pCodigo');
          sql.Add('union all');
          sql.Add('/* [ ESTOQUE INICIAL ]--------------------------------------------------------------*/');
          sql.Add('select Quantidade from EstoqueAbertura where Produto = :pCodigo');
          sql.Add('union all');
          sql.Add('/* [ TRANSFERÊNCIA SAÍDA ]----------------------------------------------------------*/');
          sql.Add('select -Quantidade_Entrada from EstoqueTransferencia where Produto_Saida = :pCodigo');
          sql.Add('union all');
          sql.Add('/* [PEDIDOS NF - SAÍDA ]------------------------------------------------------------*/');
          sql.Add('select -pi.Quantidade');
          sql.Add('from PedidosNFItens pi');
          sql.Add('inner join PedidosNF pn on pn.Pedido = pi.Pedido');
          sql.Add('inner join OperacaoFiscal op on op.Codigo = pn.Operacao');
          sql.Add('where pi.Codigo_Mercadoria = :pCodigo');
          sql.Add('and pi.ES = 1');
          sql.Add('and op.Movimenta_Estoque = 1');
          sql.Add('union all');
          sql.Add('/* [PEDIDOS DE REPRESENTANTES - RESERVADO ]----------------------------------------*/');
          sql.Add('select -pri.Quantidade');
          sql.Add('from PedidosRepresentantesItens pri');
          sql.Add('inner join PedidosRepresentantes pr on pr.Pedido = pri.Pedido');
          sql.Add('where pri.Codigo_Mercadoria = :pCodigo ');
          sql.Add('and isnull(pr.Faturamento,0) = 0');
          sql.Add('and isnull(pr.Faturado,0) = 0');
          sql.Add('and isnull(pr.Cancelado,0) = 0');
          sql.Add('and pr.Local < 4');
          sql.Add(') as Movimentos;');
          ParamByName('pCodigo').AsInteger := pProduto;
          //sql.SavetoFile('c:\temp\Funcoes_Apura_Estoque.sql');
          open;
          EstoqueProduto := FieldByName('Disponivel').Value;
          close;
     end;
end;

// Apura o estoque disponível de um produto informado (Por Embarque).
function EstoqueProdutoEmb(pProduto, pEmbarque: Integer): Real;
var
   tEstoque: TFDQuery;
begin
     tEstoque := TFDQuery.Create(nil);
     with tEstoque do begin
          Connection := uniMainModule.Conecta;
          sql.Clear;
          sql.Add('select Disponivel = cast((isnull((select sum(Quantidade)');
          sql.Add('                                  from NotasItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 0');
          sql.Add('                                  and isnull(Movimenta_Estoque, 0) = 1');
          sql.Add('                                  and isnull(Cancelada, 0) = 0');
          sql.Add('                                  and isnull(Denegada, 0) = 0');
          sql.add('                                  and Embarque = :pEmbarque), 0) +');
          sql.Add('                          isnull((select sum(Quantidade_Entrada)');
          sql.Add('                                  from EstoqueTransferencia');
          sql.Add('                                  where Produto_Entrada = :pCodigo), 0) +');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from EstoqueAbertura');
          sql.Add('                                  where Produto = :pCodigo), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from NotasItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 1');
          sql.Add('                                  and isnull(Movimenta_Estoque, 0) = 1');
          sql.Add('                                  and isnull(Cancelada, 0) = 0');
          sql.Add('                                  and isnull(Denegada, 0) = 0');
          sql.add('                                  and Embarque = :pEmbarque), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from PedidosNFItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 1');
          sql.Add('                                  and isnull(Movimenta_Estoque, 0) = 1');
          sql.add('                                  and Embarque = :pEmbarque), 0)) -');
          sql.Add('                          isnull((select sum(Quantidade_Saida)');
          sql.Add('                                  from EstoqueTransferencia');
          sql.Add('                                  where Produto_Saida = :pCodigo), 0) as decimal(14,3)) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from PedidosRepresentantesItens pri');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(Faturamento, 0) = 0');
          sql.Add('                                  and isnull(Faturado, 0) = 0');
          sql.Add('                                  and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
          sql.Add('                                  and (select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) < 4), 0)');
          ParamByName('pCodigo').AsInteger   := pProduto;
          ParamByName('pEmbarque').AsInteger := pEmbarque;
          //sql.SavetoFile('c:\temp\Funcoes_Apura_Estoque_Embarque.sql');
          open;
          EstoqueProdutoEmb := FieldByName('Disponivel').Value;
          close;
     end;
end;

// Apura o inventario disponível de um produto informado.
function InventarioProduto(pProduto: Integer): Real;
var
   tInventario: TFDQuery;
begin
     tInventario := TFDQuery.Create(nil);
     with tInventario do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          {
          sql.Add('select Disponivel = cast((isnull((select sum(Quantidade)');
          sql.Add('                                  from NotasItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 0');
          sql.Add('                                  and isnull(Movimenta_Inventario, 0) = 1');
          sql.Add('                                  and isnull(Cancelada, 0) = 0');
          sql.Add('                                  and isnull(Denegada, 0) = 0), 0) +');
          sql.Add('                          isnull((select sum(Quantidade_Entrada)');
          sql.Add('                                  from EstoqueTransferencia');
          sql.Add('                                  where Produto_Entrada = :pCodigo');
          sql.add('                                  and Inventario = 1), 0) +');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from EstoqueAbertura');
          sql.Add('                                  where Produto = :pCodigo');
          sql.add('                                  and Inventario = 1), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from NotasItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 1');
          sql.Add('                                  and isnull(Movimenta_Inventario, 0) = 1');
          sql.Add('                                  and isnull(Cancelada, 0) = 0');
          sql.Add('                                  and isnull(Denegada, 0) = 0), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from PedidosNFItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 1');
          sql.Add('                                  and isnull(Movimenta_Inventario, 0) = 1), 0)) -');
          sql.Add('                          isnull((select sum(Quantidade_Entrada)');
          sql.Add('                                  from EstoqueTransferencia');
          sql.Add('                                  where Produto_Saida = :pCodigo), 0) as decimal(14,3)) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from PedidosRepresentantesItens pri');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(Faturamento, 0) = 0');
          sql.Add('                                  and isnull(Faturado, 0) = 0');
          sql.Add('                                  and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
          sql.Add('                                  and (select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) < 4), 0)');
          }
          sql.Add('select Disponivel =  cast(isnull(sum(Movimento), 0) as decimal(18,3)) from');
          sql.Add('/* [ NOTAS FISCAIS ]----------------------------------------------------------------*/');
          sql.Add('(select Movimento = iif(nf.ES = 0, ni.Quantidade, -ni.Quantidade)');
          sql.Add('from Notasitens ni');
          sql.Add('inner join Notasfiscais nf on nf.Nota_id = ni.Nota_id');
          sql.Add('inner join OperacaoFiscal op on op.Codigo = nf.Operacao');
          sql.Add('where ni.Codigo_Mercadoria = :pCodigo');
          sql.Add('and nf.ES in (0,1)');
          sql.Add('and op.Movimenta_Inventario = 1');
          sql.Add('and isnull(nf.Cancelada,0) <> 1');
          sql.Add('and isnull(nf.Denegada,0) <> 1');
          sql.Add('union all');
          sql.Add('/* [ TRANSFERÊNCIA ENTRADA ]--------------------------------------------------------*/');
          sql.Add('select Quantidade_Entrada from EstoqueTransferencia where Produto_Entrada = :pCodigo');
          sql.Add('union all');
          sql.Add('/* [ ESTOQUE INICIAL ]--------------------------------------------------------------*/');
          sql.Add('select Quantidade from EstoqueAbertura where Produto = :pCodigo');
          sql.Add('union all');
          sql.Add('/* [ TRANSFERÊNCIA SAÍDA ]----------------------------------------------------------*/');
          sql.Add('select -Quantidade_Entrada from EstoqueTransferencia where Produto_Saida = :pCodigo');
          sql.Add('union all');
          sql.Add('/* [PEDIDOS NF - SAÍDA ]------------------------------------------------------------*/');
          sql.Add('select -pi.Quantidade');
          sql.Add('from PedidosNFItens pi');
          sql.Add('inner join PedidosNF pn on pn.Pedido = pi.Pedido');
          sql.Add('inner join OperacaoFiscal op on op.Codigo = pn.Operacao');
          sql.Add('where pi.Codigo_Mercadoria = :pCodigo');
          sql.Add('and pi.ES = 1');
          sql.Add('and op.Movimenta_Inventario = 1');
          sql.Add('union all');
          sql.Add('/* [PEDIDOS DE REPRESENTANTES - RESERVADO ]----------------------------------------*/');
          sql.Add('select -pri.Quantidade');
          sql.Add('from PedidosRepresentantesItens pri');
          sql.Add('inner join PedidosRepresentantes pr on pr.Pedido = pri.Pedido');
          sql.Add('where pri.Codigo_Mercadoria = :pCodigo ');
          sql.Add('and isnull(pr.Faturamento,0) = 0');
          sql.Add('and isnull(pr.Faturado,0) = 0');
          sql.Add('and isnull(pr.Cancelado,0) = 0');
          sql.Add('and pr.Local < 4');
          sql.Add(') as Movimentos;');
          ParamByName('pCodigo').AsInteger := pProduto;
          //sql.SavetoFile('c:\temp\Funcoes_Apura_Estoque.sql');
          open;
          InventarioProduto := FieldByName('Disponivel').Value;
          close;
     end;
end;

// Apura o inventario disponível de um produto informado (Por Embarque).
function InventarioProdutoEmb(pProduto, pEmbarque: Integer): Real;
var
   tEstoque: TFDQuery;
begin
     tEstoque := TFDQuery.Create(nil);
     with tEstoque do begin
          Connection := uniMainModule.Conecta;
          sql.Clear;
          sql.Add('select Disponivel = cast((isnull((select sum(Quantidade)');
          sql.Add('                                  from NotasItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 0');
          sql.Add('                                  and isnull(Movimenta_Inventario, 0) = 1');
          sql.Add('                                  and isnull(Cancelada, 0) = 0');
          sql.Add('                                  and isnull(Denegada, 0) = 0');
          sql.add('                                  and Embarque = :pEmbarque), 0) +');
          sql.Add('                          isnull((select sum(Quantidade_Entrada)');
          sql.Add('                                  from EstoqueTransferencia');
          sql.Add('                                  where Produto_Entrada = :pCodigo');
          sql.add('                                  and Inventario = 1), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from EstoqueAbertura');
          sql.Add('                                  where Produto_Entrada = :pCodigo');
          sql.add('                                  and Inventario = 1), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from NotasItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 1');
          sql.Add('                                  and isnull(Movimenta_Inventario, 0) = 1');
          sql.Add('                                  and isnull(Cancelada, 0) = 0');
          sql.Add('                                  and isnull(Denegada, 0) = 0');
          sql.add('                                  and Embarque = :pEmbarque), 0) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from PedidosNFItens');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(ES, 0) = 1');
          sql.Add('                                  and isnull(Movimenta_Inventario, 0) = 1');
          sql.add('                                  and Embarque = :pEmbarque), 0)) -');
          sql.Add('                          isnull((select sum(Quantidade_Saida)');
          sql.Add('                                  from ProdutosTransferencia');
          sql.Add('                                  where Produto_Saida = :pCodigo), 0) as decimal(14,3)) -');
          sql.Add('                          isnull((select sum(Quantidade)');
          sql.Add('                                  from PedidosRepresentantesItens pri');
          sql.Add('                                  where Codigo_Mercadoria = :pCodigo');
          sql.Add('                                  and isnull(Faturamento, 0) = 0');
          sql.Add('                                  and isnull(Faturado, 0) = 0');
          sql.Add('                                  and (select isnull(Cancelado, 0) from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0');
          sql.Add('                                  and (select Local from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) < 4), 0)');
          ParamByName('pCodigo').AsInteger   := pProduto;
          ParamByName('pEmbarque').AsInteger := pEmbarque;
          //sql.SavetoFile('c:\temp\Funcoes_Apura_Inventario_Embarque.sql');
          open;
          InventarioProdutoEmb := FieldByName('Disponivel').Value;
          close;
     end;
end;

// Apura o estoque disponível de um produto por detalhe.
function EstoqueDetalhe(pProduto: Integer; pLote: string): Real;
var
   tDetalhe: TFDQuery;
begin
     tDetalhe := TFDQuery.Create(nil);
     with tDetalhe do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Disponivel = (select isnull(sum(Quantidade_Entrada),0) from ProdutosDetalhe     where Produto = :pProduto and Lote = :pLote) -');
          sql.add('                  ( (select isnull(sum(Quantidade),0)         from NotasItensDetalhe   where Produto = :pProduto and Lote = :pLote and isnull(Cancelada, 0) = 0 and isnull(Denegada, 0) = 0) +');
          SQL.add('                    (select isnull(sum(Quantidade),0)         from PedidosItensDetalhe where Produto = :pProduto and Lote = :pLote) )');
          parambyname('pProduto').AsInteger := pProduto;
          parambyname('pLote').AsString     := pLote;
          open;
          EstoqueDetalhe := fieldbyname('Disponivel').asfloat;
     end;
end;

(*=================================================================================================*
Executa os calculos dos itens da nota fiscal.
---------------------------------------------
  Parametros:
      pOper      : Operação fiscal.
      pTipo      : Item/Total: se calculos dos itens ou totalizadores.   
      gFormula   : O grid que ira receber as formulas no form origem.
      cLog       : O memo que ira receber o log de erros no form origem.
      pTabDestino: A Tabela de Itens da nota.
      pFrame     : o Frame de origem (Quando for uniForm passar nil em pFrame.
      pForm      : o Form de origem (Quando for uniFrame passar nil em pForm.
 *=================================================================================================*)
function CalculaTudo(pOper: integer; pTipo: string; gFormula: TuniStringGrid; cLog: tuniMemo; pTabDestino: TFDQuery; pFrame: TuniFrame; pForm: TuniForm): boolean;
var
   mValor: real;
   mAliqImp
  ,mCSTImp: string;
   tFormulasItens
  ,Campos: TFDQuery;
   tImpostos: TFDMemTable;  
begin
     // Limpa a tabela de impostos.
     try 
        Campos            := TFDQuery.Create(nil);
        Campos.Connection := uniMainModule.Conecta;
        mValor            := 0;

        tImpostos := TFDMemTable.Create(nil);
        with tImpostos do begin
             Close;
             FieldDefs.Clear;
             FieldDefs.Add('Ordem_Calculo', ftSmallint);
             FieldDefs.Add('Descricao'    , ftString, 60);
             FieldDefs.Add('Campo'        , ftString, 60);
             FieldDefs.Add('Aliquota'     , ftFloat);
             FieldDefs.Add('Valor'        , ftCurrency);
             FieldDefs.Add('Total'        , ftCurrency);
             FieldDefs.Add('CST'          , ftString, 5);
             CreateDataSet;
             EmptyDataSet;
        end;
        tFormulasItens            := TFDQuery.Create(nil);
        tFormulasItens.Connection := uniMainModule.Conecta;
        with tFormulasItens do begin
             sql.clear;
             sql.add('select Campo');
             sql.add('      ,Formula');
             sql.add('      ,Campo_Aliquota');
             sql.add('      ,Campo_CST');
             sql.add('      ,Ordem_Calculo');
             sql.add('      ,Descricao');
             sql.add('from OperacaoFiscalFormulas');
             sql.add('where Operacao = :pOp');
             sql.add('and Tipo = :pTipo');
             sql.add('and isnull(Desativada, 0) = 0');
             sql.add('order by Ordem_Calculo');
             parambyname('pOp').AsInteger  := pOper;
             parambyname('pTipo').asstring := pTipo;
             open;
             first;

             while not eof do begin
                   // Pula o calculo do valor unitário pois ja foi calculado anteriormente.
                   if fieldbyname('Campo').AsString <> 'Valor_Unitario' then begin
                      gFormula.Cells[0, gFormula.RowCount-1] := fieldbyname('Campo').AsString;
                      gFormula.Cells[1, gFormula.RowCount-1] := fieldbyname('Formula').AsString;
                      with Campos do begin
                           sql.clear;
                           sql.add('select Campo');
                           sql.add('      ,Tabela');
                           sql.add('      ,Campo_Chave');
                           sql.add('      ,Pesquisa');
                           sql.add('      ,Percentual');
                           sql.Add('from Campos');
                           sql.Add('where Campo in('+ListaCampos(tFormulasItens.fieldbyname('Formula').AsString, 0)+')');
                           sql.add('order by Tabela');
                           open;
                      end;
                      // Faz o cálculo da formula e Acha o campo.
                      try
                         if pFrame <> nil then begin
                            mValor := CalculaMacro(pFrame, fieldbyname('Formula').AsString, fieldbyname('Campo').asstring);
                         end else begin
                            mValor := CalculaMacro(pForm, fieldbyname('Formula').AsString, fieldbyname('Campo').asstring);
                         end;
                      except On E: Exception do
                         begin
                             cLog.Lines.add('Ocorreu um erro de cálculo: '+E.Message);
                             cLog.lines.Add(fieldbyname('Formula').AsString);
                         end;
                      end;
                      pTabDestino.fieldbyname(fieldbyname('Campo').AsString).value := mValor;
                      with tImpostos do begin
                           mAliqImp := trim(tFormulasItens.fieldbyname('Campo_Aliquota').asstring);
                           mCSTImp  := trim(tFormulasItens.fieldbyname('Campo_CST').asstring);
                           append;
                                 fieldbyname('Ordem_Calculo').Value := tFormulasItens.FieldByName('Ordem_Calculo').Value;
                                 fieldbyname('Descricao').Value     := tFormulasItens.FieldByName('Descricao').Value;
                                 fieldbyname('Campo').Value         := tFormulasItens.fieldbyname('Campo').value;
                                 fieldbyname('Valor').Value         := mValor;
                                 fieldbyname('Total').Value         := mValor * pTabDestino.fieldbyname('Quantidade').value;
                                 if mAliqImp <> '' then begin
                                    fieldbyname('Aliquota').Value := pTabDestino.fieldbyname(mAliqImp).asfloat;
                                 end;
                                 if mCSTImp <> '' then begin
                                    fieldbyname('CST').Value := pTabDestino.fieldbyname(mCSTImp).asstring;
                                 end;
                           post;
                      end;
                   end;
                   next;
             end;
        end;
        result := true;
     except
        result := false;
     end;
end;

// Efetua a conversão do texto da formula para valores.
function CalculaMacro(pForm: TComponent; pFormula, Campo: String): Real;
var
   mCalc: String;
   mResultado: real;
   tCampos: TFDQuery;
   Macro: TCalcExpress;
   Memo: TUniMemo;
   Grade: TuniStringGrid;
begin
     tCampos := TFDQuery.Create(nil);
     Macro   := TCalcExpress.create(nil);
     with tCampos do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Campo');
          sql.add('      ,Tabela');
          sql.add('      ,Campo_Chave');
          sql.add('      ,Pesquisa');
          sql.add('      ,Percentual');
          sql.add('from Campos');
          sql.add('where Campo in('+ListaCampos(pFormula, 0)+')');
          sql.add('order by Tabela');
          open;

          // Convertendo a formula do campo.
          mCalc := StringReplace(trim(pFormula), #13,'',[rfReplaceAll]);
          mCalc := StringReplace(mCalc, #12,'',[rfReplaceAll]);
          mCalc := StringReplace(mCalc, #10,'',[rfReplaceAll]);
          first;
          if recordcount > 0 then begin
             while not eof do begin
                   mCalc := stringreplace(mCalc, fieldbyname('Campo').AsString, SubstituirCampos(pForm, fieldbyname('Campo').AsString), [rfReplaceAll]);
                   tcampos.Next;
             end;
             mCalc := SubstituirCondicao(mCalc);
             mCalc := stringreplace(mCalc,' ', '', [rfReplaceAll]);
          end;
     end;
     try
if (campo = 'Valor_CBS') then Clipboard.AsText := mCalc;
         Macro.Formula := mCalc;
         mResultado    := Macro.Calc([0]);
         if mResultado < 0 then mResultado := 0;
     except on E:Exception do 
         begin 
              Memo := pForm.FindComponent('cLog') as TUniMemo;
              if Assigned(Memo) then begin
                 Memo.Lines.Add('');
                 Memo.Lines.Add('ERRO NA FÓRMULA DO CAMPO '+stringofchar('=', 160));
                 Memo.Lines.Add('   CAMPO: '+Campo);
                 Memo.Lines.Add('   FORMULA: '+trim(pFormula));
                 Memo.Lines.add('   ERRO: '+trim(E.Message));
                 Memo.Lines.add(stringofchar('=', 188));
                 Memo.Lines.Add('');
              end;
              mResultado := 0;
         end;
     end;
     Grade := pForm.FindComponent('gFormula') as TUniStringGrid;
     if Assigned(Grade) then begin
        Grade.Cells[2, Grade.RowCount-1] := mCalc;
        Grade.Cells[3, Grade.RowCount-1] := floattostr(mResultado);
        Grade.RowCount                   := Grade.RowCount + 1;
     end;
     CalculaMacro := mResultado;
end;

function SubstituirCampos(pForm: TComponent; pCampo: string): string;
var
  Match: TMatch;
  CampoNome
 ,NomeDataSet: string;
  DataSet: TDataSet;
begin
     Result      := '';
     NomeDataSet := copy(pCampo, 1, pos('_', pCampo)-1);
     Result      := '0';
     // Localiza componente pelo nome
     if TDataSet(pForm.FindComponent(NomeDataset)) <> nil then begin
        DataSet := TDataSet(pForm.FindComponent(NomeDataset));
        if not DataSet.Active then begin
           exit;
        end;
        // Expressão regular para pegar o texto dentro dos colchetes
        Match     := TRegEx.Match(pCampo, '\[(.*?)\]');
        CampoNome := Match.Groups[1].Value;
        if DataSet.FindField(CampoNome) <> nil then begin
           Result := iif(DataSet.FieldByName(CampoNome).AsString = '', '0', DataSet.FieldByName(CampoNome).AsString);
        end;
     end;
end;

function SubstituirCondicao(Campo: string): string;
var
   mPosFun
  ,i: integer;
   mFuncao
  ,mFunCondic
  ,mValorCondic1
  ,mValorCondic2
  ,mFunTermo1
  ,mFunTermo2
  ,mSinal: string;
begin
     result := '';
     while Pos('{', Campo) > 0 do begin
           Campo := stringreplace(Campo, 'CONDIÇÃO', '', [rfReplaceAll]);
           mPosFun := Pos('{', Campo)+1;
           mFuncao := Copy(Campo, mPosFun, Pos('}', Campo)-mPosFun);

           // Condição da função.
           mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
           mFuncao    := StringReplace(mFuncao, mFunCondic, '', [rfReplaceAll]);
           mFunCondic := StringReplace(mFunCondic, ';', '', [rfReplaceAll]);

           // Primeiro termo da função.
           mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
           mFuncao    := StringReplace(mFuncao, mFunTermo1, '', [rfReplaceAll] );
           mFunTermo1 := StringReplace(mFunTermo1, ';', '', [rfReplaceAll] );

           // Segundo termo da função.
           mFunTermo2 := StringReplace(mFuncao, ';', '', [rfReplaceAll]);

           // Sinal utilizado no teste de condição.
           mSinal := '';
           for i := 1 to Length(mFunCondic) do begin
               if (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
           end;

           // Valores da condição.
           mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
           mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
           mFuncao := '';
           for i := Pos('{', Campo) to Length(Campo) do begin
               mFuncao := mFuncao + Campo[i];
               if Campo[i] = '}' then break;
           end;
           if ApenasNumeros(mValorCondic2) <> '' then begin
              if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                 (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                 (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                 (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                 (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                 (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                 Campo := StringReplace(Campo, mFuncao, mFunTermo1, [rfReplaceAll])
              else
                 Campo := StringReplace(Campo, mFuncao, mFunTermo2, [rfReplaceAll]);
           end else begin
              if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                 (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                 (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                 (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                 (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                 (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                 Campo := StringReplace(Campo, mFuncao, mFunTermo1, [rfReplaceAll])
              else
                 Campo := StringReplace(Campo, mFuncao, mFunTermo2, [rfReplaceAll]);
           end;
     end;
     result := Campo;
end;

function PegaCSTIPI(pOper, pProd: Integer): string;
var
   mCST: string;
   tOpFiscal
  ,tProdutos
  ,tNCM
  ,tCST: TFDQuery;
begin
     tCST            := TFDQuery.create(nil);
     tCST.Connection := uniMainModule.Conecta;
     tOpFiscal       := TFDQuery.create(nil);
     tProdutos       := TFDQuery.create(nil);
     try 
        with tOpFiscal do begin
             Connection := uniMainModule.Conecta;
             sql.clear;
             sql.add('select ES');
             sql.add('      ,Isencao_IPI');
             sql.add('      ,Nao_Tributada_IPI');
             sql.add('      ,Imune_IPI');
             sql.add('      ,Suspensao_IPI');
             sql.add('from OperacaoFiscal');
             sql.add('where Codigo = :pCodigo');
             parambyname('pCodigo').asinteger := pOper;
             open;
        end;
        with tProdutos do begin
             Connection := uniMainModule.Conecta;
             sql.clear;
             sql.add('select Aliquota_IPI');
             sql.Add('      ,Valor_IPI');
             sql.Add('      ,NCM');
             sql.add('from Produtos');
             sql.Add('where Codigo = :pProd');
             parambyname('pProd').asinteger := pProd;
             open;
        end;
        tNCM:= TFDQuery.create(nil);
        with tNCM do begin
             Connection := uniMainModule.Conecta;
             sql.clear;
             sql.add('select IPI_TribAliquotaZero');
             sql.add('      ,IPI_Isento');
             sql.add('      ,IPI_Suspensao');
             sql.add('      ,Codigo_EXTIPI');
             sql.add('from NCM');
             sql.Add('where NCM = :pNCM');
             ParamByName('pNCM').value := tProdutos.fieldbyname('NCM').AsString;
             open;
        end;
        // Código de Situação Tributaria do IPI.
        mCST := '';
        if (tProdutos.Fieldbyname('Valor_IPI').ascurrency > 0) or (tProdutos.Fieldbyname('Aliquota_IPI').ascurrency> 0) then mCST := Trim(tOpFiscal.FieldByName('ES').AsString)+'+IPI';
        if tProdutos.fieldbyname('Valor_IPI').asfloat <> 0 then mCST := Trim(tOpFiscal.fieldbyname('ES').AsString)+'+V';
        if tNCM.fieldbyname('IPI_TribAliquotaZero').asboolean then mCST := Trim(tOpFiscal.fieldbyname('ES').AsString)+'+V';
        if (tNCM.fieldbyname('IPI_Isento').AsBoolean) or (tOpFiscal.fieldbyname('Isencao_IPI').AsBoolean) then mCST := Trim(tOpFiscal.fieldbyname('ES').AsString)+'+I';
        if tOpFiscal.fieldbyname('Nao_Tributada_IPI').asboolean then mCST := Trim(tOpFiscal.fieldbyname('ES').AsString)+'+NT';
        if tOpFiscal.fieldbyname('Imune_IPI').asboolean then mCST := Trim(tOpFiscal.fieldbyname('ES').AsString)+'+IM';
        if tNCM.fieldbyname('IPI_Suspensao').asboolean then mCST := Trim(tOpFiscal.fieldbyname('ES').AsString)+'+SUS';
        if tOpFiscal.fieldbyname('Suspensao_IPI').asboolean then mCST := Trim(tOpFiscal.fieldbyname('ES').AsString)+'+SUS';
        if mCST = '' then mCST := Trim(tOpFiscal.fieldbyname('ES').AsString)+'+<>';
        with tCST do begin
             sql.clear;
             sql.add('select Codigo from CSTIPI where Classificacao = '+quotedstr(mCST));
             open;
             result := tCST.FieldByName('Codigo').Value
        end;
     except 
        result := iif(tOpFiscal.fieldbyname('ES').AsInteger = 0, '49', '99');
     end;
     tOpFiscal.Free;
     tProdutos.Free;
end;

function PegaCSTPIS(pOper, pProd, pDest: Integer): string;
var
   mCST: string;
   tOpFiscal
  ,tProdutos
  ,tNCM
  ,tCST
  ,tDestinatario
  ,tTabPISCOFINS: TFDQuery;
begin
     tCST            := TFDQuery.create(nil);
     tCST.Connection := uniMainModule.Conecta;
     
     tOpFiscal := TFDQuery.create(nil);
     with tOpFiscal do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select ES');
          sql.Add('      ,CST_PIS');
          sql.Add('      ,CSTPIS_AliquotaZero');
          sql.Add('      ,CSTPIS_AliquotaUm');
          sql.Add('      ,CSTPIS_Monofasica');
          sql.add('      ,CSTPIS_Isenta');
          sql.Add('      ,CSTPIS_SemIncidencia');
          sql.Add('      ,CSTPIS_Suspensao');
          sql.Add('      ,CSTPIS_Outras');
          sql.add('from OperacaoFiscal');
          sql.add('where Codigo = :pCodigo');
          parambyname('pCodigo').asinteger := pOper;
          open;
     end;
     tProdutos := TFDQuery.create(nil);
     with tProdutos do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select NCM');
          sql.Add('      ,CSTPIS_Entrada');
          sql.Add('      ,Aliquota_PIS');
          sql.Add('      ,Aliquota_COFINS');
          sql.Add('      ,Aliquota_PISEntrada');
          sql.Add('      ,Aliquota_COFINSEntrada');
          sql.Add('      ,Aliquota_PISSaida');
          sql.Add('      ,Aliquota_COFINSSaida');
          sql.Add('      ,Reducao_PIS');
          sql.Add('      ,Reducao_COFINS');
          sql.add('      ,CSTPIS_AliquotaUM');
          sql.add('      ,CSTPIS_Monofasica');
          sql.add('      ,CSTPIS_AliquotaZero');
          sql.add('      ,CSTPIS_AliquotaZeroEnt');
          sql.add('      ,CSTPIS_Isenta');
          sql.add('      ,CSTPIS_IsentaEnt');
          sql.add('      ,CSTPIS_SemIncidencia');
          sql.add('      ,CSTPIS_SemIncidenciaEnt');
          sql.add('      ,CSTPIS_Suspensao');
          sql.add('      ,CSTPIS_SuspensaoEnt');
          sql.add('      ,CSTPIS_Outras');
          sql.add('      ,CSTPIS_OutrasEnt');
          sql.add('from Produtos');
          sql.Add('where Codigo = :pProd');
          parambyname('pProd').asinteger := pProd;
          open;
     end;
     tNCM:= TFDQuery.create(nil);
     with tNCM do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select PIS_ST');
          sql.add('from NCM');
          sql.Add('where NCM = :pNCM');
          ParamByName('pNCM').value := tProdutos.fieldbyname('NCM').AsString;
          open;
     end;
     tDestinatario := TFDQuery.create(nil);
     with tDestinatario do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Varejista from Destinatarios where Codigo = :pDest');
          parambyname('pDest').Value := pDest;
          open;
     end;
     tTabPISCOFINS := TFDQuery.create(nil);
     with tTabPISCOFINS do begin
          tTabPISCOFINS.Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Entrada, Saida from TabelaPISCOFINS where Imposto = :pImp and Tipo = :pTp and Empresa = :pEmp');
          parambyname('pImp').Value := 'PIS';
          parambyname('pTp').Value  := 'B';
          parambyname('pEmp').Value := UniMainModule.mEmpresaAtiva;
          open;
     end;
     
     // Código de Situação Tributaria do PIS.
     // ENTRADA.
     mCST := '';
     if tOpFiscal.fieldbyname('ES').AsInteger = 0 then begin
        with tCST do begin
             sql.clear;
             sql.add('select Codigo, Classificacao from CSTPIS where ES = 0');
             open;
        end;
        if Trim(tProdutos.fieldbyname('CSTPIS_Entrada').AsString) <> '' then begin
           tCST.Locate('Codigo', tProdutos.fieldbyname('CSTPIS_Entrada').Value, [loCaseInsensitive]);
           mCST := tCST.fieldbyname('Classificacao').asstring;
        end;
        if Trim(tOpFiscal.fieldbyname('CST_PIS').Value) <> '' then begin
           tCST.Locate('Codigo', tOpFiscal.fieldbyname('CST_PIS').Value, [loCaseInsensitive]);
           mCST := tCST.fieldbyname('Classificacao').asstring;
        end else begin
           if tProdutos.fieldbyname('Aliquota_PISEntrada').AsFloat > 0 then mCST := '0+RNTNTMIE'; // 56;
        end;
        if tOpFiscal.fieldbyname('CSTPIS_Isenta').AsBoolean or tProdutos.fieldbyname('CSTPIS_IsentaEnt').AsBoolean               then mCST := '0+ISE';  // 71.
        if tOpFiscal.fieldbyname('CSTPIS_Suspensao').AsBoolean or tProdutos.fieldbyname('CSTPIS_SuspensaoEnt').AsBoolean         then mCST := '0+SUS';  // 72.
        if tOpFiscal.fieldbyname('CSTPIS_AliquotaZero').AsBoolean or tProdutos.fieldbyname('CSTPIS_AliquotaZeroEnt').AsBoolean   then mCST := '0+A0';   // 73.
        if tOpFiscal.fieldbyname('CSTPIS_SemIncidencia').AsBoolean or tProdutos.fieldbyname('CSTPIS_SemIncidenciaEnt').AsBoolean then mCST := '0+SINC'; // 74.
        if tOpFiscal.fieldbyname('CSTPIS_Outras').AsBoolean or tProdutos.fieldbyname('CSTPIS_OutrasEnt').AsBoolean               then mCST := '0+O';    // Outras.
     end;
     // SAÍDA.
     if tOpFiscal.fieldbyname('ES').AsInteger = 1 then begin
        if (tProdutos.fieldbyname('Aliquota_PISSaida').asfloat > 0) and (tProdutos.fieldbyname('Aliquota_PISSaida').asfloat = tTabPISCOFINS.fieldbyname('Saida').asfloat) then mCST := '1+B';
        if (tProdutos.fieldbyname('Aliquota_PISSaida').AsFloat > 0) and (tProdutos.fieldbyname('Aliquota_PISSaida').AsFloat <> tTabPISCOFINS.fieldbyname('Saida').Value)  then mCST := '1+D';
        if tOpFiscal.fieldbyname('CSTPIS_AliquotaUM').AsBoolean or tProdutos.fieldbyname('CSTPIS_AliquotaUM').AsBoolean       then mCST := '1+UM';
        if tOpFiscal.fieldbyname('CSTPIS_Monofasica').AsBoolean or tProdutos.fieldbyname('CSTPIS_Monofasica').AsBoolean       then mCST := '1+MONO+A0';
        if tNCM.fieldbyname('PIS_ST').asboolean and tDestinatario.fieldbyname('Varejista').AsBoolean                          then mCST := '1+ST';
        if tOpFiscal.fieldbyname('CSTPIS_AliquotaZero').AsBoolean  or tProdutos.fieldbyname('CSTPIS_AliquotaZero').AsBoolean  then mCST := '1+A0';
        if tOpFiscal.fieldbyname('CSTPIS_Isenta').AsBoolean        or tProdutos.fieldbyname('CSTPIS_Isenta').AsBoolean        then mCST := '1+ISE';
        if tOpFiscal.fieldbyname('CSTPIS_SemIncidencia').AsBoolean or tProdutos.fieldbyname('CSTPIS_SemIncidencia').AsBoolean then mCST := '1+SINC';
        if tOpFiscal.fieldbyname('CSTPIS_Suspensao').AsBoolean     or tProdutos.fieldbyname('CSTPIS_Suspensao').AsBoolean     then mCST := '1+SUS';
        if tOpFiscal.fieldbyname('CSTPIS_Outras').AsBoolean        or tProdutos.fieldbyname('CSTPIS_Outras').AsBoolean        then mCST := '1+O';
     end;
     with tCST do begin
          sql.clear;
          sql.add('select Codigo from CSTPIS where Classificacao = :pClass');
          parambyname('pClass').Value := mCST;
          open;
          result := fieldbyname('Codigo').AsString;
     end;
     tOpFiscal.free;
     tProdutos.free;
     tNCM.free;
     tCST.free;
     tDestinatario.free;
     tTabPISCOFINS.Free;
end;

function PegaCSTCOFINS(pOper, pProd, pDest: Integer): string;
var
   mCST: string;
   tOpFiscal
  ,tProdutos
  ,tNCM
  ,tCST
  ,tDestinatario
  ,tTabPISCOFINS: TFDQuery;
begin
     tCST            := TFDQuery.create(nil);
     tCST.Connection := uniMainModule.Conecta;
     
     tOpFiscal := TFDQuery.create(nil);
     with tOpFiscal do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select ES');
          sql.Add('      ,CST_COFINS');
          sql.Add('      ,CSTCOFINS_AliquotaZero');
          sql.Add('      ,CSTCOFINS_AliquotaUm');
          sql.Add('      ,CSTCOFINS_Monofasica');
          sql.add('      ,CSTCOFINS_Isenta');
          sql.Add('      ,CSTCOFINS_SemIncidencia');
          sql.Add('      ,CSTCOFINS_Suspensao');
          sql.Add('      ,CSTCOFINS_Outras');
          sql.add('from OperacaoFiscal');
          sql.add('where Codigo = :pCodigo');
          parambyname('pCodigo').asinteger := pOper;
          open;
     end;
     tProdutos := TFDQuery.create(nil);
     with tProdutos do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select NCM');
          sql.Add('      ,CSTCOFINS_Entrada');
          sql.Add('      ,Aliquota_COFINS');
          sql.Add('      ,Aliquota_COFINS');
          sql.Add('      ,Aliquota_COFINSEntrada');
          sql.Add('      ,Aliquota_COFINSEntrada');
          sql.Add('      ,Aliquota_COFINSSaida');
          sql.Add('      ,Aliquota_COFINSSaida');
          sql.Add('      ,Reducao_COFINS');
          sql.Add('      ,Reducao_COFINS');
          sql.add('      ,CSTCOFINS_AliquotaUM');
          sql.add('      ,CSTCOFINS_Monofasica');
          sql.add('      ,CSTCOFINS_AliquotaZero');
          sql.add('      ,CSTCOFINS_AliquotaZeroEnt');
          sql.add('      ,CSTCOFINS_Isenta');
          sql.add('      ,CSTCOFINS_IsentaEnt');
          sql.add('      ,CSTCOFINS_SemIncidencia');
          sql.add('      ,CSTCOFINS_SemIncidenciaEnt');
          sql.add('      ,CSTCOFINS_Suspensao');
          sql.add('      ,CSTCOFINS_SuspensaoEnt');
          sql.add('      ,CSTCOFINS_Outras');
          sql.add('      ,CSTCOFINS_OutrasEnt');
          sql.add('from Produtos');
          sql.Add('where Codigo = :pProd');
          parambyname('pProd').asinteger := pProd;
          open;
     end;
     tNCM:= TFDQuery.create(nil);
     with tNCM do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select PIS_ST');
          sql.add('from NCM');
          sql.Add('where NCM = :pNCM');
          ParamByName('pNCM').value := tProdutos.fieldbyname('NCM').AsString;
          open;
     end;
     tDestinatario := TFDQuery.create(nil);
     with tDestinatario do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Varejista from Destinatarios where Codigo = :pDest');
          parambyname('pDest').Value := pDest;
          open;
     end;
     tTabPISCOFINS := TFDQuery.create(nil);
     with tTabPISCOFINS do begin
          tTabPISCOFINS.Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Entrada, Saida from TabelaPISCOFINS where Imposto = :pImp and Tipo = :pTp and Empresa = :pEmp');
          parambyname('pImp').Value := 'COFINS';
          parambyname('pTp').Value  := 'B';
          parambyname('pEmp').Value := UniMainModule.mEmpresaAtiva;
          open;
     end;
     
     // Código de Situação Tributaria do PIS.
     // ENTRADA.
     mCST := '';
     if tOpFiscal.fieldbyname('ES').AsInteger = 0 then begin
        with tCST do begin
             sql.clear;
             sql.add('select Codigo, Classificacao from CSTCOFINS where ES = 0');
             open;
        end;
        if Trim(tProdutos.fieldbyname('CSTCOFINS_Entrada').AsString) <> '' then begin
           tCST.Locate('Codigo', tProdutos.fieldbyname('CSTCOFINS_Entrada').Value, [loCaseInsensitive]);
           mCST := tCST.fieldbyname('Classificacao').asstring;
        end else begin
           if Trim(tOpFiscal.fieldbyname('CST_COFINS').Value) <> '' then begin
              tCST.Locate('Codigo', tOpFiscal.fieldbyname('CST_COFINS').Value, [loCaseInsensitive]);
              mCST := tCST.fieldbyname('Classificacao').asstring;
           end else begin
              if tProdutos.fieldbyname('Aliquota_COFINSEntrada').AsFloat > 0 then mCST := '0+RNTNTMIE'; // 56;
           end;
        end;                                                                                                                    
        if tOpFiscal.fieldbyname('CSTCOFINS_Isenta').AsBoolean or tProdutos.fieldbyname('CSTCOFINS_IsentaEnt').AsBoolean               then mCST := '0+ISE';  // 71.
        if tOpFiscal.fieldbyname('CSTCOFINS_Suspensao').AsBoolean or tProdutos.fieldbyname('CSTCOFINS_SuspensaoEnt').AsBoolean         then mCST := '0+SUS';  // 72.
        if tOpFiscal.fieldbyname('CSTCOFINS_AliquotaZero').AsBoolean or tProdutos.fieldbyname('CSTCOFINS_AliquotaZeroEnt').AsBoolean   then mCST := '0+A0';   // 73.
        if tOpFiscal.fieldbyname('CSTCOFINS_SemIncidencia').AsBoolean or tProdutos.fieldbyname('CSTCOFINS_SemIncidenciaEnt').AsBoolean then mCST := '0+SINC'; // 74.
        if tOpFiscal.fieldbyname('CSTCOFINS_Outras').AsBoolean or tProdutos.fieldbyname('CSTCOFINS_OutrasEnt').AsBoolean               then mCST := '0+O';    // Outras.
     end;
     // SAÍDA.
     if tOpFiscal.fieldbyname('ES').AsInteger = 1 then begin
        if (tProdutos.fieldbyname('Aliquota_COFINSSaida').asfloat > 0) and (tProdutos.fieldbyname('Aliquota_COFINSSaida').asfloat  = tTabPISCOFINS.fieldbyname('Saida').asfloat) then mCST := '1+B';
        if (tProdutos.fieldbyname('Aliquota_COFINSSaida').AsFloat > 0) and (tProdutos.fieldbyname('Aliquota_COFINSSaida').AsFloat <> tTabPISCOFINS.fieldbyname('Saida').Value)  then  mCST := '1+D';
        if tOpFiscal.fieldbyname('CSTCOFINS_AliquotaUM').AsBoolean or tProdutos.fieldbyname('CSTCOFINS_AliquotaUM').AsBoolean       then mCST := '1+UM';
        if tOpFiscal.fieldbyname('CSTCOFINS_Monofasica').AsBoolean or tProdutos.fieldbyname('CSTCOFINS_Monofasica').AsBoolean       then mCST := '1+MONO+A0';
        if tNCM.fieldbyname('PIS_ST').asboolean and tDestinatario.fieldbyname('Varejista').AsBoolean                                     then mCST := '1+ST';
        if tOpFiscal.fieldbyname('CSTCOFINS_AliquotaZero').AsBoolean  or tProdutos.fieldbyname('CSTCOFINS_AliquotaZero').AsBoolean  then mCST := '1+A0';
        if tOpFiscal.fieldbyname('CSTCOFINS_Isenta').AsBoolean        or tProdutos.fieldbyname('CSTCOFINS_Isenta').AsBoolean        then mCST := '1+ISE';
        if tOpFiscal.fieldbyname('CSTCOFINS_SemIncidencia').AsBoolean or tProdutos.fieldbyname('CSTCOFINS_SemIncidencia').AsBoolean then mCST := '1+SINC';
        if tOpFiscal.fieldbyname('CSTCOFINS_Suspensao').AsBoolean     or tProdutos.fieldbyname('CSTCOFINS_Suspensao').AsBoolean     then mCST := '1+SUS';
        if tOpFiscal.fieldbyname('CSTCOFINS_Outras').AsBoolean        or tProdutos.fieldbyname('CSTCOFINS_Outras').AsBoolean        then mCST := '1+O';
     end;
     with tCST do begin
          sql.clear;
          sql.add('select Codigo from CSTPIS where Classificacao = :pClass');
          parambyname('pClass').Value := mCST;
          open;
          result := fieldbyname('Codigo').AsString;
     end;
     tOpFiscal.free;
     tProdutos.free;
     tNCM.free;
     tCST.free;
     tDestinatario.free;
     tTabPISCOFINS.Free
end;

function PegaCSTICMS(TabItens: TFDQuery; pOper, pProd, pRegTrib, pDest: Integer): string;
var
   mCST: string;
   tOpFiscal
  ,tProdutos
  ,tNCM
  ,tCST
  ,tDestinatario
  ,tProcesso
  ,tICMSB: TFDQuery;
begin
     tCST            := TFDQuery.create(nil);
     tCST.Connection := uniMainModule.Conecta;
     
     tOpFiscal := TFDQuery.create(nil);
     with tOpFiscal do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Finalidade_Mercadoria');
          sql.add('      ,Destino_Origem');
          sql.add('      ,ES');
          sql.add('      ,Isencao_ICMS');
          sql.Add('      ,Nao_Tributada_ICMS');
          sql.Add('      ,Suspensao_ICMS');
          sql.Add('      ,Diferido_ICMS');
          sql.add('      ,Imune_ICMS');
          sql.add('      ,Monofasico_Comb');
          sql.Add('      ,Monofasico_CombRetencao');
          sql.Add('      ,Monofasico_CombDiferido');
          sql.Add('      ,Monofasico_CombAnterior');
          sql.add('      ,Movimenta_Estoque');
          sql.add('      ,Movimenta_EstoqueRep');
          sql.add('      ,Movimenta_EstoqueInd');
          sql.add('      ,Movimenta_Inventario');
          sql.add('      ,CSOSN_Saida');
          sql.add('      ,Complementar');
          sql.add('from OperacaoFiscal');
          sql.add('where Codigo = :pCodigo');
          parambyname('pCodigo').asinteger := pOper;
          open;
     end;
     tProdutos := TFDQuery.create(nil);
     with tProdutos do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,NCM');
          sql.add('      ,ICMS_ForaEstadoEnt');
          sql.add('      ,ICMS_ForaEstadoSai');
          sql.add('      ,ICMS_DentroEstadoEnt');
          sql.add('      ,ICMS_DentroEstadoSai');
          sql.add('      ,ICMS_DentroEstadoSimples');
          sql.add('      ,CSTICMS_Entrada');
          sql.add('      ,CSTICMS_Saida');
          sql.add('from Produtos');
          sql.Add('where Codigo = :pProd');
          parambyname('pProd').asinteger := pProd;
          open;
     end;
     tDestinatario := TFDQuery.create(nil);
     with tDestinatario do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select Estado');
          sql.Add('      ,Consumidor_Final');
          sql.Add('      ,Simples_Nacional');
          sql.Add('from Destinatarios where Codigo = :pDest');
          parambyname('pDest').Value := pDest;
          open;
     end;
     tNCM:= TFDQuery.create(nil);
     with tNCM do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select CodigoTrib_TabA');
          sql.add('      ,CodigoTrib_TabA2');
          sql.add('      ,CodigoTrib_TabA3');
          sql.add('      ,Codigo_CredPres');
          sql.add('      ,ICMS_Isento');
          sql.Add('      ,ICMS_Imune');
          sql.add('      ,ICMS_Suspensao');
          sql.add('      ,Modalidade_BCICMS');
          sql.add('      ,Modalidade_BCICMSST');
          sql.add('      ,CEST');
          sql.add('from NCM');
          sql.Add('where NCM = :pNCM');
          ParamByName('pNCM').value := tProdutos.fieldbyname('NCM').AsString;
          open;
     end;
     tICMSB := TFDQuery.create(nil);
     with tICMSB do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select ST = isnull(ST, 0)');
          sql.add('      ,ICMS = isnull(ICMS, 0)');
          sql.add('      ,MVA_Imp = isnull(MVA_Imp, 0)');
          sql.add('      ,MVA_Nac = isnull(MVA_Nac, 0)');
          sql.add('      ,Reducao_BCICMSOp = isnull(Reducao_BCICMSOp, 0)');
          sql.Add('      ,Reducao_BCICMSOp2 = isnull(Reducao_BCICMSOp2, 0)');
          sql.Add('      ,Reducao_BCICMSST = isnull(Reducao_BCICMSST, 0)');
          sql.Add('from NCMICMS');
          sql.add('where NCM = :pNCM');
          sql.add('and Estado = :pEst');
          sql.add('union all');
          sql.add('select ST = cast(0 as float)');
          sql.add('      ,ICMS = cast(0 as float)');
          sql.add('      ,MVA_Imp = cast(0 as float)');
          sql.add('      ,MVA_Nac = cast(0 as float)');
          sql.add('      ,Reducao_BCICMSOp = cast(0 as float)');
          sql.Add('      ,Reducao_BCICMSOp2 = cast(0 as float)');
          sql.Add('      ,Reducao_BCICMSST = cast(0 as float)');
          sql.add('where not exists(select NCM from NCMICMS where NCM = :pNCM and Estado = :pEst)');
          parambyname('pNCM').value := tProdutos.fieldbyname('NCM').AsString;
          parambyname('pEst').value := tDestinatario.fieldbyname('Estado').AsString;
          open;
     end;
     tProcesso := TFDQuery.create(nil);
     with tProcesso do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select ICMS_Diferido from ProcessosImp where Processo = :pProc');
          parambyname('pProc').Value := TabItens.FieldByName('Processo').AsString;
          open;
     end;
     // CST ICMS Operacional.
     mCST := '';
     if pRegTrib = 3 then begin
        // Empresas optantes do Regime normal.
        if TabItens.fieldbyname('Valor_ICMSOp').Value <> 0 then // ICMS Operacional.
           mCST := mCST + '+O'
        else         
           mCST := mCST + '-O';
        if (Int(TabItens.fieldbyname('Valor_BCICMSOp').Value) < Int(TabItens.fieldbyname('Valor_Produtos').Value)) and (TabItens.fieldbyname('Valor_BCICMSOp').Value > 0) then
           mCST := mCST + '+R'
        else
           mCST := mCST + '-R';
        if tOpFiscal.fieldbyname('ES').Value = 0 then begin
           mCST := mCST + '-S';     // ICMS ST na Entrada.
        end else begin
           if (tICMSB.FieldByName('ICMS').AsFloat <> 0) and (TabItens.FieldByName('Valor_ICMSSub').ascurrency <> 0) then
              mCST := mCST + '+S'
           else
              mCST := mCST + '-S';  // ICMS ST na Saida.
        end;
        if tOpFiscal.fieldbyname('Isencao_ICMS').AsBoolean or tNCM.FieldByName('ICMS_Isento').AsBoolean      then mCST := '+I';
        if tOpFiscal.fieldbyname('Nao_Tributada_ICMS').asboolean                                             then mCST := '+NT';
        if tOpFiscal.fieldbyname('Suspensao_ICMS').AsBoolean or tNCM.FieldByName('ICMS_Suspensao').AsBoolean then mCST := '+SUS';
        if tProcesso.fieldbyname('ICMS_Diferido').asboolean and (tOpFiscal.fieldbyname('ES').Value = 0)      then mCST := '+D';
        if tOpFiscal.fieldbyname('Diferido_ICMS').AsBoolean                                                  then mCST := '+D';
        if TabItens.FieldByName('ICMSST_Anterior').asboolean                                                 then mCST := mCST + '+SD';
        // CST para Detalhe especifico combustivel.
        if tOpFiscal.fieldbyname('ES').AsInteger = 0 then begin
           if tProdutos.FieldByName('CSTICMS_Entrada').asstring <> '' then mCST := tProdutos.FieldByName('CSTICMS_Entrada').AsString;
        end else begin
           if tProdutos.FieldByName('CSTICMS_Saida').asstring <> '' then mCST := tProdutos.FieldByName('CSTICMS_Saida').AsString;
        end;
        if tOpFiscal.fieldbyname('Monofasico_Comb').asboolean         then mCST := '02';
        if tOpFiscal.fieldbyname('Monofasico_CombRetencao').asboolean then mCST := '15';
        if tOpFiscal.fieldbyname('Monofasico_CombDiferido').asboolean then mCST := '53';
        if tOpFiscal.fieldbyname('Monofasico_CombAnterior').asboolean then mcst := '61';
     end else begin
        // Empresas optantes do Regime do Simples Nacional.
        if tOpFiscal.fieldbyname('ES').asinteger = 1 then begin
           if (tICMSB.FieldByName('ICMS').AsFloat = 0) and not tDestinatario.fieldbyname('Consumidor_Final').AsBoolean and not tDestinatario.FieldByName('Simples_Nacional').AsBoolean then mCST := '101'
        end;
        if tOpFiscal.fieldbyname('Saida_Entrada').asinteger = 0 then begin
           if tICMSB.FieldByName('ICMS').AsFloat = 0 then mCST := '102'
        end else begin
           if (tNCM.FieldByName('ICMS').AsFloat = 0) and (tDestinatario.fieldbyname('Consumidor_Final').AsBoolean or tDestinatario.fieldbyname('Simples_Nacional').AsBoolean) then mCST := '102'
        end;
        if tOpFiscal.fieldbyname('Isencao_ICMS').AsBoolean or tNCM.FieldByName('ICMS_Isento').AsBoolean then begin
           if tOpFiscal.FieldByName('ES').AsInteger = 0 then begin         // NF de Entrada.
              if tICMSB.FieldByName('ICMS').AsFloat = 0 then mCST := '103'
           end else begin                                                  // NF de Saída.
              if tICMSB.FieldByName('ICMS').AsFloat = 0 then mCST := '103'
           end;
        end;
        if tOpFiscal.fieldbyname('Saida_Entrada').Value = 1 then begin
           if (tICMSB.FieldByName('ICMS').AsFloat > 0) and (not tDestinatario.fieldbyname('Consumidor_Final').AsBoolean and not tDestinatario.fieldbyname('Simples_Nacional').AsBoolean) then mCST := '201'
        end;
        if tOpFiscal.fieldbyname('Saida_Entrada').Value = 0 then begin
           if (tICMSB.FieldByName('ICMS').AsFloat > 0) then mCST := '202'
        end else begin
           if (tICMSB.FieldByName('ICMS').AsFloat > 0) and (tDestinatario.fieldbyname('Consumidor_Final').AsBoolean) or (tDestinatario.fieldbyname('Simples_Nacional').AsBoolean) then mCST := '202'
        end;
        if (tOpFiscal.fieldbyname('Isencao_ICMS').AsBoolean) or (tNCM.FieldByName('ICMS_Isento').AsBoolean) then begin
           if tOpFiscal.FieldByName('ES').AsInteger = 0 then begin         // NF de Entrada.
              if tICMSB.FieldByName('ICMS').AsFloat > 0 then mCST := '203'
           end else begin                                                  // NF de Saída.
              if tICMSB.FieldByName('ICMS').AsFloat > 0 then mCST := '203'
           end;
        end;
        if tOpFiscal.fieldbyname('Imune_ICMS').AsBoolean or tNCM.fieldbyname('ICMS_Imune').AsBoolean then mCST := '300';
        if tOpFiscal.fieldbyname('Nao_Tributada_ICMS').AsBoolean then mCST := '400';
        if TabItens.FieldByName('ICMSST_Anterior').asboolean     then mCST := mCST + '500';
        if tOpFiscal.fieldbyname('Diferido_ICMS').asboolean      then mCST := '900';
        if tOpFiscal.FieldByName('ES').AsInteger = 0 then begin
           if Trim(tOpFiscal.fieldbyname('CSOSN_Entrada').AsString) <> '' then begin
              mCST := Trim(tOpFiscal.fieldbyname('CSOSN_Entrada').AsString);
           end;
        end else begin
           if Trim(tOpFiscal.fieldbyname('CSOSN_Saida').AsString) <> '' then begin
              mCST := Trim(tOpFiscal.fieldbyname('CSOSN_Saida').AsString);
           end;
        end;
        if tOpFiscal.fieldbyname('Monofasico_Comb').asboolean         then MCST := '02';
        if tOpFiscal.fieldbyname('Monofasico_CombRetencao').asboolean then MCST := '15';
        if tOpFiscal.fieldbyname('Monofasico_CombDiferido').asboolean then MCST := '53';
        if tOpFiscal.fieldbyname('Monofasico_CombAnterior').asboolean then MCST := '61';
     end;
     with tCST do begin
          sql.clear;
          sql.add('select Codigo from CSTICMSTabB where Classificacao = :pClass');
          parambyname('pClass').Value := mCST;
          open;
          result := fieldbyname('Codigo').AsString;
     end;
     tOpFiscal.free;
     tProdutos.free;
     tNCM.free;
     tCST.free;
     tDestinatario.free;
     tProcesso.free;
     tICMSB.free;
end;

function PegaCSTCBS(TabItens: TFDQuery; pOper, pProd: Integer): string;
var
   mCST: string;
   tNCM
  ,tCST
  ,tOpFiscal: TFDQuery;
begin
     tCST            := TFDQuery.create(nil);
     tCST.Connection := uniMainModule.Conecta;

     tOpFiscal := TFDQuery.create(nil);
     with tOpFiscal do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select CBS_Diferido');
          sql.Add('      ,CBS_Imunidade');
          sql.add('      ,CBS_Isencao');
          sql.Add('      ,CBS_Suspensao');
          sql.add('from OperacaoFiscal');
          sql.add('where Codigo = :pCodigo');
          parambyname('pCodigo').asinteger := pOper;
          open;
     end;
     tNCM := TFDQuery.create(nil);
     with tNCM do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.Add('select CBS_Diferido');
          sql.Add('      ,CBS_Imunidade');
          sql.add('      ,CBS_Isencao');
          sql.Add('      ,CBS_Suspensao');
          sql.add('from NCM');
          sql.Add('where NCM = :pNCM');
          ParamByName('pNCM').value := TabItens.fieldbyname('NCM').AsString;
          open;
     end;
     // CST DO CBS.
     mCST := 'T+I';
     with tOpFiscal do begin 
          if TabItens.fieldbyname('Valor_CBS').Value > 0 then mCST := 'T+I';
          if fieldbyname('CBS_Isencao').AsBoolean        then mCST := 'IS';
          if fieldbyname('CBS_Imunidade').asboolean      then mCST := 'I+N+I';
          if fieldbyname('CBS_Suspensao').asboolean      then mCST := 'S';
          if fieldbyname('CBS_Diferido').AsBoolean       then mCST := 'D';
     end;
     with tNCM do begin
          if fieldbyname('CBS_Isencao').AsBoolean   then mCST := 'IS';
          if fieldbyname('CBS_Imunidade').asboolean then mCST := 'I+N+I';
          if fieldbyname('CBS_Suspensao').asboolean then mCST := 'S';
          if fieldbyname('CBS_Diferido').AsBoolean  then mCST := 'D';
     end;
     with tCST do begin
          sql.Clear;
          sql.add('select Codigo from CSTCBS where Classificacao = :pCST');
          parambyname('pCST').value := mCST;
          open;
          if recordcount <> 0 then
             result := fieldbyname('Codigo').AsString
          else   
             result := '';
     end;
     tNCM.free;
     tCST.free;
     tOpFiscal.Free;
end;

function PegaCSTIBS(TabItens: TFDQuery; pOper, pProd: Integer): string;
var
   mCST: string;
   tNCM
  ,tCST
  ,tOpFiscal: TFDQuery;
begin
     tCST            := TFDQuery.create(nil);
     tCST.Connection := uniMainModule.Conecta;

     tOpFiscal := TFDQuery.create(nil);
     with tOpFiscal do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.add('select IBS_Diferido');
          sql.Add('      ,IBS_Imunidade');
          sql.add('      ,IBS_Isencao');
          sql.Add('      ,IBS_Suspensao');
          sql.add('from OperacaoFiscal');
          sql.add('where Codigo = :pCodigo');
          parambyname('pCodigo').asinteger := pOper;
          open;
     end;
     tNCM := TFDQuery.create(nil);
     with tNCM do begin
          Connection := uniMainModule.Conecta;
          sql.clear;
          sql.Add('select IBS_Diferido');
          sql.Add('      ,IBS_Imunidade');
          sql.add('      ,IBS_Isencao');
          sql.Add('      ,IBS_Suspensao');
          sql.add('from NCM');
          sql.Add('where NCM = :pNCM');
          ParamByName('pNCM').value := TabItens.fieldbyname('NCM').AsString;
          open;
     end;
     // CST DO CBS.
     mCST := 'T+I';
     with tOpFiscal do begin 
          if TabItens.fieldbyname('Valor_IBS').Value > 0 then mCST := 'T+I';
          if fieldbyname('IBS_Isencao').AsBoolean        then mCST := 'IS';
          if fieldbyname('IBS_Imunidade').asboolean      then mCST := 'I+N+I';
          if fieldbyname('IBS_Suspensao').asboolean      then mCST := 'S';
          if fieldbyname('IBS_Diferido').AsBoolean       then mCST := 'D';
     end;
     with tNCM do begin
          if fieldbyname('IBS_Isencao').AsBoolean   then mCST := 'IS';
          if fieldbyname('IBS_Imunidade').asboolean then mCST := 'I+N+I';
          if fieldbyname('IBS_Suspensao').asboolean then mCST := 'S';
          if fieldbyname('IBS_Diferido').AsBoolean  then mCST := 'D';
     end;
     with tCST do begin
          sql.Clear;
          sql.add('select Codigo from CSTIBS where Classificacao = :pCST');
          parambyname('pCST').value := mCST;
          open;
          if recordcount <> 0 then
             result := fieldbyname('Codigo').AsString
          else   
             result := '';
     end;
     tNCM.free;
     tCST.free;
     tOpFiscal.Free;
end;

function GetDLLPath: string;
var
  Buffer: array[0..MAX_PATH] of Char;
begin
  // Obtém o handle da DLL atual
  GetModuleFileName(HInstance, Buffer, Length(Buffer));
  Result := ExtractFilePath(Buffer);
end;

function VersaoExe(pEXE:String): String;
type
    PFFI = ^vs_FixedFileInfo;
var
    F       : PFFI;
    Handle  : Dword;
    Len     : Longint;
    Data    : Pchar;
    Buffer  : Pointer;
    Tamanho : Dword;
    pArquivo: Pchar;
begin
      pArquivo := StrAlloc(Length(pEXE) + 1);
      StrPcopy(PArquivo, pEXE);
      Len    := GetFileVersionInfoSize(pArquivo, Handle);
      Result := '';

      If Len > 0 then begin
         Data := StrAlloc(Len+1);
         If GetFileVersionInfo(pArquivo,Handle,Len,Data) then begin
            VerQueryValue(Data, '\',Buffer,Tamanho);
            F      := PFFI(Buffer);
            Result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs), LoWord(F^.dwFileVersionMs), HiWord(F^.dwFileVersionLs), Loword(F^.dwFileVersionLs)]);
         End;
         StrDispose(Data);
      End;
      StrDispose(pArquivo);
end;

{ Gera o número do processo de importação. }
Function GeraProcPO(Empresa: string; Cliente: integer; ProcPO: string): String;
var
   mAno
  ,Mascara
  ,Forma: string;
   DigitosAno
  ,Numero: integer;
   tEmpresa,
   tConfig: TFDQuery;
begin
     tEmpresa            := TFDQuery.Create(nil);
     tEmpresa.Connection := uniMainModule.Conecta;
     with tEmpresa do begin
          sql.clear;
          sql.add('select Mascara_Processo, Processo, Mascara_PO, PO, Mascara_Cliente = (select Mascara_Processo from Destinatarios where Codigo = :pCliente) from Empresas where CNPJ = :pEmpresa');
          parambyname('pEmpresa').value := Empresa;
          parambyname('pCliente').value := Cliente;
          open;
          if ProcPO = 'PR' then begin
             Mascara := iif(trim(fieldbyname('Mascara_Processo').asstring) <> '', fieldbyname('Mascara_Processo').asstring, fieldbyname('Mascara_Cliente').asstring);
             Numero  := fieldbyname('Processo').asinteger+1;
          end else begin
             Mascara  := fieldbyname('Mascara_PO').asstring;
             Numero := fieldbyname('PO').asinteger+1;
          end;
     end;
     tConfig            := TFDQuery.Create(nil);
     tConfig.Connection := uniMainModule.Conecta;
     with tConfig do begin
          sql.clear;
          sql.add('select Processo_Numero, Processo_DigitosAno from Config where Empresa = :pEmpresa');
          parambyname('pEmpresa').value := Empresa;
          open;
          Forma      := fieldbyname('Processo_Numero').asstring;
          DigitosAno := fieldbyname('Processo_DigitosAno').asinteger;
     end;
     if DigitosAno = 4 then begin
        mAno    := InttoStr(YearOf(Date));
        Mascara := Copy(Mascara, 1, 5);
     end else begin
        mAno    := Copy(InttoStr(YearOf(Date)),3,2);
        Mascara := Copy(Mascara, 1, 7);
     end;
     // Mascara + Número.
     if (Forma = 'MN') or (Forma = '')  then begin
        if Trim(Mascara) <> '' then 
           Result := Trim(Mascara) + ' ' + Format('%4.4d',[Numero])
        else 
           Result := Trim(Mascara) + ' ' + InttoStr(Numero);
     end;
     // Mascara + Número + Ano.
     if Forma = 'MNA' then 
        Result := Trim(Mascara) + ' ' + Format('%4.4d',[Numero]) + '/' + mAno;
     // Mascara + Ano + Número.
     if Forma = 'MAN' then 
        Result := Trim(Mascara) + ' ' + mAno + '/' + Format('%4.4d',[Numero]);
     // Número + Ano + Mascara.
     if Forma = 'NAM' then 
        Result := Format('%4.4d',[Numero]) + '/' + mAno + ' ' + Trim(Mascara);
     // Ano + Número + Mascara.
     if Forma = 'ANM' then 
        Result := mAno + '/' + Format('%4.4d',[Numero]) +  ' ' + Trim(Mascara);
     // Mascara + Referencia do Navio + BL
     if Forma = 'MNB' then 
        Result := concat(Mascara, inttostr(Numero), ' - BL', inttostr(yearof(Date)) );
        
     Result := Trim(Result);
end;

// Substitui texto informado dentro de outro.
function RemoveCaracter(PesquisarPor, TrocarPor : String; Texto :String):String;
var
   mPosicao     :Integer;
   mTamanho     :Integer;
   TempStr      :String;
   TempOriginal :String;
begin
    mTamanho     := Length(PesquisarPor);
    TempOriginal := Texto;
    TempStr      := '';
    Repeat
          mPosicao := Pos(PesquisarPor, TempOriginal);
          If (mPosicao <> 0) then begin
             TempStr      := TempStr + Copy(TempOriginal, 1, mPosicao-1);
             TempStr      := TempStr + TrocarPor;
             TempOriginal := Copy( TempOriginal, mPosicao+mTamanho, Length(TempOriginal) );
          End else begin
             Tempstr := Tempstr + TempOriginal;
          End;
    Until (mPosicao = 0);

    Result := Tempstr;
end;

function ImportaEXCEL(xStringGrid: TuniStringGrid; xFileXLS: string; NomeAba: TuniPageControl; Aba, lIni, lFim:Integer; Titulo:Boolean): Boolean;
const
    xlCellTypeLastCell = $0000000B;
var
    XLSAplicacao, AbaXLS: OLEVariant;
    RangeMatrix: Variant;
    mLinTot, mColTot, mColPL, mLinPL, mColGr, mLinGr: Integer;
begin
      Result := False;
      // Cria Excel- OLE Object.
      XLSAplicacao := CreateOleObject('Excel.Application');

      try
         // Esconde Excel.
         XLSAplicacao.Visible := False;

         // Abre o Workbook.
         XLSAplicacao.Workbooks.Open(xFileXLS);

         {Selecione aqui a aba que você deseja abrir primeiro - 1,2,3,4....}
         XLSAplicacao.WorkSheets[Aba].Activate;

         {Selecione aqui a aba que você deseja ativar - começando sempre no 1 (1,2,3,4) }
         AbaXLS := XLSAplicacao.Workbooks[ExtractFileName(xFileXLS)].WorkSheets[Aba];
         AbaXLS.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;

         //NomeAba.Pages[Aba-1].Caption := XLSAplicacao.Sheets[Aba].name.

         // Pegar o número da última linha.
         mLinTot := XLSAplicacao.ActiveCell.Row+1;

         // Pegar o número da última coluna.
         mColTot := XLSAplicacao.ActiveCell.Column;

         // Seta xStringGrid linha e coluna.
         XStringGrid.RowCount := mLinTot;
         XStringGrid.ColCount := mColTot;

         // Associaca a variant WorkSheet com a variant do Delphi.
         RangeMatrix := XLSAplicacao.Range['A1', XLSAplicacao.Cells.Item[mLinTot, mColTot]].Value;

         // Cria o loop para listar os registros no TStringGrid.
         if Titulo then
            mLinGr := 1
         else
            mLinGr := 2;

         mLinPL := lIni;
         repeat
              mColGr := 0;
              for mColPL := 1 to mColTot do begin
                  xStringGrid.Cells[mColGr, mLinGr] := RangeMatrix[mLinPL, mColPL];
                  inc(mColGr);
              end;
              inc(mLinGr);
              Inc(mLinPL);
         until mLinPL > mLinTot;

         RangeMatrix := Unassigned;
      finally
         // Fecha o Microsoft Excel.
         if not VarIsEmpty(XLSAplicacao) then begin
            XLSAplicacao.Quit;
            XLSAplicacao := Unassigned;
            AbaXLS       := Unassigned;
            Result       := True;
         end;
      end;
end;

// Coloca todos os componentes do FORM informado para read only;
procedure AtivaPanel(aParent: TUniControl; aValue: Boolean);
var
  i: Integer;
  c: TComponent;
begin
     for i := 0 to Pred(aParent.ControlCount) do begin
         c := aParent.Controls[i];
         if IsPublishedProp(c, 'ReadOnly') then SetOrdProp(c, 'ReadOnly', Ord(aValue));
         // Corrige o LookupCombo ao voltar edição
         if (c is TUniDBLookupComboBox) and (not aValue) then begin
            TUniDBLookupComboBox(c).JSInterface.JSCall('setEditable',[True]);
         end;
         if c is TUniControl then AtivaPanel(TUniControl(c), aValue);
     end;
end;

function SomaData(Data: TSQLTimeStamp; Dias: Integer): TSQLTimeStamp;
begin
     Result := DateTimeToSQLTimeStamp(IncDay(SQLTimeStampToDateTime(Data), Dias));
end;


//===================================================================================================================================================================================================
{
procedure AtualizaInv(pCodigos:string);
Var
   mSalAnt,
   mTotAnt: Real;
   mItem,
   mCod:integer;
   tAltera,
   tRegistro,
   tSaldo:TMSQuery;
begin
      Screen.Cursor := crSQLWait;

      with Dados, dmFiscal do begin
           tAltera              := TMSQuery.Create(nil);
           tSaldo               := TMSQuery.Create(nil);
           tRegistro            := TMSQuery.Create(nil);
           tAltera.Connection   := Banco_Empresas;
           tSaldo.Connection    := Banco_Empresas;
           tRegistro.Connection := Banco_Empresas;

           //----------------------------------------------------------[ MONTAGEM DA FICHA DE INVENTARIO ]-------------------------------------------------------
           TempFichaInv.SQL.Clear;
           TempFichaInv.SQL.Add('-- NOTAS DE ENTRADA PROPRIA -- ');
           TempFichaInv.SQL.Add('If (SELECT COUNT(*) FROM SYSOBJECTS WHERE XTYPE = ''U'' and NAME  = ''TempFichaInv'') > 0');
           TempFichaInv.SQL.Add('   TRUNCATE TABLE TempFichaInv');
           TempFichaInv.SQL.Add('ELSE ');
           TempFichaInv.SQL.Add('   SELECT * INTO TempFichaInv FROM FichaInventario WHERE Registro > (SELECT MAX(Registro) FROM FichaInventario)');
           TempFichaInv.SQL.Add('SELECT MIN(Data_Emissao) AS Data');
           TempFichaInv.SQL.Add('INTO #TEMPDT');
           TempFichaInv.SQL.Add('FROM NotasFiscais WHERE isnull(Cancelada, 0) = 0 and isnull(Nfe_Denegada, 0) = 0');
           TempFichaInv.SQL.Add('UNION ALL');
           TempFichaInv.SQL.Add('SELECT MIN(Data_Entrada) AS Data');
           TempFichaInv.SQL.Add('FROM NotasTerceiros');
           TempFichaInv.SQL.Add('WHERE isnull(Provisoria, 0) <> 1');
           TempFichaInv.SQL.Add('UNION ALL');
           TempFichaInv.SQL.Add('SELECT MIN(Data_Transferencia) AS Data');
           TempFichaInv.SQL.Add('FROM ProdutosTransferencia');
           TempFichaInv.SQL.Add('DELETE FROM #TEMPDT WHERE Data IS NULL');
           TempFichaInv.SQL.Add('DECLARE  @Menor_Data datetime');
           TempFichaInv.SQL.Add('        ,@Maior_Data datetime');
           TempFichaInv.SQL.Add('SET @Menor_Data = (SELECT MIN(Data) FROM #TEMPDT)');
           TempFichaInv.SQL.Add('SET @Maior_Data = GETDATE()');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaInv.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaInv.SQL.Add('       ,UM                  = Unidade_Medida ');
           TempFichaInv.SQL.Add('       ,NCM                 = NCM');
           TempFichaInv.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Estoque             = CASE isnull(Finalidade_Mercadoria, 0)');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Nota ');
           TempFichaInv.SQL.Add('       ,Data');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Fornecedor_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           TempFichaInv.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaInv.SQL.Add('       ,Processo');
           TempFichaInv.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = CASE WHEN isnull((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           TempFichaInv.SQL.Add('                                   Quantidade');
           TempFichaInv.SQL.Add('                              ELSE');
           TempFichaInv.SQL.Add('                                   0');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 4) ');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''NFP'' ');
           TempFichaInv.SQL.Add('INTO   #TEMP ');
           TempFichaInv.SQL.Add('FROM   NotasItens NI ');
           TempFichaInv.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and Saida_Entrada = 0');
           TempFichaInv.SQL.Add('  and Valor_Unitario > 0');
           TempFichaInv.SQL.Add('  and isnull(NI.Cancelada, 0)     <> 1 ');
           TempFichaInv.SQL.Add('  and isnull(NI.Nfe_Denegada, 0)  <> 1 ');
           TempFichaInv.SQL.Add('  and (isnull(Movimenta_Inventario, 0) = 1 OR isnull((SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota and NF.Data_Emissao = Data and NF.Saida_Entrada = Saida_Entrada and Valor_Unitario > 0), 0) = 1)');
           TempFichaInv.SQL.Add('-- NOTAS DE SAÍDA -- ');
           TempFichaInv.SQL.Add('UNION ALL ');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaInv.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaInv.SQL.Add('       ,UM                  = Unidade_Medida ');
           TempFichaInv.SQL.Add('       ,NCM                 = NCM');
           TempFichaInv.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Estoque             = CASE isnull(Finalidade_Mercadoria, 0)');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Nota');
           TempFichaInv.SQL.Add('       ,Data');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Cliente_Codigo    FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaInv.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           TempFichaInv.SQL.Add('       ,ES                  = ''S'' ');
           TempFichaInv.SQL.Add('       ,Processo');
           TempFichaInv.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = CASE WHEN isnull((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           TempFichaInv.SQL.Add('                                   Quantidade');
           TempFichaInv.SQL.Add('                              ELSE');
           TempFichaInv.SQL.Add('                                   0');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''NFP'' ');
           TempFichaInv.SQL.Add('FROM   NotasItens NI ');
           TempFichaInv.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and Saida_Entrada = 1 ');
           TempFichaInv.SQL.Add('  and isnull(NI.Cancelada, 0)     <> 1 ');
           TempFichaInv.SQL.Add('  and isnull(NI.Nfe_Denegada, 0)  <> 1 ');
           TempFichaInv.SQL.Add('  and isnull(Movimenta_Inventario, 0) = 1 ');
           TempFichaInv.SQL.Add('  and Valor_Unitario > 0');
           TempFichaInv.SQL.Add('  and (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota and NF.Data_Emissao = Data and NF.Saida_Entrada = Saida_Entrada) <> 1');
           TempFichaInv.SQL.Add('-- SALDO DE ABERTURA DE ESTOQUE / TRANSFERÊNCIAS (ENTRADAS) -- ');
           TempFichaInv.SQL.Add('UNION ALL ');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Produto_Entrada ');
           TempFichaInv.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Entrada) AS VARCHAR(250))');
           TempFichaInv.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Entrada) ');
           TempFichaInv.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Entrada) ');
           TempFichaInv.SQL.Add('       ,CFOP                = null ');
           TempFichaInv.SQL.Add('       ,Historico           = CASE WHEN Motivo = ''A'' THEN');
           TempFichaInv.SQL.Add('                                   ''* SALDO DE ABERTURA DE ESTOQUE *''');
           TempFichaInv.SQL.Add('                              ELSE');
           TempFichaInv.SQL.Add('                                   ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *''');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('       ,Nota                = Registro');
           TempFichaInv.SQL.Add('       ,Data                = Data_Transferencia');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           TempFichaInv.SQL.Add('       ,Finalidade          = 0 ');
           TempFichaInv.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaInv.SQL.Add('       ,Processo_Entrada');
           TempFichaInv.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Entrada)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = Quantidade_Entrada ');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Unitario, 2) ');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Unitario, 2) * Quantidade_Entrada ');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float)');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''TRF'' ');
           TempFichaInv.SQL.Add('FROM   ProdutosTransferencia PT');
           TempFichaInv.SQL.Add('WHERE Produto_Entrada IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and Inventario = 1 ');
           TempFichaInv.SQL.Add('-- TRANSFERÊNCIAS DE SALDO DE ESTOQUE (SAÍDAS) --');
           TempFichaInv.SQL.Add('UNION ALL ');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Produto_Saida');
           TempFichaInv.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Saida) AS VARCHAR(250))');
           TempFichaInv.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Saida)');
           TempFichaInv.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Saida) ');
           TempFichaInv.SQL.Add('       ,CFOP                = null');
           TempFichaInv.SQL.Add('       ,Historico           = ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *'' ');
           TempFichaInv.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('       ,Nota                = Registro');
           TempFichaInv.SQL.Add('       ,Data                = Data_Transferencia');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           TempFichaInv.SQL.Add('       ,Finalidade          = 0');
           TempFichaInv.SQL.Add('       ,ES                  = ''S'' ');
           TempFichaInv.SQL.Add('       ,Processo_Saida');
           TempFichaInv.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Saida)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = Quantidade');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float)');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money)');
           TempFichaInv.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''TRF'' ');
           TempFichaInv.SQL.Add('FROM   ProdutosTransferencia PT');
           TempFichaInv.SQL.Add('WHERE Produto_Saida IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and Inventario = 1');
           TempFichaInv.SQL.Add('  and Motivo  = ''TRF'' ');
           TempFichaInv.SQL.Add('-- NOTA DE ENTRADA DE TERCEIROS ');
           TempFichaInv.SQL.Add('UNION ALL ');
           TempFichaInv.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaInv.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaInv.SQL.Add('       ,UM                  = Unidade_Medida');
           TempFichaInv.SQL.Add('       ,NCM                 = NCM');
           TempFichaInv.SQL.Add('       ,CFOP                = Natureza_Codigo ');
           TempFichaInv.SQL.Add('       ,Historico           = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''COMPRA - REVENDA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''COMPRA - CONSUMO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''COMPRA - IMOBILIZADO'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Estoque             = CASE isnull((SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal), 0)');
           TempFichaInv.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaInv.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaInv.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaInv.SQL.Add('                              END');
           TempFichaInv.SQL.Add('       ,Nota ');
           TempFichaInv.SQL.Add('       ,Data                = Data_Entrada');
           TempFichaInv.SQL.Add('       ,Destinatario_Codigo = Fornecedor ');
           TempFichaInv.SQL.Add('       ,Destinatario_Nome   = (SELECT Nome FROM Fornecedores WHERE Codigo = Fornecedor) ');
           TempFichaInv.SQL.Add('       ,Destinatario_CNPJ   = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor) ');
           TempFichaInv.SQL.Add('       ,Finalidade          = (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) ');
           TempFichaInv.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaInv.SQL.Add('       ,Processo');
           TempFichaInv.SQL.Add('       ,Tipo_Processos      = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NTI.Processo)');
           TempFichaInv.SQL.Add('       ,Qtde_Entrada        = Quantidade ');
           TempFichaInv.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 2) ');
           TempFichaInv.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           TempFichaInv.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaInv.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaInv.SQL.Add('       ,Emissor             = ''T'' ');
           TempFichaInv.SQL.Add('       ,Origem              = ''NFT'' ');
           TempFichaInv.SQL.Add('FROM   NotasTerceirosItens NTI');
           TempFichaInv.SQL.Add('WHERE  Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaInv.SQL.Add('  and  Nota IS NOT NULL');
           TempFichaInv.SQL.Add('  and  NTI.Movimenta_Inventario = 1 ');
           TempFichaInv.SQL.Add('  and  (SELECT DISTINCT(Provisoria) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota and NT.Data_Emissao = NTI.Data_Emissao and NT.Fornecedor = NTI.Fornecedor) <> 1');
           TempFichaInv.SQL.Add('SELECT  Linha = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota)');
           TempFichaInv.SQL.Add('       ,Item  = ROW_NUMBER() OVER (PARTITION BY Codigo ORDER BY Data, ES, Nota)');
           TempFichaInv.SQL.Add('       ,*');
           TempFichaInv.SQL.Add('INTO #TEMP2');
           TempFichaInv.SQL.Add('FROM #TEMP');
           TempFichaInv.SQL.Add('ORDER BY Codigo, Data , ES');
           TempFichaInv.SQL.Add('-- ATUALIZANDO AS QUANTIDADE DOS SALDOS.');
           TempFichaInv.SQL.Add('UPDATE #TEMP2 SET Qtde_Saldo = CAST(');
           TempFichaInv.SQL.Add('                               isnull((SELECT SUM(Qtde_Entrada) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''E''), 0)');
           TempFichaInv.SQL.Add('                               - isnull((SELECT SUM(Qtde_Saida) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''S''), 0)');
           TempFichaInv.SQL.Add('                               + Qtde_Entrada');
           TempFichaInv.SQL.Add('                               - Qtde_Saida');
           TempFichaInv.SQL.Add('                               AS DECIMAL(14,3))');
           TempFichaInv.SQL.Add('-- ATUALIZANDO OS SALDOS DOS PRIMEIROS ITENS DE TODOS OS PRODUTOS.');
           TempFichaInv.SQL.Add('UPDATE #TEMP2 SET Total_Saldo    = Total_Entrada - Total_Saida');
           TempFichaInv.SQL.Add('                 ,Unitario_Saldo = CASE WHEN Qtde_Saldo > 0 THEN (Total_Entrada - Total_Saida) / Qtde_Saldo ELSE 0 END');
           TempFichaInv.SQL.Add('WHERE Item = 1');
           TempFichaInv.SQL.Add('INSERT INTO TempFichaInv');
           TempFichaInv.SQL.Add('            SELECT Registro = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota) ');
           TempFichaInv.SQL.Add('                  ,Item');
           TempFichaInv.SQL.Add('                  ,Codigo ');
           TempFichaInv.SQL.Add('                  ,NCM');
           TempFichaInv.SQL.Add('                  ,Descricao ');
           TempFichaInv.SQL.Add('                  ,UM ');
           TempFichaInv.SQL.Add('                  ,CFOP ');
           TempFichaInv.SQL.Add('                  ,Historico ');
           TempFichaInv.SQL.Add('                  ,Estoque ');
           TempFichaInv.SQL.Add('                  ,Emissor');
           TempFichaInv.SQL.Add('                  ,Origem');
           TempFichaInv.SQL.Add('                  ,Nota ');
           TempFichaInv.SQL.Add('                  ,Data ');
           TempFichaInv.SQL.Add('                  ,ES ');
           TempFichaInv.SQL.Add('                  ,Destinatario_Codigo ');
           TempFichaInv.SQL.Add('                  ,LTRIM(RTRIM(Destinatario_Nome))');
           TempFichaInv.SQL.Add('                  ,Destinatario_CNPJ ');
           TempFichaInv.SQL.Add('                  ,Finalidade ');
           TempFichaInv.SQL.Add('                  ,Processo ');
           TempFichaInv.SQL.Add('                  ,Tipo_Processo');
           TempFichaInv.SQL.Add('                  ,Qtde_Entrada ');
           TempFichaInv.SQL.Add('                  ,Unitario_Entrada ');
           TempFichaInv.SQL.Add('                  ,Total_Entrada ');
           TempFichaInv.SQL.Add('                  ,Qtde_Saida ');
           TempFichaInv.SQL.Add('                  ,Unitario_Saida ');
           TempFichaInv.SQL.Add('                  ,Total_Saida ');
           TempFichaInv.SQL.Add('                  ,Qtde_Saldo ');
           TempFichaInv.SQL.Add('                  ,Unitario_Saldo ');
           TempFichaInv.SQL.Add('                  ,Total_Saldo ');
           TempFichaInv.SQL.Add('            FROM  #TEMP2 ');
           TempFichaInv.SQL.Add('            ORDER BY Codigo, Data, ES, Nota ');
           TempFichaInv.SQL.Add('SELECT * FROM TempFichaInv ORDER BY Codigo, Item');
           TempFichaInv.SQL.Add('DROP TABLE #TEMP, #TEMP2, #TEMPDT');
           TempFichaInv.ParamByName('pCodEmpresa').AsInteger := Menu_Principal.mEmpresa;
           TempFichaInv.ParamByName('pNomeEmpresa').AsString := EmpresasRazao_Social.AsString;
           TempFichaInv.ParamByName('pCNPJEmpresa').AsString := EmpresasCNPJ.AsString;
           //TempFichaInv.SQL.SaveToFile('c:\temp\Funcoes_Ficha_Inventario.sql');
           TempFichaInv.Open;
           TempFichaInv.First;
           
           TempFichaInv.DisableControls;
           tAltera.DisableControls;

           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT Unitario_Saldo = isnull(Unitario_Saldo, 0)');
           tSaldo.SQL.Add('      ,Total_Saldo    = isnull(Total_Saldo, 0)');
           tSaldo.SQL.Add('FROM  FichaInventario WHERE Codigo = :pCodigo and Item = :pItem');
           tSaldo.ParamByName('pCodigo').AsInteger := TempFichaInv.FieldByName('Codigo').AsInteger;
           tSaldo.ParamByName('pItem').AsInteger   := TempFichaInv.FieldByName('Item').AsInteger-1;
           tSaldo.Open;

           mSalAnt := tSaldo.FieldByName('Unitario_Saldo').AsFloat;
           mTotAnt := tSaldo.FieldByName('Total_Saldo').AsFloat;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE TempFichaInv SET Total_Saldo    = :pTotalSaldo');
           tAltera.SQL.Add('                       ,Unitario_Saida = :pUniSaida');
           tAltera.SQL.Add('                       ,Total_Saida    = :pTotSaida');
           tAltera.SQL.Add('                       ,Unitario_Saldo = :pUniSaldo');
           tAltera.SQL.Add('WHERE Registro = :pRegistro and Item > 1');
           
           Janela_Processamento.Progresso.Max      := TempFichaInv.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Processando a ficha de inventario...';

           While not TempFichaInv.Eof do begin
                 tAltera.ParamByName('pUniSaida').AsFloat   := mSalAnt;
                 tAltera.ParamByName('pTotSaida').AsFloat   := mSalAnt * TempFichaInv.FieldByName('Qtde_Saida').AsFloat;
                 tAltera.ParamByName('pTotalSaldo').AsFloat := mTotAnt + TempFichaInv.FieldByName('Total_Entrada').AsFloat - (mSalAnt * TempFichaInv.FieldByName('Qtde_Saida').AsFloat);
                 If TempFichaInv.FieldByName('Qtde_Saldo').AsFloat > 0 then
                    tAltera.ParamByName('pUniSaldo').AsFloat := (mTotAnt + TempFichaInv.FieldByName('Total_Entrada').AsFloat - (mSalAnt * TempFichaInv.FieldByName('Qtde_Saida').AsFloat)) / TempFichaInv.FieldByName('Qtde_Saldo').AsFloat
                 else
                    tAltera.ParamByName('pUniSaldo').AsFloat := 0;
                 tAltera.ParamByName('pRegistro').AsInteger  := TempFichaInv.FieldByName('Registro').AsInteger;
                 tAltera.Execute;

                 TempFichaInv.RefreshRecord;

                 mSalAnt := TempFichaInv.FieldByName('Unitario_Saldo').AsFloat;
                 mTotAnt := TempFichaInv.FieldByName('Total_Saldo').AsFloat;

                 TempFichaInv.Next;
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           End;
           TempFichaInv.EnableControls;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('DELETE FROM FichaInventario');
           tAltera.SQL.Add('WHERE  Codigo IN('+pCodigos+')');
           tAltera.Execute;
           
           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT isnull(MAX(Registro), 0)+1 AS Registro FROM FichaInventario');
           tRegistro.Open;

           FichaInventario.Open;
           Janela_Processamento.Progresso.Position := 0;
           //Janela_Processamento.lProcesso.Caption  := 'Processando a ficha de inventario...';

           TempFichaInv.First;
           mItem := 1;
           mCod  := TempFichaInv.FieldByName('Codigo').AsInteger;
           while not TempFichaInv.Eof do begin
                 tRegistro.Open;
                 FichaInventario.Append;
                                 FichaInventarioRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger;
                                 FichaInventarioItem.Value                := mItem;
                                 FichaInventarioCodigo.Value              := TempFichaInv.FieldByName('Codigo').AsInteger;
                                 FichaInventarioNCM.Value                 := TempFichaInvNCM.Value;
                                 FichaInventarioCFOP.Value                := TempFichaInvCFOP.Value;
                                 FichaInventarioDescricao.Value           := TempFichaInvDescricao.Value;
                                 FichaInventarioUM.Value                  := TempFichaInvUM.Value;
                                 FichaInventarioHistorico.Value           := TempFichaInvHistorico.Value;
                                 FichaInventarioEstoque.Value             := TempFichaInvEstoque.Value;
                                 FichaInventarioEmissor.Value             := TempFichaInvEmissor.value;
                                 FichaInventarioNota.Value                := TempFichaInvNota.Value;
                                 FichaInventarioData.Value                := TempFichaInvData.Value;
                                 FichaInventarioES.Value                  := TempFichaInvES.Value;
                                 FichaInventarioDestinatario_Codigo.Value := TempFichaInvDestinatario_Codigo.Value;
                                 FichaInventarioDestinatario_Nome.Value   := TempFichaInvDestinatario_Nome.Value;
                                 FichaInventarioDestinatario_CNPJ.Value   := TempFichaInvDestinatario_CNPJ.Value;
                                 FichaInventarioFinalidade.Value          := TempFichaInvFinalidade.Value;
                                 FichaInventarioQtde_Entrada.Value        := TempFichaInvQtde_Entrada.Value;
                                 FichaInventarioUnitario_Entrada.Value    := TempFichaInvUnitario_Entrada.Value;
                                 FichaInventarioTotal_Entrada.Value       := TempFichaInvTotal_Entrada.Value;
                                 FichaInventarioQtde_Saida.Value          := TempFichaInvQtde_Saida.Value;
                                 FichaInventarioUnitario_Saida.Value      := TempFichaInvUnitario_Saida.Value;
                                 FichaInventarioTotal_Saida.Value         := TempFichaInvTotal_Saida.Value;
                                 FichaInventarioQtde_Saldo.Value          := TempFichaInvQtde_Saldo.Value;
                                 FichaInventarioTotal_Saldo.Value         := TempFichaInvTotal_Saldo.Value;
                                 FichaInventarioUnitario_Saldo.Value      := TempFichaInvUnitario_Saldo.Value;
                                 FichaInventarioOrigem.Value              := TempFichaInvOrigem.Value;
                                 FichaInventarioProcesso.Value            := TempFichaInvProcesso.Value;
                                 FichaInventarioTipo_Processo.Value       := TempFichaInvTipo_Processo.Value;
                 FichaInventario.Post;
                 tRegistro.Close;
                 TempFichaInv.Next;
                 inc(mItem);
                 if mCod <> TempFichaInv.FieldByName('Codigo').AsInteger then begin
                    mItem := 1;
                    mCod  := TempFichaInv.FieldByName('Codigo').AsInteger;
                 end;   

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           end;
           FichaInventario.close;
           
           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaInventario SET Unitario_Saida = 0');
           tAltera.SQL.Add('                          ,Total_Saida    = 0');
           tAltera.SQL.Add('                          ,Qtde_Saida     = 0');
           tAltera.SQL.Add('WHERE ES = ''E'' ');
           tAltera.Execute;
      end;
      Screen.Cursor := crDefault;
end;

procedure AtualizaEst(pCodigos:string);
Var
   mSalAnt,
   mTotAnt:Real;
   mItem,
   mCod:integer;
   tAltera,
   tRegistro,
   tSaldo:TMSQuery;
begin
      Screen.Cursor := crSQLWait;
      with Dados, dmFiscal do begin
           tAltera   := TMSQuery.Create(nil);
           tSaldo    := TMSQuery.Create(nil);
           tRegistro := TMSQuery.Create(nil);
           tAltera.Connection   := Banco_Empresas;
           tSaldo.Connection    := Banco_Empresas;
           tRegistro.Connection := Banco_Empresas;

           //----------------------------------------------------------( MONTAGEM DA FICHA DE ESTOQUE )-------------------------------------------------------\\
           TempFichaEst.SQL.Clear;
           TempFichaEst.SQL.Add('-- NOTAS DE ENTRADA PROPRIA -- ');
           TempFichaEst.SQL.Add('If (SELECT COUNT(*) FROM SYSOBJECTS WHERE XTYPE = ''U'' and NAME  = ''TempFichaEst'') > 0');
           TempFichaEst.SQL.Add('   BEGIN');
           TempFichaEst.SQL.Add('         DROP TABLE TempFichaEst');
           TempFichaEst.SQL.Add('         SELECT TOP 1 * INTO TempFichaEst FROM FichaEstoque WHERE Registro > (SELECT MAX(Registro) FROM FichaInventario)');
           TempFichaEst.SQL.Add('         TRUNCATE TABLE TempFichaEst');
           TempFichaEst.SQL.Add('   END');
           TempFichaEst.SQL.Add('ELSE ');
           TempFichaEst.SQL.Add('   SELECT * INTO TempFichaEst FROM FichaEstoque WHERE Registro > (SELECT MAX(Registro) FROM FichaInventario)');
           TempFichaEst.SQL.Add('SELECT MIN(Data_Emissao) AS Data');
           TempFichaEst.SQL.Add('INTO #TEMPDT');
           TempFichaEst.SQL.Add('FROM NotasFiscais WHERE isnull(Cancelada, 0) = 0 and isnull(Nfe_Denegada, 0) = 0');
           TempFichaEst.SQL.Add('UNION ALL');
           TempFichaEst.SQL.Add('SELECT MIN(Data_Entrada) AS Data');
           TempFichaEst.SQL.Add('FROM NotasTerceiros');
           TempFichaEst.SQL.Add('WHERE isnull(Provisoria, 0) <> 1');
           TempFichaEst.SQL.Add('UNION ALL');
           TempFichaEst.SQL.Add('SELECT MIN(Data_Transferencia) AS Data');
           TempFichaEst.SQL.Add('FROM ProdutosTransferencia');
           TempFichaEst.SQL.Add('DELETE FROM #TEMPDT WHERE Data IS NULL');
           TempFichaEst.SQL.Add('DECLARE @Menor_Data datetime');
           TempFichaEst.SQL.Add('       ,@Maior_Data datetime');
           TempFichaEst.SQL.Add('SET @Menor_Data = (SELECT MIN(Data) FROM #TEMPDT)');
           TempFichaEst.SQL.Add('SET @Maior_Data = GETDATE()');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaEst.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaEst.SQL.Add('       ,UM                  = Unidade_Medida ');
           TempFichaEst.SQL.Add('       ,NCM                 = NCM');
           TempFichaEst.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Estoque             = CASE Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Nota ');
           TempFichaEst.SQL.Add('       ,Data');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Fornecedor_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaEst.SQL.Add('       ,Processo');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = CASE WHEN isnull((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           TempFichaEst.SQL.Add('                                   Quantidade');
           TempFichaEst.SQL.Add('                              ELSE');
           TempFichaEst.SQL.Add('                                   0');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 4) ');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''NFP'' ');
           TempFichaEst.SQL.Add('INTO   #TEMP ');
           TempFichaEst.SQL.Add('FROM   NotasItens NI ');
           TempFichaEst.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and Saida_Entrada = 0');
           TempFichaEst.SQL.Add('  and Valor_Unitario > 0');
           TempFichaEst.SQL.Add('  and isnull(NI.Cancelada, 0)     <> 1 ');
           TempFichaEst.SQL.Add('  and isnull(NI.Nfe_Denegada, 0)  <> 1 ');
           TempFichaEst.SQL.Add('  and (isnull(Movimenta_Estoque, 0) = 1 OR (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota and NF.Data_Emissao = Data and NF.Saida_Entrada = Saida_Entrada and Valor_Unitario > 0) = 1)');
           TempFichaEst.SQL.Add('-- NOTAS DE SAÍDA -- ');
           TempFichaEst.SQL.Add('UNION ALL ');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaEst.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaEst.SQL.Add('       ,UM                  = Unidade_Medida ');
           TempFichaEst.SQL.Add('       ,NCM                 = NCM');
           TempFichaEst.SQL.Add('       ,CFOP                = (SELECT DISTINCT Natureza_Codigo FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Historico           = CASE Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''REVENDA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''CONSUMO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''IMOBILIZADO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Estoque             = CASE Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Nota');
           TempFichaEst.SQL.Add('       ,Data');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = (SELECT DISTINCT Cliente_Codigo    FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = (SELECT DISTINCT Destinatario_Nome FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = (SELECT DISTINCT Destinatario_CNPJ_CPF FROM NotasFiscais NF WHERE Numero = Nota and Data_Emissao = Data and NF.Saida_Entrada = NI.Saida_Entrada) ');
           TempFichaEst.SQL.Add('       ,Finalidade          = Finalidade_Mercadoria');
           TempFichaEst.SQL.Add('       ,ES                  = ''S'' ');
           TempFichaEst.SQL.Add('       ,Processo');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NI.Processo)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = CASE WHEN isnull((SELECT Complementar FROM NotasFiscais WHERE Numero = Nota and Data_Emissao = Data), 0) = 0 THEN');
           TempFichaEst.SQL.Add('                                   Quantidade');
           TempFichaEst.SQL.Add('                              ELSE');
           TempFichaEst.SQL.Add('                                   0');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''NFP'' ');
           TempFichaEst.SQL.Add('FROM   NotasItens NI ');
           TempFichaEst.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and Saida_Entrada = 1');
           TempFichaEst.SQL.Add('  and isnull(NI.Cancelada, 0)     <> 1 ');
           TempFichaEst.SQL.Add('  and isnull(NI.Nfe_Denegada, 0)  <> 1 ');
           TempFichaEst.SQL.Add('  and isnull(Movimenta_Estoque, 0) = 1 ');
           TempFichaEst.SQL.Add('  and Valor_Unitario > 0');
           TempFichaEst.SQL.Add('  and (SELECT DISTINCT Complementar FROM NotasFiscais NF WHERE NF.Numero = Nota and NF.Data_Emissao = Data and NF.Saida_Entrada = Saida_Entrada) <> 1');
           TempFichaEst.SQL.Add('-- SALDO DE ABERTURA DE ESTOQUE / TRANSFERÊNCIAS (ENTRADAS) -- ');
           TempFichaEst.SQL.Add('UNION ALL ');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Produto_Entrada ');
           TempFichaEst.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Entrada) AS VARCHAR(250))');
           TempFichaEst.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Entrada) ');
           TempFichaEst.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Entrada) ');
           TempFichaEst.SQL.Add('       ,CFOP                = null ');
           TempFichaEst.SQL.Add('       ,Historico           = CASE WHEN Motivo = ''A'' THEN');
           TempFichaEst.SQL.Add('                                   ''* SALDO DE ABERTURA DE ESTOQUE *''');
           TempFichaEst.SQL.Add('                              ELSE');
           TempFichaEst.SQL.Add('                                   ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *''');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('       ,Nota                = Registro');
           TempFichaEst.SQL.Add('       ,Data                = Data_Transferencia');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           TempFichaEst.SQL.Add('       ,Finalidade          = 0 ');
           TempFichaEst.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaEst.SQL.Add('       ,Processo_Entrada');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Entrada)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = Quantidade_Entrada');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Unitario, 2) ');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Unitario, 2) * Quantidade_Entrada');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float)');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''TRF'' ');
           TempFichaEst.SQL.Add('FROM   ProdutosTransferencia PT');
           TempFichaEst.SQL.Add('WHERE Produto_Entrada IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and Estoque = 1 ');
           TempFichaEst.SQL.Add('-- TRANSFERÊNCIAS DE SALDO DE ESTOQUE (SAÍDAS) --');
           TempFichaEst.SQL.Add('UNION ALL ');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Produto_Saida');
           TempFichaEst.SQL.Add('       ,Descricao           = CAST((SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Codigo = Produto_Saida) AS VARCHAR(250))');
           TempFichaEst.SQL.Add('       ,UM                  = (SELECT Unidade FROM Produtos WHERE Codigo = Produto_Saida)');
           TempFichaEst.SQL.Add('       ,NCM                 = (SELECT NCM     FROM Produtos WHERE Codigo = Produto_Saida) ');
           TempFichaEst.SQL.Add('       ,CFOP                = null');
           TempFichaEst.SQL.Add('       ,Historico           = ''* TRANSFERÊNCIA DE SALDO DE ESTOQUE *'' ');
           TempFichaEst.SQL.Add('       ,Estoque             = ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('       ,Nota                = Registro');
           TempFichaEst.SQL.Add('       ,Data                = Data_Transferencia');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = :pCodEmpresa');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = :pNomeEmpresa');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = :pCNPJEmpresa');
           TempFichaEst.SQL.Add('       ,Finalidade          = 0');
           TempFichaEst.SQL.Add('       ,ES                  = ''S'' ');
           TempFichaEst.SQL.Add('       ,Processo_Saida');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  PT.Processo_Saida)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = CAST(0 AS float)');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = Quantidade');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float)');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money)');
           TempFichaEst.SQL.Add('       ,Emissor             = ''P'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''TRF'' ');
           TempFichaEst.SQL.Add('FROM   ProdutosTransferencia PT');
           TempFichaEst.SQL.Add('WHERE Produto_Saida IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and Motivo  = ''TRF'' ');
           TempFichaEst.SQL.Add('  and Estoque = 1');
           TempFichaEst.SQL.Add('-- NOTA DE ENTRADA DE TERCEIROS ');
           TempFichaEst.SQL.Add('UNION ALL ');
           TempFichaEst.SQL.Add('SELECT  Codigo              = Codigo_Mercadoria ');
           TempFichaEst.SQL.Add('       ,Descricao           = (SELECT SUBSTRING(Descricao, 1, 250) FROM Produtos WHERE Produtos.Codigo = Codigo_Mercadoria)');
           TempFichaEst.SQL.Add('       ,UM                  = Unidade_Medida');
           TempFichaEst.SQL.Add('       ,NCM                 = NCM ');
           TempFichaEst.SQL.Add('       ,CFOP                = Natureza_Codigo ');
           TempFichaEst.SQL.Add('       ,Historico           = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''COMPRA - REVENDA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''COMPRA - CONSUMO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''DEVOLUÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''EXPORTAÇÃO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''PRÓPRIAS EM PODER DE TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''TERCEIROS EM PODER DA EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''COMPRA - IMOBILIZADO'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''OUTRAS'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Estoque             = CASE (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal)');
           TempFichaEst.SQL.Add('                                   WHEN 0 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 1 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 2 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 3 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 4 THEN ''1-ARMAZEM'' ');
           TempFichaEst.SQL.Add('                                   WHEN 5 THEN ''2-TERCEIROS'' ');
           TempFichaEst.SQL.Add('                                   WHEN 6 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                                   WHEN 9 THEN ''0-EMPRESA'' ');
           TempFichaEst.SQL.Add('                              END');
           TempFichaEst.SQL.Add('       ,Nota ');
           TempFichaEst.SQL.Add('       ,Data                = Data_Entrada');
           TempFichaEst.SQL.Add('       ,Destinatario_Codigo = Fornecedor ');
           TempFichaEst.SQL.Add('       ,Destinatario_Nome   = (SELECT Nome FROM Fornecedores WHERE Codigo = Fornecedor) ');
           TempFichaEst.SQL.Add('       ,Destinatario_CNPJ   = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Fornecedor) ');
           TempFichaEst.SQL.Add('       ,Finalidade          = (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais WHERE Codigo = Referencia_Fiscal) ');
           TempFichaEst.SQL.Add('       ,ES                  = ''E'' ');
           TempFichaEst.SQL.Add('       ,Processo');
           TempFichaEst.SQL.Add('       ,Tipo_Processo       = (SELECT Modalidade_Importacao FROM ProcessosDocumentos PD WHERE PD.Processo =  NTI.Processo)');
           TempFichaEst.SQL.Add('       ,Qtde_Entrada        = Quantidade ');
           TempFichaEst.SQL.Add('       ,Unitario_Entrada    = ROUND(Valor_Inventario, 2) ');
           TempFichaEst.SQL.Add('       ,Total_Entrada       = ROUND(Valor_Inventario, 2) * Quantidade ');
           TempFichaEst.SQL.Add('       ,Qtde_Saida          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saida      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saida         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Qtde_Saldo          = CAST(0 AS float) ');
           TempFichaEst.SQL.Add('       ,Unitario_Saldo      = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Total_Saldo         = CAST(0 AS money) ');
           TempFichaEst.SQL.Add('       ,Emissor             = ''T'' ');
           TempFichaEst.SQL.Add('       ,Origem              = ''NFT'' ');
           TempFichaEst.SQL.Add('FROM   NotasTerceirosItens NTI');
           TempFichaEst.SQL.Add('WHERE Codigo_Mercadoria IN('+pCodigos+')');
           TempFichaEst.SQL.Add('  and NTI.Movimenta_Estoque = 1 ');
           TempFichaEst.SQL.Add('  and  (SELECT DISTINCT(Provisoria) FROM NotasTerceiros NT WHERE NT.Nota = NTI.Nota and NT.Data_Emissao = NTI.Data_Emissao and NT.Fornecedor = NTI.Fornecedor) <> 1');
           TempFichaEst.SQL.Add('SELECT  Linha = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota)');
           TempFichaEst.SQL.Add('       ,Item  = ROW_NUMBER() OVER (PARTITION BY Codigo ORDER BY Data, ES, Nota)');
           TempFichaEst.SQL.Add('       ,*');
           TempFichaEst.SQL.Add('INTO #TEMP2');
           TempFichaEst.SQL.Add('FROM #TEMP');
           TempFichaEst.SQL.Add('ORDER BY Codigo, Data , ES');
           TempFichaEst.SQL.Add('-- ATUALIZANDO AS QUANTIDADE DOS SALDOS.');
           TempFichaEst.SQL.Add('UPDATE #TEMP2 SET Qtde_Saldo = CAST(');
           TempFichaEst.SQL.Add('                               isnull((SELECT SUM(Qtde_Entrada) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''E''), 0)');
           TempFichaEst.SQL.Add('                               - isnull((SELECT SUM(Qtde_Saida) FROM #TEMP2 T2 WHERE T2.Codigo = #TEMP2.Codigo and T2.Linha < #TEMP2.Linha and ES = ''S''), 0)');
           TempFichaEst.SQL.Add('                               + Qtde_Entrada');
           TempFichaEst.SQL.Add('                               - Qtde_Saida');
           TempFichaEst.SQL.Add('                               AS DECIMAL(14,3))');
           TempFichaEst.SQL.Add('-- ATUALIZANDO OS SALDOS DOS PRIMEIROS ITENS DE TODOS OS PRODUTOS.');
           TempFichaEst.SQL.Add('UPDATE #TEMP2 SET Total_Saldo    = Total_Entrada - Total_Saida');
           TempFichaEst.SQL.Add('                 ,Unitario_Saldo = CASE WHEN Qtde_Saldo > 0 THEN (Total_Entrada - Total_Saida) / Qtde_Saldo ELSE 0 END');
           TempFichaEst.SQL.Add('WHERE Item = 1');
           TempFichaEst.SQL.Add('INSERT INTO TempFichaEst');
           TempFichaEst.SQL.Add('            SELECT Registro = ROW_NUMBER() OVER (ORDER BY Codigo, Data, ES, Nota) ');
           TempFichaEst.SQL.Add('                  ,Item');
           TempFichaEst.SQL.Add('                  ,Codigo ');
           TempFichaEst.SQL.Add('                  ,NCM');
           TempFichaEst.SQL.Add('                  ,Descricao ');
           TempFichaEst.SQL.Add('                  ,UM ');
           TempFichaEst.SQL.Add('                  ,CFOP ');
           TempFichaEst.SQL.Add('                  ,Historico ');
           TempFichaEst.SQL.Add('                  ,Estoque ');
           TempFichaEst.SQL.Add('                  ,Emissor');
           TempFichaEst.SQL.Add('                  ,Origem');
           TempFichaEst.SQL.Add('                  ,Nota ');
           TempFichaEst.SQL.Add('                  ,Data ');
           TempFichaEst.SQL.Add('                  ,ES ');
           TempFichaEst.SQL.Add('                  ,Destinatario_Codigo ');
           TempFichaEst.SQL.Add('                  ,LTRIM(RTRIM(Destinatario_Nome))');
           TempFichaEst.SQL.Add('                  ,Destinatario_CNPJ ');
           TempFichaEst.SQL.Add('                  ,Finalidade ');
           TempFichaEst.SQL.Add('                  ,Processo ');
           TempFichaEst.SQL.Add('                  ,Tipo_Processo');
           TempFichaEst.SQL.Add('                  ,Qtde_Entrada ');
           TempFichaEst.SQL.Add('                  ,Unitario_Entrada ');
           TempFichaEst.SQL.Add('                  ,Total_Entrada ');
           TempFichaEst.SQL.Add('                  ,Qtde_Saida ');
           TempFichaEst.SQL.Add('                  ,Unitario_Saida ');
           TempFichaEst.SQL.Add('                  ,Total_Saida ');
           TempFichaEst.SQL.Add('                  ,Qtde_Saldo ');
           TempFichaEst.SQL.Add('                  ,Unitario_Saldo ');
           TempFichaEst.SQL.Add('                  ,Total_Saldo ');
           TempFichaEst.SQL.Add('            FROM  #TEMP2 ');
           TempFichaEst.SQL.Add('            ORDER BY Codigo, Data, ES, Nota ');
           TempFichaEst.SQL.Add('SELECT * FROM TempFichaEst ORDER BY Codigo, Item');
           TempFichaEst.SQL.Add('DROP TABLE #TEMP, #TEMP2, #TEMPDT ');
           TempFichaEst.ParamByName('pCodEmpresa').AsInteger := Menu_Principal.mEmpresa;
           TempFichaEst.ParamByName('pNomeEmpresa').AsString := EmpresasRazao_Social.AsString;
           TempFichaEst.ParamByName('pCNPJEmpresa').AsString := EmpresasCNPJ.AsString;
           //TempFichaEst.SQL.SaveToFile('c:\temp\Funcoes_Ficha_Estoque.sql');
           TempFichaEst.Open;
           TempFichaEst.First;

           TempFichaEst.DisableControls;

           tSaldo.SQL.Clear;
           tSaldo.SQL.Add('SELECT Unitario_Saldo = isnull(Unitario_Saldo, 0)');
           tSaldo.SQL.Add('      ,Total_Saldo    = isnull(Total_Saldo, 0)');
           tSaldo.SQL.Add('FROM  FichaEstoque WHERE Codigo = :pCodigo and Item = :pItem');
           tSaldo.ParamByName('pCodigo').AsInteger := TempFichaEst.FieldByName('Codigo').AsInteger;
           tSaldo.ParamByName('pItem').AsInteger   := TempFichaEst.FieldByName('Item').AsInteger-1;
           tSaldo.Open;

           mSalAnt := tSaldo.FieldByName('Unitario_Saldo').AsFloat;
           mTotAnt := tSaldo.FieldByName('Total_Saldo').AsFloat;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE TempFichaEst SET Total_Saldo    = :pTotalSaldo');
           tAltera.SQL.Add('                       ,Unitario_Saida = :pUniSaida');
           tAltera.SQL.Add('                       ,Total_Saida    = :pTotSaida');
           tAltera.SQL.Add('                       ,Unitario_Saldo = :pUniSaldo');
           tAltera.SQL.Add('WHERE Registro = :pRegistro and Item > 1');

           Janela_Processamento.Progresso.Max      := TempFichaInv.RecordCount;
           Janela_Processamento.Progresso.Position := 0;
           Janela_Processamento.lProcesso.Caption  := 'Processando a ficha de estoque...';

           While not TempFichaEst.Eof do begin
                 tAltera.ParamByName('pUniSaida').AsFloat   := mSalAnt;
                 tAltera.ParamByName('pTotSaida').AsFloat   := mSalAnt * TempFichaEst.FieldByName('Qtde_Saida').AsFloat;
                 tAltera.ParamByName('pTotalSaldo').AsFloat := mTotAnt + TempFichaEst.FieldByName('Total_Entrada').AsFloat - (mSalAnt * TempFichaEst.FieldByName('Qtde_Saida').AsFloat);
                 If TempFichaEst.FieldByName('Qtde_Saldo').AsFloat > 0 then
                    tAltera.ParamByName('pUniSaldo').AsFloat := (mTotAnt + TempFichaEst.FieldByName('Total_Entrada').AsFloat - (mSalAnt * TempFichaEst.FieldByName('Qtde_Saida').AsFloat)) / TempFichaEst.FieldByName('Qtde_Saldo').AsFloat
                 else
                    tAltera.ParamByName('pUniSaldo').AsFloat := 0;
                 tAltera.ParamByName('pRegistro').AsInteger  := TempFichaEst.FieldByName('Registro').AsInteger;
                 tAltera.Execute;

                 TempFichaEst.RefreshRecord;

                 mSalAnt := TempFichaEst.FieldByName('Unitario_Saldo').AsFloat;
                 mTotAnt := TempFichaEst.FieldByName('Total_Saldo').AsFloat;

                 TempFichaEst.Next;

                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           End;
           TempFichaEst.EnableControls;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('DELETE FROM FichaEstoque');
           tAltera.SQL.Add('WHERE  Codigo IN('+pCodigos+')');
           tAltera.Execute;

           tRegistro.SQL.Clear;
           tRegistro.SQL.Add('SELECT isnull(MAX(Registro), 0)+1 AS Registro FROM FichaEstoque');
           tRegistro.Open;

           FichaEstoque.Open;
           TempFichaEst.First;
           Janela_Processamento.Progresso.Position := 0;
           //Janela_Processamento.lProcesso.Caption  := 'Processando a ficha de estoque...';
           
           mItem := 1;
           mCod  := TempFichaEst.FieldByName('Codigo').AsInteger;

           while not TempFichaEst.Eof do begin
                 tRegistro.Open;
                 FichaEstoque.Append;
                              FichaEstoqueRegistro.Value            := tRegistro.FieldByName('Registro').AsInteger;
                              FichaEstoqueItem.Value                := mItem;
                              FichaEstoqueCodigo.Value              := TempFichaEst.FieldByName('Codigo').AsInteger;
                              FichaEstoqueDescricao.Value           := TempFichaEstDescricao.Value;
                              FichaEstoqueUM.Value                  := TempFichaEstUM.Value;
                              FichaEstoqueCFOP.Value                := TempFichaEstCFOP.Value;
                              FichaEstoqueHistorico.Value           := TempFichaEstHistorico.Value;
                              FichaEstoqueEstoque.Value             := TempFichaEstEstoque.Value;
                              FichaEstoqueEmissor.Value             := TempFichaEstEmissor.value;
                              FichaEstoqueNota.Value                := TempFichaEstNota.Value;
                              FichaEstoqueData.Value                := TempFichaEstData.Value;
                              FichaEstoqueES.Value                  := TempFichaEstES.Value;
                              FichaEstoqueDestinatario_Codigo.Value := TempFichaEstDestinatario_Codigo.Value;
                              FichaEstoqueDestinatario_Nome.Value   := TempFichaEstDestinatario_Nome.Value;
                              FichaEstoqueDestinatario_CNPJ.Value   := TempFichaEstDestinatario_CNPJ.Value;
                              FichaEstoqueFinalidade.Value          := TempFichaEstFinalidade.Value;
                              FichaEstoqueQtde_Entrada.Value        := TempFichaEstQtde_Entrada.Value;
                              FichaEstoqueUnitario_Entrada.Value    := TempFichaEstUnitario_Entrada.Value;
                              FichaEstoqueTotal_Entrada.Value       := TempFichaEstTotal_Entrada.Value;
                              FichaEstoqueQtde_Saida.Value          := TempFichaEstQtde_Saida.Value;
                              FichaEstoqueUnitario_Saida.Value      := TempFichaEstUnitario_Saida.Value;
                              FichaEstoqueTotal_Saida.Value         := TempFichaEstTotal_Saida.Value;
                              FichaEstoqueQtde_Saldo.Value          := TempFichaEstQtde_Saldo.Value;
                              FichaEstoqueTotal_Saldo.Value         := TempFichaEstTotal_Saldo.Value;
                              FichaEstoqueUnitario_Saldo.Value      := TempFichaEstUnitario_Saldo.Value;
                              FichaEstoqueOrigem.Value              := TempFichaEstOrigem.Value;
                              FichaEstoqueProcesso.Value            := TempFichaEstProcesso.Value;
                              FichaEstoqueTipo_Processo.Value       := TempFichaEstTipo_Processo.Value;
                 FichaEstoque.Post;
                 tRegistro.Close;
                 TempFichaEst.Next;
                 inc(mItem);
                 if mCod <> TempFichaEst.FieldByName('Codigo').AsInteger then begin
                    mItem := 1;
                    mCod  := TempFichaEst.FieldByName('Codigo').AsInteger;
                 end;   
                 Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position +1;
                 Application.ProcessMessages;
           end;
           FichaEstoque.close;

           tAltera.SQL.Clear;
           tAltera.SQL.Add('UPDATE FichaEstoque SET Unitario_Saida = 0');
           tAltera.SQL.Add('                       ,Total_Saida    = 0');
           tAltera.SQL.Add('                       ,Qtde_Saida     = 0');
           tAltera.SQL.Add('WHERE ES = ''E'' ');
           tAltera.Execute;
      end;
      Screen.Cursor := crDefault;
end;
}






{
-- NOTAS DE ENTRADA PROPRIA -- 
if (select count(*) from sysobjects where xtype = 'U' and name  = 'tempfichainv') > 0
   truncate table tempfichaest;
else 
   select * into tempfichaest from fichainventario where registro > (select max(registro) from fichainventario);

declare  @Menor_Data date
        ,@Maior_Data date

set @Maior_Data = getdate();
set @Menor_Data = (
    select min(Data)
    from (select min(data_emissao) as data from notasfiscais
          union all
          select min(data_transferencia) from estoquetransferencia
          union all
          select min(data_entrada) from estoqueabertura) as Data
);
-- NOTAS FISCAIS.
select Codigo = Codigo_Mercadoria 
      ,Descricao = (select substring(Descricao, 1, 250) from Produtos where Produtos.Codigo = Codigo_Mercadoria)
      ,UM = Unidade_Medida 
      ,NCM
      ,CFOP
      ,Historico = case isnull(Finalidade_Mercadoria, 0)
                        when 0 then 'REVENDA' 
                        when 1 then 'CONSUMO' 
                        when 2 then 'DEVOLUÇÃO' 
                        when 3 then 'EXPORTAÇÃO' 
                        when 4 then 'PRÓPRIAS EM PODER DE TERCEIROS' 
                        when 5 then 'TERCEIROS EM PODER DA EMPRESA' 
                        when 6 then 'IMOBILIZADO' 
                        when 9 then 'OUTRAS' 
                   end
      ,Estoque = case isnull(Finalidade_Mercadoria, 0)
                      when 0 then '0-EMPRESA' 
                      when 1 then '0-EMPRESA' 
                      when 2 then '0-EMPRESA' 
                      when 3 then '0-EMPRESA' 
                      when 4 then '1-ARMAZEM' 
                      when 5 then '2-TERCEIROS' 
                      when 6 then '0-EMPRESA' 
                      when 9 then '0-EMPRESA' 
                 end
      ,Nota 
      ,Data = Data_Emissao
      ,Destinatario_Codigo =  Destinatario
      ,Destinatario_Nome = (select distinct Destinatario_Nome from NotasFiscais nf where nf.Nota = ni.Nota and nf.Data_Emissao = ni.Data_Emissao and nf.ES = ni.ES) 
      ,Destinatario_CNPJ = (select distinct Destinatario_CNPJ_CPF FROM NotasFiscais nf where nf.Nota = ni.Nota and nf.Data_Emissao = ni.Data_Emissao and nF.ES = ni.ES) 
      ,Finalidade = Finalidade_Mercadoria
      ,ES = iif(ES = 0, 'E', 'S')
      ,Processo
      ,Tipo_Processo = (select Modalidade from ProcessosImp pro where pro.Processo =  ni.Processo)
      ,Qtde_Entrada = case when isnull((select Complementar from NotasFiscais nf where nf.Nota = ni.Nota and nf.Data_Emissao = ni.Data_Emissao), 0) = 0 then quantidade else 0 end
      ,Unitario_Entrada = round(Valor_Inventario, 4) 
      ,Total_Entrada = round(Valor_Inventario, 2) * Quantidade 
      ,Qtde_Saida = cast(0 as float) 
      ,Unitario_Saida = cast(0 as money) 
      ,Total_Saida = cast(0 as money) 
      ,Qtde_Saldo = cast(0 as float) 
      ,Unitario_Saldo = cast(0 as money) 
      ,Total_Saldo = cast(0 as money) 
      ,Emissao
      ,Origem = iif(Emissao = 'P', 'NFP', 'NFT')
into #temp 
from NotasItens ni 
where Codigo_Mercadoria in(1, 2, 3)
and ES = 0
and Valor_Unitario > 0
and isnull(ni.Cancelada, 0) <> 1 
and isnull(ni.Denegada, 0) <> 1 
and (isnull(Movimenta_Estoque, 0) = 1 or isnull(Complementar, 0) = 1)

-- TRANSFERÊNCIAS (ENTRADAS) -- 
union all 
select Codigo = Produto_Entrada 
      ,Descricao = cast((select substring(Descricao, 1, 250) from Produtos where Codigo = Produto_Entrada) as varchar(250))
      ,UM = (select UM from Produtos where Codigo = Produto_Entrada) 
      ,NCM = (select NCM from Produtos where Codigo = Produto_Entrada) 
      ,CFOP = null 
      ,Historico = '* TRANSFERÊNCIA DE SALDO DE ESTOQUE *'
      ,Estoque = '0-EMPRESA' 
      ,Nota = Registro
      ,Data = Data_Transferencia
      ,Destinatario_Codigo = 0
      ,Destinatario_Nome = 'XGMA'
      ,Destinatario_CNPJ = '07922103000158'
      ,Finalidade = 0 
      ,ES = iif(Produto_Entrada <> 0, 'E', 'S')
      ,Processo = iif(Produto_Entrada <> 0, Processo_Entrada, Processo_Saida)
      ,Tipo_Processo = (select Modalidade from ProcessosImp pi where pi.Processo = et.Processo_Entrada)
      ,Qtde_Entrada = iif(Produto_Entrada <> 0, Quantidade_Entrada, 0)
      ,Unitario_Entrada = round(iif(Produto_Entrada <> 0, Valor_Unitario, 0), 2) 
      ,Total_Entrada = iif(Produto_Entrada <> 0, round(Valor_Unitario, 2) * Quantidade_Entrada, 0)
      ,Qtde_Saida = iif(Produto_Entrada <> 0, 0, round(Valor_Unitario, 2) * Quantidade_Saida)
      ,Unitario_Saida = iif(Produto_Entrada <> 0, 0, round(Valor_Unitario, 2))
      ,Total_Saida = iif(Produto_Entrada <> 0, 0, round(Valor_Unitario, 2) * Quantidade_Saida)
      ,Qtde_Saldo = cast(0 as float) 
      ,Unitario_Saldo = cast(0 as money) 
      ,Total_Saldo = cast(0 as money) 
      ,Emissao = 'P' 
      ,Origem = 'TRF' 
from EstoqueTransferencia et
where Produto_Entrada in(1, 2, 3)

-- ABERTURA DE ESTOQUE 
union all 
select Codigo = Produto
      ,Descricao = cast((select substring(Descricao, 1, 250) from Produtos where Codigo = Produto) as varchar(250))
      ,UM = (select UM from Produtos where Codigo = Produto) 
      ,NCM = (select NCM from Produtos where Codigo = Produto) 
      ,CFOP = null 
      ,Historico = '* SALDO DE ABERTURA DE ESTOQUE *'
      ,Estoque = '0-EMPRESA' 
      ,Nota = Registro
      ,Data = Data_Entrada
      ,Destinatario_Codigo = 0
      ,Destinatario_Nome = 'XGMA'
      ,Destinatario_CNPJ = '07922103000158'
      ,Finalidade = 0 
      ,ES = iif(Produto <> 0, 'E', 'S')
      ,Processo
      ,Tipo_Processo = (select Modalidade from ProcessosImp pi where pi.Processo = ea.Processo)
      ,Qtde_Entrada = Quantidade
      ,Unitario_Entrada = Valor_Unitario
      ,Total_Entrada = round(Valor_Unitario, 2) * Quantidade
      ,Qtde_Saida = 0
      ,Unitario_Saida = 0
      ,Total_Saida = 0
      ,Qtde_Saldo = cast(0 as float) 
      ,Unitario_Saldo = cast(0 as money) 
      ,Total_Saldo = cast(0 as money) 
      ,Emissao = 'P' 
      ,Origem = 'ABE' 
from EstoqueAbertura ea
where Produto in(1, 2, 3)

select  Linha = row_number() over (order by Codigo, Data, ES, Nota)
       ,Item  = row_number() over (partition by Codigo order by Data, ES, Nota)
       ,*
into #temp2
from #temp
order by Codigo, Data , ES

-- ATUALIZANDO as QUANTIDADE DOS SALDOS.
update #TEMP2 set Qtde_Saldo = cast(isnull((select sum(Qtde_Entrada) from #temp2 t2 where t2.Codigo = #temp2.Codigo and T2.Linha < #temp2.Linha and ES = 'E'), 0) -
                                    isnull((select sum(Qtde_Saida) from #temp2 t2 where t2.Codigo = #temp2.codigo and t2.Linha < #temp2.Linha and ES = 'S'), 0) +
                                    Qtde_Entrada -
                                    Qtde_Saida
                                    as decimal(14,3))

-- ATUALIZANDO OS SALDOS DOS PRIMEIROS ITENS DE TODOS OS PRODUTOS.
update #TEMP2 set Total_Saldo    = Total_Entrada - Total_Saida
                 ,Unitario_Saldo = case when Qtde_Saldo > 0 then (Total_Entrada - Total_Saida) / Qtde_Saldo 
  else 
     0 
  end
where Item = 1

insert into TempFichaEst
            select Registro = row_number() over (order by Codigo, Data, ES, Nota) 
                  ,Item
                  ,Codigo 
                  ,NCM
                  ,Descricao 
                  ,UM 
                  ,CFOP 
                  ,Historico 
                  ,Estoque 
                  ,Emissao
                  ,Origem
                  ,Nota 
                  ,Data 
                  ,ES 
                  ,Destinatario_Codigo 
                  ,ltrim(rtrim(Destinatario_Nome))
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
            from  #temp2 
            order by Codigo, Data, ES, Nota 
go
drop table #temp, #temp2
go

select * from TempFichaEst


}

//===================================================================================================================================================================================================







end.
