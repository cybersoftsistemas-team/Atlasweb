unit ImportaNFe;

interface

uses 
  System.SysUtils, System.Classes, System.DateUtils, System.Generics.Collections, Xml.XMLDoc, Xml.XMLIntf, Xml.adomxmldom, FireDAC.Comp.Client, FireDAC.Stan.Param, Dialogs;
  
type
  TNFeItem = class
  public
    Item: Integer;
    Codigo: String;
    CodigoBarras: String;
    Descricao: String;
    NCM: String;
    CEST: String;
    CFOP: String;
    Unidade: String;
    Quantidade: Double;
    ValorUnitario: Double;
    ValorTotal: Double;
    CSTICMS: String;
    CSTIPI: String;
    CSTPIS: String;
    CSTCOFINS: String;
    BCICMS: Double;
    VICMS: Double;
    BCST: Double;
    VST: Double;
    VIPI: Double;
    VPIS: Double;
    VCOFINS: Double;
  end;

type
  TNFe = class
  public
    NotaID: Integer;
    Empresa: Integer;
    Numero: Integer;
    Serie: Integer;
    Chave: String;
    dEmissao: TDateTime;
    hEmissao: TDateTime;
    dEntrada: TDateTime;
    hEntrada: TDateTime;
    Natureza: String;
    EmitCNPJ: String;
    EmitNome: String;
    DestCNPJ: String;
    DestNome: String;
    ValorProdutos: Double;
    ValorFrete: Double;
    ValorSeguro: Double;
    ValorDespesas: Double;
    ValorDesconto: Double;
    ValorBCICMS: Double;
    ValorICMS: Double;
    ValorBCST: Double;
    ValorST: Double;
    ValorIPI: Double;
    ValorPIS: Double;
    ValorCOFINS: Double;
    ValorTotal: Double;
    Itens: TObjectList<TNFeItem>;
    Operacao: integer;
    Modelo: string;
    Inf_Compl: widestring;
    Inf_Compl2: widestring;
    Mod_Frete: integer;
    Trans_CNPJ: string;
    Trans_Nome: string;
    Trans_IE: string;
    Trans_End: string;
    Trans_Mun: string;
    Trans_UF: string;
    Vol_Qtde: Double;
    Vol_Esp: string;
    Vol_PesoL: Double;
    Vol_PesoB: Double;
    Num_Prot: string;
    Data_Prot: TDateTime;
    
    constructor Create;
    destructor Destroy; override;
  end;

type
  TImportadorNFe = class
  private
    FConn: TFDConnection;
    FNFe: TNFe;
    function GetValor(Node : IXMLNode; Campo : String):String;
    function ExisteNota:Boolean;
    function GerarNotaID:Integer;
    procedure LerCabecalho(XML:IXMLDocument);
    procedure LerItens(XML:IXMLDocument);
    procedure GravarCabecalho;
    procedure GravarItens;
    function StrToFloatXML(const Valor: String): Double;
    function LocalizarInfNFe(XML: IXMLDocument): IXMLNode;
    function GetNode(Node: IXMLNode; const Path: String): IXMLNode;
  public
    constructor Create(AConn:TFDConnection);
    destructor Destroy; override;
    function ImportarXML(Empresa, Operacao:Integer;Arquivo:String):Boolean;
  end;

implementation

constructor TNFe.Create;
begin
     Itens := TObjectList<TNFeItem>.Create;
end;

destructor TNFe.Destroy;
begin
     Itens.Free;
     inherited;
end;

constructor TImportadorNFe.Create(AConn:TFDConnection);
begin
     FConn := AConn;
     FNFe := TNFe.Create;
end;

destructor TImportadorNFe.Destroy;
begin
     FNFe.Free;
     inherited;
end;

function TImportadorNFe.GetValor(Node:IXMLNode; Campo:String):String;
begin
     Result := '';
     if Assigned(Node) = False then Exit;
     if Node.ChildNodes.FindNode(Campo)<>nil then Result := Node.ChildNodes[Campo].Text;
end;

