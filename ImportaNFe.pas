unit ImportaNFe;

interface

uses 
  System.SysUtils, System.Classes, System.DateUtils, System.Generics.Collections, System.Variants, Xml.XMLDoc, Xml.XMLIntf, Xml.adomxmldom, FireDAC.Comp.Client, FireDAC.Stan.Param, Dialogs;
  
type
  TNFeItem = class
  public
    Item: Integer;
    Codigo: integer;
    CodFab: string;
    
    ProcImp: string;
    ProcExp: string;
    Declaracao: string;
    Adicao: integer;
    Embar: integer;
    
    TipoProd: integer;
    OrigProd: integer;
    Escala: boolean;
    FinalProd: integer;
    GTIN: string;
    Descricao: string;
    DescrAdic: string;
    NCM: String;
    CEST: String;
    CFOP: String;
    cBenef: string;
    Unidade: String;
    Quantidade: Double;
    vUnitario: Double;
    vTotal: Double;
    
    CSTICMSNF: String;
    CSTICMSOrig: String;
    CSTICMS: String;
    CSTICMSEnt: String;
    BCICMS: Double;
    vICMS: Double;
    BCST: Double;
    vST: Double;

    CSTIPI: String;
    cEnq: String;
    vBCIPI: Double;
    vIPI: Double;
    vIPIOrig: Double;
    pIPI: Double;

    vBCII: Double;
    vII: Double;
    vIOF: Double;
    vDesp: Double;
    
    CSTPIS: String;
    vPIS: Double;
    vCOFINS: Double;
    CSTCOFINS: String;

    CSTCBS: string;
    ClassTrib: string;
  end;

type
  TNFe = class
  public
    NotaID: Integer;
    DestCNPJ: string;
    Empresa: string;
    Numero: Integer;
    Serie: Integer;
    Chave: String;
    dEmissao: TDateTime;
    hEmissao: TDateTime;
    dEntrada: TDateTime;
    hEntrada: TDateTime;
    Natureza: String;
    Operacao: integer;
    CentCus: string;
    MovInv: boolean;
    MovEst: boolean;
    MovEstRep: boolean;
    EmitCod: integer;
    EmitCNPJ: String;
    EmitCPF: String;
    EmitNome: String;
    EmitFant: String;
    EmitRua: String;
    EmitNro: String;
    EmitBairro: String;
    EmitMun: String;
    EmitMunNome: String;
    EmitUF: String;
    EmitCEP: String;
    EmitPais: String;
    EmitTel: String;
    EmitIE: String;
    EmitSimples: boolean;
    EmitMEI: boolean;
    EmitCompl: string;
    EmitJur: boolean;
    EmitRamo: integer;
    EmitIsento: boolean;
    EmitZonaF: boolean;
    EmitIST: boolean;
    EmitMicro: boolean;
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
    Declaracao: string;
    ProcImp: string;
    ProcExp: string;
    
    constructor Create;
    destructor Destroy; override;
  end;
  
type
  TImportaNFeParams = class
  public
    Arquivo: string;
    SubstNF: boolean;
    Origem: integer;
    TipoProd: integer;
    ClassProd: integer;
  end;

type
  TImportadorNFe = class
  private
    FConn: TFDConnection;
    FNFe: TNFe;
    function GetValor(Node: IXMLNode; Campo: String):String;
    function ExisteNota:Boolean;
    function GerarNotaID:Integer;
    procedure LerCabecalho(XML:IXMLDocument);
    procedure LerItens(XML:IXMLDocument);
    procedure GravarCabecalho;
    procedure GravarItens;
    function StrToFloatXML(const Valor: String): Double;
    function LocalizarInfNFe(XML: IXMLDocument): IXMLNode;
    function GetNode(Node: IXMLNode; const Path: String): IXMLNode;
    function CadastraFornecedor: integer;
    function ExisteEmpresa: Boolean;
    function CadastraProduto(Item: TNFeItem): integer;
  public
    mID: integer;
    mOrigem: integer;
    mTipoProd: integer;
    mClassProd: integer;
    property NFe: TNFe read FNFe;
    constructor Create(AConn: TFDConnection);
    destructor Destroy; override;
    function ImportarXML(Params: TImportaNFeParams): Boolean;
  end;

implementation

uses FiscalNFTerceiros, Funcoes;

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
     FNFe  := TNFe.Create;
end;

destructor TImportadorNFe.Destroy;
begin
     FNFe.Free;
     inherited;
end;

function TImportadorNFe.GetValor(Node:IXMLNode; Campo:String):String;
begin
     Result := '';
     if not Assigned(Node) then Exit;
     if Node.ChildNodes.FindNode(Campo) <> nil then Result := Node.ChildNodes[Campo].Text;
end;

function TImportadorNFe.GerarNotaID:Integer;
var
   tab: TFDQuery;
begin
   tab := TFDQuery.Create(nil);
   try
      with tab do begin 
           Connection := FConn;
           sql.Text   := 'select isnull(max(Nota_id),0)+1 NotaID from NotasFiscais';
           open;
           result := fieldbyname('NotaID').asinteger;
      end;
   finally
      tab.Free;
   end;
end;

function TImportadorNFe.ExisteNota:Boolean;
var
   tab: TFDQuery;
begin
     tab := TFDQuery.Create(nil);
     try
        with tab do begin
             Connection := FConn;
             SQL.Text   := 'select Nota_id from NotasFiscais where Chave = :Chave ';
             ParamByName('Chave').AsString := FNFe.Chave;
             Open;
             mID    := fieldbyname('Nota_id').asinteger;
             Result := not IsEmpty;
        end;
     finally
        tab.Free;
     end;
end;

function TImportadorNFe.ExisteEmpresa:Boolean;
var
   tab: TFDQuery;
