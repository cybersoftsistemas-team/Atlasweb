unit NFeDistribuicao;

interface

uses System.SysUtils, System.Classes, System.StrUtils, System.Win.ComObj, System.Generics.Collections, FireDAC.Comp.Client, MainModule, ImportaNFe, Dialogs, NFe_util_2G_tlb;

type
  TNFeDocumento = class
  public
    NSU: string;
    Schema: string;
    XML: string;
    Chave: string;
    Arquivo: string;
  end;

  TNFeDistribuicao = class
  private
    fUtil: OleVariant;
    fCNPJ: string;
    fAmbiente: Integer;
    fCertificado: string;
    fVersao: string;
    fLicenca: string;
    fProxy: string;
    fUsuarioProxy: string;
    fSenhaProxy: string;
    fUltNSU: string;
    fMaxNSU: string;
    fCStat: Integer;
    fQuantidade: Integer;
    fEmpresaUF: string;
    fOrigem: Integer;
    fTipoProd: Integer;
    fClassProd: Integer;
    fDocumentos: TObjectList<TNFeDocumento>;
    fUFWebServ: string;
    fCodUF: string;
    fRespWS: widestring;
    procedure CarregaEmpresa;
    function ConsultaDistNSU: string;
    procedure ProcessaRetorno(const ARetorno: string);
    procedure SalvaUltimoNSU;
    procedure SalvaXML(ADocumento: TNFeDocumento);
    procedure ImportaDocumento(ADocumento: TNFeDocumento);
    function ExtraiChave(const AXML: string): string;
    function NormalizaNSU(const ANSU: string): string;
    function ExtraiXML(const ARetorno: string; const ANSU: string): string;
    function ExtraiSchema(const ARetorno: string; const ANSU: string): string;
  public
    constructor Create(const pEmpresa: string);
    destructor Destroy; override;
    procedure Executar;
    property Documentos: TObjectList<TNFeDocumento> read FDocumentos;
    property UltNSU: string read FUltNSU;
    property MaxNSU: string read FMaxNSU;
    property cStat: Integer read FCStat;
    property Quantidade: Integer read FQuantidade;
    property RespWS: widestring read fRespWS;
    property Origem: Integer read FOrigem write FOrigem;
    property TipoProd: Integer read FTipoProd write FTipoProd;
    property ClassProd: Integer read FClassProd write FClassProd;
  end;

implementation

uses FiscalNFManifestar;

constructor TNFeDistribuicao.Create(const pEmpresa: string);
begin
    inherited Create;
    fCNPJ       := pEmpresa;
    fEmpresaUF  := '32';
    fOrigem     := 0;
    fTipoProd   := 0;
    fClassProd  := 0;
    fDocumentos := TObjectList<TNFeDocumento>.Create(True);
    fUtil       := CreateOleObject('NFe_Util_2G.Util');
end;

destructor TNFeDistribuicao.Destroy;
begin
    FDocumentos.Free;
    inherited;
end;

procedure TNFeDistribuicao.CarregaEmpresa;
var
  Q: TFDQuery;