function TImportadorNFe.GerarNotaID:Integer;
var
   Q: TFDQuery;
begin
   Q := TFDQuery.Create(nil);
   try
      Q.Connection := FConn;
      Q.SQL.Text   := 'select isnull(max(Nota_id),0)+1 NotaID from NotasFiscais';
      Q.Open;
      Result := Q.FieldByName('NotaID').AsInteger;
   finally
      Q.Free;
   end;
end;

function TImportadorNFe.ExisteNota:Boolean;
var
   Q: TFDQuery;
begin
     Q := TFDQuery.Create(nil);
     try
        Q.Connection := FConn;
        Q.SQL.Text   := 'select Nota_id from NotasFiscais where Chave = :C ';
        Q.ParamByName('C').AsString := FNFe.Chave;
        Q.Open;
        Result := not Q.IsEmpty;
     finally
        Q.Free;
     end;
end;

function TImportadorNFe.StrToFloatXML(const Valor: String): Double;
var
   S: String;
begin
     S := Trim(Valor);
     if S = '' then Exit(0);
     S := StringReplace(S, '.', FormatSettings.DecimalSeparator,[rfReplaceAll]);
     Result := StrToFloatDef(S, 0);
end;

function TImportadorNFe.LocalizarInfNFe(XML: IXMLDocument): IXMLNode;
var
  NFeNode: IXMLNode;
begin
     Result := nil;
     if XML.DocumentElement = nil then Exit;
     if XML.DocumentElement.NodeName = 'nfeProc' then begin
        NFeNode := XML.DocumentElement.ChildNodes.FindNode('NFe');
        if Assigned(NFeNode) then Result := NFeNode.ChildNodes.FindNode('infNFe');
     end else
        if XML.DocumentElement.NodeName = 'NFe' then Result := XML.DocumentElement.ChildNodes.FindNode('infNFe');
end;

