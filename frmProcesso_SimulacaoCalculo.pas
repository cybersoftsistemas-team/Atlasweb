unit frmProcesso_SimulacaoCalculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DBCtrls, Vcl.StdCtrls, DB,
  DBAccess, MSAccess, Funcoes, ppCtrls, ppClass, ppBands, ppReport, ppDBPipe, ppVar, ppSubRpt, Vcl.ComCtrls, ActnList, Buttons, math, Grids, DBGrids, Mask, ppDB,
  ppParameter, ppDesignLayer, ppModule, raCodMod, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, MemDS, CalcExpress, ppTableGrid, Vcl.OleServer, MaskUtils, ppMemo,
  system.UITypes, Vcl.Menus, Vcl.Imaging.pngimage, RxCurrEdit, RxLookup, RxToolEdit, RxDBCtrl; 

type
  TProcesso_SimulacaoCalculo = class(TForm)
    tNumero: TMSQuery;
    tDespesa: TMSQuery;
    tRegistro: TMSQuery;
    tSomaDespesas: TMSQuery;
    tItens: TMSQuery;
    tSomaProdutos: TMSQuery;
    tSomaImpostos: TMSQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    gDespesas: TDBGrid;
    Panel3: TPanel;
    bRemoveTudo: TButton;
    bBuscar: TButton;
    StaticText30: TStaticText;
    cTotalDespesasSai: TCurrencyEdit;
    Panel1: TPanel;
    bSair: TButton;
    bImprimir: TButton;
    Panel5: TPanel;
    StaticText44: TStaticText;
    lData: TStaticText;
    StaticText3: TStaticText;
    StaticText5: TStaticText;
    StaticText8: TStaticText;
    cNumero: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit17: TDBEdit;
    StaticText11: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    cTaxaMoeda: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    StaticText16: TStaticText;
    StaticText18: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    DBEdit32: TDBEdit;
    StaticText29: TStaticText;
    cDataRegistro_DI: TDBDateEdit;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    StaticText39: TStaticText;
    DBEdit1: TDBEdit;
    StaticText40: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    Panel6: TPanel;
    StaticText2: TStaticText;
    cProduto: TDBEdit;
    StaticText4: TStaticText;
    cNCM: TDBEdit;
    StaticText7: TStaticText;
    DBEdit10: TDBEdit;
    StaticText17: TStaticText;
    cUnitario: TDBEdit;
    StaticText6: TStaticText;
    DBEdit9: TDBEdit;
    StaticText12: TStaticText;
    cAliquotaII: TDBEdit;
    StaticText13: TStaticText;
    cAliquotaIPI: TDBEdit;
    StaticText25: TStaticText;
    cAliquotaPIS: TDBEdit;
    StaticText26: TStaticText;
    cAliquotaCOFINS: TDBEdit;
    cPesoBruto: TDBEdit;
    StaticText41: TStaticText;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit23: TDBEdit;
    cUnitarioReal: TCurrencyEdit;
    StaticText42: TStaticText;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    StaticText43: TStaticText;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    DBEdit35: TDBEdit;
    DBEdit33: TDBEdit;
    cVia: TDBComboBox;
    RxDBLookupCombo3: TRxDBLookupCombo;
    StaticText47: TStaticText;
    RxDBLookupCombo4: TRxDBLookupCombo;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    DBEdit7: TDBEdit;
    DBEdit16: TDBEdit;
    StaticText50: TStaticText;
    DBEdit36: TDBEdit;
    StaticText51: TStaticText;
    RxDBLookupCombo5: TRxDBLookupCombo;
    StaticText52: TStaticText;
    DBEdit37: TDBEdit;
    DBComboBox1: TDBComboBox;
    StaticText10: TStaticText;
    StaticText27: TStaticText;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Navega: TDBNavigator;
    GradeProd: TDBGrid;
    Panel4: TPanel;
    NavegaProdutos: TDBNavigator;
    GroupBox1: TGroupBox;
    cNomeClienteImp: TDBEdit;
    StaticText1: TStaticText;
    StaticText28: TStaticText;
    GroupBox2: TGroupBox;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    DBEdit19: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    StaticText36: TStaticText;
    RxDBLookupCombo10: TRxDBLookupCombo;
    bCalcular: TSpeedButton;
    StaticText37: TStaticText;
    DBEdit3: TDBEdit;
    tProdutos: TMSQuery;
    StaticText38: TStaticText;
    DBEdit6: TDBEdit;
    tSimula: TMSQuery;
    dstSimula: TDataSource;
    StaticText54: TStaticText;
    DBEdit22: TDBEdit;
    StaticText55: TStaticText;
    DBEdit12: TDBEdit;
    StaticText56: TStaticText;
    DBEdit27: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    StaticText57: TStaticText;
    DBEdit34: TDBEdit;
    DBEdit38: TDBEdit;
    mMacro: TCalcExpress;
    StaticText58: TStaticText;
    RxDBLookupCombo11: TRxDBLookupCombo;
    dstProdutos: TDataSource;
    TabSheet4: TTabSheet;
    Memo1: TMemo;
    StaticText60: TStaticText;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    StaticText61: TStaticText;
    RxDBLookupCombo12: TRxDBLookupCombo;
    dstDespesa: TDataSource;
    tDespesaAdm: TMSQuery;
    dstDespesaAdm: TDataSource;
    StaticText62: TStaticText;
    DBEdit42: TDBEdit;
    StaticText63: TStaticText;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    bExcel: TButton;
    TabSheet5: TTabSheet;
    DBGrid1: TDBGrid;
    bDuplicar: TButton;
    StaticText64: TStaticText;
    DBEdit45: TDBEdit;
    cTotalDespesas: TCurrencyEdit;
    tDespesaSai: TMSQuery;
    dstDespesaSai: TDataSource;
    bImpHor: TButton;
    cTotalII: TCurrencyEdit;
    cTotalIPI: TCurrencyEdit;
    PopupMenu1: TPopupMenu;
    CustodeEntrada1: TMenuItem;
    CustodeSada1: TMenuItem;
    N1: TMenuItem;
    Nenhum1: TMenuItem;
    Ambos1: TMenuItem;
    bMarinha: TButton;
    Panel2: TPanel;
    cTipoValor: TRadioGroup;
    cDespesa: TDBLookupComboBox;
    StaticText20: TStaticText;
    StaticText33: TStaticText;
    cDespNac: TCurrencyEdit;
    StaticText59: TStaticText;
    cValorME: TCurrencyEdit;
    StaticText65: TStaticText;
    cTaxa: TCurrencyEdit;
    DBEdit39: TDBEdit;
    NavegaDesp: TDBNavigator;
    bPesq: TSpeedButton;
    DBEdit46: TDBEdit;
    StaticText66: TStaticText;
    bPISCOFINS: TButton;
    ttmp: TMSQuery;
    bDuplicarItem: TButton;
    StaticText67: TStaticText;
    DBEdit47: TDBEdit;
    tDespesaMar: TMSQuery;
    dstDespesaMar: TDataSource;
    GroupBox3: TGroupBox;
    StaticText69: TStaticText;
    DBEdit49: TDBEdit;
    StaticText70: TStaticText;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    StaticText71: TStaticText;
    StaticText72: TStaticText;
    DBEdit52: TDBEdit;
    StaticText73: TStaticText;
    DBEdit53: TDBEdit;
    StaticText68: TStaticText;
    DBEdit48: TDBEdit;
    Label3: TLabel;
    DBCheckBox6: TDBCheckBox;
    StaticText124: TStaticText;
    DBEdit54: TDBEdit;
    StaticText53: TStaticText;
    RxDBLookupCombo6: TRxDBLookupCombo;
    StaticText19: TStaticText;
    DBEdit21: TDBEdit;
    StaticText9: TStaticText;
    cSeguro: TDBEdit;
    StaticText24: TStaticText;
    DBEdit26: TDBEdit;
    procedure bSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bRemoveTudoClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure cDespesaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure PegaValor;
    procedure bImprimirClick(Sender: TObject);
    procedure pTituloBeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure NavegaProdutosClick(Sender: TObject; Button: TNavigateBtn);
    procedure cNCMExit(Sender: TObject);
    procedure NavegaProdutosBeforeAction(Sender: TObject;Button: TNavigateBtn);
    procedure cNumeroChange(Sender: TObject);
    procedure cUnitarioExit(Sender: TObject);
    procedure cProdutoChange(Sender: TObject);
    procedure CalculaEntrada;
    procedure bCalcularClick(Sender: TObject);
    procedure ppTotEntCalc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure lICMSSaiCalc(Sender: TObject; var Value: Variant);
    procedure lIPISaiCalc(Sender: TObject; var Value: Variant);
    procedure gDespesasCellClick(Column: TColumn);
    procedure ppPageSummaryBand1BeforePrint(Sender: TObject);
    procedure bExcelClick(Sender: TObject);
    procedure bDuplicarClick(Sender: TObject);
    procedure bImpHorClick(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppGroupFooterBand2AfterPrint(Sender: TObject);
    procedure ppPageSummaryBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand8BeforePrint(Sender: TObject);
    procedure CustodeEntrada1Click(Sender: TObject);
    procedure CustodeSada1Click(Sender: TObject);
    procedure Nenhum1Click(Sender: TObject);
    procedure Ambos1Click(Sender: TObject);
    procedure bMarinhaClick(Sender: TObject);
    procedure cValorMEChange(Sender: TObject);
    procedure DBEdit39Change(Sender: TObject);
    procedure cDespesaCloseUp(Sender: TObject);
    procedure NavegaDespClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaDespBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bPesqClick(Sender: TObject);
    procedure bPISCOFINSClick(Sender: TObject);
    procedure bDuplicarItemClick(Sender: TObject);
    procedure ppDetailBand13BeforePrint(Sender: TObject);
    procedure ppSummaryBand14BeforePrint(Sender: TObject);
    procedure ppPageSummaryBand3BeforePrint(Sender: TObject);
    procedure pUnitarioCalc(Sender: TObject; var Value: Variant);
    procedure pUnitarioMECalc(Sender: TObject; var Value: Variant);
    procedure pTotalMECalc(Sender: TObject; var Value: Variant);
    procedure pTotalRealCalc(Sender: TObject; var Value: Variant);
    procedure ppSummaryBand1BeforeGenerate(Sender: TObject);
  private
    procedure SomaDespesas;
    procedure CalculoSaida;
    function ConvFormula(Formula, Campo: string): string;
    procedure Imprimir;
    { Private declarations }
  public
    { Public declarations }
      mUnitario
     ,mTotal
     ,mBCPIS
     ,mValor
     ,mValorTotal
     ,mPeso
     ,mII
     ,mFatorPIS
     ,mFatorCOFINS
     ,mFatorDespesa
     ,mFatorSeguro
     ,mFator
     ,mFatorFrete: Real;
  end;

var
  Processo_SimulacaoCalculo: TProcesso_SimulacaoCalculo;

implementation

uses frmDados, frmProcesso_SimulacaoCalculoProcesso, frmMenu_Principal, frmDMFiscal, frmProcesso_SimulacaoMercante, frmPesquisaGerais, frmJanela_Processamento;

{$R *.dfm}

procedure TProcesso_SimulacaoCalculo.bSairClick(Sender: TObject);
begin
        Close;
end;

procedure TProcesso_SimulacaoCalculo.bImpHorClick(Sender: TObject);
begin
      Imprimir;
      rSimulacaoH.Print;
      FreeOnRelease;
      rSimulacaoH.Reset;
end;

procedure TProcesso_SimulacaoCalculo.FormClose(Sender: TObject;var Action: TCloseAction);
begin
     FecharTabelas(Dados, nil, nil, nil);
     Processo_SimulacaoCalculo.Release;
     Processo_SimulacaoCalculo := nil;
end;

procedure TProcesso_SimulacaoCalculo.FormCreate(Sender: TObject);
begin
      If FileExists('fundo_barra.bmp') then Image1.Picture.LoadFromFile('fundo_barra.bmp');
end;

procedure TProcesso_SimulacaoCalculo.FormShow(Sender: TObject);
begin
     Screen.Cursor := crSQLWait;
     with Dados do begin
          with Empresas do begin
               sql.clear;
               sql.add('select * from Empresas where Codigo = '+inttostr(Menu_Principal.mEmpresa));
               open;
          end;
          with SimulaImportacao do begin
               SQL.Clear;
               SQL.Add('SELECT *,');
               SQL.Add('       Pais_OrigemNome = (SELECT Nome FROM Cybersoft_Cadastros.dbo.Paises WHERE Codigo = Pais_Origem) ');
               SQL.Add('FROM   SimulaImportacao ORDER BY Numero');
               Open;
          end;
          with SimulaDespesas do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM SimulaDespesas WHERE(Simulacao = :pSimulacao) order By Registro');
               ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
          end;
          with SimulaProdutos do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM SimulaProdutos WHERE(Simulacao = :pSimulacao)');
               ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
          end;
          with ClassificacaoFinanceira do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM ClassificacaoFinanceira WHERE(Desativada <> 1) ORDER BY Descricao');
               Open;
          end;
          with Moedas do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Moedas ORDER BY Nome');
               Open;
          end;
          with TipoNota do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM TipoNota ORDER BY Descricao');
               Open;
          end;
          with IncentivosFiscais do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM IncentivosFiscais ORDER BY Nome');
               Open;
          end;
          with Paises do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM Paises ORDER BY Nome');
               Open;
          end;
          with Estados do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM Estados ORDER BY Codigo');
               Open;
          end;
          with Incoterms do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM INCOTERMS ORDER BY Codigo');
               Open;
          end;
          with Campos do begin
               SQL.Clear;
               SQL.Add('SELECT * FROM Campos WHERE Campo IN('+ListaCampos(PedidosTipo_Nota.AsInteger, 0)+') ORDER BY Tabela');
               Open;
          end;
          with TiposProcesso do begin 
               SQL.Clear;
               SQL.Add('SELECT * FROM TiposProcesso ORDER BY Descricao');
               Open;
          end;
          with Configuracao do begin
               SQL.Clear;
               SQL.Add('select * from Configuracao');
               Open;
               if fieldbyname('Modelo_Simulacao').AsBoolean then begin
                  bImpHor.Visible   := false;
                  bImprimir.Caption := '&Imprimir';
               end;
          end;
     end;
     PageControl1.ActivePageIndex := 0;
     Screen.Cursor := crDefault;
end;

procedure TProcesso_SimulacaoCalculo.gDespesasCellClick(Column: TColumn);
begin
     with Dados do begin
          ClassificacaoFinanceira.Locate('Descricao', SimulaDespesas.FieldByName('Despesa').asstring, []);
          cDespesa.KeyValue := ClassificacaoFinanceiraCodigo.asstring;
          cDespNac.Value    := SimulaDespesas.FieldByName('Valor').ascurrency;
          cValorME.Value    := SimulaDespesas.FieldByName('Valor_ME').ascurrency;
          cTaxa.Value       := SimulaDespesas.FieldByName('Taxa').asfloat;
     end;
end;

procedure TProcesso_SimulacaoCalculo.lICMSSaiCalc(Sender: TObject; var Value: Variant);
begin
      with Dados do begin
           Value := (SimulaProdutos.FieldByName('Quantidade').AsFloat * SimulaProdutos.FieldByName('Valor_ICMSSaida').AsCurrency);
      end;
end;

procedure TProcesso_SimulacaoCalculo.lIPISaiCalc(Sender: TObject; var Value: Variant);
begin
      with Dados do begin
           Value := (SimulaProdutos.FieldByName('Quantidade').AsFloat * SimulaProdutos.FieldByName('Valor_IpiSai').AsCurrency);
      end;
end;

procedure TProcesso_SimulacaoCalculo.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             Navega.Controls[i].Enabled := False;
         End;
         Dados.SimulaImportacaoData.Value := Date;
         Panel5.Enabled         := true;
         bCalcular.Enabled      := false;
         bImprimir.Enabled      := false;
         NavegaProdutos.Enabled := false;
         PageControl1.ActivePageIndex := 0;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Panel5.Enabled := false;
         Navega.SetFocus;
         bCalcular.Enabled      := true;
         bImprimir.Enabled      := true;
         NavegaProdutos.Enabled := true;
      End;
      If (Button = nbInsert) then Begin
         Dados.SimulaImportacaoPais_Destino.Value                := '1058';
         Dados.SimulaImportacaoCliente_NotaContrib.Value         := true;
         Dados.SimulaImportacaoCliente_NotaJuridica.Value        := true;
         Dados.SimulaImportacaoCliente_NotaSimples.Value         := false;
         Dados.SimulaImportacaoCliente_NotaZonaFranca.Value      := false;
         Dados.SimulaImportacaoCliente_NotaConsumidorFinal.Value := false;
      End;
      with Dados, SimulaProdutos do begin
           cTotalII.Value  := FieldByName('Valor_II').ascurrency  * FieldByName('Quantidade').asfloat;
           cTotalIPI.Value := FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat;
      end;
end;

procedure TProcesso_SimulacaoCalculo.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) and (SimulaImportacao.State = dsInsert) then begin
              tNumero.Open;
              SimulaImportacaoNumero.Value := tNumero.FieldByName('Numero').AsInteger + 1;
              tNumero.Close;
           End;
           if Button = nbDelete then begin
              if Messagedlg('Deseja realmente excluir esta simulação?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end else begin
                 tProdutos.sql.Clear;
                 tProdutos.sql.Add('delete from SimulaProdutos where Simulacao = :pSimula');
                 tProdutos.ParamByName('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
                 tProdutos.Execute;
                 tDespesa.sql.Clear;
                 tDespesa.sql.Add('delete from SimulaDespesas where Simulacao = :pSimula');
                 tDespesa.ParamByName('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
                 tDespesa.Execute;
              end;
           end;
      End;
end;

procedure TProcesso_SimulacaoCalculo.Ambos1Click(Sender: TObject);
begin
      with Dados, SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value       := true;
                SimulaDespesasCusto_Saida.Value := true;
           Post;
           SomaDespesas;
      end;
end;

procedure TProcesso_SimulacaoCalculo.bRemoveTudoClick(Sender: TObject);
begin
      if Dados.SimulaDespesas.RecordCount > 0 then begin
         if MessageDlg('Remover todas as despesas desta simulação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            with Dados do begin
                 SimulaDespesas.SQL.Clear;
                 SimulaDespesas.SQL.Add('DELETE FROM SimulaDespesas WHERE(Simulacao = :pSimulacao)');
                 SimulaDespesas.ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                 SimulaDespesas.Execute;
                 SimulaDespesas.SQL.Clear;
                 SimulaDespesas.SQL.Add('SELECT * FROM SimulaDespesas WHERE(Simulacao = :pSimulacao) order by Registro');
                 SimulaDespesas.ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                 SimulaDespesas.Open;
            end;
         end;
      end;
      SomaDespesas;
end;

procedure TProcesso_SimulacaoCalculo.bBuscarClick(Sender: TObject);
begin
      Processo_SimulacaoCalculoProcesso := TProcesso_SimulacaoCalculoProcesso.Create(Self);
      Processo_SimulacaoCalculoProcesso.Caption := Caption;
      Processo_SimulacaoCalculoProcesso.mSimulacao := Dados.SimulaImportacaoNumero.AsInteger;
      Processo_SimulacaoCalculoProcesso.ShowModal;
      SomaDespesas;
end;

procedure TProcesso_SimulacaoCalculo.cDespesaKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
      PegaValor;
end;

procedure TProcesso_SimulacaoCalculo.PegaValor;
begin
      with Dados, tDespesa do begin
           sql.Clear;
           sql.add('select Valor = case :pTipo');
           sql.add('                    when 0 then (select MIN(Valor_Total) AS Valor FROM PagarReceber WHERE Classificacao = :pClass)');
           sql.add('                    when 1 then (select AVG(Valor_Total) AS Valor FROM PagarReceber WHERE Classificacao = :pClass)');
           sql.add('                    when 2 then (select MAX(Valor_Total) AS Valor FROM PagarReceber WHERE Classificacao = :pClass)');
           sql.add('               end');
           ParamByName('pClass').AsString := ClassificacaoFinanceiraCodigo.Value;
           ParamByName('pTipo').asinteger := cTipoValor.ItemIndex;
           Open;
           cDespNac.Value := 0;
           if RecordCount <> 0 then cDespNac.Value := FieldByName('Valor').AsCurrency;
      end;
end;

procedure TProcesso_SimulacaoCalculo.cDespesaCloseUp(Sender: TObject);
begin
      PegaValor;
end;

procedure TProcesso_SimulacaoCalculo.bImprimirClick(Sender: TObject);
begin
      Imprimir;
      if not Dados.Configuracao.fieldbyname('Modelo_Simulacao').AsBoolean then begin
         rSimulacao.Print;
         FreeOnRelease;
         rSimulacao.Reset;
      end else begin
         rSimulacaoRadar.Print;
         rSimulacaoRadar.FreeOnRelease;
         rSimulacaoRadar.Reset;
         if messagedlg('Imprimira pagina dos Produtos?', mtConfirmation, [mbyes, mbno], 0) = mryes then begin
            rSimulacaoRadarProd.Print;
            rSimulacaoRadarProd.FreeOnRelease;
            rSimulacaoRadarProd.Reset;
         end;
      end;
end;

procedure TProcesso_SimulacaoCalculo.bMarinhaClick(Sender: TObject);
begin
      Processo_SimulacaoMercante         := TProcesso_SimulacaoMercante.Create(Self);
      Processo_SimulacaoMercante.Caption := Caption;
      Processo_SimulacaoMercante.ShowModal;
end;

procedure TProcesso_SimulacaoCalculo.bPesqClick(Sender: TObject);
begin
      PesquisaGerais         := TPesquisaGerais.Create(Self);
      PesquisaGerais.mTab    := 'ClassificacaoFinanceira';
      PesquisaGerais.mCampo  := 'Classificacao';
      PesquisaGerais.mCampo2 := 'Descricao';
      Dados.Configuracao.open;
      PesquisaGerais.mBanco  := iif(Dados.ConfiguracaoCompartilhar_Classificacao.asboolean, 'Dados','Empresa');
      PesquisaGerais.mTabela := Dados.SimulaDespesas;
      PesquisaGerais.Showmodal;
end;

procedure TProcesso_SimulacaoCalculo.bPISCOFINSClick(Sender: TObject);
var
   mDifPIS, mDifCOFINS: real;
begin
      if messagedlg('Deseja realmente gerar os lançamentos de diferença de PIS/COFINS?', mtConfirmation, [mbyes, mbno], 0) = mrNo then begin
         Abort;
      end;
      
      mDifPIS    := 0;
      mDifCOFINS := 0;
      with Dados, SimulaDespesas do begin
           with ttmp do begin
                sql.Clear;
                sql.Add('select Valor_DifPIS    = Valor_BCPISEnt * ((select PIS - PIS_Nota from NCM where NCM.NCM = sm.NCM)/100)');
                sql.Add('      ,Valor_DifCOFINS = Valor_BCPISEnt * ((select COFINS - COFINS_Nota from NCM where NCM.NCM = sm.NCM)/100)');
                sql.Add('into #tmp');
                sql.Add('from SimulaProdutos sm');
                sql.Add('where Simulacao = :pSimula');
                sql.Add('and Valor_BCPISEnt > 0');
                sql.Add('and ((select PIS - PIS_Nota from NCM where NCM.NCM = sm.NCM) > 0 or (select COFINS - COFINS_Nota from NCM where NCM.NCM = sm.NCM) > 0)');
                sql.Add('select Valor_DifPIS    = sum(isnull(Valor_DifPis, 0))');
                sql.Add('      ,Valor_DifCOFINS = sum(isnull(Valor_DifCOFINS, 0))');
                sql.Add('from #tmp');
                sql.Add('drop table #tmp');
                parambyname('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
                //sql.SaveToFile('c:\temp\Simulacao_Diferença_PIS_COFINS.sql');
                open;
                mDifPIS    := fieldbyname('Valor_DifPIS').AsCurrency;
                mDifCOFINS := fieldbyname('Valor_DifCOFINS').AsCurrency;
           end;
           // Lançamento da despesa "Diferença de PIS".
           if (mDifPIS > 0) then begin 
              if (trim(TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString) = '') then begin
                 messagedlg('Classificação Financeira da diferença do PIS não parâmetrizada no "Tipo de Processo"!'+#13+'Lançamento não será gerado!', mtError, [mbOK], 0);
              end else begin
                 if trim(TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString) <> '' then begin
                    with ttmp do begin
                         sql.Clear;
                         sql.Add('select Codigo, Descricao, Custo_Entrada, Custo_Saida = Custo');
                         sql.Add('from ClassificacaoFinanceira');
                         sql.Add('where Codigo = :pClass');
                         parambyname('pClass').Asstring := TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString;
                         open;
                    end;
                    with tRegistro do begin
                         sql.clear;
                         sql.Add('select isnull(max(Registro), 0)+1 as Reg from SimulaDespesas');
                         open;
                    end;
                    append;
                         fieldbyname('Registro').Value      := tRegistro.FieldByName('Reg').AsInteger;
                         fieldbyname('Simulacao').Value     := SimulaImportacaoNumero.Value;
                         fieldbyname('Classificacao').Value := TiposProcessoSISCOMEX_ClassificacaoDifPIS.AsString;
                         fieldbyname('Despesa').Value       := ttmp.FieldByName('Descricao').AsString; 
                         fieldbyname('Valor').Value         := mDifPIS;
                         fieldbyname('Taxa').Value          := SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;
                         fieldbyname('Valor_ME').Value      := mDifPIS / SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;  
                         fieldbyname('Custo').Value         := ttmp.FieldByName('Custo_Entrada').asboolean;
                         fieldbyname('Custo_Saida').Value   := ttmp.FieldByName('Custo_Saida').asboolean;
                    post;
                    tRegistro.close;
                 end;
              end;
           end;
           // Lançamento da despesa "Diferença de COFINS".
           if mDifCOFINS > 0 then begin
              if trim(TiposProcessoSISCOMEX_ClassificacaoDifCOFINS.AsString) = '' then begin
                 messagedlg('Classificação Financeira da diferença do COFINS não parâmetrizada no "Tipo de Processo"!'+#13+'Lançamento não será gerado!', mtError, [mbOK], 0);
              end else begin
                 with ttmp do begin
                      sql.Clear;
                      sql.Add('select Codigo, Descricao, Custo_Entrada, Custo_Saida = Custo');
                      sql.Add('from ClassificacaoFinanceira');
                      sql.Add('where Codigo = :pClass');
                      parambyname('pClass').Asstring := TiposProcessoSISCOMEX_ClassificacaoDifCOFINS.AsString;
                      open;
                 end;
                 with tRegistro do begin
                      sql.clear;
                      sql.Add('select isnull(max(Registro), 0)+1 as Reg from SimulaDespesas');
                      open;
                 end;
                 append;
                      fieldbyname('Registro').Value      := tRegistro.FieldByName('Reg').AsInteger;
                      fieldbyname('Simulacao').Value     := SimulaImportacaoNumero.Value;
                      fieldbyname('Classificacao').Value := TiposProcessoSISCOMEX_ClassificacaoDifCOFINS.AsString;
                      fieldbyname('Despesa').Value       := ttmp.FieldByName('Descricao').AsString; 
                      fieldbyname('Valor').Value         := mDifCOFINS;
                      fieldbyname('Taxa').Value          := SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;
                      fieldbyname('Valor_ME').Value      := mDifCOFINS / SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;  
                      fieldbyname('Custo').Value         := ttmp.FieldByName('Custo_Entrada').asboolean;
                      fieldbyname('Custo_Saida').Value   := ttmp.FieldByName('Custo_Saida').asboolean;
                 post;
                 tRegistro.close;
              end;
           end;
      end;
      SomaDespesas;
end;

procedure TProcesso_SimulacaoCalculo.Imprimir;
Var
    mNumero: Integer;
begin
      with Dados do begin
           mNumero := SimulaImportacaoNumero.Value;
           with tSimula do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('      ,Pais_OrigemNome = (select Nome from Cybersoft_Cadastros.dbo.Paises where Codigo = Pais_Origem) ');
                sql.add('      ,INCOTERM_Desc   = (select Descricao from Cybersoft_Cadastros.dbo.Incoterms where Codigo = INCOTERM)');
                sql.add('      ,NCM_Descricao   = case (select Count(distinct NCM) from SimulaProdutos sp where sp.Simulacao = si.Numero)');
                sql.add('                              when 1 then (select distinct substring(NCM,1,4)+''.''+substring(NCM,5,2)+''.''+substring(NCM,7,2) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
                sql.add('                         end');
                sql.Add('      ,Unidade_Descricao = case (select Count(distinct NCM) from SimulaProdutos where Simulacao = si.Numero)');
                sql.Add('                                when 1 then (select Unidade from NCM where NCM = (select distinct NCM from SimulaProdutos where Simulacao = si.Numero)) else ''VARIOS'' ');
                sql.Add('                           end');
                sql.Add('      ,Unitario_Descricao = case (select Count(distinct Valor_UnitarioReal) from SimulaProdutos where Simulacao = si.Numero)');
                sql.Add('                                 when 1 then (select distinct cast(cast(Valor_UnitarioReal AS NUMERIC(15,2)) as varchar(17)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
                sql.Add('                            end');
                sql.add('      ,Volumes = (select sum(Quantidade) from SimulaProdutos where Simulacao = si.Numero)');
                sql.Add('      ,Valor_AFRMM = isnull((select sum(isnull(Valor, 0)) from SimulaDespesas where Simulacao = si.Numero and Despesa like ''%AFRMM%''), 0)');
                sql.Add('      ,Aliquota_II = case (select Count(distinct Aliquota_II) from SimulaProdutos where Simulacao = si.Numero)');
                sql.Add('                          when 1 then (select cast(cast(max(Aliquota_II) AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
                sql.Add('                     end');
                sql.add('      ,Aliquota_IPI = case (select Count(distinct Aliquota_IPI) from SimulaProdutos where Simulacao = si.Numero)');
                sql.Add('                           when 1 then (select cast(cast(max(Aliquota_IPI) AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
                sql.Add('                      end');
                sql.Add('      ,Aliquota_PIS = case (select Count(distinct Aliquota_PIS) from SimulaProdutos where Simulacao = si.Numero)');
                sql.Add('                           when 1 then (select cast(cast(max(Aliquota_PIS) AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
                sql.add('                      end');
                sql.Add('      ,Aliquota_COFINS = case (select Count(distinct Aliquota_COFINS) from SimulaProdutos where Simulacao = si.Numero)');
                sql.Add('                              when 1 then (select cast(cast(max(Aliquota_COFINS) AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Simulacao = si.Numero) else ''VARIOS'' ');
                sql.Add('                         end');
                sql.Add('      ,Aliquota_ICMSEnt = case isnull(Aliquota_ICMSEntrada, 0)');
                sql.add('                               when 0 then ''DIFERIDO'' else cast(cast(Aliquota_ICMSEntrada AS NUMERIC(6,2)) as varchar(6))');
                sql.Add('                          end');
                sql.Add('      ,Aliquota_ICMSSaida');
                sql.Add('      ,Aliquota_AFRMM    = (select Percentual_Marinha from Configuracao)');
                sql.Add('      ,Credito_IPI       = Valor_IPI *-1');
                sql.Add('      ,Credito_PIS       = Valor_PIS *-1');
                sql.Add('      ,Credito_COFINS    = Valor_COFINS *-1');
                sql.Add('      ,Credito_ICMS      = Valor_ICMSEntrada *-1');
                sql.Add('      ,Credito_IPIME     = round((Valor_IPI *-1) / Taxa_FOB, 2)');
                sql.Add('      ,Credito_PISME     = round((Valor_PIS *-1) / Taxa_FOB, 2)');
                sql.Add('      ,Credito_COFINSME  = round((Valor_COFINS *-1) / Taxa_FOB, 2)');
                sql.Add('      ,Credito_ICMSME    = round((Valor_ICMSEntrada *-1) / Taxa_FOB, 2)');
                sql.Add('      ,Valor_IPISaiME    = round(Valor_IPISai / Taxa_FOB, 2)');
                sql.Add('      ,Valor_PISSaiME    = round(Valor_PISSai / Taxa_FOB, 2)');
                sql.Add('      ,Valor_COFINSSaiME = round(Valor_COFINSSai / Taxa_FOB, 2)');
                sql.Add('      ,Valor_ICMSSaiME   = round(Valor_ICMSSaida / Taxa_FOB, 2)');
                sql.Add('      ,Valor_ICMSSTME    = round(Valor_ICMSST / Taxa_FOB, 2)');
                sql.Add('      ,Total_NFSaidaME   = round(Total_NFSaida / Taxa_FOB, 2)');
                sql.Add('      ,Valor_MarkupReal  = cast(0 as money)');
                sql.Add('      ,Valor_MarkupME    = cast(0 as money)');
                sql.Add('      ,Valor_AssImpReal  = round((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100), 2)');
                sql.Add('      ,Valor_AssImpME    = round(((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
                sql.Add('      ,Valor_TotalImpReal= round(Total_NFSaida + (select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100), 2)');
                sql.Add('      ,Valor_TotalImpME  = round((Total_NFSaida + (select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
                sql.Add('      ,Valor_CredTribIPI      = Valor_IPISai');
                sql.Add('      ,Valor_CredTribIPIME    = round(Valor_IPISai/Taxa_FOB, 2)');
                sql.Add('      ,Valor_CredTribPIS      = iif(Modalidade = ''CONTA E ORDEM'', Valor_PIS, Valor_PISSai)');
                sql.Add('      ,Valor_CredTribPISME    = iif(Modalidade = ''CONTA E ORDEM'', round(Valor_PIS/Taxa_FOB, 2)  , round(Valor_PISSai/Taxa_FOB, 2))');
                sql.Add('      ,Valor_CredTribCOFINS   = iif(Modalidade = ''CONTA E ORDEM'', Valor_COFINS, Valor_COFINSSai)');
                sql.Add('      ,Valor_CredTribCOFINSME = iif(Modalidade = ''CONTA E ORDEM'', round(Valor_COFINS/Taxa_FOB, 2), round(Valor_COFINSSai/Taxa_FOB, 2))');
                sql.Add('      ,Valor_BCImpServ        = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
                sql.Add('                                (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ)), 2)');
                sql.Add('      ,Valor_PISServ    = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
                sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_PISServ/100)');
                sql.Add('      ,Valor_COFINSServ = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
                sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_COFINSServ/100)');
                sql.Add('      ,Valor_ISSServ    = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
                sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_ISSServ/100)');
                sql.Add('      ,Valor_IRPJServ   = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
                sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_IRPJServ/100)');
                sql.Add('      ,Valor_CSLLServ   = round( ((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) *');
                sql.Add('                          (isnull(Taxa_Servico, 1)/100)/1-(Aliquota_PISServ+Aliquota_COFINSServ+Aliquota_ISSServ+Aliquota_IRPJServ+Aliquota_CSLLServ+Aliquota_IRPJServ+Aliquota_CSLLServ)), 2) * (Aliquota_CSLLServ/100)');
                sql.Add('      ,Valor_AssImpReal = round((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100), 2)');
                sql.Add('      ,Valor_AssImpME   = round(((select sum(isnull(sp.Valor_BCICMS * sp.Quantidade, 0)) from SimulaProdutos sp where sp.Simulacao = si.Numero) * (isnull(Taxa_Servico, 1)/100))/Taxa_FOB, 2)');
                sql.Add('from  SimulaImportacao si');
                sql.add('where Numero = :pNumero');
                ParamByName('pNumero').AsInteger := mNumero;
                //sql.SaveToFile('c:\temp\Simulacao.sql');
                Open;
           end;
           with tProdutos do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('      ,Total_Produtos        = Valor_UnitarioSaida * Quantidade');
                sql.Add('      ,Total_ICMSSai         = Valor_ICMSSaida     * Quantidade');
                sql.Add('      ,Total_ICMSSTSai       = Valor_ICMSST        * Quantidade');
                sql.Add('      ,Total_ICMSSTEnt       = 0');
                sql.Add('      ,Total_II              = Valor_II            * Quantidade');
                sql.Add('      ,Total_IPI             = Valor_IPI           * Quantidade');
                sql.Add('      ,Total_IPISai          = Valor_IPISai        * Quantidade');
                sql.Add('      ,Total_IPISaiME        = (Valor_IPISai       * Quantidade)/(select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Total_PISEnt          = Valor_PIS');
                sql.Add('      ,Total_COFINSEnt       = Valor_COFINS');
                sql.Add('      ,Total_PISSai          = Valor_PISSai');
                sql.Add('      ,Total_COFINSSai       = Valor_COFINSSai');
                sql.Add('      ,Processo              = (select Processo from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Modalidade            = (select Modalidade from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Produto               = (select Tipo_Produto from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Cliente               = (select Cliente_ImpNome from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Taxa                  = (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Valor_ICMSSTME        = Valor_ICMSST / (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
                sql.add('      ,Valor_ICMSSaiME       = Valor_ICMSSaida/(select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
                // Simulação RADAR.
                sql.Add('      ,Valor_UniExReal       = Valor_UnitarioME * (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Valor_TotalExReal     = (Valor_UnitarioME * (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)) * Quantidade');
                sql.Add('      ,Valor_TotalExME       = Valor_UnitarioME * Quantidade');
                sql.Add('      ,Valor_TotalExIPIReal  = (select isnull(Valor_IPISai, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) / (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal');
                sql.Add('      ,Valor_TotalExIPIME    = ((select isnull(Valor_IPISai, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) /');
                sql.add('                               (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal) / (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Valor_TotalExICMSReal = (select isnull(Valor_ICMSSaida, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) / (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal');
                sql.Add('      ,Valor_TotalExICMSME   = ((select isnull(Valor_ICMSSaida, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) /');
                sql.add('                               (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal) / (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
                sql.Add('      ,Valor_TotalExICMSSTReal = (select isnull(Valor_ICMSST, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) / (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal');
                sql.Add('      ,Valor_TotalExICMSSTME   = ((select isnull(Valor_ICMSST, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) /');
                sql.add('                               (select isnull(FOB, 0) from SimulaImportacao si where si.Numero = sp.Simulacao) * Valor_UnitarioReal) / (select Taxa_FOB from SimulaImportacao where Numero = Simulacao)');
                sql.Add('from SimulaProdutos sp');
                sql.Add('where Simulacao = :pSimulacao');
                ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
                //sql.savetofile('c:\temp\Simula_Produtos.sql');
                tProdutos.Open;
           end;
           if not Configuracao.fieldbyname('Modelo_Simulacao').AsBoolean then begin
              with tDespesa do begin
                   sql.Clear;
                   sql.Add('select *');
                   sql.Add('from SimulaDespesas');
                   sql.Add('where Simulacao = :pSimulacao');
                   sql.Add('and   isnull(Custo, 0) = 1');
                   ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
                   //sql.savetofile('c:\temp\Simula_DespesasCusto.sql');
                   Open;
              end;
              with tDespesaSai do begin
                   sql.Clear;
                   sql.Add('select *');
                   sql.Add('from SimulaDespesas');
                   sql.Add('where Simulacao = :pSimulacao');
                   sql.Add('and   isnull(Custo_Saida, 0) = 1');
                   ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
                   //sql.savetofile('c:\temp\Simula_DespesasCustoSai.sql');
                   Open;
              end;
           end else begin
              with tDespesa do begin
                   sql.Clear;
                   sql.Add('select *');
                   sql.Add('from  SimulaDespesas');
                   sql.Add('where Simulacao = :pSimulacao');
                   sql.Add('and   (select isnull(Despesa_AgMaritima, 0) from ClassificacaoFinanceira where Codigo = Classificacao) <> 1');
                   sql.Add('and   isnull(Custo, 0) = 1');
                   ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
                   //sql.savetofile('c:\temp\Simula_DespesasCusto.sql');
                   Open;
              end;
           end;
           with tDespesaAdm do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('from SimulaDespesas');
                sql.Add('where Simulacao = :pSimulacao');
                sql.Add('and   isnull(Custo, 0) = 0');
                sql.Add('and   isnull(Custo_Saida, 0) = 0');
                ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
                //sql.savetofile('c:\temp\Simula_DespesasAdm.sql');
                Open;
           end;
           with tDespesaMar do begin
                sql.Clear;
                sql.Add('select *');
                sql.Add('from SimulaDespesas');
                sql.Add('where Simulacao = :pSimulacao');
                sql.Add('and   (select isnull(Despesa_AgMaritima, 0) from ClassificacaoFinanceira where Codigo = Classificacao) = 1');
                ParamByName('pSimulacao').AsInteger := tSimula.FieldByName('Numero').asinteger;
                //sql.savetofile('c:\temp\Simula_DespesasAdm.sql');
                Open;
           end;
           if not Dados.Configuracao.fieldbyname('Modelo_Simulacao').AsBoolean then begin
              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogo.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
           end else begin
              if FileExists(Dados.EmpresasLogo.Value) then begin
                 iLogoRadar.Picture.LoadFromFile(Dados.EmpresasLogo.Value);
              end;
           end;

           lTitulo.Caption    := 'SIMULAÇÃO Nº '+FormatFloat('00000', tSimula.FieldByName('Numero').asinteger);
           lTituloHor.Caption := 'SIMULAÇÃO Nº '+FormatFloat('00000', tSimula.FieldByName('Numero').asinteger);
      end;
end;

procedure TProcesso_SimulacaoCalculo.pTituloBeforePrint(Sender: TObject);
begin
      pTitulo.PrintOnLastPage := rSimulacao.PageCount = 1;
end;

procedure TProcesso_SimulacaoCalculo.pTotalMECalc(Sender: TObject; var Value: Variant);
begin
     with tProdutos do begin
          value := value + fieldbyname('Valor_TotalExME').AsCurrency + fieldbyname('Valor_TotalExIPIME').AsCurrency + fieldbyname('Valor_TotalExICMSME').AsCurrency + fieldbyname('Valor_TotalExICMSSTME').AsCurrency;
     end;
end;

procedure TProcesso_SimulacaoCalculo.pTotalRealCalc(Sender: TObject; var Value: Variant);
begin
     with tProdutos do begin
          value := value + fieldbyname('Valor_TotalExReal').AsCurrency + fieldbyname('Valor_TotalExIPIReal').AsCurrency + fieldbyname('Valor_TotalExICMSReal').AsCurrency + fieldbyname('Valor_TotalExICMSSTReal').AsCurrency;
     end;
end;

procedure TProcesso_SimulacaoCalculo.pUnitarioCalc(Sender: TObject; var Value: Variant);
begin
     with tProdutos do begin
          value := fieldbyname('Valor_TotalExReal').AsCurrency + fieldbyname('Valor_TotalExIPIReal').AsCurrency + fieldbyname('Valor_TotalExICMSReal').AsCurrency + fieldbyname('Valor_TotalExICMSSTReal').AsCurrency;
     end;
end;

procedure TProcesso_SimulacaoCalculo.pUnitarioMECalc(Sender: TObject; var Value: Variant);
begin
     with tProdutos do begin
          value := fieldbyname('Valor_TotalExME').AsCurrency + fieldbyname('Valor_TotalExIPIME').AsCurrency + fieldbyname('Valor_TotalExICMSME').AsCurrency + fieldbyname('Valor_TotalExICMSSTME').AsCurrency;
     end;
end;

procedure TProcesso_SimulacaoCalculo.ppSummaryBand14BeforePrint(Sender: TObject);
begin
      TotalDesemb_ME.Value   := roundto(Total01_ME.Value   + Total02_ME.Value   + Total03_ME.Value   + Total04_ME.Value, -2);
      TotalDesemb_Real.Value := roundto(Total01_Real.Value + Total02_Real.Value + Total03_Real.Value + Total04_Real.Value, -2);
end;

procedure TProcesso_SimulacaoCalculo.ppSummaryBand1BeforeGenerate(Sender: TObject);
begin
      with Dados, SimulaImportacao do begin
           if fieldbyname('Destacar_ImpCred').asboolean then begin
              lCreditoIPIME.Value := 0;
           end;
      end;

end;

procedure TProcesso_SimulacaoCalculo.ppSummaryBand2BeforePrint(Sender: TObject);
begin
      with Dados do begin
           lCIFME.Value      := SimulaImportacaoFOB.AsCurrency;
           lCIFReal.Value    := SimulaImportacaoFOB_Real.AsCurrency;

           if Incoterms.FieldByName('Frete').asboolean then begin
              lCIFME.Value      := lCIFME.value      + SimulaImportacaoFrete_Internacional.AsCurrency;
              lCIFReal.Value    := lCIFReal.Value    + SimulaImportacaoFrete_Real.AsCurrency;
           end;
           if Incoterms.FieldByName('Seguro').asboolean then begin
              lCIFME.Value   := lCIFME.value   + SimulaImportacaoSeguro_PremioValor.AsCurrency;
              lCIFReal.Value := lCIFReal.Value + SimulaImportacaoSeguro_Real.AsCurrency;
           end;

           lTotalImpEnt.Value       := (SimulaImportacaoValor_II.AsCurrency + SimulaImportacaoValor_IPI.AsCurrency + SimulaImportacaoValor_PIS.AsCurrency + SimulaImportacaoValor_COFINS.AsCurrency + SimulaImportacaoValor_ICMSEntrada.AsCurrency);
           lCustoEntradaReal.Value  := (lCIFReal.Value + lTotalImpEnt.Value + lTotalDespesasReal.Value);
           lCustoEntradaME.Value    := (lCustoEntradaReal.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCreditoIPIReal.Value    := iif(not SimulaImportacaoDestacar_ImpCred.AsBoolean, (SimulaImportacaoValor_IPI.AsCurrency * -1), 0);
           lCreditoIPIME.Value      := iif(not SimulaImportacaoDestacar_ImpCred.AsBoolean, (lCreditoIPIReal.Value / SimulaImportacaoTaxa_FOB.AsFloat), 0);
           lCreditoPISReal.Value    := iif(not SimulaImportacaoDestacar_ImpCred.AsBoolean, (SimulaImportacaoValor_PIS.AsCurrency * -1), 0);
           lCreditoPISME.Value      := iif(not SimulaImportacaoDestacar_ImpCred.AsBoolean, (lCreditoPISReal.Value / SimulaImportacaoTaxa_FOB.AsFloat), 0);
           lCreditoCOFINSReal.Value := iif(not SimulaImportacaoDestacar_ImpCred.AsBoolean, (SimulaImportacaoValor_COFINS.AsCurrency * -1), 0);
           lCreditoCOFINSME.Value   := iif(not SimulaImportacaoDestacar_ImpCred.AsBoolean, (lCreditoCOFINSReal.Value / SimulaImportacaoTaxa_FOB.AsFloat), 0);
           lCreditoICMSReal.Value   := iif(not SimulaImportacaoDestacar_ImpCred.AsBoolean, (SimulaImportacaoValor_ICMSEntrada.AsCurrency * -1), 0);
           lCreditoICMSME.Value     := iif(not SimulaImportacaoDestacar_ImpCred.AsBoolean, (lCreditoICMSReal.Value / SimulaImportacaoTaxa_FOB.AsFloat), 0);

           if Dados.EmpresasRegime.asstring = 'R' then begin
              lTotalCreditoReal.Value := lCreditoIPIReal.Value + lCreditoICMSReal.Value + iif(TiposProcesso.FieldByName('Apuracao_PISCOFINS').asboolean, lCreditoPISReal.Value + lCreditoCOFINSReal.Value, 0);
           end else begin
              lTotalCreditoReal.Value := lCreditoIPIReal.Value + lCreditoICMSReal.Value;
           end;

           lTotalCreditoME.Value := lCreditoIPIME.Value + lCreditoPISME.Value + lCreditoCOFINSME.Value + lCreditoICMSME.Value;
           lTotalCustoME.Value   := lCustoEntradaME.Value + lTotalCreditoME.Value;
           lTotalCustoReal.Value := lCustoEntradaReal.Value + lTotalCreditoReal.Value;

           lPISSaidaME.Value     := (SimulaImportacaoValor_PISSai.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCOFINSSaidaME.Value  := (SimulaImportacaoValor_COFINSSai.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lICMSSaidaME.Value    := (SimulaImportacaoValor_ICMSSaida.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lICMSSTSaidaME.Value  := (SimulaImportacaoValor_ICMSST.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lIPIME.Value          := (SimulaImportacaoValor_IPISai.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lIRPJME.Value         := (SimulaImportacaoValor_IRPJ.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCSLLME.Value         := (SimulaImportacaoValor_CSLL.Value / SimulaImportacaoTaxa_FOB.AsFloat);

           lTotalNFSemIPIReal.Value := SimulaImportacaoTotal_NFSaida.ascurrency - SimulaImportacaoValor_IPISai.ascurrency;
           lTotalNFSemIPIME.Value   := lTotalNFSemIPIReal.Value / SimulaImportacaoTaxa_FOB.AsFloat;
           lTotalNFComIPIME.Value   := SimulaImportacaoTotal_NFSaida.Value / SimulaImportacaoTaxa_FOB.AsFloat;

           lTaxaAdmin.Value         := lTotalNFSemIPIReal.value * (SimulaImportacaoTaxa_Adiministrativa.AsCurrency/100);
           lTotalImpSaidaReal.Value := lTaxaAdmin.Value +
                                       SimulaImportacaoValor_IPISai.Value +
                                       SimulaImportacaoValor_PISSai.Value +
                                       SimulaImportacaoValor_COFINSSai.Value +
                                       SimulaImportacaoValor_ICMSSaida.Value +
                                       SimulaImportacaoValor_CSLL.Value +
                                       SimulaImportacaoValor_IRPJ.Value +
                                       SimulaImportacaoValor_ICMSST.Value;

           lTotalImpSaidaME.Value := (lTotalImpSaidaReal.Value / SimulaImportacaoTaxa_FOB.AsFloat);
      end;
end;

procedure TProcesso_SimulacaoCalculo.ppSummaryBand8BeforePrint(Sender: TObject);
begin
      with Dados do begin
           lCIFMEHor.Value   := SimulaImportacaoFOB.AsCurrency;
           lCIFRealHor.Value := SimulaImportacaoFOB_Real.AsCurrency;

           if Incoterms.FieldByName('Frete').asboolean then begin
              lCIFMEHor.Value   := lCIFMEHor.value   + SimulaImportacaoFrete_Internacional.AsCurrency;
              lCIFRealHor.Value := lCIFRealHor.Value + SimulaImportacaoFrete_Real.AsCurrency;
           end;
           if Incoterms.FieldByName('Seguro').asboolean then begin
              lCIFMEHor.Value   := lCIFMEHor.value   + SimulaImportacaoSeguro_PremioValor.AsCurrency;
              lCIFRealHor.Value := lCIFRealHor.Value + SimulaImportacaoSeguro_Real.AsCurrency;
           end;

           lTotalImpEntHor.Value       := (SimulaImportacaoValor_II.AsCurrency + SimulaImportacaoValor_IPI.AsCurrency + SimulaImportacaoValor_PIS.AsCurrency + SimulaImportacaoValor_COFINS.AsCurrency + SimulaImportacaoValor_ICMSEntrada.AsCurrency);
           lCustoEntradaRealHor.Value  := (lCIFRealHor.Value + lTotalImpEntHor.Value + lTotalDespesasRealHor.Value);
           lCustoEntradaMEHor.Value    := (lCustoEntradaRealHor.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCreditoIPIRealHor.Value    := (SimulaImportacaoValor_IPI.AsCurrency * -1);
           lCreditoIPIMEHor.Value      := (lCreditoIPIReal.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCreditoPISRealHor.Value    := (SimulaImportacaoValor_PIS.AsCurrency * -1);
           lCreditoPISMEHor.Value      := (lCreditoPISRealHor.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCreditoCOFINSRealHor.Value := (SimulaImportacaoValor_COFINS.AsCurrency * -1);
           lCreditoCOFINSMEHor.Value   := (lCreditoCOFINSRealHor.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCreditoICMSRealHor.Value   := (SimulaImportacaoValor_ICMSEntrada.AsCurrency * -1);
           lCreditoICMSMEHor.Value     := (lCreditoICMSRealHor.Value / SimulaImportacaoTaxa_FOB.AsFloat);

           if Dados.EmpresasRegime.asstring = 'R' then begin
              lTotalCreditoRealHor.Value := lCreditoIPIRealHor.Value + lCreditoICMSRealHor.Value + iif(TiposProcesso.FieldByName('Apuracao_PISCOFINS').asboolean, lCreditoPISRealHor.Value + lCreditoCOFINSRealHor.Value, 0);
           end else begin
              lTotalCreditoRealHor.Value := lCreditoIPIRealHor.Value + lCreditoICMSRealHor.Value;
           end;

           lTotalCreditoMEHor.Value    := lCreditoIPIMEHor.Value + lCreditoPISMEHor.Value + lCreditoCOFINSMEHor.Value + lCreditoICMSMEHor.Value;
           lTotalCustoMEHor.Value      := lCustoEntradaMEHor.Value + lTotalCreditoMEHor.Value;
           lTotalCustoRealHor.Value    := lCustoEntradaRealHor.Value + lTotalCreditoRealHor.Value;
           lPISSaidaMEHor.Value        := (SimulaImportacaoValor_PISSai.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCOFINSSaidaMEHor.Value     := (SimulaImportacaoValor_COFINSSai.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lICMSSaidaMEHor.Value       := (SimulaImportacaoValor_ICMSSaida.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lICMSSTSaidaMEHor.Value     := (SimulaImportacaoValor_ICMSST.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lIPIMEHor.Value             := (SimulaImportacaoValor_IPISai.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lIRPJMEHor.Value            := (SimulaImportacaoValor_IRPJ.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lCSLLMEHor.Value            := (SimulaImportacaoValor_CSLL.Value / SimulaImportacaoTaxa_FOB.AsFloat);
           lTotalNFSemIPIRealHor.Value := SimulaImportacaoTotal_NFSaida.ascurrency - SimulaImportacaoValor_IPISai.ascurrency;
           lTotalNFSemIPIMEHor.Value   := lTotalNFSemIPIReal.Value / SimulaImportacaoTaxa_FOB.AsFloat;
           lTotalNFComIPIMEHor.Value   := SimulaImportacaoTotal_NFSaida.Value / SimulaImportacaoTaxa_FOB.AsFloat;
           lTaxaAdminHor.Value         := lTotalNFSemIPIRealHor.value * (SimulaImportacaoTaxa_Adiministrativa.AsCurrency/100);
           lTotalImpSaidaRealHor.Value := lTaxaAdminHor.Value +
                                          SimulaImportacaoValor_IPISai.Value +
                                          SimulaImportacaoValor_PISSai.Value +
                                          SimulaImportacaoValor_COFINSSai.Value +
                                          SimulaImportacaoValor_ICMSSaida.Value +
                                          SimulaImportacaoValor_CSLL.Value +
                                          SimulaImportacaoValor_IRPJ.Value +
                                          SimulaImportacaoValor_ICMSST.Value;

           lTotalImpSaidaMEHor.Value := (lTotalImpSaidaRealHor.Value / SimulaImportacaoTaxa_FOB.AsFloat);
      end;
end;

procedure TProcesso_SimulacaoCalculo.NavegaProdutosClick(Sender: TObject;Button: TNavigateBtn);
Var
    i: Integer;
begin
      With Dados do begin
           If (Button = nbEdit) or (Button = nbInsert) then begin
              For i := 0 to 6 do begin
                  NavegaProdutos.Controls[i].Enabled := False;
              End;
              Panel6.Enabled := true;
              cProduto.SetFocus;
              bCalcular.Enabled := false;
              bImprimir.Enabled := false;
              Navega.Enabled    := false;
              GradeProd.Enabled := false;
           End;

           If (Button = nbInsert) then Begin
              SimulaProdutosSimulacao.Value     := SimulaImportacaoNumero.Value;
              SimulaProdutosAliquota_ICMS.Value := SimulaImportacaoAliquota_ICMSSaida.Value;
           End;

           If (Button = nbPost) or (Button = nbCancel) then Begin
              Panel6.Enabled    := false;
              bCalcular.Enabled := true;
              bImprimir.Enabled := true;
              Navega.Enabled    := true;
              GradeProd.Enabled := true;
           End;
      End;
end;

procedure TProcesso_SimulacaoCalculo.Nenhum1Click(Sender: TObject);
begin
      with Dados, SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value       := false;
                SimulaDespesasCusto_Saida.Value := false;
           Post;
           SomaDespesas;
      end;
end;

procedure TProcesso_SimulacaoCalculo.cNCMExit(Sender: TObject);
begin
     with Dados, dmFiscal do begin
          with NCM do begin
               SQL.Clear;
               SQL.Add('SELECT *');
               SQL.Add('FROM  NCM');
               SQL.Add('WHERE NCM = :pNCM');
               ParamByName('pNCM').AsString := SimulaProdutosNCM.AsString;
               Open;
               
               SimulaProdutosAliquota_II.Value        := FieldByName('II').AsFloat;
               SimulaProdutosAliquota_IPI.Value       := FieldByName('IPI').AsFloat;
               SimulaProdutosAliquota_PIS.Value       := FieldByName('PIS_Nota').AsFloat;
               SimulaProdutosAliquota_COFINS.Value    := FieldByName('COFINS_Nota').AsFloat;
               SimulaProdutosAliquota_PISSai.Value    := FieldByName('PIS_NotaSaida').AsFloat;
               SimulaProdutosAliquota_COFINSSai.Value := FieldByName('COFINS_NotaSaida').AsFloat;
               SimulaProdutosAliquota_MVA.Value       := 0;
               SimulaProdutosAliquota_ICMSST.Value    := 0;
               if SimulaImportacaoCliente_NotaEstado.AsString <> '' then begin
                  SimulaProdutosAliquota_MVA.Value    := NCM.FieldByName(SimulaImportacaoCliente_NotaEstado.AsString+'_MVA').AsFloat;
                  SimulaProdutosAliquota_ICMSST.Value := NCM.FieldByName(SimulaImportacaoCliente_NotaEstado.AsString+'_ICMS').AsFloat;
               end;
          end;
     end;
end;

procedure TProcesso_SimulacaoCalculo.NavegaProdutosBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
      With Dados do begin
           If (Button = nbPost) then begin
              if trim(cPesoBruto.Text) = '' then begin
                 MessageDlg('O "Peso Bruto" deve ser informado', mtError, [mbok], 0);
                 cPesoBruto.SetFocus; 
                 Abort;
              end;
              If (SimulaProdutos.State = dsInsert) then begin
                 tItens.SQL.Clear;
                 tItens.SQL.Add('SELECT MAX(Item) AS Item FROM SimulaProdutos WHERE(Simulacao = :pSimula)');
                 tItens.ParamByName('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
                 tItens.Open;
                 SimulaProdutosItem.Value := tItens.FieldByName('Item').AsInteger + 1;
                 tItens.Close;
              End;
           End;
           if Button = nbDelete then begin
              if Messagedlg('Deseja realmente remover este produto?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
           end;
      End;
end;

procedure TProcesso_SimulacaoCalculo.cNumeroChange(Sender: TObject);
begin
      // Totaliza as despesas.
      with Dados do begin
           with SimulaDespesas do begin
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('      ,Valor_ME');
                SQL.Add('FROM SimulaDespesas');
                SQL.Add('WHERE Simulacao = :pSimulacao');
                ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                //.sql.savetofile('c:\temp\Simula_Produtos.sql');
                Open;
           end;

           SomaDespesas;

           with SimulaProdutos do begin
                SQL.Clear;
                SQL.Add('SELECT *');
                SQL.Add('      ,Total_Produtos  = (Valor_UnitarioSaida * Quantidade)');
                SQL.Add('      ,Total_ICMSSai   = (Valor_ICMSSaida * Quantidade)');
                SQL.Add('      ,Total_ICMSSTSai = (Valor_ICMSST * Quantidade)');
                SQL.Add('      ,Total_IPI       = (Valor_IPI * Quantidade)');
                SQL.Add('      ,Total_IPISai    = (Valor_IPISai * Quantidade)');
                SQL.Add('      ,Total_PISSai    = (Valor_PISSai * Quantidade)');
                SQL.Add('      ,Total_COFINSSai = (Valor_COFINSSai * Quantidade)');
                SQL.Add('FROM SimulaProdutos WHERE(Simulacao = :pSimulacao)');
                ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
                //sql.savetofile('c:\temp\Simula_Produtos.sql');
                Open;
           end;

           bCalcular.Enabled := Dados.SimulaProdutos.RecordCount > 0;
           with Dados, SimulaProdutos do begin
                cTotalII.Value  := FieldByName('Valor_II').ascurrency  * FieldByName('Quantidade').asfloat;
                cTotalIPI.Value := FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat;
           end;
      end;
end;

procedure TProcesso_SimulacaoCalculo.SomaDespesas;
begin
      // Totaliza as despesas.
      with Dados do begin
           with tSomaDespesas do begin
                sql.Clear;
                sql.Add('select Despesas_Entrada = sum(case when Custo       = 1 then Valor else 0 end)');
                sql.Add('      ,Despesas_Saida   = sum(case when Custo_Saida = 1 then Valor else 0 end)');
                sql.Add('from   SimulaDespesas');
                sql.Add('where  Simulacao = :pSimul');
                ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
                Open;
                cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
                cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
           end;
      end;
end;

procedure TProcesso_SimulacaoCalculo.cUnitarioExit(Sender: TObject);
begin
     With Dados do begin
          cUnitarioReal.Value := SimulaProdutosValor_UnitarioME.AsFloat * SimulaImportacaoTaxa_FOB.AsFloat;
     End;
end;

procedure TProcesso_SimulacaoCalculo.CustodeEntrada1Click(Sender: TObject);
begin
      with Dados, SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto.Value := not SimulaDespesasCusto.Value;
           Post;
           SomaDespesas;
      end;
end;

procedure TProcesso_SimulacaoCalculo.CustodeSada1Click(Sender: TObject);
begin
      with Dados, SimulaDespesas do begin
           Edit;
                SimulaDespesasCusto_Saida.Value := not SimulaDespesasCusto_Saida.Value;
           Post;
           SomaDespesas;
      end;
end;

procedure TProcesso_SimulacaoCalculo.cValorMEChange(Sender: TObject);
begin
      cDespNac.Enabled := cTaxa.Value = 0;
      if cTaxa.Value <> 0 then begin
         cDespNac.Value := cValorME.Value * cTaxa.Value;
      end;
end;

procedure TProcesso_SimulacaoCalculo.DBEdit39Change(Sender: TObject);
begin
     with Dados do begin
          cDespNac.Value := SimulaDespesas.FieldByName('Valor').ascurrency;
          cValorME.Value := SimulaDespesas.FieldByName('Valor_ME').ascurrency;
          cTaxa.Value    := SimulaDespesas.FieldByName('Taxa').asfloat;
     end;
end;

procedure TProcesso_SimulacaoCalculo.NavegaDespBeforeAction(Sender: TObject; Button: TNavigateBtn);
var
   mTaxa
  ,mValor
  ,mValorME: real;
begin
      mTaxa    := cTaxa.Value;
      mValor   := cDespNac.Value;
      mValorME := cValorME.Value;
      
      with Dados, SimulaDespesas do begin
           if Button = nbPost then begin
              if Trim(cDespesa.Text) = '' then begin
                 ShowMessage('É necessário informar a classificação financeira para o lançamento da despesa!');
                 Abort;
              end;   
              if cDespNac.Value = 0 then begin
                 ShowMessage('É necessário informar um valor válido para o lançamento da despesa!');
                 Abort;
              end;   
              if state = dsInsert then begin
                 tRegistro.Open;
                 fieldbyname('Registro').Value := tRegistro.FieldByName('Registro').AsInteger;
                 tRegistro.Close;
              end;
              fieldbyname('Simulacao').Value     := SimulaImportacaoNumero.Value;
              fieldbyname('Classificacao').Value := ClassificacaoFinanceiraCodigo.value;
              fieldbyname('Despesa').Value       := cDespesa.Text;
              fieldbyname('Valor').Value         := mValor;
              fieldbyname('Taxa').Value          := mTaxa;
              fieldbyname('Valor_ME').Value      := mValorME;
              fieldbyname('Custo').Value         := ClassificacaoFinanceiraCusto_Entrada.value;
              fieldbyname('Custo_Saida').Value   := ClassificacaoFinanceiraCusto.value;
           end;
           if Button = nbDelete then begin
              if Messagedlg('Deseja realmente excluir esta despesa?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                 Abort;
              end;
           end;
      end;
end;

procedure TProcesso_SimulacaoCalculo.NavegaDespClick(Sender: TObject; Button: TNavigateBtn);
Var
    i: Integer;
begin
      if (Button = nbEdit) or (Button = nbInsert) then begin
         for i := 0 to 6 do begin
             NavegaDesp.Controls[i].Enabled := False;
         end;
         Panel2.Enabled := true;
         cTaxa.Value := Dados.SimulaImportacao.FieldByName('Taxa_FOB').AsFloat;
         cDespesa.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbCancel) then Begin
         Panel2.Enabled := false;
         NavegaDesp.SetFocus;
      end;
      if (Button = nbPost) or (Button = nbDelete) then Begin
         SomaDespesas;
      end;
end;

procedure TProcesso_SimulacaoCalculo.cProdutoChange(Sender: TObject);
begin
     With Dados do begin
          cUnitarioReal.Value := SimulaProdutosValor_UnitarioME.AsFloat * SimulaImportacaoTaxa_FOB.AsFloat;
     End;
end;

procedure TProcesso_SimulacaoCalculo.CalculaEntrada;
var
   mUnitImp
  ,mSeguro
  ,mTotalFOB: Real;
begin
     // Calcula todos os impostos dos itens.
     with Dados, SimulaProdutos do begin
          TipoNota.locate('Codigo', SimulaImportacaoTipo_Nota.asinteger, [loCaseInsensitive]);

          with Dados, tSomaDespesas do begin
               sql.Clear;
               sql.Add('select Despesas_Entrada = isnull(sum(case when Custo       = 1 then Valor end), 0)');
               sql.Add('      ,Despesas_Saida   = isnull(sum(case when Custo_Saida = 1 then Valor end), 0)');
               sql.Add('from   SimulaDespesas');
               sql.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
               cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
               cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
          end;
          with Dados, tProdutos do begin
               sql.Clear;
               sql.Add('select FOB = isnull(sum(Valor_UnitarioME*Quantidade), 0)');
               sql.Add('from   SimulaProdutos');
               sql.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
               mTotalFOB := FieldByName('FOB').AsCurrency;
          end;

          mFatorFrete  := 0;
          mFatorSeguro := 0;
          if (Incoterms.FieldByName('Frete').asBoolean) and (SimulaImportacao.FieldByName('Frete_Real').ascurrency > 0) then begin
             mFatorFrete := SimulaImportacao.FieldByName('Frete_Real').ascurrency / SimulaImportacao.FieldByName('Peso_Liquido').asfloat;
          end;
          if (Incoterms.FieldByName('Seguro').asBoolean) and (SimulaImportacao.FieldByName('Seguro_Real').ascurrency > 0) then begin
             mFatorSeguro  := SimulaImportacao.FieldByName('Seguro_Real').ascurrency / mTotalFOB;
          end;

          mFatorDespesa := tSomaDespesas.FieldByName('Despesas_Entrada').AsCurrency / mTotalFOB;
          First;
          while not Eof do begin
                mValor := roundto(FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacao.FieldByName('Taxa_FOB').asfloat, -4);
                mPeso  := FieldByName('Peso_Liquido').asfloat;
                mII    := FieldByName('Valor_II').ascurrency;

                Edit;
                   // Valor do produto.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_Mercadoria').asstring, 'PRODUTO - ENTRADA');
                   mValor           := roundto(mMacro.Calc([0]), -4);
                   FieldByName('Valor_UnitarioReal').AsCurrency := mValor;
                   FieldByName('Valor_CIFReal').AsCurrency      := mValor * SimulaProdutos.FieldByName('Quantidade').asfloat;

                   // Valor da BC II
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_BCII').asstring, 'B.C.II - ENTRADA');
                   FieldByName('BCII_Entrada').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do II.
                   FieldByName('Valor_II').value := FieldByName('BCII_Entrada').value * (FieldByName('Aliquota_II').asfloat/100);
                   memo1.lines.add('==[ VALOR II - ENTRADA ]=======================================================================');
                   Memo1.lines.add(FormatFloat(',##0,00', FieldByName('BCII_Entrada').ascurrency)+' * ('+formatFloat('##0.00', FieldByName('Aliquota_II').asfloat)+'/100)');
                   memo1.lines.add('');

                   // Valor da BC IPI
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_BCIPI').asstring, 'B.C.IPI - ENTRADA');
                   FieldByName('Valor_BCIPI').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0])/FieldByName('Quantidade').asfloat, 0);

                   // Valor do IPI
                   FieldByName('Valor_IPI').value := FieldByName('Valor_BCIPI').value * (FieldByName('Aliquota_IPI').asfloat/100);

                   // Valor da BC PIS/COFINS.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_BCPIS').asstring, 'B.C. PIS / COFINS - ENTRADA');
                   FieldByName('Valor_BCPISEnt').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do PIS.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_PIS').asstring, 'VALOR DO PIS - ENTRADA');
                   FieldByName('Valor_PIS').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do COFINS.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_COFINS').asstring, 'VALOR DA COFINS - ENTRADA');
                   FieldByName('Valor_COFINS').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do produto.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_Mercadoria').asstring, 'PRODUTO - ENTRADA');
                   mValor         := roundto(mMacro.Calc([0]), -4);
                   FieldByName('Valor_UnitarioReal').AsCurrency := mValor;
                   FieldByName('Valor_CIFReal').AsCurrency      := mValor * SimulaProdutos.FieldByName('Quantidade').asfloat;
                   
                   // Valor da B.C. ICMS Oper.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_BCICMS').asstring, 'B.C.ICMS OPERACIONAL - ENTRADA');
                   FieldByName('Valor_BCICMSEnt').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]) / FieldByName('Quantidade').asfloat, 0);

                   // Valor do ICMS Oper.
                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_VlrICMS').asstring, 'VALOR DO ICMS OPERACIONAL - ENTRADA');
                   FieldByName('Valor_ICMSEntrada').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do Produto com Impostos - Entrada.
                   memo1.lines.add('==[ VALOR UNITARIO C/IMPOSTOS - ENTRADA ]'+Replicate('=', 58));
                   mUnitImp := 0;
                   if pos('Valor_TotalProdutos', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_UnitarioReal').ascurrency;
                      memo1.Lines.Add('Produto...: '+padr(formatfloat(',##0.000000', FieldByName('Valor_UnitarioReal').ascurrency), 15));
                   end;
                   if pos('Valor_TotalIPI', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_IPI').ascurrency;
                      memo1.Lines.add('IPI.......: '+padr(formatfloat(',##0.000000', FieldByName('Valor_IPI').ascurrency), 15));
                   end;
                   if pos('ValorICMS_Substitutivo', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + 0;
                      memo1.Lines.Add('ICMS ST...: '+padr(formatfloat(',##0.000000', 0), 15));
                   end;
                   if pos('Valor_ICMS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_ICMSEntrada').ascurrency;
                      memo1.Lines.Add('ICMS OPER.: '+padr(formatfloat(',##0.000000', FieldByName('Valor_ICMSEntrada').ascurrency), 15));
                   end;
                   if pos('Valor_PIS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + roundto((FieldByName('Valor_PIS').ascurrency / FieldByName('Quantidade').asfloat), -6);
                      memo1.Lines.Add('PIS.......: '+padr(formatfloat(',##0.000000', FieldByName('Valor_PIS').ascurrency/FieldByName('Quantidade').asfloat), 15));
                   end;
                   if pos('Valor_COFINS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + roundto((FieldByName('Valor_COFINS').ascurrency / FieldByName('Quantidade').asfloat), -6);
                      memo1.Lines.Add('COFINS....: '+padr(formatfloat(',##0.000000', FieldByName('Valor_COFINS').ascurrency/FieldByName('Quantidade').asfloat), 15));
                   end;
                   
                   memo1.Lines.Add('TOTAL.....: '+padr(formatfloat(',##0.00', mUnitImp), 15));
                   memo1.lines.add('');

                   FieldByName('Valor_UnitarioImpEnt').value := mUnitImp;
                   FieldByName('Fator').Value := (100 - (FieldByName('Aliquota_PIS').AsFloat+
                                                         FieldByName('Aliquota_COFINS').AsFloat+
                                                         SimulaImportacaoAliquota_ICMSEntrada.AsFloat+
                                                         SimulaImportacaoTaxa_Adiministrativa.AsFloat+
                                                         SimulaImportacaoAliquota_CSLL.AsFloat+
                                                         SimulaImportacaoAliquota_IRPJ.AsFloat));
                Post;
                Next;
          end;

          // Totalizando a capa da simulação.
          with tSomaProdutos do begin
               SQL.Clear;
               SQL.Add('SELECT SUM(Valor_UnitarioME * Quantidade)   AS Total,');
               SQL.Add('       SUM(Valor_UnitarioME * Quantidade)   AS Total_CIF,');
               SQL.Add('       SUM(Valor_UnitarioME * Quantidade) * :pTaxa AS Total_Real,');
               SQL.Add('       SUM(Valor_II * Quantidade)           AS Total_II,');
               SQL.Add('       SUM(Valor_IPI * Quantidade)          AS Total_IPI,');
               SQL.Add('       SUM(Valor_PIS)                       AS Total_PIS,');
               SQL.Add('       SUM(Valor_COFINS)                    AS Total_COFINS,');
               SQL.Add('       SUM(Peso_Liquido * Quantidade)       AS Total_Liquido,');
               SQL.Add('       SUM(Peso_Bruto * Quantidade)         AS Total_Bruto,');
               SQL.Add('       SUM(Valor_ICMSSaida * Quantidade)    AS Total_ICMS,');
               SQL.Add('       SUM(Valor_ICMSST * Quantidade)       AS Total_ICMSST,');
               SQL.Add('       SUM(Valor_BCICMSEnt * Quantidade)    AS Total_BCICMSEnt,');
               SQL.Add('       SUM(Valor_ICMSEntrada * Quantidade)  AS Total_ICMSEntrada');
               SQL.Add('FROM   SimulaProdutos');
               SQL.Add('WHERE Simulacao = :pSimulacao');
               ParamByName('pSimulacao').AsInteger := SimulaImportacaoNumero.AsInteger;
               ParamByName('pTaxa').AsFloat        := SimulaImportacaoTaxa_FOB.asfloat;
               Open;
          end;
          with SimulaImportacao do begin
               Edit;
                   FieldByName('FOB').Value                := tSomaProdutos.FieldByName('Total').AsCurrency;
                   FieldByName('FOB_Real').Value           := tSomaProdutos.FieldByName('Total_Real').AsCurrency;
                   FieldByName('Frete_Real').Value         := SimulaImportacaoFrete_Internacional.AsCurrency * SimulaImportacaoTaxa_Frete.AsFloat;
                   
                   // Calculo do seguro internacional.
                   if ConfiguracaoPercentual_Seguro.AsFloat > 0 then begin
                      mSeguro := (tSomaProdutos.FieldByName('Total').AsCurrency + SimulaImportacaoFrete_Internacional.AsCurrency) * (ConfiguracaoPercentual_Seguro.AsFloat/100);
                      mSeguro := iif(mSeguro < ConfiguracaoMinimo_Seguro.Ascurrency, ConfiguracaoMinimo_Seguro.Ascurrency, mSeguro);
                      FieldByName('Seguro_PremioValor').Value := mSeguro;
                   end;
                   FieldByName('Seguro_Real').Value        := SimulaImportacaoSeguro_PremioValor.AsCurrency * SimulaImportacaoTaxa_Seguro.AsFloat;
                   FieldByName('Valor_II').Value           := tSomaProdutos.FieldByName('Total_II').AsCurrency;
                   FieldByName('Valor_IPI').Value          := tSomaProdutos.FieldByName('Total_IPI').AsCurrency;
                   FieldByName('Valor_PIS').Value          := tSomaProdutos.FieldByName('Total_PIS').AsCurrency;
                   FieldByName('Valor_COFINS').Value       := tSomaProdutos.FieldByName('Total_COFINS').AsCurrency;
                   FieldByName('Peso_Liquido').Value       := tSomaProdutos.FieldByName('Total_Liquido').AsFloat;
                   FieldByName('Peso_Bruto').Value         := tSomaProdutos.FieldByName('Total_Bruto').AsFloat;
                   FieldByName('Valor_ICMSSaida').Value    := tSomaProdutos.FieldByName('Total_ICMS').ascurrency;
                   FieldByName('Valor_ICMSST').Value       := tSomaProdutos.FieldByName('Total_ICMSST').ascurrency;
                   FieldByName('Valor_Despesas').Value     := tSomaDespesas.FieldByName('Despesas_Entrada').AsCurrency;
                   FieldByName('Valor_ICMSEntrada').Value  := tSomaProdutos.FieldByName('Total_ICMSEntrada').ascurrency;
                   FieldByName('BCICMS_Entrada').Value     := tSomaProdutos.FieldByName('Total_BCICMSEnt').ascurrency;

                   mMacro.Formula   := ConvFormula(TipoNota.FieldByName('Calculo_TotalPedido').asstring, 'TOTAL DO PEDIDO - ENTRADA');
                   FieldByName('Total_NFEntrada').value  := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);
               Post;
          end;
     end;
end;

procedure TProcesso_SimulacaoCalculo.bCalcularClick(Sender: TObject);
begin
      Memo1.lines.clear;
      SomaDespesas;
      CalculaEntrada;
      CalculoSaida;
      with Dados, SimulaProdutos do begin
           cTotalII.Value  := FieldByName('Valor_II').ascurrency  * FieldByName('Quantidade').asfloat;
           cTotalIPI.Value := FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat;
      end;
end;

procedure TProcesso_SimulacaoCalculo.bDuplicarClick(Sender: TObject);
var
   mProc, mProcAtual: string;
   tOrig, tDest: TMSQuery;
   i, mSimula, mItem: integer;
begin
     with Dados do begin
          mProcAtual := SimulaImportacao.FieldByName('Processo').AsString;
          mProc      := InputBox('Informe o processo de destino', 'Processo:', '');
          if trim(mProc) = '' then begin
             MessageDlg('Nenhuma processo informado!'+#13+#13+'Processo atual não foi duplicado!', mtInformation, [mbok], 0);
             Abort;
          end;
          if SimulaImportacao.Locate('Processo', mProc, [loCaseInsensitive]) then begin
             MessageDlg('Ja existe uma simulação com o número de processo informado!'+#13+#13+'informe um número de Processo diferente!', mtInformation, [mbok], 0);
             SimulaImportacao.Locate('Processo', mProcAtual, [loCaseInsensitive]);
             Abort;
          end;
          if  MessageDlg('Deseja realmente duplicar esta simulação?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
              Abort;
          end;

          tOrig := TMSQuery.Create(nil);
          tDest := TMSQuery.Create(nil);
          with tOrig do begin
               Connection := Banco_Empresas;
               sql.clear;
               sql.add('select * from SimulaImportacao where Numero = :pNumero');
               parambyname('pNumero').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               Connection := Banco_Empresas;
               sql.clear;
               sql.add('select * from SimulaImportacao where Numero = (select isnull(max(numero), 0)+1 from SimulaImportacao)');
               open;
          end;

          // Duplicando a capa da simulação.
          tDest.Append;
                for i := 0 to pred(tOrig.FieldCount) do begin
                    tDest.Fields[i].Value := tOrig.Fields[i].Value;
                end;
                tNumero.Open;
                mSimula := tNumero.FieldByName('Numero').AsInteger + 1;
                tNumero.Close;

                tDest.FieldByName('Numero').Value   := mSimula;
                tDest.FieldByName('Processo').Value := mProc;
          tDest.Post;

          // Duplicando os produtos.
          with tOrig do begin
               sql.clear;
               sql.add('select * from SimulaProdutos where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               sql.clear;
               sql.add('select * from SimulaProdutos where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := mSimula;
               open;
          end;
          with tItens do begin
               sql.Clear;
               sql.Add('select isnull(max(Item), 0)+1 AS Item from SimulaProdutos where Simulacao = :pSimula');
               ParamByName('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
               open;
               mItem := fieldbyname('Item').AsInteger;
               close;
          end;
          while not tOrig.Eof do begin
                tDest.Append;
                      for i := 0 to pred(tOrig.FieldCount) do begin
                          tDest.Fields[i].Value := tOrig.Fields[i].Value;
                      end;
                      tDest.FieldByName('Simulacao').Value := mSimula;
                      tDest.FieldByName('Item').Value      := mItem;
                tDest.Post;
                inc(mItem);
                tOrig.next;
          end;
          // Duplicando as Despesas.
          with tOrig do begin
               sql.clear;
               sql.add('select * from SimulaDespesas where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := SimulaImportacao.FieldByName('Numero').AsInteger;
               open;
          end;
          with tDest do begin
               sql.clear;
               sql.add('select * from SimulaDespesas where Simulacao = :pSimula');
               parambyname('pSimula').AsInteger := mSimula;
               open;
          end;
          with tItens do begin
               sql.Clear;
               sql.Add('select isnull(max(Registro), 0)+1 AS Registro from SimulaDespesas');
               open;
               mItem := fieldbyname('Registro').AsInteger;
               close;
          end;
          while not tOrig.Eof do begin
                tDest.Append;
                      for i := 0 to pred(tOrig.FieldCount) do begin
                          tDest.Fields[i].Value := tOrig.Fields[i].Value;
                      end;
                      tDest.FieldByName('Simulacao').Value := mSimula;
                      tDest.FieldByName('Registro').Value  := mItem;
                tDest.Post;
                inc(mItem);
                tOrig.next;
          end;

          SimulaImportacao.Refresh;
          SimulaImportacao.Locate('Numero', mSimula, [loCaseInsensitive]);
     end;
     tOrig.Free;
     tDest.Free;
end;

procedure TProcesso_SimulacaoCalculo.bDuplicarItemClick(Sender: TObject);
var
   mInput:string;
   mQtde, i, q, mItem:integer;
   tDest, tOrig: TMSQuery;
begin
     mQtde := 0;
     with Dados do begin
          if InputQuery('Quantidade','Informe a quantidade de cópias', mInput) then begin
             try
                mQtde := strtoint(mInput);
             except
                MessageDlg('Quantidade invalída.'+#13+#13+'Informe apenas números inteiros.', mtError, [mbok], 0);
                Abort;
             end;
          end else begin
             Abort;
          end;
          if mQtde < 1 then begin
             MessageDlg('Quantidade miníma permitida de cópias é 1.', mtInformation, [mbok], 0);
             Abort;
          end;
          if mQtde > 100 then begin
             MessageDlg('Quantidade maxíma permitida de cópias é 100.', mtInformation, [mbok], 0);
             Abort;
          end;
          if  MessageDlg('Deseja realmente duplicar este item?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin
              Abort;
          end;
          
          tOrig := TMSQuery.Create(nil);
          with tOrig do begin
               Connection := Banco_Empresas;
               sql.clear;
               sql.add('select * from SimulaProdutos where Simulacao = :pSimula and Item = :pItem');
               parambyname('pSimula').AsInteger := SimulaProdutosSimulacao.asinteger;
               parambyname('pItem').AsInteger   := SimulaProdutosItem.asinteger;
               open;
          end;
          
          tDest := TMSQuery.Create(nil);
          with tDest do begin
               Connection := Banco_Empresas;
               sql.clear;
               sql.add('select * from SimulaProdutos where Simulacao = :pSimula and Item is null');
               parambyname('pSimula').AsInteger := SimulaProdutosSimulacao.asinteger;
               open;
               tItens.SQL.Clear;
               tItens.SQL.Add('select isnull(max(Item), 0)+1 AS Item from SimulaProdutos where Simulacao = :pSimula');
               tItens.ParamByName('pSimula').AsInteger := SimulaImportacaoNumero.AsInteger;
               tItens.Open;
               mItem := tItens.FieldByName('Item').AsInteger;
               tItens.Close;

               Janela_Processamento := TJanela_Processamento.Create(Self);
               Janela_Processamento.Progresso.Position := 0;
               Janela_Processamento.Progresso.Max      := mQtde;
               Janela_Processamento.Show;

               for q := 1 to mQtde do begin
                   Append;
                         for i := 0 to pred(tOrig.FieldCount) do begin
                             Fields[i].Value := tOrig.Fields[i].Value;
                         end;
                         FieldByName('Item').Value := mItem;
                   Post;
                   inc(mItem);
                   Janela_Processamento.Progresso.Position := Janela_Processamento.Progresso.Position + 1;
               end;
               Janela_Processamento.close;
          end;
          tDest.Free;
          SimulaProdutos.Refresh;
     end;
end;

procedure TProcesso_SimulacaoCalculo.bExcelClick(Sender: TObject);
begin
      Imprimir;
end;

procedure TProcesso_SimulacaoCalculo.ppTotEntCalc(Sender: TObject;var Value: Variant);
begin
      With Dados do begin
           value := roundto(ppQtdeEnt.FieldValue, -4) * ppUniEnt.FieldValue;
           lTotalProdutos.Value := lTotalProdutos.Value + Value;
      End;
end;

procedure TProcesso_SimulacaoCalculo.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
      With Dados do begin
           value := roundto(ppQtdeEnt.FieldValue, -4) * ppUniEnt.FieldValue;
           lTotalProdutosEnt.Value := lTotalProdutosEnt.Value + Value;
      End;
end;

procedure TProcesso_SimulacaoCalculo.ppDetailBand13BeforePrint(Sender: TObject);
begin
      with tSimula do begin
           Total01_ME.Value := fieldByName('FOB').ascurrency+
                               fieldbyname('Frete_Internacional').AsCurrency+
                               fieldbyname('Seguro_PremioValor').AsCurrency;
           Total01_Real.Value := fieldByName('FOB_Real').ascurrency+
                                 fieldbyname('Frete_Real').AsCurrency+
                                 fieldbyname('Seguro_Real').AsCurrency;
           ImpostoME_II.Value      := FieldByName('Valor_II').ascurrency / FieldByName('Taxa_FOB').asfloat;
           ImpostoME_IPI.Value     := FieldByName('Valor_IPI').ascurrency / FieldByName('Taxa_FOB').asfloat;
           ImpostoME_PIS.Value     := FieldByName('Valor_PIS').ascurrency / FieldByName('Taxa_FOB').asfloat;
           ImpostoME_COFINS.Value  := FieldByName('Valor_COFINS').ascurrency / FieldByName('Taxa_FOB').asfloat;
           ImpostoME_ICMSEnt.Value := FieldByName('Valor_ICMSEntrada').ascurrency / FieldByName('Taxa_FOB').asfloat;
           ImpostoME_AFRMM.Value   := FieldByName('Valor_AFRMM').ascurrency / FieldByName('Taxa_FOB').asfloat;
           Total02_me.Value := ImpostoME_II.Value+
                               ImpostoME_IPI.Value+
                               ImpostoME_PIS.Value+
                               ImpostoME_COFINS.Value+
                               ImpostoME_ICMSEnt.Value+
                               ImpostoME_AFRMM.Value;
           Total02_Real.Value := fieldByName('Valor_II').ascurrency+
                                 fieldbyname('Valor_IPI').AsCurrency+
                                 fieldbyname('Valor_PIS').AsCurrency+
                                 fieldbyname('Valor_COFINS').AsCurrency+
                                 fieldbyname('Valor_ICMSEntrada').AsCurrency+
                                 fieldbyname('Valor_AFRMM').AsCurrency;
           if Dados.EmpresasRegime.asstring = 'R' then begin
              TotalCredImp_Real.Value := fieldByName('Credito_IPI').ascurrency+
                                         fieldByName('Credito_ICMS').ascurrency+
                                         iif(Dados.TiposProcesso.FieldByName('Apuracao_PISCOFINS').asboolean, fieldByName('Credito_PIS').ascurrency + fieldByName('Credito_COFINS').ascurrency, 0);
           end else begin
              TotalCredImp_Real.Value := fieldByName('Credito_IPI').ascurrency+
                                         fieldByName('Credito_ICMS').ascurrency;
           end;
           TotalCredImp_ME.Value := roundto(fieldByName('Credito_IPIME').ascurrency+
                                            fieldByName('Credito_PISME').ascurrency+
                                            fieldByName('Credito_COFINSME').ascurrency+
                                            fieldByName('Credito_ICMSME').ascurrency, -6);
           TotalCreditos_Real.Value := roundto(fieldbyname('Valor_CredTribIPI').AsCurrency+
                                               fieldbyname('Valor_CredTribPIS').AsCurrency+
                                               fieldbyname('Valor_CredTribCOFINS').AsCurrency+
                                               fieldbyname('Valor_ICMSSaida').AsCurrency, -2);
           TotalCreditos_ME.Value := roundto(fieldbyname('Valor_CredTribIPIME').AsCurrency+
                                             fieldbyname('Valor_CredTribPISME').AsCurrency+
                                             fieldbyname('Valor_CredTribCOFINSME').AsCurrency+
                                             fieldbyname('Valor_ICMSSaiME').AsCurrency, -2);
      end;
end;

procedure TProcesso_SimulacaoCalculo.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
      lTotalProdutos.Value := 0;
end;

procedure TProcesso_SimulacaoCalculo.ppGroupFooterBand2AfterPrint(Sender: TObject);
begin
      lTotalProdutosEnt.Value := 0;
end;

procedure TProcesso_SimulacaoCalculo.ppPageSummaryBand1BeforePrint(Sender: TObject);
begin
      With Dados do begin
           lTaxaAdmin.Value       := SimulaImportacaoTotal_Produtos.AsCurrency * (SimulaImportacaoTaxa_Adiministrativa.AsCurrency/100);
           lTaxaAdminME.Value     := lTaxaAdmin.Value / SimulaImportacaoTaxa_FOB.Asfloat;
           lTotalNFComAdm.value   := SimulaImportacaoTotal_NFSaida.ascurrency + lTotalDespAdm.Value;
           lTotalNFComAdmME.value := (SimulaImportacaoTotal_NFSaida.ascurrency + lTotalDespAdm.Value) / SimulaImportacaoTaxa_FOB.Asfloat;
      end;
end;

procedure TProcesso_SimulacaoCalculo.ppPageSummaryBand2BeforePrint(Sender: TObject);
begin
      With Dados do begin
           lTaxaAdminHor.Value       := SimulaImportacaoTotal_Produtos.AsCurrency * (SimulaImportacaoTaxa_Adiministrativa.AsCurrency/100);
           lTaxaAdminMEHor.Value     := lTaxaAdminHor.Value / SimulaImportacaoTaxa_FOB.Asfloat;
           lTotalNFComAdmHor.value   := SimulaImportacaoTotal_NFSaida.ascurrency + lTotalDespAdm.Value;
           lTotalNFComAdmMEHor.value := (SimulaImportacaoTotal_NFSaida.ascurrency + lTotalDespAdm.Value) / SimulaImportacaoTaxa_FOB.Asfloat;
      end;
end;

procedure TProcesso_SimulacaoCalculo.ppPageSummaryBand3BeforePrint(Sender: TObject);
begin
     TotalCustoNac_ME.Value   := TotalDesemb_ME.value   + TotalCredImp_ME.value;
     TotalCustoNac_Real.Value := TotalDesemb_Real.value + TotalCredImp_Real.value;
     Valor_TotalNFServ.Value  := roundto(tSimula.fieldbyname('Valor_AssImpReal').AsCurrency, -2) +
                                 roundto(tSimula.fieldbyname('Valor_PISServ').ascurrency, -2) +
                                 roundto(tSimula.fieldbyname('Valor_COFINSServ').ascurrency, -2) +
                                 roundto(tSimula.fieldbyname('Valor_ISSServ').ascurrency, -2);
     Valor_TotalNFSaiServ.Value := roundto(tSimula.fieldbyname('Total_NFSaida').AsCurrency, -2) + Valor_TotalNFServ.Value; 
end;

// Executa os calculos dos macro passados como strings.
procedure TProcesso_SimulacaoCalculo.CalculoSaida;
var
   mTotalPIS
  ,mTotalCOFINS
  ,mTotalICMS
  ,mTotalBCICMS
  ,mTotalICMSST
  ,mTotAliqPJ
  ,mTotalCSLL
  ,mProdutos
  ,mDespesas
  ,mValorST
  ,mUnitImp
  ,mTotalFOB
  ,mTotalIPI: Real;
begin
     mTotalPIS    := 0;
     mTotalCOFINS := 0;
     mTotalICMS   := 0;
     mTotalICMSST := 0;
     mTotAliqPJ   := 0;
     mTotalCSLL   := 0;
     mProdutos    := 0;
     mTotalIPI    := 0;
     mTotalBCICMS := 0;
     
     with Dados, SimulaProdutos do begin
          // Totaliza as despesas.
          TipoNota.locate('Codigo', SimulaImportacaoTipo_NotaSai.asinteger, [loCaseInsensitive]);

          with Dados, tSomaDespesas do begin
               sql.Clear;
               sql.Clear;
               sql.Add('select Despesas_Entrada = sum(case when Custo       = 1 then Valor end)');
               sql.Add('      ,Despesas_Saida   = sum(case when Custo_Saida = 1 then Valor end)');
               sql.Add('from   SimulaDespesas');
               sql.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
               cTotalDespesas.Value    := FieldByName('Despesas_Entrada').AsCurrency;
               cTotalDespesasSai.Value := FieldByName('Despesas_Saida').AsCurrency;
          end;
          with Dados, tProdutos do begin
               sql.Clear;
               sql.Add('select FOB = isnull(sum(Valor_UnitarioME*Quantidade), 0)');
               sql.Add('from   SimulaProdutos');
               sql.Add('where  Simulacao = :pSimul');
               ParamByName('pSimul').AsInteger := SimulaImportacaoNumero.AsInteger;
               Open;
               mTotalFOB := FieldByName('FOB').AsCurrency;
          end;

          mFatorFrete  := 0;
          mFatorSeguro := 0;
          if (Incoterms.FieldByName('Frete').asBoolean) and (SimulaImportacao.FieldByName('Frete_Real').ascurrency > 0) then begin
             mFatorFrete := SimulaImportacao.FieldByName('Frete_Real').ascurrency / SimulaImportacao.FieldByName('Peso_Liquido').asfloat;
          end;
          if (Incoterms.FieldByName('Seguro').asBoolean) and (SimulaImportacao.FieldByName('Seguro_Real').ascurrency > 0) then begin
             mFatorSeguro  := SimulaImportacao.FieldByName('Seguro_Real').ascurrency / mTotalFOB;
          end;

          mFatorDespesa := tSomaDespesas.FieldByName('Despesas_Saida').AsCurrency / mTotalFOB;
          mFatorPIS     := SimulaImportacao.FieldByName('Valor_PIS').ascurrency / mTotalFOB;
          mFatorCOFINS  := SimulaImportacao.FieldByName('Valor_COFINS').ascurrency / mTotalFOB;

          first;
          while not eof do begin
                mValor := roundto(FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacao.FieldByName('Taxa_FOB').asfloat, -4);
                mPeso  := FieldByName('Peso_Liquido').asfloat;
                mII    := FieldByName('Valor_II').ascurrency;

                edit;
                   // Valor do produto.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_Mercadoria').asstring, 'PRODUTO - SAÍDA');
                   mValor         := roundto(mMacro.Calc([0]), -4);
                   FieldByName('Valor_UnitarioSaida').value := mValor;
                   mValorTotal := mValor * FieldByName('Quantidade').asfloat;

                   // Valor da BC IPI.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCIPI').asstring, 'B.C.IPI - SAÍDA');
                   FieldByName('Valor_BCIPISai').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]) / FieldByName('Quantidade').asfloat, 0);

                   // Valor do IPI.
                   FieldByName('Valor_IPISai').value := FieldByName('Valor_BCIPISai').value * (FieldByName('Aliquota_IPI').asfloat/100);

                   // Valor da B.C. ICMS Oper.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCICMS').asstring, 'B.C.ICMS OPERACIONAL - SAÍDA');
                   FieldByName('Valor_BCICMS').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]) / FieldByName('Quantidade').asfloat, 0);

                   // Valor do ICMS Oper.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_VlrICMS').asstring, 'VALOR DO ICMS OPERACIONAL - SAÍDA');
                   FieldByName('Valor_ICMSSaida').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor da BC PIS/COFINS.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCPIS').asstring, 'B.C. PIS / COFINS - SAÍDA');
                   FieldByName('Valor_BCPISSai').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do PIS.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_PIS').asstring, 'VALOR DO PIS - SAÍDA');
                   FieldByName('Valor_PISSai').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do COFINS.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_COFINS').asstring, 'VALOR DA COFINS - SAÍDA');
                   FieldByName('Valor_COFINSSai').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor da B.C. MVA.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCMVA').asstring, 'B.C.MVA - SAÍDA');
                   FieldByName('Valor_BCMVA').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do MVA.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_VlrMVA').asstring, 'VALOR DO MVA - SAÍDA');
                   FieldByName('Valor_MVA').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor da B.C. ICMS ST.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_BCICMSSub').asstring, 'B.C.ICMS ST - SAÍDA');
                   FieldByName('BCICMSST').value := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]) / FieldByName('Quantidade').asfloat, 0);

                   // Valor do ICMS ST.
                   mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_VlrICMSSub').asstring, 'VALOR DO ICMS ST - SAÍDA');
                   FieldByName('Valor_ICMSST').value:= iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);

                   // Valor do Produto com Impostos.
                   memo1.lines.add('==[VALOR UNITARIO C/IMPOSTOS - SAÍDA]'+Replicate('=', 58));
                   mUnitImp := 0;
                   if pos('Valor_TotalProdutos', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_UnitarioSaida').ascurrency;
                      memo1.Lines.Add('Produto...: '+padr(formatfloat(',##0.00', FieldByName('Valor_UnitarioSaida').ascurrency), 15));
                   end;
                   if pos('Valor_TotalIPI', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_IPISai').ascurrency;
                      memo1.Lines.add('IPI.......: '+padr(formatfloat(',##0.00', FieldByName('Valor_IPISai').ascurrency), 15));
                   end;
                   if pos('ValorICMS_Substitutivo', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_ICMSST').ascurrency;
                      memo1.Lines.Add('ICMS ST...: '+padr(formatfloat(',##0.00', FieldByName('Valor_ICMSST').ascurrency), 15));
                   end;
                   if pos('Valor_ICMS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_ICMSSaida').ascurrency;
                      memo1.Lines.Add('ICMS OPER.: '+padr(formatfloat(',##0.00', FieldByName('Valor_ICMSSaida').ascurrency), 15));
                   end;
                   if pos('Valor_PIS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_PISSai').ascurrency;
                      memo1.Lines.Add('PIS.......: '+padr(formatfloat(',##0.00', FieldByName('Valor_PISSai').ascurrency), 15));
                   end;
                   if pos('Valor_COFINS', TipoNota.FieldByName('Calculo_TotalPedido').asstring) > 0 then begin
                      mUnitImp := mUnitImp + FieldByName('Valor_COFINSSai').ascurrency;
                      memo1.Lines.Add('COFINS....: '+padr(formatfloat(',##0.00', FieldByName('Valor_COFINSSai').ascurrency), 15));
                   end;
                   memo1.Lines.Add('TOTAL.....: '+padr(formatfloat(',##0.00', mUnitImp), 15));
                   memo1.lines.add('');

                   FieldByName('Valor_UnitarioImpSai').value := mUnitImp;

                   if FieldByName('Valor_PISSai').AsCurrency    = 0 then FieldByName('Aliquota_PISSai').value    := 0;
                   if FieldByName('Valor_COFINSSai').AsCurrency = 0 then FieldByName('Aliquota_COFINSSai').value := 0;

                   FieldByName('Fator').Value := (100 - (FieldByName('Aliquota_PISSai').AsFloat+
                                                         FieldByName('Aliquota_COFINSSai').AsFloat+
                                                         SimulaImportacaoAliquota_ICMSSaida.AsFloat+
                                                         SimulaImportacaoTaxa_Adiministrativa.AsFloat+
                                                         SimulaImportacaoAliquota_CSLL.AsFloat+
                                                         SimulaImportacaoAliquota_IRPJ.AsFloat));
                post;

                mTotal       := mUnitario * FieldByName('Quantidade').asfloat;
                mTotalIPI    := mTotalIPI + (FieldByName('Valor_IPISai').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalPIS    := mTotalPIS + FieldByName('Valor_PISSai').ascurrency;
                mTotalCOFINS := mTotalCOFINS + FieldByName('Valor_COFINSSai').ascurrency;
                mTotalBCICMS := mTotalBCICMS + (FieldByName('Valor_BCICMS').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalICMS   := mTotalICMS + (FieldByName('Valor_ICMSSaida').ascurrency * FieldByName('Quantidade').asfloat);
                mTotalICMSST := mTotalICMSST + (FieldByName('Valor_ICMSST').ascurrency * FieldByName('Quantidade').asfloat);
                mTotAliqPJ   := mTotAliqPJ + (mValor * ((SimulaImportacao.FieldByName('Aliquota_IRPJ').ascurrency/100)) * FieldByName('Quantidade').asfloat);
                mTotalCSLL   := mTotalCSLL + (mValor * ((SimulaImportacao.FieldByName('Aliquota_CSLL').ascurrency/100)) * FieldByName('Quantidade').asfloat);
                mProdutos    := mProdutos + (mValor * FieldByName('Quantidade').asfloat);

                next;
          end;
          with SimulaImportacao do begin
               edit;
                  FieldByName('Total_Produtos').Value    := mProdutos;
                  FieldByName('Valor_IPISai').Value      := mTotalIPI;
                  FieldByName('Valor_PISSai').Value      := mTotalPIS;
                  FieldByName('Valor_COFINSSai').Value   := mTotalCOFINS;
                  FieldByName('Valor_CSLL').Value        := mTotalCSLL;
                  FieldByName('Valor_IRPJ').Value        := mTotAliqPJ;
                  FieldByName('Valor_DespesasSai').Value := tSomaDespesas.FieldByName('Despesas_Saida').AsCurrency;
                  FieldByName('Valor_ICMSSaida').Value   := mTotalICMS;
                  FieldByName('Valor_ICMSST').Value      := mTotalICMSST;

                  mMacro.Formula := ConvFormula(TipoNota.FieldByName('Calculo_TotalPedido').asstring, 'TOTAL DO PEDIDO - SAÍDA');
                  FieldByName('Total_NFSaida').value  := iif(mMacro.Calc([0]) > 0, mMacro.Calc([0]), 0);
               post;
          end;
     end;
end;

function TProcesso_SimulacaoCalculo.ConvFormula(Formula, Campo: string): string;
var
    lista, listafun: TStringList;
    i, x, c: integer;
    s
   ,mFuncao
   ,mTermo1
   ,mTermo2
   ,mFunCondic
   ,mSinal
   ,mcalc
   ,mCond
   ,mValor1
   ,mValor2: string;
begin
     lista    := TStringList.create;
     listaFun := TStringList.create;
     if trim(Formula) <> '' then begin
        with Dados, SimulaProdutos do begin
             mCalc   := Formula;
             Formula := ansiuppercase(Formula);
             Formula := StringReplace(Formula, #13, '', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, #12, '', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, #10, '', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, '+', '@+', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, '-', '@-', [rfReplaceAll, rfIgnoreCase]);
             Formula := StringReplace(Formula, '*', '@*', [rfReplaceAll, rfIgnoreCase]);

             lista := Quebrastring(Formula, '@');

             for i := 0 to pred(lista.Count) do begin
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Valor_SemAdValorem]', formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacaoTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Valor_UnitarioReal]', formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacaoTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Unitario]'       ,  formatfloat('##0.0000', FieldByName('Valor_UnitarioME').ascurrency * SimulaImportacaoTaxa_FOB.Asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Fator_Cambio]'         , '1'                                                                                     , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Frete]'          , formatfloat('##0.00000000', mFatorFrete * FieldByName('Peso_Liquido').ascurrency)       , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Rateio_FreteTerrNac]'  , formatfloat('##0.00000000', 0)                                                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Seguro]'         , formatfloat('##0.00000000', mFatorSeguro * FieldByName('Valor_UnitarioME').ascurrency)  , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Despesa]'        , formatfloat('##0.00000000', mFatorDespesa * FieldByName('Valor_UnitarioME').ascurrency) , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_II]'             , formatfloat('##0.00000000', mII)                                                        , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSOper]'    , formatfloat('##0.00', FieldByName('Aliquota_ICMS').asfloat)                             , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'ProcessosDocumentos_[Aliquota_ICMS]' , formatfloat('##0.00', FieldByName('Aliquota_ICMS').asfloat)                             , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_IPI]'            , formatfloat('##0.000000', FieldByName('Valor_IPI').ascurrency)                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_PIS]'            , formatfloat('##0.000000', FieldByName('Valor_PIS').ascurrency)                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_COFINS]'         , formatfloat('##0.000000', FieldByName('Valor_COFINS').ascurrency)                       , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_PISRed]'      , '0'                                                                                     , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_COFINSRed]'   , '0'                                                                                     , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSReducao]' , formatfloat('##0.00', FieldByName('Aliquota_ICMSRed').asfloat)                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSReducao2]', formatfloat('##0.00', FieldByName('Aliquota_ICMSRed2').asfloat)                         , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Quantidade]'           , formatfloat('##0.000', FieldByName('Quantidade').asfloat)                               , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Desconto_Valor]'       , '0'                                                                                     , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro]'                , formatfloat('##0.00'    , SimulaImportacao.FieldByName('Taxa_Adiministrativa').asfloat) , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro_Valor]'          , formatfloat('##0.00'    , 0), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_ICMSSub]'     , formatfloat('##0.00'    , FieldByName('Aliquota_ICMSST').asfloat)                       , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCICMSSub]'      , formatfloat('##0.000000', FieldByName('BCICMSST').asfloat)                              , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Lucro_Valor]'          , formatfloat('##0.000000', 0)                                                            , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Adicoes_[Lucro]'                     , formatfloat('##0.000000', 0)                                                            , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalII]'             , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_II').asCurrency)          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Percentual_Beneficio]' , formatfloat('##0.000000', IncentivosFiscais.fieldbyname('Percentual_Beneficio').AsFloat), [rfReplaceAll, rfIgnoreCase]);
                 
                 if TipoNota.FieldByName('Saida_Entrada').asinteger = 0 then begin
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCICMSOper]', formatfloat('##0.000000', FieldByName('Valor_BCICMSEnt').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Total]'     , formatfloat('##0.0000'  , FieldByName('Valor_CIFReal').ascurrency)                                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_PIS]'    , formatfloat('##0.00'    , FieldByName('Aliquota_PIS').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_COFINS]' , formatfloat('##0.00'    , FieldByName('Aliquota_COFINS').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCPIS]'     , formatfloat('##0.000000', FieldByName('Valor_BCPISEnt').asfloat)                                   , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Total_IPI]'       , formatfloat('##0.000000', FieldByName('Valor_IPI').ascurrency * FieldByName('Quantidade').asfloat) , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_ICMSOper]'  , formatfloat('##0.00'    , FieldByName('Valor_ICMSEntrada').asfloat)                                , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_PIS]'            , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_PIS').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_COFINS]'         , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_COFINS').ascurrency)                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalIPI]'       , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_IPI').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_OutrasDespesas]' , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_Despesas').ascurrency)               , [rfReplaceAll, rfIgnoreCase]);
                 end else begin
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCICMSOper]', formatfloat('##0.000000', FieldByName('Valor_BCICMS').asfloat)                                        , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Produtos_[PIS_NotaSaida]'       , formatfloat('##0.00'    , FieldByName('Aliquota_PISSai').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Produtos_[COFINS_NotaSaida]'    , formatfloat('##0.00'    , FieldByName('Aliquota_COFINSSai').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Total]'     , formatfloat('##0.000000', mValorTotal)                                                                , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_PIS]'    , formatfloat('##0.00'    , FieldByName('Aliquota_PISSai').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_COFINS]' , formatfloat('##0.00'    , FieldByName('Aliquota_COFINSSai').asfloat)                                  , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCPIS]'     , formatfloat('##0.000000', FieldByName('Valor_BCPISSai').asfloat)                                      , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Total_IPI]'       , formatfloat('##0.000000', FieldByName('Valor_IPISai').ascurrency*FieldByName('Quantidade').ascurrency), [rfReplaceAll, rfIgnoreCase]);
//                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_ICMSOper]'  , formatfloat('##0.00'    , FieldByName('Valor_ICMSSaida').asfloat)                                     , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_ICMSOper]'  , formatfloat('##0.00'    , FieldByName('Valor_ICMSSaida').asfloat*FieldByName('Quantidade').ascurrency), [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_PIS]'            , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_PISSai').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_COFINS]'         , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_COFINSSai').ascurrency)                 , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalIPI]'       , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_IPISai').ascurrency)                    , [rfReplaceAll, rfIgnoreCase]);
                    lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_OutrasDespesas]' , formatfloat('##0.000000', SimulaImportacao.FieldByName('Valor_DespesasSai').ascurrency)               , [rfReplaceAll, rfIgnoreCase]);
                 end;

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_PIS]'   , formatfloat('##0.000000', mFatorPIS * FieldByName('Valor_UnitarioME').ascurrency)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_COFINS]', formatfloat('##0.000000', mFatorCOFINS * FieldByName('Valor_UnitarioME').ascurrency), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Produtos_[Reducao_PIS]', '0'                                                          , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Produtos_[PIS_Nota]'   , formatfloat('##0.00', FieldByName('Aliquota_PIS').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Produtos_[COFINS_Nota]', formatfloat('##0.00', FieldByName('Aliquota_COFINS').asfloat), [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_TotalProdutos]'   , formatfloat('##0.000000', SimulaImportacao.FieldByName('Total_Produtos').ascurrency), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Total_Frete]'           , formatfloat('##0.000000', 0)                                                        , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_Dumping]'         , '0'                                                                                 , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_Dumping]'    , '0'                                                                                 , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Aliquota_MVA]'     , formatfloat('##0.00', FieldByName('Aliquota_MVA').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_BCMVA]'      , formatfloat('##0.000000', FieldByName('Valor_BCMVA').asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'PedidosItens_[Valor_MVA]'        , formatfloat('##0.000000', FieldByName('Valor_MVA').asfloat)  , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'Pedidos_[Total_Descontos]'       , '0'                                                                           , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[ValorICMS_Substitutivo]', formatfloat('##0.00', SimulaImportacao.FieldByName('Valor_ICMSST').asfloat)   , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_ICMS]'            , formatfloat('##0.00', SimulaImportacao.FieldByName('Valor_ICMSSaida').asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Aliquota_CSLL]'         , formatfloat('##0.00', SimulaImportacao.FieldByName('Aliquota_CSLL').asfloat)  , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Aliquota_IRPJ]'         , formatfloat('##0.00', SimulaImportacao.FieldByName('Aliquota_IRPJ').asfloat)  , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Taxa_Cambio]'           , formatfloat('##0.00', SimulaImportacao.FieldByName('Taxa_FOB').asfloat)       , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'Pedidos_[Valor_AFRMM]'           , formatfloat('##0.00', SimulaImportacao.FieldByName('Valor_AFRMM').asfloat)    , [rfReplaceAll, rfIgnoreCase]);

                 lista[i] := StringReplace(lista[i], 'NCM_[ICMS_Reducao]', formatfloat('##0.00', FieldByName('Aliquota_ICMSRed').asfloat), [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'NCM_[PIS]'         , formatfloat('##0.00', FieldByName('Aliquota_PIS').asfloat)    , [rfReplaceAll, rfIgnoreCase]);
                 lista[i] := StringReplace(lista[i], 'NCM_[COFINS]'      , formatfloat('##0.00', FieldByName('Aliquota_COFINS').asfloat) , [rfReplaceAll, rfIgnoreCase]);

                 if pos('CONDIÇÃO', AnsiUpperCase(lista[i])) > 0  then begin
                    mFuncao  := copy(lista[i], pos('CONDIÇÃO', AnsiUpperCase(lista[i])), 100);
                    mFuncao  := copy(mFuncao, 1, pos('}', mFuncao));
                    listaFun := Quebrastring(lista[i], ';');

                    // Sinal utilizado no teste de condição.
                    mSinal := '';
                    for c := 1 to Length(listaFun[0]) do begin
                        if (listaFun[0][c] = '=') or (listaFun[0][c] = '>') or (listaFun[0][c] = '<') then mSinal := mSinal + listaFun[0][c];
                    end;

                    mTermo1 := Copy(Listafun[0], Pos('{', Listafun[0])+1, Pos(mSinal, ListaFun[0])-(Pos('{', Listafun[0])+1));
                    mTermo2 := trim(Copy(Listafun[0], pos(mSinal, ListaFun[0])+1, pos(';', ListaFun[0])+pos(mSinal, ListaFun[0])));

                    // Valores da condição.
                    mValor1 := Copy(lista[i], Pos(';', lista[i])+1, 200);
                    mValor2 := Copy(mValor1, pos(';', mValor1)+1, pos('}',mValor1)-pos(';', mValor1)-1);
                    mValor1 := Copy(mValor1, 1, Pos(';', mValor1)-1);
                    if ApenasNumeros(mTermo2) <> '' then begin
                       if (mSinal = '=' ) and (StrtoFloat(mTermo1) =  StrtoFloat(mTermo2)) or
                          (mSinal = '>' ) and (StrtoFloat(mTermo1) >  StrtoFloat(mTermo2)) or
                          (mSinal = '<' ) and (StrtoFloat(mTermo1) <  StrtoFloat(mTermo2)) or
                          (mSinal = '<>') and (StrtoFloat(mTermo1) <> StrtoFloat(mTermo2)) or
                          (mSinal = '<=') and (StrtoFloat(mTermo1) <= StrtoFloat(mTermo2)) or
                          (mSinal = '>=') and (StrtoFloat(mTermo1) >= StrtoFloat(mTermo2)) then
                          lista[i] := stringReplace(lista[i], mFuncao, mValor1, [rfReplaceAll, rfIgnoreCase])
                       else
                          lista[i] := stringReplace(lista[i], mFuncao, mValor2, [rfReplaceAll, rfIgnoreCase]);
                    end else begin
                       if (mSinal = '=' ) and (mTermo1 =  mTermo2) or
                          (mSinal = '>' ) and (mTermo1 >  mTermo2) or
                          (mSinal = '<' ) and (mTermo1 <  mTermo2) or
                          (mSinal = '<>') and (mTermo1 <> mTermo2) or
                          (mSinal = '<=') and (mTermo1 <= mTermo2) or
                          (mSinal = '>=') and (mTermo1 >= mTermo2) then
                          lista[i] := stringReplace(lista[i], mFuncao, mValor1, [rfReplaceAll, rfIgnoreCase])
                       else
                          lista[i] := stringReplace(lista[i], mFuncao, mValor2, [rfReplaceAll, rfIgnoreCase]);
                    end;
                 end;
             end;
             for i := 0 to pred(lista.Count) do begin
                 s := s + trim(lista[i]);
             end;
             s := stringreplace(s, chr(32) , '', [rfReplaceAll, rfIgnoreCase]);
             s := stringreplace(s, chr(160), '', [rfReplaceAll, rfIgnoreCase]);
        end;

        result := s;
     end else begin
        result := '0';
     end;
     if mCalc <> '' then begin
        memo1.lines.add('==['+Campo+']'+Replicate('=', 90-length(Campo)));
        Memo1.lines.add(mCalc);
        memo1.lines.add(s);
        memo1.lines.add('');
     end;

     lista.Free;
     listafun.free;
end;



end.