begin
     Q := TFDQuery.Create(nil);
     try
        Q.Connection := UniMainModule.Conecta;
        Q.SQL.Clear;
        Q.SQL.Add('select e.UF_WebServiceManifesto');
        Q.SQL.Add('      ,e.Ambiente_NFe');
        Q.SQL.Add('      ,e.Certificado_Digital');
        Q.SQL.Add('      ,e.Manifesto_LayOut');
        Q.SQL.Add('      ,e.CNPJ');
        Q.SQL.Add('      ,e.Estado');
        Q.SQL.Add('      ,e.Licensa_NFE_Util');
        Q.SQL.Add('      ,e.Ultimo_NSU');
        Q.SQL.Add('      ,c.Servidor_Proxy');
        Q.SQL.Add('      ,c.Usuario_Proxy');
        Q.SQL.Add('      ,c.Senha_Proxy');
        Q.SQL.Add('      ,Codigo_UF = u.Numero ');
        Q.SQL.Add('from Empresas e');
        Q.SQL.Add('left join Config c on 1 = 1');
        Q.SQL.Add('left join Estados u on u.UF = e.Estado');
        Q.SQL.Add('where e.CNPJ = :Empresa');
        Q.ParamByName('Empresa').AsString := fCNPJ;
        Q.Open;
        if Q.IsEmpty then raise Exception.Create('Empresa não encontrada: ' + fCNPJ);
       
        fAmbiente     := Q.FieldByName('Ambiente_NFe').AsInteger;
        fCertificado  := Trim(Q.FieldByName('Certificado_Digital').AsString);
        fVersao       := Trim(Q.FieldByName('Manifesto_LayOut').AsString);
        fLicenca      := Trim(Q.FieldByName('Licensa_NFE_Util').AsString);
        fUltNSU       := NormalizaNSU(Q.FieldByName('Ultimo_NSU').AsString);
        fProxy        := Trim(Q.FieldByName('Servidor_Proxy').AsString);
        fUsuarioProxy := Trim(Q.FieldByName('Usuario_Proxy').AsString);
        fSenhaProxy   := Trim(Q.FieldByName('Senha_Proxy').AsString);
        fUFWebServ    := Trim(Q.FieldByName('UF_WebServiceManifesto').AsString);
        fCodUF        := Trim(Q.FieldByName('Codigo_UF').AsString);
       
        if fVersao = '' then 
           fVersao := '4.00';
        if fCNPJ = '' then 
           raise Exception.Create('CNPJ da empresa não informado.');
        if fCertificado = '' then 
           raise Exception.Create('Certificado digital não informado.');
        if fLicenca = '' then 
           raise Exception.Create('Licença NFE_Util não informada.');
     finally
        Q.Free;
     end;
end;

function TNFeDistribuicao.NormalizaNSU(const aNSU: string): string;
begin
     Result := Trim(aNSU);
     if Result = '' then Result := '0';
     if Length(Result) < 15 then Result := StringOfChar('0', 15 - Length(Result)) + Result;
end;

function TNFeDistribuicao.ConsultaDistNSU: string;
var
  MsgDados: string;
  MsgRetWS: string;
  MsgResultado: string;
  VerAplic: string;
  DhResp: string;
  UltNSU: string;
  MaxNSU: string;
  NSUConsulta: string;
  QtdeDocto: Integer;
  cStat: Integer;
  Util: NFe_Util_2G_Interface;