{
procedure TImportadorNFe.LerCabecalho(XML: IXMLDocument);
var
  infNFe, ide, emit, dest, total, ICMSTot, infAdic, Transp, Transporta, Vol, ProtNFe, infProt: IXMLNode;
begin
     infNFe := LocalizarInfNFe(XML);
     if not Assigned(infNFe) then raise Exception.Create('XML inválido.');

     ide        := infNFe.ChildNodes['ide'];
     emit       := infNFe.ChildNodes['emit'];
     dest       := infNFe.ChildNodes['dest'];
     total      := infNFe.ChildNodes['total'];
     infAdic    := infNFe.ChildNodes['infAdic'];
     Transp     := infNFe.ChildNodes['transp'];
     Transporta := Transp.ChildNodes['transporta'];
     Vol        := Transp.ChildNodes['vol'];
     ICMSTot    := total.ChildNodes['ICMSTot'];
     ProtNFe    := infNFe.ChildNodes['protNFe'];
     infProt    := ProtNFe.ChildNodes['infProt'];

     if GetValor(ide,'dhEmi') <> '' then begin 
        FNFe.dEmissao := ISO8601ToDate(GetValor(ide,'dhEmi'));
        FNFe.hEmissao := TimeOf(FNFe.dEmissao);
     end;
     if GetValor(ide,'dhSaiEnt') <> '' then begin 
        FNFe.dEntrada := ISO8601ToDate(GetValor(ide,'dhSaiEnt'));
        FNFe.hEntrada := TimeOf(FNFe.dEntrada);
     end;
     if FNFe.DestCNPJ = '' then FNFe.DestCNPJ := GetValor(dest,'CPF');
     
     FNFe.Chave         := Copy(infNFe.Attributes['Id'], 4, 44);
     FNFe.Numero        := StrToIntDef(GetValor(ide,'nNF'),0);
     FNFe.Serie         := StrToIntDef(GetValor(ide,'serie'),0);
     FNFe.Modelo        := GetValor(ide,'mod');
     FNFe.Natureza      := GetValor(ide,'natOp');
     FNFe.EmitCNPJ      := GetValor(emit,'CNPJ');
     FNFe.EmitNome      := GetValor(emit,'xNome');
     FNFe.DestCNPJ      := GetValor(dest,'CNPJ');
     FNFe.DestNome      := GetValor(dest,'xNome');
     FNFe.ValorBCICMS   := StrToFloatXML(GetValor(ICMSTot,'vBC'));
     FNFe.ValorICMS     := StrToFloatXML(GetValor(ICMSTot,'vICMS'));
     FNFe.ValorBCST     := StrToFloatXML(GetValor(ICMSTot,'vBCST'));
     FNFe.ValorST       := StrToFloatXML(GetValor(ICMSTot,'vST'));
     FNFe.ValorProdutos := StrToFloatXML(GetValor(ICMSTot,'vProd'));
     FNFe.ValorFrete    := StrToFloatXML(GetValor(ICMSTot,'vFrete'));
     FNFe.ValorSeguro   := StrToFloatXML(GetValor(ICMSTot,'vSeg'));
     FNFe.ValorDesconto := StrToFloatXML(GetValor(ICMSTot,'vDesc'));
     FNFe.ValorDespesas := StrToFloatXML(GetValor(ICMSTot,'vOutro'));
     FNFe.ValorIPI      := StrToFloatXML(GetValor(ICMSTot,'vIPI'));
     FNFe.ValorPIS      := StrToFloatXML(GetValor(ICMSTot,'vPIS'));
     FNFe.ValorCOFINS   := StrToFloatXML(GetValor(ICMSTot,'vCOFINS'));
     FNFe.ValorTotal    := StrToFloatXML(GetValor(ICMSTot,'vNF'));
     FNFe.Inf_Compl     := GetValor(infAdic,'infAdFisco');
     FNFe.Inf_Compl2    := GetValor(infAdic,'infCpl');
     FNFe.Mod_Frete     := StrToIntDef(GetValor(Transp,'modFrete'),0);
     FNFe.Trans_CNPJ    := GetValor(Transporta,'CNPJ');
     FNFe.Trans_Nome    := GetValor(Transporta,'xNome');
     FNFe.Trans_IE      := GetValor(Transporta,'IE');
     FNFe.Trans_End     := GetValor(Transporta,'xEnder');
     FNFe.Trans_Mun     := GetValor(Transporta,'xMun');
     FNFe.Trans_UF      := GetValor(Transporta,'UF');
     FNFe.Vol_Qtde      := StrToFloatXML(GetValor(Vol,'qVol'));
     FNFe.Vol_Esp       := GetValor(Vol,'esp');
     FNFe.Vol_PesoL     := StrToFloatXML(GetValor(Vol,'pesoL'));
     FNFe.Vol_PesoB     := StrToFloatXML(GetValor(Vol,'pesoB'));

     FNFe.Num_Prot      := GetValor(infProt,'nProt');
     //FNFe.Data_Prot     := ISO8601ToDate(GetValor(infProt,'dhRecbto'));
     FNFe.Data_Prot     := date;
     
end;
}

procedure TImportadorNFe.LerCabecalho(XML: IXMLDocument);
var
   infNFe
  ,ide
  ,emit
  ,dest
  ,total
  ,ICMSTot
  ,infAdic
  ,Transp
  ,Transporta
  ,Vol
  ,Root
  ,ProtNFe
  ,infProt: IXMLNode;