begin
     result := true;
     if trim(FNFe.DestCNPJ) <> '' then begin
        tab := TFDQuery.Create(nil);
        try
           with tab do begin  
                Connection := FConn;
                SQL.Text := 'select CNPJ from Empresas where CNPJ = :pcnpj ';
                ParamByName('pcnpj').AsString := FNFe.DestCNPJ;
                Open;
                Result := not IsEmpty;
           end;
        finally
           tab.Free;
        end;
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

procedure TImportadorNFe.LerCabecalho(XML: IXMLDocument);
var
   infNFe
  ,ide
  ,emit
  ,emitEnd
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
   ttmp: TFDQuery;
begin
     ttmp := TFDQuery.Create(nil);
     ttmp.Connection := FConn;
     
     infNFe := LocalizarInfNFe(XML);
     if not Assigned(infNFe) then raise Exception.Create('XML inválido.');

     ide     := infNFe.ChildNodes.FindNode('ide');
     emit    := infNFe.ChildNodes.FindNode('emit');
     emitEnd := emit.ChildNodes.FindNode('enderEmit');
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

     // Dados da Nota.
     FNFe.Chave    := Copy(infNFe.Attributes['Id'],4,44);
     FNFe.Numero   := StrToIntDef(GetValor(ide,'nNF'),0);
     FNFe.Serie    := StrToIntDef(GetValor(ide,'serie'),0);
     FNFe.Modelo   := GetValor(ide,'mod');
     FNFe.Natureza := GetValor(ide,'natOp');
     FNFe.EmitCNPJ := GetValor(dest,'CNPJ');
     
     // Dados do Emitente/Fornecedor.
     // Procura o fornecedor pelo CNPJ ou CPF, não encontrando cadastra pega o codigo e adiciona a nota fiscal.
     FNFe.EmitCNPJ    := GetValor(emit,'CNPJ');
     FNFe.EmitCPF     := GetValor(emit,'CPF');
     FNFe.EmitNome    := GetValor(emit,'xNome');
     FNFe.EmitFant    := GetValor(emit,'xFant');
     FNFe.EmitIE      := GetValor(emit,'IE');
     FNFe.EmitSimples := StrToIntDef(GetValor(emit,'CRT'),0) in[1, 2];
     FNFe.EmitMEI     := StrToIntDef(GetValor(emit,'CRT'),0) = 4;
     FNFe.EmitRua     := GetValor(emitEnd,'xLgr');
     FNFe.EmitNro     := GetValor(emitEnd,'nro');
     FNFe.EmitBairro  := GetValor(emitEnd,'xBairro');
     FNFe.EmitMun     := GetValor(emitEnd,'cMun');
     FNFe.EmitMunNome := GetValor(emitEnd,'xMun');
     FNFe.EmitUF      := GetValor(emitEnd,'UF');
     FNFe.EmitCEP     := GetValor(emitEnd,'CEP');
     FNFe.EmitPais    := GetValor(emitEnd,'cPais');
     FNFe.EmitTel     := GetValor(emitEnd,'fone');
     FNFe.EmitCompl   := GetValor(emitEnd,'xCpl');
     FNFe.EmitJur     := trim(FNFe.EmitCNPJ) <> '';
     
     with ttmp do begin
          sql.clear;
          sql.add('select Codigo from Destinatarios where (CNPJ= :pCNPJCPF or CPF = :pCNPJCPF)');
          parambyname('pCNPJCPF').asstring := trim(FNFe.EmitCNPJ)+trim(FNFe.EmitCPF);
          open;
          if fieldbyname('Codigo').asinteger > 0 then begin
             FNFe.EmitCod := fieldbyname('Codigo').asinteger;
          end else begin
             FNFe.EmitCod := CadastraFornecedor;
          end;
     end;

     // Dados do Destinatario.
     FNFe.DestCNPJ := GetValor(dest,'CNPJ');

     // Valores da Nota.
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

     ttmp.free;
end;

function TImportadorNFe.ImportarXML(Params: TImportaNFeParams): Boolean;
var
  XML: IXMLDocument;
begin
     Result := False;
     XML    := TXMLDocument.Create(nil);
     XML.LoadFromFile(Params.Arquivo);
     XML.Active    := True;

     LerCabecalho(XML);

     // Pega o CNPJ da empresa e verifica se a empresa esta cadastrada.
     if not ExisteEmpresa then begin
        raise Exception.Create('NF-e não foi emitida contra nenhum CNPJ cadastrado!');
     end;
    
     // Verifica se a NF-e ja esta cadastrada.
     if not Params.SubstNF then begin
        if ExisteNota then begin
           raise Exception.Create('NF-e ja importada anteriormente');
        end;
     end else begin
       ExisteNota;
     end;

     FNFe.NotaID := GerarNotaID;
     mOrigem     := Params.Origem;
     mTipoProd   := Params.TipoProd;
     mClassProd  := Params.ClassProd;

     // Carrega o XML da NF-e.
     LerItens(XML);
     
     // Salva a capa da nota no banco.
     GravarCabecalho;
     
     // Salva os itens da nota no banco.
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
       SL.Delimiter       := '/';
       SL.StrictDelimiter := True;
       SL.DelimitedText   := Path;
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
  InfNFe
 ,DetNode
 ,Prod
 ,Imp
 ,ICM
 ,IPI
 ,II
 ,PIS
 ,IBSCBS
 ,DI
 ,Adicao
 ,COFINS: IXMLNode;
  i: Integer;
  Item: TNFeItem;
  ttmp: TFDQuery;
