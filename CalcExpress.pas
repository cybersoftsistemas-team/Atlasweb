unit CalcExpress;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, Math;

type
  TTree = record
    Num: Integer;
    Con: string;
    L: Pointer;
    R: Pointer;
  end;

  PTree = ^TTree;

  TCalcExpress = class(TComponent)
  private
    Err: Boolean;
    Bc: Integer;
    PrevLex, CurLex: Integer;
    Pos: Integer;
    FFormula: string;
    Tree: Pointer;
    FVariables: TStrings;
    FDefaultNames: Boolean;

    procedure Init(S: string);
    function GetTree(S: string): Pointer;
    function DelTree(T: PTree): Pointer;
    procedure Error(const S: string);
    procedure SetVariables(Value: TStrings);
  public
    constructor Create(O: TComponent); override;
    destructor Destroy; override;
    function Calc(Args: array of Extended): Extended;
  published
    property Formula: string read FFormula write Init;
    property Variables: TStrings read FVariables write SetVariables;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TCalcExpress]);
end;

procedure TCalcExpress.Error(const S: string);
begin
  Err := True;
  if S <> '' then
    raise Exception.CreateFmt('Erro na expressão "%s": %s', [FFormula, S])
  else
    raise Exception.CreateFmt('Expressão inválida: "%s"', [FFormula]);
end;

function TCalcExpress.DelTree(T: PTree): Pointer;
begin
  Result := nil;

  if T = nil then
    Exit;

  if T^.L <> nil then
    DelTree(PTree(T^.L));

  if T^.R <> nil then
    DelTree(PTree(T^.R));

  Dispose(T);
end;

constructor TCalcExpress.Create(O: TComponent);
begin
  inherited Create(O);

  Err := False;
  Bc := 0;
  PrevLex := 0;
  CurLex := 0;
  Pos := 1;
  Tree := nil;
  FDefaultNames := False;
  FVariables := TStringList.Create;
  FFormula := '0';

  Init('0');
end;

destructor TCalcExpress.Destroy;
begin
  DelTree(PTree(Tree));
  Tree := nil;

  FreeAndNil(FVariables);

  inherited Destroy;
end;