begin
     infNFe := LocalizarInfNFe(XML);
     if not Assigned(infNFe) then
       raise Exception.Create('XML inválido.');

     ide     := infNFe.ChildNodes.FindNode('ide');
     emit    := infNFe.ChildNodes.FindNode('emit');
     dest    := infNFe.ChildNodes.FindNode('dest');
     total   := infNFe.ChildNodes.FindNode('total');
     infAdic := infNFe.ChildNodes.FindNode('infAdic');
     Transp  := infNFe.ChildNodes.FindNode('transp');

     if Assigned(Transp) then begin
        Transporta := Transp.ChildNodes.FindNode('transporta');
        Vol        := Transp.ChildNodes.FindNode('vol');
     end else begin
        Transporta := nil;
        Vol := nil;
     end;

     if Assigned(total) then
        ICMSTot := total.ChildNodes.FindNode('ICMSTot')
     else
        ICMSTot := nil;

     // Dados da NF.
     if GetValor(ide,'dhEmi') <> '' then begin
        FNFe.dEmissao := ISO8601ToDate(GetValor(ide,'dhEmi'));
        FNFe.hEmissao := TimeOf(FNFe.dEmissao);
     end;
     if GetValor(ide,'dhSaiEnt') <> '' then begin
        FNFe.dEntrada := ISO8601ToDate(GetValor(ide,'dhSaiEnt'));
        FNFe.hEntrada := TimeOf(FNFe.dEntrada);
     end;

     FNFe.Chave         := Copy(infNFe.Attributes['Id'],4,44);
     FNFe.Numero        := StrToIntDef(GetValor(ide,'nNF'),0);
     FNFe.Serie         := StrToIntDef(GetValor(ide,'serie'),0);
     FNFe.Modelo        := GetValor(ide,'mod');
     FNFe.Natureza      := GetValor(ide,'natOp');
     FNFe.EmitCNPJ      := GetValor(emit,'CNPJ');
     if FNFe.EmitCNPJ = '' then FNFe.EmitCNPJ := GetValor(emit,'CPF');
     FNFe.EmitNome      := GetValor(emit,'xNome');
     FNFe.DestCNPJ      := GetValor(dest,'CNPJ');
     if FNFe.DestCNPJ = '' then FNFe.DestCNPJ := GetValor(dest,'CPF');
     FNFe.DestNome      := GetValor(dest,'xNome');
     FNFe.ValorBCICMS   := StrToFloatXML(GetValor(ICMSTot,'vBC'));
     FNFe.ValorICMS     := StrToFloatXML(GetValor(ICMSTot,'vICMS'));
     FNFe.ValorBCST     := StrToFloatXML(GetValor(ICMSTot,'vBCST'));
     FNFe.ValorST       := StrToFloatXML(GetValor(ICMSTot,'vST'));
     FNFe.ValorProdutos := StrToFloatXML(GetValor(ICMSTot,'vProd'));
     FNFe.ValorFrete    := StrToFloatXML(GetValor(ICMSTot,'vFrete'));
     FNFe.ValorSeguro   := StrToFloatXML(GetValor(ICMSTot,'vSeg'));
     FNFe.ValorDesconto := StrToFloatXML(GetValor(ICMSTot,'vDesc'));
     FNFe.ValorDespesas := StrToFloatXML(GetValor(ICMSTot,'vOutro'));
     FNFe.ValorIPI      := StrToFloatXML(GetValor(ICMSTot,'vIPI'));
     FNFe.ValorPIS      := StrToFloatXML(GetValor(ICMSTot,'vPIS'));
     FNFe.ValorCOFINS   := StrToFloatXML(GetValor(ICMSTot,'vCOFINS'));
     FNFe.ValorTotal    := StrToFloatXML(GetValor(ICMSTot,'vNF'));
     FNFe.Inf_Compl     := GetValor(infAdic,'infAdFisco');
     FNFe.Inf_Compl2    := GetValor(infAdic,'infCpl');
     FNFe.Mod_Frete     := StrToIntDef(GetValor(Transp,'modFrete'),0);
     FNFe.Trans_CNPJ    := GetValor(Transporta,'CNPJ');
     if FNFe.Trans_CNPJ = '' then FNFe.Trans_CNPJ := GetValor(Transporta,'CPF');
     FNFe.Trans_Nome    := GetValor(Transporta,'xNome');
     FNFe.Trans_IE      := GetValor(Transporta,'IE');
     FNFe.Trans_End     := GetValor(Transporta,'xEnder');
     FNFe.Trans_Mun     := GetValor(Transporta,'xMun');
     FNFe.Trans_UF      := GetValor(Transporta,'UF');
     FNFe.Vol_Qtde      := StrToFloatXML(GetValor(Vol,'qVol'));
     FNFe.Vol_Esp       := GetValor(Vol,'esp');
     FNFe.Vol_PesoL     := StrToFloatXML(GetValor(Vol,'pesoL'));
     FNFe.Vol_PesoB     := StrToFloatXML(GetValor(Vol,'pesoB'));

     // Protocolo de autorização
     FNFe.Num_Prot  := '';
     FNFe.Data_Prot := 0;

     Root := XML.DocumentElement;

     if Assigned(Root) and SameText(Root.NodeName,'nfeProc') then begin
        ProtNFe := Root.ChildNodes.FindNode('protNFe');
        if Assigned(ProtNFe) then begin
           infProt := ProtNFe.ChildNodes.FindNode('infProt');
           if Assigned(infProt) then begin
              FNFe.Num_Prot := GetValor(infProt,'nProt');
              if GetValor(infProt,'dhRecbto') <> '' then
                 FNFe.Data_Prot := ISO8601ToDate(GetValor(infProt,'dhRecbto'));
           end;
        end;
     end;