begin
     ttmp := TFDQuery.Create(nil);
     ttmp.Connection := FConn;
     
     InfNFe := LocalizarInfNFe(XML);
     if not Assigned(infNFe) then raise Exception.Create('XML inválido.');

     FNFe.Itens.Clear;

     for i := 0 to pred(InfNFe.ChildNodes.Count) do begin
         if InfNFe.ChildNodes[i].NodeName <> 'det' then Continue;
         DetNode := InfNFe.ChildNodes[i];
         Prod    := DetNode.ChildNodes['prod'];
         DI      := Prod.ChildNodes['DI'];
         Imp     := DetNode.ChildNodes['imposto'];
         
         ICM     := nil;
         IPI     := nil;
         II      := nil;
         PIS     := nil;
         COFINS  := nil;
         IBSCBS  := nil;
         Adicao  := nil;
         
         if Assigned(Imp) then begin
            ICM    := Imp.ChildNodes.FindNode('ICMS');
            IPI    := Imp.ChildNodes.FindNode('IPI');
            II     := Imp.ChildNodes.FindNode('II');
            PIS    := Imp.ChildNodes.FindNode('PIS');
            COFINS := Imp.ChildNodes.FindNode('COFINS');
            IBSCBS := Imp.ChildNodes.FindNode('IBSCBS');
         end;
         if Assigned(DI) then begin
            Adicao := Di.ChildNodes.FindNode('adi');
         end;

         Item := TNFeItem.Create;

         // Identificação.
         Item.Item      := StrToIntDef(DetNode.Attributes['nItem'], 0);
         Item.CodFab    := GetValor(Prod,'cProd');
         Item.GTIN      := GetValor(Prod,'cEAN');
         Item.Descricao := GetValor(Prod,'xProd');
         
         if Assigned(DetNode.ChildNodes.FindNode('infAdProd')) then begin
            Item.Descricao := Item.Descricao + DetNode.ChildNodes['infAdProd'].Text;
         end;

         Item.NCM        := GetValor(Prod,'NCM');
         Item.CEST       := GetValor(Prod,'CEST');
         Item.CFOP       := GetValor(Prod,'CFOP');
         Item.Unidade    := GetValor(Prod,'uCom').toupper;
         Item.Quantidade := StrToFloatXML(GetValor(Prod,'qCom'));
         Item.vUnitario  := StrToFloatXML(GetValor(Prod,'vUnCom'));
         Item.vTotal     := StrToFloatXML(GetValor(Prod,'vProd'));

         // Cadastro do produto.
         with ttmp do begin
              sql.clear;
              sql.add('select Codigo from Produtos where Descricao = :pDesc and Fornecedor = :pForn and NCM = :pNCM');
              parambyname('pDesc').asstring  := Item.Descricao;
              parambyname('pForn').asinteger := FNFe.EmitCod;
              parambyname('pNCM').asstring   := Item.NCM;
              open;
              if fieldbyname('Codigo').asinteger > 0 then begin
                 Item.Codigo := fieldbyname('Codigo').asinteger;
              end else begin
                 Item.Codigo := CadastraProduto(Item);
              end;
         end;
         // Cadastro do produto.
         with ttmp do begin
              sql.clear;
              sql.add('select CST_ICMS from OperacaoFiscal where Codigo = :pOper');
              parambyname('pOper').asinteger := FNFe.Operacao;
              open;
              Item.CSTICMSEnt := fieldbyname('CST_ICMS').asstring;
         end;
         // II.
         if Assigned(II) then begin
            Item.vBCII := StrToFloatXML(GetValor(II,'vBC'));
            Item.vDesp := StrToFloatXML(GetValor(II,'vDespAdu'));
            Item.vII   := StrToFloatXML(GetValor(II,'vII'));
            Item.vIOF  := StrToFloatXML(GetValor(II,'vIOF'));
         end;
         // IPI.
         if Assigned(IPI) then begin
            Item.cEnq   := GetValor(IPI.ChildNodes['IPITrib'],'cEnq');
            Item.CSTIPI := GetValor(IPI.ChildNodes['IPITrib'],'CST');
            Item.vBCIPI := StrToFloatXML(GetValor(IPI.ChildNodes['IPITrib'],'vBC'));
            Item.pIPI   := StrToFloatXML(GetValor(IPI.ChildNodes['IPITrib'],'pIPI'));
            Item.vIPI   := StrToFloatXML(GetValor(IPI.ChildNodes['IPITrib'],'vIPI'));
         end;
         // CST IPI.
         with ttmp do begin
              sql.clear;
              sql.add('select CST_Inversa from CSTIPI where Codigo = :pCod');
              parambyname('pCod').asstring := Item.CSTIPI;
              open;
              Item.CSTIPI := fieldbyname('CST_Inversa').asstring;
         end;
         // ICMS (simplificado).
         if Assigned(ICM) then begin
            with ttmp do begin
                 sql.clear;
                 sql.add('select Codigo from CSTICMSTabB order by cast(Codigo as int)');
                 open;
                 while not eof do begin
                       Item.CSTICMSOrig := Item.CSTICMSOrig + GetValor(ICM.ChildNodes['ICMS'+fieldbyname('Codigo').asstring],'orig');
                       Item.CSTICMS     := Item.CSTICMS     + GetValor(ICM.ChildNodes['ICMS'+fieldbyname('Codigo').asstring],'CST');
                       Item.BCICMS      := Item.BCICMS      + StrToFloatXML(GetValor(ICM.ChildNodes['ICMS'+fieldbyname('Codigo').asstring],'vBC'));
                       Item.vICMS       := Item.vICMS       + StrToFloatXML(GetValor(ICM.ChildNodes['ICMS'+fieldbyname('Codigo').asstring],'vICMS'));
                       Item.BCST        := Item.BCST        + StrToFloatXML(GetValor(ICM.ChildNodes['ICMS'+fieldbyname('Codigo').asstring],'vBCST'));
                       Item.vST         := Item.vST         + StrToFloatXML(GetValor(ICM.ChildNodes['ICMS'+fieldbyname('Codigo').asstring],'vICMSST'));
                       next;
                 end;
            end;
            Item.CSTICMSNF  := Item.CSTICMSOrig+Item.CSTICMS;
         end;
         // PIS.
         if Assigned(PIS) then begin
            Item.CSTPIS := GetValor(PIS.ChildNodes['PISAliq'],'CST') + GetValor(PIS.ChildNodes['PISNT'],'CST') + GetValor(PIS.ChildNodes['PISOutr'],'CST');
            Item.VPIS   := StrToFloatXML(GetValor(PIS.ChildNodes['PISAliq'],'vPIS')) + StrToFloatXML(GetValor(PIS.ChildNodes['PISOutr'],'vPIS'));
         end;
         // COFINS.
         if Assigned(COFINS) then begin
            Item.CSTCOFINS := GetValor(COFINS.ChildNodes['COFINSAliq'],'CST') + GetValor(COFINS.ChildNodes['COFINSNT'],'CST') + GetValor(COFINS.ChildNodes['COFINSOutr'],'CST');
            Item.VCOFINS   := StrToFloatXML(GetValor(COFINS.ChildNodes['COFINSAliq'],'vCOFINS')) + StrToFloatXML(GetValor(COFINS.ChildNodes['COFINSOutr'],'vCOFINS'));
         end;
         // IBS/CBS.
         if Assigned(IBSCBS) then begin
            Item.CSTCBS    := GetValor(IBSCBS,'CST');
            Item.ClassTrib := GetValor(IBSCBS,'cClassTrib');
         end;
         //DUIMP
         Item.Declaracao := iif(FNFe.Declaracao= '',  GetValor(DI, 'nDI'), FNFe.Declaracao);
         Item.Adicao     := StrToIntDef(GetValor(Adicao, 'nAdicao'), 0);

         FNFe.Itens.Add(Item);
     end;