function TCalcExpress.Calc(Args: array of Extended): Extended;
  function Evaluate(T: PTree): Extended;
  var
    V1, V2: Extended;
    I: Integer;
  begin
    if T = nil then
      raise Exception.Create('Árvore da expressão inválida.');
    case T^.Num of
      3:
        Result := Evaluate(PTree(T^.L)) + Evaluate(PTree(T^.R));
      4:
        Result := Evaluate(PTree(T^.L)) - Evaluate(PTree(T^.R));
      5:
        Result := Evaluate(PTree(T^.L)) * Evaluate(PTree(T^.R));
      6:
        begin
          V2 := Evaluate(PTree(T^.R));
          if V2 = 0 then
            raise EZeroDivide.Create('Divisão por zero.');
          Result := Evaluate(PTree(T^.L)) / V2;
        end;
      {  
      7:
        begin
          if not TryStrToFloat(T^.Con,
            TFormatSettings.Create('en-US'), Result) then
            raise EConvertError.CreateFmt(
              'Número inválido: "%s".', [T^.Con]);
        end;
      }
      7:
        begin
          // Variável local implícita ou declarada para garantir compatibilidade x64
          var TempValue: Double; 
          if not TryStrToFloat(T^.Con, TempValue, TFormatSettings.Create('en-US')) then
            raise EConvertError.CreateFmt(
              'Número inválido: "%s".', [T^.Con]);
          Result := TempValue;
        end;
        
      8:
        begin
          I := StrToIntDef(T^.Con, -1);
          if I < 0 then
            raise EConvertError.CreateFmt(
              'Índice de variável inválido: "%s".', [T^.Con]);
          if I > High(Args) then
            raise EArgumentException.CreateFmt(
              'Não foi fornecido o argumento %d da variável "%s".',
              [I, T^.Con]);
          Result := Args[I];
        end;
      9:
        Result := -Evaluate(PTree(T^.L));
      10:
        Result := Cos(Evaluate(PTree(T^.L)));
      11:
        Result := Sin(Evaluate(PTree(T^.L)));
      12:
        Result := Tan(Evaluate(PTree(T^.L)));
      13:
        begin
          V1 := Tan(Evaluate(PTree(T^.L)));
          if V1 = 0 then
            raise EZeroDivide.Create('Cotangente indefinida.');
          Result := 1 / V1;
        end;
      14:
        Result := Abs(Evaluate(PTree(T^.L)));
      15:
        begin
          V1 := Evaluate(PTree(T^.L));
          if V1 < 0 then
            Result := -1
          else if V1 > 0 then
            Result := 1
          else
            Result := 0;
        end;
      16:
        begin
          V1 := Evaluate(PTree(T^.L));
          if V1 < 0 then
            raise EMathError.Create(
              'Raiz quadrada de número negativo.');
          Result := Sqrt(V1);
        end;
      17:
        begin
          V1 := Evaluate(PTree(T^.L));
          if V1 <= 0 then
            raise EMathError.Create(
              'Logaritmo natural requer valor maior que zero.');
          Result := Ln(V1);
        end;
      18:
        Result := Exp(Evaluate(PTree(T^.L)));
      19:
        begin
          V1 := Evaluate(PTree(T^.L));
          if (V1 < -1) or (V1 > 1) then
            raise EMathError.Create(
              'Arco seno requer valor entre -1 e 1.');
          Result := ArcSin(V1);
        end;
      20:
        begin
          V1 := Evaluate(PTree(T^.L));
          if (V1 < -1) or (V1 > 1) then
            raise EMathError.Create(
              'Arco cosseno requer valor entre -1 e 1.');
          Result := ArcCos(V1);
        end;
      21:
        Result := ArcTan(Evaluate(PTree(T^.L)));
      22:
        Result := Pi / 2 - ArcTan(Evaluate(PTree(T^.L)));
      23:
        begin
          V1 := Evaluate(PTree(T^.L));
          Result := (Exp(V1) - Exp(-V1)) / 2;
        end;
      24:
        begin
          V1 := Evaluate(PTree(T^.L));
          Result := (Exp(V1) + Exp(-V1)) / 2;
        end;
      25:
        begin
          V1 := Evaluate(PTree(T^.L));
          Result := (Exp(V1) - Exp(-V1)) /
                    (Exp(V1) + Exp(-V1));
        end;
      26:
        begin
          V1 := Evaluate(PTree(T^.L));
          V2 := Exp(V1) - Exp(-V1);
          if V2 = 0 then
            raise EZeroDivide.Create(
              'Cotangente hiperbólica indefinida.');
          Result := (Exp(V1) + Exp(-V1)) / V2;
        end;
      27:
        begin
          V1 := Evaluate(PTree(T^.L));
          if V1 >= 0 then
            Result := 1
          else
            Result := 0;
        end;
      31:
        begin
          V1 := Evaluate(PTree(T^.L));
          V2 := Evaluate(PTree(T^.R));
          Result := Power(V1, V2);
        end;
    else
      raise EMathError.CreateFmt(
        'Operador interno desconhecido: %d.', [T^.Num]);
    end;
  end;
begin
  if Tree = nil then
    raise EMathError.CreateFmt(
      'A expressão "%s" não pôde ser interpretada.', [FFormula]);

  Result := Evaluate(PTree(Tree));
end;

function NewNode(ANum: Integer; const ACon: string): PTree;
begin
  New(Result);
  Result^.Num := ANum;
  Result^.Con := ACon;
  Result^.L := nil;
  Result^.R := nil;
end;