end;

function TImportadorNFe.ImportarXML(Empresa, Operacao: Integer; Arquivo: String): Boolean;
var
  XML: IXMLDocument;
begin
     Result := False;
     XML    := TXMLDocument.Create(nil);
     XML.LoadFromFile(Arquivo);
     XML.Active    := True;
     FNFe.Empresa  := Empresa;
     FNFe.Operacao := Operacao;
     LerCabecalho(XML);
     //if ExisteNota then raise Exception.Create('Esta NF-e já foi importada.');

     FNFe.NotaID := GerarNotaID;

     // Na Parte 3 vamos ler os itens
     LerItens(XML);

     // Na Parte 4 gravaremos no banco.
     GravarCabecalho;
     GravarItens;

     Result := True;
end;

function TImportadorNFe.GetNode(Node: IXMLNode; const Path: String): IXMLNode;
var
  SL: TStringList;
  I: Integer;
  N: IXMLNode;
begin
     Result := nil;
     if not Assigned(Node) then Exit;
     SL := TStringList.Create;
     try
       SL.Delimiter := '/';
       SL.StrictDelimiter := True;
       SL.DelimitedText := Path;
       N := Node;
       for I := 0 to SL.Count - 1 do begin
           if not Assigned(N) then Exit;
           N := N.ChildNodes.FindNode(SL[I]);
       end;
       Result := N;
     finally
       SL.Free;
     end;
end;

procedure TImportadorNFe.LerItens(XML: IXMLDocument);
var
  InfNFe, DetNode, Prod, Imp, ICM, PIS, COFINS: IXMLNode;
  I: Integer;
  Item: TNFeItem;