end;

procedure TImportadorNFe.GravarCabecalho;
var
  tNotas: TFDQuery;
begin
     tNotas := TFDQuery.Create(nil);
     try
       tNotas.Connection := FConn;
       with tNotas do begin
            sql.clear;
            sql.add('delete from NotasItens   where Nota_id = :pid');
            sql.add('delete from NotasFiscais where Nota_id = :pid');
            parambyname('pid').asinteger := mID;
            execute;
            
            sql.clear;
            sql.add('insert into NotasFiscais (');
            sql.add('            Nota_id');
            sql.add('           ,Empresa');
            sql.add('           ,ES');
            sql.add('           ,Nota');
            sql.add('           ,Serie');
            sql.add('           ,Chave');
            sql.add('           ,Data_Emissao');
            sql.add('           ,Hora_Emissao');
            sql.add('           ,Data_ES');
            sql.add('           ,Hora_ES');
            sql.add('           ,Destinatario');
            sql.add('           ,Destinatario_CNPJ_CPF');
            sql.add('           ,Destinatario_Nome');
            sql.add('           ,Destinatario_Rua');
            sql.add('           ,Destinatario_RuaNumero');
            sql.add('           ,Destinatario_Complemento');
            sql.add('           ,Destinatario_Bairro');
            sql.add('           ,Destinatario_Municipio');
            sql.add('           ,Destinatario_MunicipioNome');
            sql.add('           ,Destinatario_Estado');
            sql.add('           ,Destinatario_CEP');
            sql.add('           ,Destinatario_Pais');
            sql.add('           ,Destinatario_Telefone1');
            sql.add('           ,Destinatario_IE');
            sql.add('           ,Destinatario_Juridica');
            sql.add('           ,Valor_Produtos');
            sql.add('           ,Valor_Frete');
            sql.add('           ,Valor_Seguro');
            sql.add('           ,Valor_Despesas');
            sql.add('           ,Valor_Descontos');
            sql.add('           ,Valor_BCICMS');
            sql.add('           ,Valor_ICMS');
            sql.add('           ,Valor_BCICMSST');
            sql.add('           ,Valor_ICMSST');
            sql.add('           ,Valor_IPI');
            sql.add('           ,Valor_PIS');
            sql.add('           ,Valor_COFINS');
            sql.add('           ,Valor_TotalNota');
            sql.add('           ,Emissao');
            sql.add('           ,Operacao');
            sql.add('           ,Modelo');
            sql.add('           ,Inf_Compl');
            sql.add('           ,Inf_Compl2');
            sql.add('           ,Modalidade_Frete');
            sql.add('           ,Cancelada');
            sql.add('           ,Denegada');
            sql.add('           ,Volume_Quantidade');
            sql.add('           ,Volume_Especie');
            sql.add('           ,Volume_PesoLiquido');
            sql.add('           ,Volume_PesoBruto');
            sql.add('           ,Nfe_Protocolo');
            sql.add('           ,Nfe_DataProtocolo');
            sql.add('           ,DPEC');
            sql.add('           ,Beneficio_Fiscal');
            sql.add('           ,Centro_Custo');
            sql.add('           )');               
            sql.add('       values (');
            sql.add('            :Nota_id');
            sql.add('           ,:Empresa');
            sql.add('           ,:ES');
            sql.add('           ,:Nota');
            sql.add('           ,:Serie');
            sql.add('           ,:Chave');
            sql.add('           ,:Data_Emissao');
            sql.add('           ,:Hora_Emissao');
            sql.add('           ,:Data_ES');
            sql.add('           ,:Hora_ES');
            sql.add('           ,:DestCod');
            sql.add('           ,:DestCNPJ');
            sql.add('           ,:DestNome');
            sql.add('           ,:DestRua');
            sql.add('           ,:DestRuaNum');
            sql.add('           ,:DestCompl');
            sql.add('           ,:DestBairro');
            sql.add('           ,:DestMun');
            sql.add('           ,:DestMunNome');
            sql.add('           ,:DestUF');
            sql.add('           ,:DestCEP');
            sql.add('           ,:DestPais');
            sql.add('           ,:DestTel');
            sql.add('           ,:DestIE');
            sql.add('           ,:DestJur');
            sql.add('           ,:VProd');
            sql.add('           ,:VFrete');
            sql.add('           ,:VSeg');
            sql.add('           ,:VDesc');
            sql.add('           ,:VOut');
            sql.add('           ,:VBC');
            sql.add('           ,:VICMS');
            sql.add('           ,:VBCST');
            sql.add('           ,:VST');
            sql.add('           ,:VIPI');
            sql.add('           ,:VPIS');
            sql.add('           ,:VCOFINS');
            sql.add('           ,:VTotal');
            sql.add('           ,:Emissao');
            sql.add('           ,:Operacao');
            sql.add('           ,:Modelo');
            sql.add('           ,:Inf_Compl');
            sql.add('           ,:Inf_Compl2');
            sql.add('           ,:Mod_Frete');
            sql.add('           ,0');           // Cancelada.
            sql.add('           ,0');           // Denegada.
            sql.add('           ,:Vol_Qtde');
            sql.add('           ,:Vol_Esp');
            sql.add('           ,:Vol_PesoL');
            sql.add('           ,:Vol_PesoB');
            sql.add('           ,:NumProt');
            sql.add('           ,:DataProt');
            sql.add('           ,0');          // DPEC. 
            sql.add('           ,:Benef');
            sql.add('           ,:CenCus');
            sql.add('           )');
            
            ParamByName('Nota_id').AsInteger       := FNFe.NotaID;
            ParamByName('Empresa').asstring        := FNFe.Empresa;
            ParamByName('ES').AsInteger            := 0;
            ParamByName('Nota').AsInteger          := FNFe.Numero;
            ParamByName('Serie').AsInteger         := FNFe.Serie;
            ParamByName('Chave').AsString          := FNFe.Chave;
            ParamByName('Data_Emissao').AsDateTime := FNFe.dEmissao;
            ParamByName('Hora_Emissao').AsDateTime := FNFe.hEmissao;
            ParamByName('Data_ES').AsDateTime      := FNFe.dEntrada;
            ParamByName('Hora_ES').AsDateTime      := FNFe.hEntrada;
            ParamByName('DestCod').asinteger       := FNFe.EmitCod;
            ParamByName('DestCNPJ').AsString       := FNFe.EmitCNPJ;
            ParamByName('DestNome').AsString       := FNFe.EmitNome;
            ParamByName('DestRua').AsString        := FNFe.EmitRua;
            ParamByName('DestRuaNum').AsString     := FNFe.EmitNro;
            ParamByName('DestCompl').AsString      := FNFe.EmitCompl;
            ParamByName('DestBairro').AsString     := FNFe.EmitBairro;
            ParamByName('DestMun').AsString        := FNFe.EmitMun;
            ParamByName('DestMunNome').AsString    := FNFe.EmitMunNome;
            ParamByName('DestUF').AsString         := FNFe.EmitUF;
            ParamByName('DestCEP').AsString        := FNFe.EmitCEP;
            ParamByName('DestPais').AsString       := FNFe.EmitPais;
            ParamByName('DestTel').AsString        := FNFe.EmitTel;
            ParamByName('DestIE').AsString         := FNFe.EmitIE;
            ParamByName('DestJur').asboolean       := FNFe.EmitJur;
            ParamByName('VProd').AsFloat           := FNFe.ValorProdutos;
            ParamByName('vFrete').AsFloat          := FNFe.ValorFrete;
            ParamByName('vSeg').AsFloat            := FNFe.ValorSeguro;
            ParamByName('vDesc').AsFloat           := FNFe.ValorDesconto;
            ParamByName('vOut').AsFloat            := FNFe.ValorDespesas;
            ParamByName('vBC').AsFloat             := FNFe.ValorBCICMS;
            ParamByName('vICMS').AsFloat           := FNFe.ValorICMS;
            ParamByName('vBCST').AsFloat           := FNFe.ValorBCST;
            ParamByName('vST').AsFloat             := FNFe.ValorST;
            ParamByName('vIPI').AsFloat            := FNFe.ValorIPI;
            ParamByName('vPIS').AsFloat            := FNFe.ValorPIS;
            ParamByName('vCOFINS').AsFloat         := FNFe.ValorCOFINS;
            ParamByName('vTotal').AsFloat          := FNFe.ValorTotal;
            ParamByName('Emissao').asstring        := 'T';
            ParamByName('Operacao').asinteger      := FNFe.Operacao;
            ParamByName('Modelo').asstring         := FNFe.Modelo;
            ParamByName('Inf_Compl').value         := FNFe.Inf_Compl;
            ParamByName('Inf_Compl2').value        := FNFe.Inf_Compl2;
            ParamByName('Mod_Frete').asinteger     := FNFe.Mod_Frete;
            ParamByName('Vol_Qtde').asfloat        := FNFe.Vol_Qtde;
            ParamByName('Vol_Esp').asstring        := FNFe.Vol_Esp;
            ParamByName('Vol_PesoL').asfloat       := FNFe.Vol_PesoL;
            ParamByName('Vol_PesoB').asfloat       := FNFe.Vol_PesoB;
            ParamByName('Benef').asfloat           := 0;
            ParamByName('NumProt').asstring        := FNFe.Num_Prot;
            ParamByName('DataProt').asDateTime     := FNFe.Data_Prot;
            ParamByName('CenCus').asstring         := FNFe.CentCus;
            //sql.SaveToFile('c:\temp\Adiciona_NFe_Web.sql');
            execute;
            LogErros('NotasFiscais', 'INSERT', 'Importado XML da NF-e: '+FNFe.Chave);
       end;
     finally
       tNotas.Free;
     end;