begin
     Result      := '';
     NSUConsulta := fUltNSU;
     
     while True do begin
           MsgDados     := '';
           MsgRetWS     := '';
           MsgResultado := '';
           VerAplic     := '';
           DhResp       := '';
           UltNSU       := '';
           MaxNSU       := '';
           QtdeDocto    := 0;
           cStat        := 0;
           
           Util   := CoUtil.Create;
           Result := fUtil.distNSU(fUFWebServ       // Informar "AN" - o WS do Ambiente Nacional (AN) atende destinatário de qualquer UF.
                                  ,fAmbiente        // Informar o código do ambiente desejado: 1- produção ou 2-homologação.
                                  ,fCertificado     // Informar o certificado digital que será utilizado para assinatura.
                                  ,fVersao          // Informar a versão da mensagem do WS: 4.00.
                                  ,MsgDados         // Retorna a mensagem XML enviada para o WS.
                                  ,MsgRetWS         // Retorna a mensagem XML de resposta do WS.
                                  ,CStat            // Retorna o resultado da chamada do WS.
                                  ,MsgResultado     // Retorna a literal do resultado da chamada do WS.
                                  ,fCNPJ            // Informar o CNPJ ou CPF do ator que se deseja consultar os documentos fiscais.
                                  ,fCodUF           // Informar o cUF.
                                  ,NSUConsulta      // Informar o NSU a partir do qual deseja realizar a consulta.
                                  ,VerAplic         // Retorna a versão da aplicação do Web Service.
                                  ,DhResp           // Retorna a Data e hora da mensagem de Resposta.
                                  ,UltNSU           // Retorna o Último NSU pesquisado na Web Service.
                                  ,MaxNSU           // Retorna Maior NSU existente no Ambiente Nacional para o CNPJ/CPF informado..
                                  ,QtdeDocto        // Retorna a quantidade de documentos devolvidos pelo WS.
                                  ,fProxy           // Informar 'http://proxyserver:port' quando existir uso de proxy no ambiente.
                                  ,fUsuarioProxy    // Informar o usuário para autenticação no proxy, se necessário
                                  ,fSenhaProxy      // Informar a senha de autenticação no proxy, se necessário
                                  ,fLicenca);       // Informar a chave da licenca de uso ou registro.

          fCStat      := cStat;
          fQuantidade := fQuantidade + QtdeDocto;
          fRespWS     := msgRetWS;
          if cStat = 656 then raise Exception.Create('SEFAZ retornou 656 - Consumo Indevido.' + #13#10#13#10 +MsgResultado);
          if cStat = 137 then Break;
          if cStat <> 138 then raise Exception.Create('Erro na distribuição de DF-e.' + #13#10#13#10 +'cStat: ' + IntToStr(CStat) + #13#10 +'Mensagem: ' + MsgResultado + #13#10#13#10 +'Retorno WS: ' + MsgRetWS);
          if Trim(UltNSU) = '' then raise Exception.Create('A SEFAZ retornou cStat 138, mas não informou o ultNSU.');
          
          fUltNSU := NormalizaNSU(UltNSU);
          fMaxNSU := NormalizaNSU(MaxNSU);
          
          ProcessaRetorno(Result);
          
          if FUltNSU = fMaxNSU then Break;
          NSUConsulta := fUltNSU;
     end;
end;

procedure TNFeDistribuicao.ProcessaRetorno(const ARetorno: string);
var
  Linhas: TStringList;
  i: integer;
  Linha: string;
  Documento: TNFeDocumento;
begin
     if Trim(ARetorno) = '' then exit;
     Linhas := TStringList.Create;
     try
        Linhas.Text := StringReplace(aRetorno, #13, sLineBreak, [rfReplaceAll]);
        for i := 0 to Linhas.Count - 1 do begin
            Linha := Trim(Linhas[i]);
            if Linha = '' then Continue;
            if Length(Linha) < 53 then Continue;
            Documento        := TNFeDocumento.Create;
            Documento.NSU    := Trim(Copy(Linha, 1, 15));
            Documento.Schema := Trim(Copy(Linha, 17, 35));
            Documento.XML    := Copy(Linha, 53, Length(Linha) - 52);
            Documento.Chave  := ExtraiChave(Documento.XML);
            if Documento.XML <> '' then begin
               fDocumentos.Add(Documento);
               Documento := nil;
            end;
            Documento.Free;
        end;
     finally
        Linhas.Free;
     end;
end;

function TNFeDistribuicao.ExtraiXML(const ARetorno: string; const ANSU: string): string;
var
  P: Integer;
  Inicio: Integer;
  Fim: Integer;
begin
     Result := '';
     P := Pos(ANSU, ARetorno);
     if P <= 0 then Exit;
     Inicio := PosEx('<', ARetorno, P);
     if Inicio <= 0 then Exit;
     Fim := LastDelimiter('>', ARetorno);
     if Fim >= Inicio then Result := Copy(aRetorno, Inicio, Fim - Inicio + 1);
end;

function TNFeDistribuicao.ExtraiSchema(const ARetorno: string; const ANSU: string): string;
var
  P: Integer;
  Inicio: Integer;
  Fim: Integer;
begin
     Result := '';
     P      := Pos(ANSU, ARetorno);
     if P <= 0 then Exit;
     Inicio := P + Length(ANSU);
     Fim    := PosEx('<', ARetorno, Inicio);
     if Fim > Inicio then Result := Trim(Copy(aRetorno, Inicio, Fim - Inicio));
end;

function TNFeDistribuicao.ExtraiChave(const AXML: string): string;
var
  P1: Integer;
  P2: Integer;
begin
     Result := '';
     P1     := Pos('<chNFe>', AXML);
     if P1 > 0 then begin
        P1 := P1 + Length('<chNFe>');
        P2 := PosEx('</chNFe>', AXML, P1);
        if P2 > 0 then Result := Copy(AXML, P1, P2 - P1);
     end;
     if Result = '' then begin
        P1 := Pos('Id="NFe', AXML);
        if P1 > 0 then begin
           P1 := P1 + Length('Id="NFe');
           P2 := PosEx('"', AXML, P1);
           if P2 > 0 then Result := Copy(AXML, P1, P2 - P1);
        end;
     end;
end;

procedure TNFeDistribuicao.SalvaXML(ADocumento: TNFeDocumento);
var
  Pasta: string;
  Ano: string;
  Mes: string;
  NomeArquivo: string;
  ChaveArquivo: string;
  Stream: TStringStream;
begin
     if Trim(ADocumento.XML) = '' then Exit;
     Ano   := FormatDateTime('yyyy', Date);
     Mes   := FormatDateTime('mm', Date);
     Pasta := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'NFe') + Ano) + Mes;
     ForceDirectories(Pasta);
     ChaveArquivo := Trim(aDocumento.Chave);

     if ChaveArquivo = '' then ChaveArquivo := 'NSU_' + Trim(aDocumento.NSU);
     
     NomeArquivo := IncludeTrailingPathDelimiter(Pasta) + ChaveArquivo + '.xml';
     Stream      := TStringStream.Create(ADocumento.XML, TEncoding.UTF8);
     try
        Stream.SaveToFile(NomeArquivo);
     finally
        Stream.Free;
     end;
     aDocumento.Arquivo := NomeArquivo;
end;

procedure TNFeDistribuicao.ImportaDocumento(ADocumento: TNFeDocumento);
var
  Importador: TImportadorNFe;
  Params: TImportaNFeParams;
begin
     if Trim(ADocumento.Arquivo) = '' then raise Exception.Create('XML não foi salvo em disco para o NSU ' + ADocumento.NSU);
        
     Importador := TImportadorNFe.Create(UniMainModule.Conecta);
     Params     := TImportaNFeParams.Create;
     try
       Params.Arquivo   := aDocumento.Arquivo;
       Params.SubstNF   := false;
       Params.Origem    := fOrigem;
       Params.TipoProd  := fTipoProd;
       Params.ClassProd := fClassProd;
       Params.EmpresaUF := fEmpresaUF;
       if not Importador.ImportarXML(Params) then raise Exception.Create('Não foi possível importar a NF-e.' + #13#10 +'Arquivo: ' + aDocumento.Arquivo);
     finally
       Params.Free;
       Importador.Free;
     end;
end;

procedure TNFeDistribuicao.SalvaUltimoNSU;
var
  Q: TFDQuery;
begin
     if Trim(FUltNSU) = '' then Exit;
     Q := TFDQuery.Create(nil);
     try
       Q.Connection := UniMainModule.Conecta;
       Q.SQL.Clear;
       Q.SQL.Add('update Empresas');
       Q.SQL.Add('set Ultimo_NSU = :Ultimo_NSU');
       Q.SQL.Add('where Empresa = :Empresa');
       Q.ParamByName('Ultimo_NSU').AsString := fUltNSU;
       Q.ParamByName('Empresa').AsString    := fCNPJ;
       Q.ExecSQL;
     finally
       Q.Free;
     end;
end;

procedure TNFeDistribuicao.Executar;
var
   i: Integer;
   Documento: TNFeDocumento;
begin
     fDocumentos.clear;
     fQuantidade := 0;
     fCStat      := 0;
     fMaxNSU     := '';
     fRespWS     := '';
     CarregaEmpresa;
     ConsultaDistNSU;
     for i := 0 to fDocumentos.Count-1 do begin
         Documento := fDocumentos[i];
         SalvaXML(Documento);
         if Documento.Chave <> '' then ImportaDocumento(Documento);
     end;
     SalvaUltimoNSU;
end;



end.