begin
  InfNFe := LocalizarInfNFe(XML);
  if not Assigned(InfNFe) then raise Exception.Create('infNFe não encontrado.');

  FNFe.Itens.Clear;

  for I := 0 to InfNFe.ChildNodes.Count - 1 do begin
    if InfNFe.ChildNodes[I].NodeName <> 'det' then Continue;
    DetNode := InfNFe.ChildNodes[I];
    Prod    := DetNode.ChildNodes['prod'];
    Imp     := DetNode.ChildNodes['imposto'];
    ICM     := nil;
    PIS     := nil;
    COFINS  := nil;
    if Assigned(Imp) then begin
      ICM    := Imp.ChildNodes.FindNode('ICMS');
      PIS    := Imp.ChildNodes.FindNode('PIS');
      COFINS := Imp.ChildNodes.FindNode('COFINS');
    end;
    Item := TNFeItem.Create;

    // Identificação
    Item.Item         := StrToIntDef(GetValor(DetNode,'nItem'),0);
    Item.Codigo       := GetValor(Prod,'cProd');
    Item.CodigoBarras := GetValor(Prod,'cEAN');
    Item.Descricao    := GetValor(Prod,'xProd');
    Item.NCM          := GetValor(Prod,'NCM');
    Item.CEST         := GetValor(Prod,'CEST');
    Item.CFOP         := GetValor(Prod,'CFOP');
    Item.Unidade      := GetValor(Prod,'uCom');
    
    // Quantidades e valores
    Item.Quantidade    := StrToFloatDef(GetValor(Prod,'qCom'),0);
    Item.ValorUnitario := StrToFloatXML(GetValor(Prod,'vUnCom'));
    Item.ValorTotal    := StrToFloatXML(GetValor(Prod,'vProd'));

    // ICMS (simplificado)
    if Assigned(ICM) then begin
       Item.CSTICMS := GetValor(ICM.ChildNodes['ICMS00'],'CST') +
                       GetValor(ICM.ChildNodes['ICMS10'],'CST') +
                       GetValor(ICM.ChildNodes['ICMS20'],'CST') +
                       GetValor(ICM.ChildNodes['ICMS40'],'CST') +
                       GetValor(ICM.ChildNodes['ICMS60'],'CST') +
                       GetValor(ICM.ChildNodes['ICMS90'],'CST');

      Item.BCICMS := StrToFloatXML(GetValor(ICM.ChildNodes['ICMS00'],'vBC')) +
                     StrToFloatXML(GetValor(ICM.ChildNodes['ICMS10'],'vBC')) +
                     StrToFloatXML(GetValor(ICM.ChildNodes['ICMS20'],'vBC'));

      Item.VICMS := StrToFloatXML(GetValor(ICM.ChildNodes['ICMS00'],'vICMS')) +
                    StrToFloatXML(GetValor(ICM.ChildNodes['ICMS10'],'vICMS')) +
                    StrToFloatXML(GetValor(ICM.ChildNodes['ICMS20'],'vICMS'));

      Item.BCST := StrToFloatXML(GetValor(ICM.ChildNodes['ICMS10'],'vBCST')) +
                   StrToFloatXML(GetValor(ICM.ChildNodes['ICMS60'],'vBCST'));

      Item.VST := StrToFloatXML(GetValor(ICM.ChildNodes['ICMS10'],'vICMSST')) +
                  StrToFloatXML(GetValor(ICM.ChildNodes['ICMS60'],'vICMSST'));
    end;

    // PIS
    if Assigned(PIS) then begin
       Item.CSTPIS := GetValor(PIS.ChildNodes['PISAliq'],'CST') +
                      GetValor(PIS.ChildNodes['PISNT'],'CST') +
                      GetValor(PIS.ChildNodes['PISOutr'],'CST');

      Item.VPIS := StrToFloatXML(GetValor(PIS.ChildNodes['PISAliq'],'vPIS')) +
                   StrToFloatXML(GetValor(PIS.ChildNodes['PISOutr'],'vPIS'));
    end;

    // COFINS
    if Assigned(COFINS) then begin
       Item.CSTCOFINS := GetValor(COFINS.ChildNodes['COFINSAliq'],'CST') +
                         GetValor(COFINS.ChildNodes['COFINSNT'],'CST') +
                         GetValor(COFINS.ChildNodes['COFINSOutr'],'CST');
      Item.VCOFINS := StrToFloatXML(GetValor(COFINS.ChildNodes['COFINSAliq'],'vCOFINS')) +
                      StrToFloatXML(GetValor(COFINS.ChildNodes['COFINSOutr'],'vCOFINS'));
    end;
    FNFe.Itens.Add(Item);
  end;
end;

procedure TImportadorNFe.GravarCabecalho;
var
  Q: TFDQuery;