end;

procedure TImportadorNFe.GravarItens;
var
  tab
 ,Prod: TFDQuery;
  Item: TNFeItem;
begin
     Prod := TFDQuery.Create(nil);
     Prod.Connection := FConn;

     tab := TFDQuery.Create(nil);
     try
       tab.Connection := FConn;
       with tab do begin
            sql.clear;
            sql.add('insert into NotasItens (');
            sql.add('                        Nota_id');
            sql.add('                       ,Empresa');
            sql.add('                       ,ES');
            sql.add('                       ,Item');
            sql.add('                       ,Codigo_Mercadoria');
            sql.add('                       ,Codigo_Fabricante');
            sql.add('                       ,Descricao_Mercadoria');
            sql.add('                       ,NCM');
            sql.add('                       ,CFOP');
            sql.add('                       ,UM');
            sql.add('                       ,Quantidade');
            sql.add('                       ,Valor_Unitario');
            sql.add('                       ,Valor_UnitarioOrig');
            sql.add('                       ,Valor_Total');
            sql.add('                       ,Valor_BCICMSOp');
            sql.add('                       ,Valor_ICMSOp');
            sql.add('                       ,Valor_BCICMSST');
            sql.add('                       ,Valor_ICMSST');
            sql.add('                       ,Valor_PIS');
            sql.add('                       ,Valor_COFINS');
            sql.add('                       ,CSTICMS_Terceiros');
            sql.add('                       ,CSTICMS_TabA');
            sql.add('                       ,CSTICMS_TabB');
            sql.add('                       ,CSTIPI');
            sql.add('                       ,Aliquota_IPI');
            sql.add('                       ,Valor_BCIPI');
            sql.add('                       ,Valor_IPIOrig');
            sql.add('                       ,Valor_IPI');
            sql.add('                       ,Valor_BCII');
            sql.add('                       ,Valor_II');
            sql.add('                       ,Valor_Despesa');
            sql.add('                       ,CSTPIS');
            sql.add('                       ,CSTCOFINS');
            sql.add('                       ,CSTCBS');
            sql.add('                       ,CSTIBS');
            sql.add('                       ,Declaracao');
            sql.add('                       ,Adicao');
            sql.add('                       ,Peso_Liquido');
            sql.add('                       ,Peso_Bruto');
            sql.add('                       ,Veiculo');
            sql.add('                       ,Processo_Imp');
            sql.add('                       ,Processo_Exp');
            sql.add('                       )');
            sql.add('            values (');
            sql.add('                    :Nota_id');
            sql.add('                   ,:Empresa');
            sql.add('                   ,0');       // Entrada/Saída.
            sql.add('                   ,:Item');
            sql.add('                   ,:Codigo');
            sql.add('                   ,:CodFab');
            sql.add('                   ,:Descricao');
            sql.add('                   ,:NCM');
            sql.add('                   ,:CFOP');
            sql.add('                   ,:UM');
            sql.add('                   ,:Qtd');
            sql.add('                   ,:vUnit');
            sql.add('                   ,:vUnit');
            sql.add('                   ,:vTotal');
            sql.add('                   ,:vBCICMS');
            sql.add('                   ,:vICMS');
            sql.add('                   ,:vBCST');
            sql.add('                   ,:vST');
            sql.add('                   ,:vPIS');
            sql.add('                   ,:vCOFINS');
            sql.add('                   ,:CSTICMSTerc');
            sql.add('                   ,:CSTICMSTabA');
            sql.add('                   ,:CSTICMSTabB');
            sql.add('                   ,:CSTIPI');
            sql.add('                   ,:pIPI');
            sql.add('                   ,:vBCIPI');
            sql.add('                   ,:vIPIOrig');
            sql.add('                   ,:vIPI');
            sql.add('                   ,:vBCII');
            sql.add('                   ,:vII');
            sql.add('                   ,:vDespesa');
            sql.add('                   ,:CSTPIS');
            sql.add('                   ,:CSTCOFINS');
            sql.add('                   ,:CSTCBS');
            sql.add('                   ,:CSTCBS');
            sql.add('                   ,:Decl');
            sql.add('                   ,:Adi');
            sql.add('                   ,:PesoL');
            sql.add('                   ,:PesoB');
            sql.add('                   ,0');                   // Veículo.
            sql.add('                   ,:ProcImp');            
            sql.add('                   ,:ProcExp');            
            sql.add('                   )');
                        
            for Item in FNFe.Itens do begin
                with Prod do begin
                     sql.clear;
                     sql.add('select Peso_Liquido, Peso_Bruto from Produtos where Codigo = :pCod');
                     parambyname('pCod').asinteger := Item.Codigo;
                     open;
                end;
                ParamByName('Nota_id').AsInteger    := FNFe.NotaID;
                ParamByName('Empresa').asstring     := FNFe.Empresa;
                ParamByName('ProcImp').asstring     := FNFe.ProcImp;
                ParamByName('ProcExp').asstring     := FNFe.ProcExp;
                ParamByName('Item').AsInteger       := Item.Item;
                ParamByName('Codigo').asinteger     := Item.Codigo;
                ParamByName('CodFab').asstring      := Item.CodFab;
                ParamByName('Descricao').AsString   := Item.Descricao;
                ParamByName('NCM').AsString         := Item.NCM;
                ParamByName('CFOP').AsString        := Item.CFOP;
                ParamByName('UM').AsString          := Item.Unidade;
                ParamByName('Qtd').AsFloat          := Item.Quantidade;
                ParamByName('vUnit').AsFloat        := Item.vUnitario;
                ParamByName('vTotal').AsFloat       := Item.vTotal;
                ParamByName('vBCICMS').AsFloat      := Item.BCICMS;
                ParamByName('vICMS').AsFloat        := Item.VICMS;
                ParamByName('vBCST').AsFloat        := Item.BCST;
                ParamByName('vST').AsFloat          := Item.VST;
                ParamByName('vPIS').AsFloat         := Item.VPIS;
                ParamByName('vCOFINS').AsFloat      := Item.VCOFINS;
                ParamByName('CSTICMSTerc').asstring := Item.CSTICMSNF;
                ParamByName('CSTICMSTabA').asstring := copy(Item.CSTICMSEnt, 1, 1);
                ParamByName('CSTICMSTabB').asstring := copy(Item.CSTICMSEnt, 2, 2);
                ParamByName('CSTIPI').asstring      := Item.CSTIPI;
                ParamByName('pIPI').AsFloat         := Item.pIPI;
                ParamByName('vBCIPI').asfloat       := Item.vBCIPI;
                ParamByName('vIPIOrig').asfloat     := Item.vIPIOrig;
                ParamByName('vIPI').asfloat         := Item.vIPI / Item.Quantidade;
                ParamByName('vBCII').asfloat        := Item.vBCII;
                ParamByName('vII').asfloat          := Item.vII;
                ParamByName('vDespesa').asfloat     := Item.vDesp;
                ParamByName('CSTPIS').asstring      := Item.CSTPIS;
                ParamByName('CSTCOFINS').asstring   := Item.CSTCOFINS;
                ParamByName('CSTCBS').asstring      := Item.CSTCBS;
                ParamByName('Decl').asstring        := Item.Declaracao;
                ParamByName('Adi').asinteger        := Item.Adicao;
                ParamByName('PesoL').asfloat        := Prod.fieldbyname('Peso_Liquido').asfloat;
                ParamByName('PesoB').asfloat        := Prod.fieldbyname('Peso_Bruto').asfloat;
                execute;
            end;
       end;
     finally
       tab.Free;
     end;
