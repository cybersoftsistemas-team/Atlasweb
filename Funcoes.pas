unit Funcoes;

interface

uses
    SysUtils, Windows, FireDAC.Comp.Client, Dialogs, MaskUtils, System.Variants, DB, Forms, uniSpeedButton, uniPanel, UniPageControl, System.Classes,
    uniGUIForm, uniGUIFrame, uniMemo, DBCommon, uniDBLookUpComboBox, uniDBComboBox, uniComboBox, uniDBDateTimePicker, uniDBEdit, uniEdit,
    uniGuiDialogs, TypInfo, uniSweetAlert, FireDAC.Stan.Param, uniMainMenu, uniDBNavigator, uniButton, uniScrollBox, System.RegularExpressions, System.Rtti;


// Funções de checagens.
function ChecaCNPJ(Num: string): boolean;
function ChecaCPF(Num: String): Boolean;
function CampoVazio(Campo:TObject; msg:string): boolean;
function ValidaCampo(Campo:TObject; Valor1, Valor2:Variant; Condicao, msg, Titulo:string): boolean;
function Aviso(Valor1, Valor2:Variant; Condicao, msg, Titulo:string): boolean;

// Funções de ordem gerais.
function NomeComputador:string;
function RemoveAcentos(Str:String): String;
function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
function PastaDLL: string;
procedure LimpaMemoria;
procedure AtivaEdicao(Nav, bAdi, bEdi, bExc, bGra, bCan: TObject; aPageControl: TuniPageControl);
procedure AtivaBotoes(Nav, bAdi, bEdi, bExc, bGra, bCan: TObject);
function Calculo(Formula: widestring): string;

// Funções de strings.
function QuebraString(BaseString, BreakString: string): TStringList;
function ApenasNumeros(Const Texto:String):String;
function ApenasLetras(Const Texto:String):String;
function SinalSequencia(s: string): boolean;
function RemoveCaracterXML(Str:String): String;

//Funções de Data.
function NomeMes(Mes: Integer) :String;

// Funções/ procedures de banco de dados.
procedure LogDados(Tabela: TDataSet; Descricao, Estado: String);
procedure LogErros(Tabela, Descricao:String);
function GeraCodigo(Tabela, Campo:string):integer;
function Existe(Tabela:TFDQuery;Campo,Codigo:string):boolean;
function ExisteData(Tabela:TFDQuery;Campo:String; pData:TDate):boolean;
function Pesquisa(tQuery:TFDQuery; Tabela, CampoChave, CampoPesq, Busca:string):string;
function PesquisaFiltro(tQuery:TFDQuery; Tabela, CampoPesq, Busca:string):string;
function NomeTabela(Tabela:TFDQuery):string;
function EstadoTabela(DataSet: TDataSet): String;
function ListaCampos(pFormula: string; pCampo:Integer): WideString;

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
   Pesq:TFDQuery;
   TabNome:string;
begin
     TabNome         := GetTableNameFromSQL(Tabela.Text);
     Pesq            := TFDQuery.Create(nil);
     Pesq.Connection := uniMainModule.Conecta;
     Pesq.sql.clear;
     Pesq.sql.add('select Achou = count(*) from '+TabNome+' where '+Campo+' = ' + QuotedStr(Codigo));
     Pesq.Open;
     Existe := Pesq.FieldByName('Achou').AsInteger > 0;
     Pesq.Free;
end;

// Verifica se existe data na tabela informa.
function ExisteData(Tabela:TFDQuery; Campo:String; pData:TDate):boolean;
var
   Pesq:TFDQuery;
   TabNome:string;
begin
     TabNome := GetTableNameFromSQL(Tabela.Text);
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