function TCalcExpress.GetTree(S: string): Pointer;

  procedure SkipSpaces;
  begin
    while (Pos <= Length(S)) and (S[Pos] <= ' ') do
      Inc(Pos);
  end;

  function CurrentChar: Char;
  begin
    if Pos <= Length(S) then
      Result := S[Pos]
    else
      Result := #0;
  end;

  function Match(C: Char): Boolean;
  begin
    SkipSpaces;
    Result := CurrentChar = C;
    if Result then
      Inc(Pos);
  end;

  procedure Expect(C: Char; const Msg: string);
  begin
    if not Match(C) then
      Error(Msg);
  end;

  function ReadNumber: string;
  var
    Start: Integer;
    HasDigits: Boolean;
    DigitsAfterSeparator: Boolean;
  begin
    SkipSpaces;
    Start := Pos;
    HasDigits := False;
    DigitsAfterSeparator := False;

    while (Pos <= Length(S)) and (S[Pos] in ['0'..'9']) do
    begin
      HasDigits := True;
      Inc(Pos);
    end;

    if (Pos <= Length(S)) and (S[Pos] in ['.', ',']) then
    begin
      Inc(Pos);

      while (Pos <= Length(S)) and (S[Pos] in ['0'..'9']) do
      begin
        HasDigits := True;
        DigitsAfterSeparator := True;
        Inc(Pos);
      end;

      if not DigitsAfterSeparator then
        Error('Número inválido: parte decimal ausente.');
    end;

    if not HasDigits then
      Error('Número esperado.');

    if (Pos <= Length(S)) and (S[Pos] in ['e', 'E']) then
    begin
      Inc(Pos);

      if (Pos <= Length(S)) and (S[Pos] in ['+', '-']) then
        Inc(Pos);

      if (Pos > Length(S)) or not (S[Pos] in ['0'..'9']) then
        Error('Expoente inválido.');

      while (Pos <= Length(S)) and (S[Pos] in ['0'..'9']) do
        Inc(Pos);
    end;

    Result := Copy(S, Start, Pos - Start);
    Result := StringReplace(Result, ',', '.', [rfReplaceAll]);

    if (Pos <= Length(S)) and (S[Pos] in ['.', ',']) then
      Error('Número inválido: mais de um separador decimal.');
  end;

  function ReadIdentifier: string;
  var
    Start: Integer;
  begin
    SkipSpaces;

    if (Pos > Length(S)) or
       not (S[Pos] in ['a'..'z', 'A'..'Z', '_']) then
      Error('Identificador esperado.');

    Start := Pos;
    Inc(Pos);

    while (Pos <= Length(S)) and
          (S[Pos] in ['a'..'z', 'A'..'Z', '0'..'9', '_']) do
      Inc(Pos);

    Result := LowerCase(Copy(S, Start, Pos - Start));
  end;

  function FunctionCode(const Name: string): Integer;
  begin
    Result := 0;

    if Name = 'cos' then Result := 10
    else if Name = 'sin' then Result := 11
    else if (Name = 'tg') or (Name = 'tan') then Result := 12
    else if Name = 'ctg' then Result := 13
    else if Name = 'abs' then Result := 14
    else if (Name = 'sgn') or (Name = 'sign') then Result := 15
    else if Name = 'sqrt' then Result := 16
    else if Name = 'ln' then Result := 17
    else if Name = 'exp' then Result := 18
    else if Name = 'arcsin' then Result := 19
    else if Name = 'arccos' then Result := 20
    else if Name = 'arctg' then Result := 21
    else if Name = 'arcctg' then Result := 22
    else if Name = 'sh' then Result := 23
    else if Name = 'ch' then Result := 24
    else if Name = 'th' then Result := 25
    else if Name = 'cth' then Result := 26
    else if (Name = 'heaviside') or (Name = 'h') then Result := 27;
  end;

  function ParseExpression: PTree;
  forward;

  function ParsePrimary: PTree;
  var
    Name: string;
    Number: string;
    Func: Integer;
    I: Integer;
  begin
    Result := nil;
    SkipSpaces;

    if Match('(') then
    begin
      Result := ParseExpression;
      try
        Expect(')', 'Parêntese ")" esperado.');
      except
        DelTree(Result);
        Result := nil;
        raise;
      end;
      Exit;
    end;

    if CurrentChar in ['0'..'9'] then
    begin
      Number := ReadNumber;
      Result := NewNode(7, Number);
      Exit;
    end;

    if CurrentChar in ['a'..'z', 'A'..'Z', '_'] then
    begin
      Name := ReadIdentifier;
      Func := FunctionCode(Name);

      if Func <> 0 then
      begin
        if not Match('(') then
          Error('A função "' + Name + '" requer parênteses.');

        Result := NewNode(Func, Name);
        try
          Result^.L := ParseExpression;
          Expect(')', 'Parêntese ")" esperado após "' + Name + '".');
        except
          DelTree(Result);
          Result := nil;
          raise;
        end;
        Exit;
      end;

      if FVariables = nil then
        Error('Lista de variáveis não inicializada.');

      I := FVariables.IndexOf(Name);

      if I < 0 then
        Error('Variável "' + Name + '" não foi definida.');

      Result := NewNode(8, IntToStr(I));
      Exit;
    end;

    Error('Número, variável ou "(" esperado.');
  end;

  function ParsePower: PTree;
  var
    Right: PTree;
    Node: PTree;
  begin
    Result := ParsePrimary;

    if Match('^') then
    begin
      Right := nil;
      try
        Right := ParsePower;

        Node := NewNode(31, '');
        Node^.L := Result;
        Node^.R := Right;

        Result := Node;
      except
        DelTree(Result);
        DelTree(Right);
        Result := nil;
        raise;
      end;
    end;
  end;

  function ParseUnary: PTree;
  var
    Negate: Boolean;
    Node: PTree;
  begin
    SkipSpaces;
    Negate := False;

    if Match('+') then
      Negate := False
    else if Match('-') then
      Negate := True;

    Result := ParsePower;

    if Negate then
    begin
      Node := NewNode(9, '');
      Node^.L := Result;
      Result := Node;
    end;
  end;

  function ParseTerm: PTree;
  var
    Op: Integer;
    Right: PTree;
    Node: PTree;
  begin
    Result := ParseUnary;

    while True do
    begin
      SkipSpaces;

      if CurrentChar = '*' then
        Op := 5
      else if CurrentChar = '/' then
        Op := 6
      else
        Break;

      Inc(Pos);
      Right := ParseUnary;

      Node := NewNode(Op, '');
      Node^.L := Result;
      Node^.R := Right;
      Result := Node;
    end;
  end;

  function ParseExpression: PTree;
  var
    Op: Integer;
    Right: PTree;
    Node: PTree;
  begin
    Result := ParseTerm;

    while True do
    begin
      SkipSpaces;

      if CurrentChar = '+' then
        Op := 3
      else if CurrentChar = '-' then
        Op := 4
      else
        Break;

      Inc(Pos);
      Right := ParseTerm;

      Node := NewNode(Op, '');
      Node^.L := Result;
      Node^.R := Right;
      Result := Node;
    end;
  end;