begin
     Q := TFDQuery.Create(nil);
     try
       Q.Connection := FConn;
       with q.sql do begin
            clear;
            add('insert into NotasFiscais (');
            add('            Nota_id');
            add('           ,Empresa');
            add('           ,ES');
            add('           ,Nota');
            add('           ,Serie');
            add('           ,Chave');
            add('           ,Data_Emissao');
            add('           ,Hora_Emissao');
            add('           ,Data_ES');
            add('           ,Hora_ES');
            add('           ,Destinatario');
            add('           ,Destinatario_CNPJ_CPF');
            add('           ,Destinatario_Nome');
            add('           ,Valor_Produtos');
            add('           ,Valor_Frete');
            add('           ,Valor_Seguro');
            add('           ,Valor_Despesas');
            add('           ,Valor_Descontos');
            add('           ,Valor_BCICMS');
            add('           ,Valor_ICMS');
            add('           ,Valor_BCICMSST');
            add('           ,Valor_ICMSST');
            add('           ,Valor_IPI');
            add('           ,Valor_PIS');
            add('           ,Valor_COFINS');
            add('           ,Valor_TotalNota');
            add('           ,Emissao');
            add('           ,Operacao');
            add('           ,Modelo');
            add('           ,Inf_Compl');
            add('           ,Inf_Compl2');
            add('           ,Modalidade_Frete');
            add('           ,Cancelada');
            add('           ,Denegada');
            add('           ,Volume_Quantidade');
            add('           ,Volume_Especie');
            add('           ,Volume_PesoLiquido');
            add('           ,Volume_PesoBruto');
            add('           ,Nfe_Protocolo');
            add('           ,Nfe_DataProtocolo');
            add('           ,DPEC');
            add('           ,Beneficio_Fiscal');
            add('    values (');
            add('            :Nota_id');
            add('           ,:Empresa');
            add('           ,:ES');
            add('           ,:Nota');
            add('           ,:Serie');
            add('           ,:Chave');
            add('           ,:Data_Emissao');
            add('           ,:Hora_Emissao');
            add('           ,:Data_ES');
            add('           ,:Hora_ES');
            add('           ,:Dest');
            add('           ,:CNPJ');
            add('           ,:Nome');
            add('           ,:VProd');
            add('           ,:VFrete');
            add('           ,:VSeg');
            add('           ,:VDesc');
            add('           ,:VOut');
            add('           ,:VBC');
            add('           ,:VICMS');
            add('           ,:VBCST');
            add('           ,:VST');
            add('           ,:VIPI');
            add('           ,:VPIS');
            add('           ,:VCOFINS');
            add('           ,:VTotal');
            add('           ,:Emissao');
            add('           ,:Operacao');
            add('           ,:Modelo');
            add('           ,:Inf_Compl');
            add('           ,:Inf_Compl2');
            add('           ,:Mod_Frete');
            add('           ,0');
            add('           ,0');
            add('           ,:Vol_Qtde');
            add('           ,:Vol_Esp');
            add('           ,:Vol_PesoL');
            add('           ,:Vol_PesoB');
            add('           ,:NumProt');
            add('           ,:DataProt');
            add('           ,0');           
            add('           ,Benef)');
       end;                 
       with q do begin                                     
            ParamByName('Nota_id').AsInteger       := FNFe.NotaID;
            ParamByName('Empresa').AsInteger       := FNFe.Empresa;
            ParamByName('ES').AsInteger            := 0;
            ParamByName('Nota').AsInteger          := FNFe.Numero;
            ParamByName('Serie').AsInteger         := FNFe.Serie;
            ParamByName('Modelo').asstring         := FNFe.Modelo;
            ParamByName('Chave').AsString          := FNFe.Chave;
            ParamByName('Data_Emissao').AsDateTime := FNFe.dEmissao;
            ParamByName('Hora_Emissao').AsDateTime := FNFe.hEmissao;
            ParamByName('Data_ES').AsDateTime      := FNFe.dEntrada;
            ParamByName('Hora_ES').AsDateTime      := FNFe.hEntrada;
            ParamByName('Dest').AsInteger          := FNFe.Empresa;
            ParamByName('CNPJ').AsString           := FNFe.DestCNPJ;
            ParamByName('Nome').AsString           := FNFe.DestNome;
            ParamByName('VProd').AsFloat           := FNFe.ValorProdutos;
            ParamByName('VFrete').AsFloat          := FNFe.ValorFrete;
            ParamByName('VSeg').AsFloat            := FNFe.ValorSeguro;
            ParamByName('VDesc').AsFloat           := FNFe.ValorDesconto;
            ParamByName('VOut').AsFloat            := FNFe.ValorDespesas;
            ParamByName('VBC').AsFloat             := FNFe.ValorBCICMS;
            ParamByName('VICMS').AsFloat           := FNFe.ValorICMS;
            ParamByName('VBCST').AsFloat           := FNFe.ValorBCST;
            ParamByName('VST').AsFloat             := FNFe.ValorST;
            ParamByName('VIPI').AsFloat            := FNFe.ValorIPI;
            ParamByName('VPIS').AsFloat            := FNFe.ValorPIS;
            ParamByName('VCOFINS').AsFloat         := FNFe.ValorCOFINS;
            ParamByName('VTotal').AsFloat          := FNFe.ValorTotal;
            ParamByName('Emissao').asstring        := 'T';
            ParamByName('Operacao').asinteger      := FNFe.Operacao;
            ParamByName('Inf_Compl').value         := FNFe.Inf_Compl;
            ParamByName('Inf_Compl2').value        := FNFe.Inf_Compl2;
            ParamByName('Mod_Frete').asinteger     := FNFe.Mod_Frete;
            ParamByName('Vol_Qtde').asfloat        := FNFe.Vol_Qtde;
            ParamByName('Vol_Esp').asstring        := FNFe.Vol_Esp;
            ParamByName('Vol_PesoL').asfloat       := FNFe.Vol_PesoL;
            ParamByName('Vol_PesoB').asfloat       := FNFe.Vol_PesoB;