function GeraCodigo(Tabela,Campo:string):integer;
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
                          FieldByName('Funcao').Value        := 'ALTERAÇÃO';
                          FieldByName('Usuario').AsString    := Trim(Main.MainForm.lUser.Text);
                          FieldByName('Tabela').AsString     := Tabela.Name;
                          FieldByName('Campo').asString      := Tabela.Fields[i].FieldName;
                          FieldByName('Operacao').AsString   := 'Alterado Registro ['+Tabela.Fields[0].FieldName+': '+Tabela.Fields[0].AsString+']';
                          FieldByName('IP_Cliente').Value    := Main.MainForm.UniApplication.RemoteAddress;
                          FieldByName('Modulo').Value        := Main.MainForm.PagePrincipal.ActivePage.Caption;
                          FieldByName('Sessao').Value        := Main.MainForm.UniSession.NewId.ToString;
                          FieldByName('Computador').AsString := NomeComputador;
                          if Descricao <> '' then FieldByName('Operacao').AsString;
                          if Tabela.Fields[i].OldValue <> null then FieldByName('Conteudo_Antes').AsString  := Tabela.Fields[i].OldValue;
                          if Tabela.Fields[i].NewValue <> null then FieldByName('Conteudo_Depois').AsString := Tabela.Fields[i].NewValue;
                     Post;
                  end;
              end;
           end;
           if (Estado = 'Insert') or (Estado = 'Delete') or (Estado = 'Outros') then begin
              Append;
                   FieldByName('Data').Value       := now;
                   FieldByName('Empresa').asString := mEmpresaAtiva;
                   if Estado = 'Insert' then begin
                      FieldByName('Funcao').Value   := 'INCLUSÃO';
                      FieldByName('Operacao').Value := 'Incluído novo registro ['+Tabela.Fields[0].AsString+']';
                   end;
                   if Estado = 'Delete' then begin
                      FieldByName('Funcao').Value   := 'EXCLUSÃO';
                      FieldByName('Operacao').Value := 'Excluído Registro ['+Tabela.Fields[0].AsString+']';
                   end;
                   if Estado = 'Outros' then begin
                      FieldByName('Funcao').Value   := 'OUTROS';
                      FieldByName('Operacao').Value := Descricao +'['+Tabela.Fields[0].AsString+']';
                   end;
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
procedure LogErros(Tabela, Descricao:String);
begin
      with uniMainModule, log do begin
           sql.Clear;
           sql.Add('select top 1 * from Log order by Data desc');
           open;
           Append;
                FieldByName('Data').Value          := now;
                FieldByName('Empresa').asString    := mEmpresaAtiva;
                FieldByName('Funcao').Value        := 'INCLUSÃO';
                FieldByName('Operacao').Value      := Descricao;
                FieldByName('Funcao').Value        := 'OUTROS';
                FieldByName('Operacao').Value      := Descricao;
                FieldByName('Usuario').AsString    := Trim(Main.MainForm.lUser.Text);
                FieldByName('Tabela').AsString     := Tabela;
                FieldByName('IP_Cliente').Value    := Main.MainForm.UniApplication.RemoteAddress;
                FieldByName('Modulo').Value        := Main.MainForm.PagePrincipal.ActivePage.Caption;
                FieldByName('Sessao').Value        := Main.MainForm.UniSession.NewId.ToString;
                FieldByName('Computador').AsString := NomeComputador;
           Post;
           close;
      end;
end;

// Função Pesquisa genérica do sistema.
function Pesquisa(tQuery:TFDQuery; Tabela, CampoChave, CampoPesq, Busca:string):string;
var
  tTemp:TFDQuery;