end;

function TImportadorNFe.CadastraFornecedor: integer;
var
   ttmp: TFDQuery;
   mCod: integer;
begin
     ttmp := TFDQuery.Create(nil);
     with ttmp do begin
          Connection := FConn;
          sql.clear;
          sql.add('insert into Destinatarios (');
          sql.add('                           Codigo');
          sql.add('                          ,CNPJ');
          sql.add('                          ,CPF');
          sql.add('                          ,Nome');
          sql.add('                          ,Nome_Fantasia');
          sql.add('                          ,Rua ');
          sql.add('                          ,Rua_Numero');
          sql.add('                          ,Bairro');
          sql.add('                          ,Municipio');
          sql.add('                          ,Estado');
          sql.add('                          ,CEP');
          sql.add('                          ,Pais');
          sql.add('                          ,Telefone1');
          sql.add('                          ,Inscricao_Estadual');
          sql.add('                          ,Simples_Nacional');
          sql.add('                          ,MEI');
          sql.add('                          ,Desativado');
          sql.add('                          ,Fornecedor');
          sql.add('                          ,Isento');
          sql.add('                          ,Data_Cadastro');
          sql.add('                          ,Complemento');
          sql.add('                          ,Ramo_Atividade');
          sql.add('                          )');
          sql.add('            values(');
          sql.add('                   :pCodigo');
          sql.add('                  ,:pCNPJ');
          sql.add('                  ,:pCPF');
          sql.add('                  ,:pNome');
          sql.add('                  ,:pFant');
          sql.add('                  ,:pRua ');
          sql.add('                  ,:pRuaNum');
          sql.add('                  ,:pBairro');
          sql.add('                  ,:pMun');
          sql.add('                  ,:pUF');
          sql.add('                  ,:pCEP');
          sql.add('                  ,:pPais');
          sql.add('                  ,:pTel');
          sql.add('                  ,:pIE');
          sql.add('                  ,:pSimples');
          sql.add('                  ,:pMEI');
          sql.add('                  ,0');
          sql.add('                  ,1');
          sql.add('                  ,:pIsento');
          sql.add('                  ,:pDataCad');
          sql.add('                  ,:pCompl');
          sql.add('                  ,:pRamo');
          sql.add('                  )');
          mCod                               := GeraCodigo('Destinatarios', 'Codigo');
          parambyname('pCodigo').asinteger   := mCod;
          parambyname('pCNPJ').asstring      := FNFe.EmitCNPJ;
          parambyname('pCPF').asstring       := FNFe.EmitCPF;
          parambyname('pNome').asstring      := FNFe.EmitNome;
          parambyname('pFant').asstring      := FNFe.EmitFant;
          parambyname('pRua').asstring       := FNFe.EmitRua;
          parambyname('pRuaNum').asstring    := FNFe.EmitNro;
          parambyname('pBairro').asstring    := FNFe.EmitBairro;
          parambyname('pMun').asstring       := FNFe.EmitMun;
          parambyname('pUF').asstring        := FNFe.EmitUF;
          parambyname('pCEP').asstring       := FNFe.EmitCEP;
          parambyname('pPais').asstring      := FNFe.EmitPais;
          parambyname('pTel').asstring       := FNFe.EmitTel;
          parambyname('pIE').asstring        := FNFe.EmitIE;
          parambyname('pSimples').asboolean  := FNFe.EmitSimples;
          parambyname('pMEI').asboolean      := FNFe.EmitMEI;
          parambyname('pIsento').asboolean   := trim(FNFe.EmitIE) = '';
          parambyname('pDataCad').asdatetime := now;
          parambyname('pCompl').asstring     := FNFe.EmitCompl;
          parambyname('pRamo').asinteger     := FNFe.EmitRamo;
          execute;
     end;
     
     LogErros('Destinatarios', 'INSERT', 'Cadastrado fornecedor na importação do XML da NF-e: '+FNFe.Chave);

     result := mcod;
     ttmp.free;