//            ParamByName('Benef').asfloat           :=      //Informado

            ParamByName('NumProt').asstring        := FNFe.Num_Prot;
            ParamByName('DataProt').asDateTime     := FNFe.Data_Prot;
            
            sql.SaveToFile('c:\temp\Adiciona_NFe_Web.sql');
            execsql;
       end;
     finally
       Q.Free;
     end;
end;

procedure TImportadorNFe.GravarItens;
var
  Q: TFDQuery;
  Item: TNFeItem;
begin
     Q := TFDQuery.Create(nil);
     try
       Q.Connection := FConn;
       with Q do begin
            sql.text := 'insert into NotasItens (Nota_id, Empresa, Nota, Item, Codigo_Mercadoria, Descricao_Mercadoria, NCM, CFOP, UM, Quantidade, Valor_Unitario, Valor_Total, Valor_BCICMSOp,'+
                        'Valor_ICMSOp, Valor_BCICMSST, Valor_ICMSST, Valor_PIS, Valor_COFINS, Total_Item)'+
                        'values (:Nota_id, :Empresa, :Nota, :Item, :Codigo, :Descricao, :NCM, :CFOP, :UM, :Qtd, :VU, :VT, :BCICMS, :ICMS, :BCST, :ST, :PIS, :COFINS, :Total)';
            for Item in FNFe.Itens do begin
                ParamByName('Nota_id').AsInteger  := FNFe.NotaID;
                ParamByName('Empresa').AsInteger  := FNFe.Empresa;
                ParamByName('Nota').AsInteger     := FNFe.Numero;
                ParamByName('Item').AsInteger     := Item.Item;
                ParamByName('Codigo').AsString    := Item.Codigo;
                ParamByName('Descricao').AsString := Item.Descricao;
                ParamByName('NCM').AsString       := Item.NCM;
                ParamByName('CFOP').AsString      := Item.CFOP;
                ParamByName('UM').AsString        := Item.Unidade;
                ParamByName('Qtd').AsFloat        := Item.Quantidade;
                ParamByName('VU').AsFloat         := Item.ValorUnitario;
                ParamByName('VT').AsFloat         := Item.ValorTotal;
                ParamByName('BCICMS').AsFloat     := Item.BCICMS;
                ParamByName('ICMS').AsFloat       := Item.VICMS;
                ParamByName('BCST').AsFloat       := Item.BCST;
                ParamByName('ST').AsFloat         := Item.VST;
                ParamByName('PIS').AsFloat        := Item.VPIS;
                ParamByName('COFINS').AsFloat     := Item.VCOFINS;
                ParamByName('Total').AsFloat      := Item.ValorTotal;
                execsql;
           end;
       end;
     finally
       Q.Free;
     end;
end;


end.
