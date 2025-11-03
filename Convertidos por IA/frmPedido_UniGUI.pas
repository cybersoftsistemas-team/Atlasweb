
unit frmPedido;

interface

uses
  SysUtils, Classes, UniGUIClasses, UniGUIAbstractClasses, UniGUIApplication,
  UniGUIForm, UniGUIBaseClasses, UniGUIControls, UniGUIMainModule,
  uniGUIRegClasses, uniGUIVars, uniGUIFrame, Data.DB, MemDS, DBAccess, MSAccess,
  UniDBNavigator, UniEdit, UniMemo, UniDBEdit, UniDBComboBox,
  UniDBLookupComboBox, UniPanel, UniButton, UniLabel, UniImage,
  UniPageControl, UniTabSheet, UniDBText;

type
  TPedido = class(TUniForm)
  private
    procedure CriarComponentes;
  public
    procedure AfterConstruction; override;
  end;

implementation

{$R *.dfm}

procedure TPedido.AfterConstruction;
begin
  inherited;
  CriarComponentes;
end;

procedure TPedido.CriarComponentes;
var
  Panel1: TUniPanel;
  bSair, bItens, bVisualizar, bDuplicatas, bPesquisar: TUniButton;
  Navega: TUniDBNavigator;
  cRich: TUniDBMemo;
  cFormula: TUniMemo;
  cNome, cTransportador, cProcesso, cNotaReferencia: TUniDBLookupComboBox;
  cDI, cDataDI, DBEdit2, cCodigoNatureza, cDescPercent, DBEdit3: TUniDBEdit;
  cDescontoTipo: TUniDBComboBox;
  PageControl1: TUniPageControl;
  TabSheet1, TabSheet2: TUniTabSheet;
begin
  Panel1 := TUniPanel.Create(Self);
  Panel1.Parent := Self;
  Panel1.Align := alTop;
  Panel1.Height := 50;

  bSair := TUniButton.Create(Self);
  bSair.Parent := Panel1;
  bSair.Left := 10;
  bSair.Top := 10;
  bSair.Caption := 'Sair';

  bItens := TUniButton.Create(Self);
  bItens.Parent := Panel1;
  bItens.Left := 100;
  bItens.Top := 10;
  bItens.Caption := 'Itens';

  Navega := TUniDBNavigator.Create(Self);
  Navega.Parent := Panel1;
  Navega.Left := 200;
  Navega.Top := 10;

  PageControl1 := TUniPageControl.Create(Self);
  PageControl1.Parent := Self;
  PageControl1.Align := alClient;

  TabSheet1 := TUniTabSheet.Create(Self);
  TabSheet1.PageControl := PageControl1;
  TabSheet1.Caption := 'Principal';

  TabSheet2 := TUniTabSheet.Create(Self);
  TabSheet2.PageControl := PageControl1;
  TabSheet2.Caption := 'Outros';

  // Outros componentes podem ser adicionados de forma semelhante...
end;

initialization
  RegisterClass(TPedido);

end.