end;

function TImportadorNFe.CadastraProduto(Item: TNFeItem): integer;
var
   ttmp: TFDQuery;
   mCod: integer;
begin
     try
        ttmp := TFDQuery.Create(nil);
        with ttmp do begin
             Connection := FConn;
             sql.clear;
             sql.add('insert into Produtos (');
             sql.add('                      Codigo');
             sql.add('                     ,Codigo_Fabricante');
             sql.add('                     ,Descricao_Reduzida');
             sql.add('                     ,Descricao');
             sql.add('                     ,UM');
             sql.add('                     ,UM_Origem');
             sql.add('                     ,UM_Tributaria');
             sql.add('                     ,Quantidade_Unidade');
             sql.add('                     ,Quantidade_Volumes');
             sql.add('                     ,NCM');
             sql.add('                     ,Estoque_Disponivel');
             sql.add('                     ,Aliquota_IPI');
             sql.add('                     ,Aliquota_PISEntrada');
             sql.add('                     ,Aliquota_COFINSEntrada');
             sql.add('                     ,Aliquota_II');
             sql.add('                     ,GTIN_Unidade');
             sql.add('                     ,GTIN_Caixa');        
             sql.add('                     ,Fornecedor');
             sql.add('                     ,Desativado');
             sql.add('                     ,Tipo');
             sql.add('                     ,Estoque_MinimoPerc');
             sql.add('                     ,Origem');
             sql.add('                     ,Escala_Relevante');
             sql.add('                     ,CNPJ_Fabricante');
             sql.add('                     )');
             sql.add('            values(');
             sql.add('                    :Cod');
             sql.add('                   ,:CodFab');
             sql.add('                   ,:DescRed');
             sql.add('                   ,:Desc');
             sql.add('                   ,:UM');
             sql.add('                   ,:UMOrig');
             sql.add('                   ,:UMTrib');
             sql.add('                   ,1');
             sql.add('                   ,1');
             sql.add('                   ,:NCM');
             sql.add('                   ,:EstDisp');
             sql.add('                   ,:AliqIPI');
             sql.add('                   ,:PISEnt');
             sql.add('                   ,:COFEnt');
             sql.add('                   ,:AliqII');
             sql.add('                   ,:GTINUni');
             sql.add('                   ,:GTINCx');        
             sql.add('                   ,:Forn');
             sql.add('                   ,:Desat');
             sql.add('                   ,:Tipo');
             sql.add('                   ,:EstMin');
             sql.add('                   ,:Origem');
             sql.add('                   ,:Escala');
             sql.add('                   ,:CNPJFab');
             sql.add('                  )');
          
             mCod := GeraCodigo('Produtos', 'Codigo');

             parambyname('Cod').asinteger    := mCod;
             parambyname('CodFab').asstring  := Item.CodFab;
             parambyname('DescRed').asstring := Item.DescrAdic;
             parambyname('Desc').asstring    := Item.Descricao;
             parambyname('UM').asstring      := Item.Unidade;
             parambyname('UMOrig').asstring  := Item.Unidade;
             parambyname('UMTrib').asstring  := Item.Unidade;
             parambyname('NCM').asstring     := Item.NCM;
             parambyname('PISEnt').asfloat   := Item.vPIS;
             parambyname('COFEnt').asfloat   := Item.vCOFINS;
             parambyname('GTINUni').asstring := Item.GTIN;
             parambyname('GTINCX').asstring  := Item.GTIN;
             parambyname('Desat').asboolean  := false;
             parambyname('Tipo').asinteger   := mTipoProd;
             parambyname('Origem').asinteger := mOrigem;
             parambyname('Escala').asboolean := Item.Escala;
             parambyname('EstDisp').asfloat  := 0;
             parambyname('AliqIPI').asfloat  := 0;
             parambyname('AliqII').asfloat   := 0;
             parambyname('Forn').asinteger   := FNFe.EmitCod;
             parambyname('CNPJFab').asstring := '';
             parambyname('EstMin').asfloat   := 0;
             
             execute;
             result := mcod;
        end;