var
  Root: PTree;
begin
  Result := nil;
  Root := nil;

  try
    Root := ParseExpression;

    SkipSpaces;

    if Pos <= Length(S) then
      Error(Format(
        'Caractere inesperado na posição %d: "%s".',
        [Pos, S[Pos]]));

    Result := Root;
  except
    DelTree(Root);
    Result := nil;
    raise;
  end;
end;

procedure TCalcExpress.Init(S: string);
var
  NewTree: PTree;
  NewFormula: string;
begin
  NewFormula := Trim(S);

  if NewFormula = '' then
    NewFormula := '0';

  NewTree := nil;

  try
    Pos := 1;
    Err := False;
    Bc := 0;
    PrevLex := 0;
    CurLex := 0;

    FFormula := NewFormula;

    NewTree := PTree(GetTree(LowerCase(NewFormula)));

    if NewTree = nil then
      Error('A árvore da expressão não foi criada.');

    DelTree(PTree(Tree));
    Tree := NewTree;
    NewTree := nil;
  except
    DelTree(NewTree);
    raise;
  end;
end;

procedure TCalcExpress.SetVariables(Value: TStrings);
begin
  if FVariables = nil then
    FVariables := TStringList.Create;

  FVariables.BeginUpdate;
  try
    FVariables.Clear;

    if Value <> nil then
      FVariables.Assign(Value);
  finally
    FVariables.EndUpdate;
  end;

  Init(FFormula);
end;

end.