begin
     Pesquisa := '';
     tTemp    := TFDQuery.Create(nil);

     with tTemp do begin
          Connection := uniMainModule.Conecta;
          sql.Clear;
          sql.add('select '+CampoChave+' from '+Tabela+' where '+CampoPesq+' like '+quotedstr(Busca+'%'));
          Open;

          if recordcount > 0 then begin
             tQuery.Locate(CampoChave, FieldByName(CampoChave).asstring, [loCaseInsensitive]);
             Pesquisa := tQuery.FieldByName(CampoChave).AsString;
          end else begin
             sql.Clear;
             sql.add('select '+CampoChave+' from '+Tabela+' where '+CampoPesq+' like '+quotedstr('%'+Busca+'%'));
             Open;
             if recordcount > 0 then begin
                tQuery.Locate(CampoChave, FieldByName(CampoChave).asstring, [loCaseInsensitive]);
                Pesquisa := tQuery.FieldByName(CampoChave).AsString;
             end else begin
                MessageDlg('Nenhum registro encontrado!', mtError, [mbOK]);
             end;
          end;
     end;
     tTemp.Free;
end;

function PesquisaFiltro(tQuery:TFDQuery; Tabela, CampoPesq, Busca:string):string;
begin
     with tQuery do begin
          sql.Clear;
          sql.add('select * from '+Tabela+' where '+CampoPesq+' like '+quotedstr('%'+Busca+'%'));
          Open;
          if recordcount = 0 then begin
             MessageDlg('Nenhum registro encontrado!', mtError, [mbOK]);
          end;
     end;
end;

// Retorna o nome da tabela principal da "TFDQuery".
function NomeTabela(Tabela:TFDQuery):string;
var
  x, iSelect, iFrom: Integer;
  Texto, Tab: string;
begin
     texto   := Tabela.Text;
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
function CampoVazio(Campo:TObject; msg:string): boolean;
var
   vazio:boolean;
   Alerta: TUniSweetAlert;
begin
     Vazio := false;
     if Campo is TuniDBLookUpComboBox      then vazio := TuniDBLookUpComboBox(Campo).Text = '';
     if Campo is TuniDBEdit                then vazio := TuniDBEdit(Campo).Text = '';
     if Campo is TUniDBFormattedNumberEdit then vazio := (TUniDBFormattedNumberEdit(Campo).Text = '') or (TUniDBFormattedNumberEdit(Campo).text = '0');
     if Campo is TuniDBComboBox            then vazio := TuniDBComboBox(Campo).Text = '';
     if Campo is TuniComboBox              then vazio := TuniComboBox(Campo).Text = '';
     if Campo is TuniDBDateTimePicker      then vazio := TuniDBDateTimePicker(Campo).DateTime = 0;

     if vazio then begin
        Alerta := TuniSweetAlert.create(nil);
        Alerta.AlertType := atInfo;
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
        if Campo is TuniDBLookUpComboBox      then TuniDBLookUpComboBox(Campo).setfocus;
        if Campo is TuniDBEdit                then TuniDBEdit(Campo).setfocus;
        if Campo is TuniDBDateTimePicker      then TuniDBDateTimePicker(Campo).setfocus;
        if Campo is TUniDBFormattedNumberEdit then TUniDBFormattedNumberEdit(Campo).SetFocus;
     end;
     CampoVazio := vazio;
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
     mCond := false;
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
                LogErros('PagarReceberBaixas', 'Falha desconhecida, não pode criar o lançamento contabil de '+pTipo+' !'+#13+E.Message);
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
//     BaseString := StringReplace(BaseString,  #8, '', [rfReplaceAll, rfIgnoreCase]);
//     BaseString := StringReplace(BaseString, #10, '', [rfReplaceAll, rfIgnoreCase]);
//     BaseString := StringReplace(BaseString, #12, '', [rfReplaceAll, rfIgnoreCase]);
//     BaseString := StringReplace(BaseString, #13, '', [rfReplaceAll, rfIgnoreCase]);

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
  //j, s: integer;
//  Scroll: TuniScrollBox;
//  Component: TComponent;
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
    i
   ,mPos:Integer;
    mTem: boolean;
    mCalculo
   ,mValTeste
   ,mCampos
   ,mFuncao: String;
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
    mCampo,
    Lista,
    mParte: String;
    mCalculo: widestring;
    i: Integer;
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



end.