{
                                ProdutosEstoque_Disponivel.Value := StrtoFloat(GradeItens.Cells[08,mQtdeItem]);
                                if not ReferenciasFiscaisZerar_IPI.AsBoolean then begin
                                   if Trim(GradeItens.Cells[29,mQtdeItem]) <> '' then begin 
                                      ProdutosAliquota_IPI.Value := StrtoFloat(GradeItens.Cells[29,mQtdeItem]);
                                   end;
                                end else begin
                                   ProdutosAliquota_IPI.Value := 0;
                                end;
                                If NCM.Locate('NCM', GradeItens.Cells[04,mQtdeItem], [loCaseInsensitive]) = True then ProdutosAliquota_II.Value := dmFiscal.NCMII.Value;

                                ProdutosEstoque_MinimoPerc.Value := ConfiguracaoEstoque_MinimoPerc.Value;

                                if StrtoInt(Copy(cOrigem.Text,1,1)) in[1, 2, 6, 7] then begin
                                   ProdutosOrigem.Value := 'M';
                                end else begin
                                   ProdutosOrigem.Value := 'N';
                                end;

                                ProdutosEscala_Relevante.Value := cEscala.Checked;
                                if cEscala.Checked then begin
                                   Dados.ProdutosCNPJ_Fabricante.Value := '';
                                end else begin
                                   Dados.ProdutosCNPJ_Fabricante.Value := cCNPJ.Text;
                                end;
}
        
        LogErros('Produtos', 'INSERT', 'Cadastrado produtos na importação do XML da NF-e: '+FNFe.Chave);
     except on E: Exception do
        MessageDlg('Cadastro do Produto falhou!'+#13+E.Message, mtError, [mbOK], 0);
     end;

     ttmp.free;
end;



end.
