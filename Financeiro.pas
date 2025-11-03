unit Financeiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel,
  uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniBitBtn, uniDBNavigator, uniEdit, uniDBMemo, uniDBEdit,
  uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Menus, uniMainMenu, FireDAC.Comp.DataSet, uniRadioGroup, uniCheckBox,
  uniComboBox, uniDBComboBox, uniLabel, uniGroupBox, uniTabControl, uniCalendarPanel, uniCalendar, uniDBRadioGroup, uniMemo, uniButton, uniSegmentedButton, uniStatusBar, uniSpinEdit,
  System.DateUtils, MasKUtils, System.Actions, Vcl.ActnList, uniMultiItem, uniDBTreeGrid, uniWidgets, uniImageList, uniToolBar;

type
  TfFinanceiro = class(TUniFrame)
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    Pasta: TUnipageControl;
    UniTabSheet1: TUniTabSheet;
    Alerta: TUniSweetAlert;
    dsBeneficiario: TDataSource;
    Beneficiario: TFDQuery;
    PagarReceber: TFDQuery;
    Baixas: TFDQuery;
    dsBaixas: TDataSource;
    Bancos: TFDQuery;
    dsBancos: TDataSource;
    Plano: TFDQuery;
    dsPlano: TDataSource;
    UniTabSheet2: TUniTabSheet;
    pFiltro: TUniPanel;
    cCalend: TUniDateTimePicker;
    cSituacao: TUniRadioGroup;
    cTipo: TUniRadioGroup;
    cAgrupar: TUniCheckBox;
    bFiltro: TUniSpeedButton;
    cProv: TUniRadioGroup;
    UniScrollBox1: TUniScrollBox;
    pFicha1: TUniPanel;
    cConta: TUniDBLookupComboBox;
    cData_Previsao: TUniDBDateTimePicker;
    cDocumento_Data: TUniDBDateTimePicker;
    cData_Vencimento: TUniDBDateTimePicker;
    cBeneficiario: TUniDBLookupComboBox;
    cDocumento: TUniDBLookupComboBox;
    cModalidade_Pgto: TUniDBLookupComboBox;
    cObservacao: TUniDBMemo;
    cCentro_Custo: TUniDBLookupComboBox;
    CentroCusto: TFDQuery;
    dsCentroCusto: TDataSource;
    Modal: TFDQuery;
    dsModal: TDataSource;
    Processos: TFDQuery;
    dsProcessos: TDataSource;
    cProcesso: TUniDBLookupComboBox;
    cBenefFiltro: TUniDBLookupComboBox;
    cContaFiltro: TUniDBLookupComboBox;
    cBancoFiltro: TUniDBLookupComboBox;
    cProcessoFiltro: TUniDBLookupComboBox;
    bPesquisa: TUniSpeedButton;
    TipoDoc: TFDQuery;
    dsTipoDoc: TDataSource;
    cAdiantamento: TUniDBLookupComboBox;
    Adiantamentos: TFDQuery;
    dsAdiantamentos: TDataSource;
    UniGroupBox1: TUniGroupBox;
    cPago_Cliente: TUniDBCheckBox;
    cRecuperavel: TUniDBCheckBox;
    cProvisorio: TUniDBCheckBox;
    cNumero_Documento: TUniDBEdit;
    UniGroupBox2: TUniGroupBox;
    FormaPgto: TFDQuery;
    dsFormaPgto: TDataSource;
    bBaixar: TUniButton;
    bEstornar: TUniButton;
    bParcelar: TUniButton;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    UniTabSheet4: TUniTabSheet;
    cGrade: TUniDBGrid;
    tTmp: TFDQuery;
    tDias: TFDQuery;
    UniPanel6: TUniPanel;
    bLimparFiltro: TUniSpeedButton;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    cMes: TUniSegmentedButton;
    cDia: TUniSegmentedButton;
    cAno: TUniSpinEdit;
    cValor_Documento: TUniDBFormattedNumberEdit;
    cValor_Desconto: TUniDBFormattedNumberEdit;
    cDesconto_Liquidacao: TUniDBFormattedNumberEdit;
    cValor_Juros: TUniDBFormattedNumberEdit;
    cValor_Multa: TUniDBFormattedNumberEdit;
    cValor_Total: TUniDBFormattedNumberEdit;
    cValor_Parcela: TUniDBFormattedNumberEdit;
    cEmpresa: TUniDBLookupComboBox;
    BaixasRegistro: TLargeintField;
    BaixasTipo: TStringField;
    BaixasValor: TCurrencyField;
    BaixasBanco: TSmallintField;
    BaixasValor_Multa: TCurrencyField;
    BaixasValor_Juros: TCurrencyField;
    BaixasValor_Desconto: TCurrencyField;
    BaixasEmpresa: TStringField;
    BaixasBanco_Nome: TStringField;
    BaixasObservacao: TMemoField;
    UniTabSheet3: TUniTabSheet;
    pFicha2: TUniPanel;
    cBxBanco: TUniDBLookupComboBox;
    UniScrollBox3: TUniScrollBox;
    UniPanel5: TUniPanel;
    bSalvarBaixa: TUniButton;
    bCancelarBaixa: TUniSpeedButton;
    cBxClassificacao: TUniDBEdit;
    BaixasForma_Pgto: TStringField;
    BaixasForma_PgtoDoc: TStringField;
    BaixasCheque_Nominal: TStringField;
    BaixasCheque_Assinado: TStringField;
    BaixasCheque_Visado: TBooleanField;
    BaixasCheque_Cruzado: TBooleanField;
    BaixasTaxa_FechamentoCambio: TFloatField;
    BaixasTaxa_Data: TSQLTimeStampField;
    BaixasNumero_ContratoCambio: TStringField;
    BaixasOrigem_Multa: TStringField;
    BaixasOrigem_Juros: TStringField;
    BaixasOrigem_Desconto: TStringField;
    BaixasBanco_Conta: TStringField;
    BaixasConciliado: TBooleanField;
    UniGroupBox4: TUniGroupBox;
    cBxValor_Doc: TUniFormattedNumberEdit;
    cBxValor_Parcela: TUniFormattedNumberEdit;
    cBxValor_Baixado: TUniFormattedNumberEdit;
    cBxValor_Aberto: TUniFormattedNumberEdit;
    Contratos: TFDQuery;
    dsContratos: TDataSource;
    UniTabSheet5: TUniTabSheet;
    UniDBGrid2: TUniDBGrid;
    gCambio: TUniGroupBox;
    cVariacaoCambial: TUniFormattedNumberEdit;
    cTotalCambio: TUniFormattedNumberEdit;
    cTaxa_Cambial: TUniDBEdit;
    cTaxa_FechamentoCambio: TUniFormattedNumberEdit;
    Cotacao: TFDQuery;
    dsCotacao: TDataSource;
    cNumero: TUniDBEdit;
    Config: TFDQuery;
    cBxData: TUniDateTimePicker;
    cBxForma_PgtoDoc: TUniEdit;
    cBxForma_Pgto: TUniComboBox;
    cBxObs: TUniMemo;
    cNumero_CC: TUniEdit;
    cBxValor_Juros: TUniFormattedNumberEdit;
    cBxValor_Multa: TUniFormattedNumberEdit;
    cBXValor_Desconto: TUniFormattedNumberEdit;
    cBxValor: TUniFormattedNumberEdit;
    gCheque: TUniGroupBox;
    cBxChequeNominal: TUniEdit;
    cBxChequeAssinado: TUniEdit;
    cBxChequeCruzado: TUniCheckBox;
    cBxChequeVizado: TUniCheckBox;
    BaixasData: TDateField;
    BaixasCompensacao: TBooleanField;
    Lista: TFDQuery;
    dsLista: TDataSource;
    ListaTipo: TStringField;
    ListaCentro_Custo: TStringField;
    ListaData_Vencimento: TDateField;
    ListaValor_Documento: TCurrencyField;
    ListaValor_Parcela: TCurrencyField;
    ListaDocumento_Numero: TStringField;
    ListaProcesso: TStringField;
    ListaParcela: TStringField;
    ListaBaixa: TBooleanField;
    ListaBeneficiario: TStringField;
    ListaValor_Juros: TCurrencyField;
    ListaValor_Multa: TCurrencyField;
    ListaValor_Desconto: TCurrencyField;
    ListaValor_Total: TCurrencyField;
    ListaValor_Operacao: TCurrencyField;
    BaixasCompensacao_Numero: TSmallintField;
    ListaNome: TStringField;
    ListaConta: TStringField;
    ListaTitulo: TLargeintField;
    BaixasTitulo: TLargeintField;
    ListaAd: TFDQuery;
    dsListaAd: TDataSource;
    ListaAdTitulo: TLargeintField;
    ListaAdValor_Total: TCurrencyField;
    ListaAdDocumento_Data: TDateField;
    ListaAdAdiantamento_Numero: TIntegerField;
    ListaAdBanco: TSmallintField;
    ListaAdTipo: TStringField;
    ListaAdValor_Baixado: TCurrencyField;
    ListaAdBeneficiario: TStringField;
    Lancamentos: TFDQuery;
    cDocNumFiltro: TUniEdit;
    ListaValor_Baixado: TCurrencyField;
    bBloquear: TUniButton;
    UniTabSheet6: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    UniPanel7: TUniPanel;
    UniPanel8: TUniPanel;
    bBlocPer: TUniButton;
    bBlocCanc: TUniSpeedButton;
    cDataBloqueio: TUniDateTimePicker;
    EmpresasRazao_Social: TStringField;
    EmpresasCNPJ: TStringField;
    EmpresasUnidade: TStringField;
    EmpresasFechamento_Financeiro: TDateField;
    EmpresasEstado: TStringField;
    cEmbarque: TUniDBLookupComboBox;
    Embarques: TFDQuery;
    dsEmbarques: TDataSource;
    AdiantamentosCNPJ: TStringField;
    AdiantamentosAdiantamento_Numero: TSmallintField;
    AdiantamentosNome: TStringField;
    UniGroupBox3: TUniGroupBox;
    cNumeroPgto: TUniDBEdit;
    cDataBaixa: TUniDateTimePicker;
    cCodigoBarras: TUniDBEdit;
    cBanco: TUniDBLookupComboBox;
    cValorBaixa: TUniFormattedNumberEdit;
    cSaldo: TUniFormattedNumberEdit;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    UniPanel4: TUniPanel;
    UniPanel10: TUniPanel;
    GradeLan: TUniDBGrid;
    UniDBGrid1: TUniDBGrid;
    UniDBMemo1: TUniDBMemo;
    brTotais: TUniSegmentedButton;
    UniDBEdit5: TUniDBEdit;
    UniDateTimePicker2: TUniDateTimePicker;
    UniDBLookupComboBox11: TUniDBLookupComboBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PagarReceberBeforePost(DataSet: TDataSet);
    procedure cAnoChange(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure cMesesChange(Sender: TObject);
    procedure bFiltroClick(Sender: TObject);
    procedure PastaChange(Sender: TObject);
    procedure cContaChange(Sender: TObject);
    procedure cDiaClick(Sender: TUniCustomButtonItem);
    procedure FiltraLanExecute(Sender: TObject);
    procedure cMesClick(Sender: TUniCustomButtonItem);
    procedure cAgruparChange(Sender: TObject);
    procedure bLimparFiltroClick(Sender: TObject);
    procedure cValor_DocumentoExit(Sender: TObject);
    procedure cValor_ParcelaExit(Sender: TObject);
    procedure cValor_JurosExit(Sender: TObject);
    procedure cValor_MultaExit(Sender: TObject);
    procedure cValor_DescontoExit(Sender: TObject);
    procedure cDesconto_LiquidacaoExit(Sender: TObject);
    procedure BaixasBeforePost(DataSet: TDataSet);
    procedure bBaixarClick(Sender: TObject);
    procedure bCancelarBaixaClick(Sender: TObject);
    procedure bSalvarBaixaClick(Sender: TObject);
    procedure cBxValor_MultaChange(Sender: TObject);
    procedure cBxValor_DescontosChange(Sender: TObject);
    procedure cBxValor_JurosChange(Sender: TObject);
    procedure cBxDataExit(Sender: TObject);
    procedure cTaxa_FechamentoCambioChange(Sender: TObject);
    procedure cBxForma_PgtoChange(Sender: TObject);
    procedure ListaAfterScroll(DataSet: TDataSet);
    procedure PagarReceberBeforeDelete(DataSet: TDataSet);
    procedure bEstornarClick(Sender: TObject);
    procedure bBloquearClick(Sender: TObject);
    procedure bBlocPerClick(Sender: TObject);
    procedure bBlocCancClick(Sender: TObject);
  private
    procedure FiltraLancamentos;
    procedure PegaBaixas;
    procedure Totaliza;
    procedure TotalizaBaixa;
    procedure LigaBotoesBx(Estado: boolean);
    procedure PegaContratos;
    procedure CalculaCambio;
    procedure PegaAdiantamentos;
    procedure LigaBotoesEst(Estado: boolean);
    procedure FiltraBenef(Tipo:string);
    { Private declarations }
  public
    { Public declarations }
    mAdiant
   ,mMes
   ,mDia: integer;
    mTp
   ,mListaIN: string;
  end;

implementation

{$R *.dfm}

uses MainModule, Main, MinhasClasses;

procedure TfFinanceiro.FiltraLanExecute(Sender: TObject);
begin
      FiltraLancamentos;
end;

procedure TfFinanceiro.bAdicionarClick(Sender: TObject);
begin
      with PagarReceber do begin
           open;
           try
               LigaBotoes(false);
               Append;
                    FieldByName('Empresa').Value := UniMainModule.mEmpresaAtiva;
           except
              on E:Exception do begin
                 LogErros('PagarReceber', 'Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message);
                 MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, []);
              end;
           end;
      end;
end;

procedure TfFinanceiro.bExcluirClick(Sender: TObject);
begin
     with PagarReceber do begin
          sql.clear;
          sql.add('select * from PagarReceber where Titulo = '+Lista.FieldByName('Titulo').asstring);
          open;
          if Baixas.recordCount > 0 then begin
             MessageBeep(MB_ICONINFORMATION);
             messagedlg('Lançamento baixado!'+#13+#13+'Para excluir este lançamente é necessário efetuar o estorno.', mtInformation, [mbok]);
             abort;
          end;
          
          if ValidaCampo(cData_Vencimento, cData_Vencimento.DateTime, Empresas.FieldByName('Fechamento_Financeiro').AsDateTime, '<=', 'Título dentro de um período fechado!', 'Período Fechado') then Abort;
          
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+'Título: '+FieldByName('Titulo').AsString, mtConfirmation, mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                         if ARes = mrYes then begin
                            Delete;
                            MessageBeep(MB_ICONINFORMATION);
                            Alerta.Text := 'Registro excluído com sucesso!';
                            Alerta.Execute;
                         end;
                    end);
     end;
end;

procedure TfFinanceiro.BaixasBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Titulo').AsString, EstadoTabela(DataSet));
end;

procedure TfFinanceiro.bBaixarClick(Sender: TObject);
var
   mSel: integer;
begin
     // Verifica se tem algum título selecionado.
     if Aviso(GradeLan.SelectedRows.Count, 0, '=', 'Nenhum título selecionado para baixar!', 'Aviso') then Abort;

     with tTmp do begin
          sql.Clear;
          sql.Add('select Total_Baixado = isnull(sum(prb.Valor), 0)');
          sql.Add('from   PagarReceberBaixas prb');
          sql.Add('where  Empresa = '+quotedstr(UniMainModule.mEmpresaAtiva) );
          sql.Add('and    Titulo = '+Lista.FieldByName('Titulo').asstring);
          Open;

          // Verifica se ainda existe saldo a liquidar.
          if Aviso(Fieldbyname('Total_Baixado').AsCurrency, Lista.FieldByName('Valor_Operacao').AsCurrency, '>=', 'Título já liquidado!', 'Aviso') then Abort;
     end;

     LigaBotoesBx(false);

     with Lista do begin
          // Coloca a "tag" para 1 para não executar o script "PegaBaixas".
          Tag := 1;
          mTp := FieldByName('Tipo').asstring;

          // Somando todos os itens selecionados.
          cBxValor_Doc.value      := 0;
          cBxValor_Parcela.value  := 0;
          cBxValor_Multa.value    := 0;
          cBxValor_Juros.value    := 0;
          cBxValor_Desconto.value := 0;
          cBxValor.value          := 0;

          for mSel := 0 to pred(GradeLan.SelectedRows.Count) do begin
              GradeLan.DataSource.DataSet.GotoBookMark(GradeLan.SelectedRows.Items[mSel]);
              mListaIN                := mListaIN + FieldByName('Titulo').AsString+',';
              cBxValor_Doc.value      := cBxValor_Doc.value      + FieldByName('Valor_Documento').AsCurrency;
              cBxValor_Parcela.value  := cBxValor_Parcela.value  + FieldByName('Valor_Parcela').AsCurrency;
              cBxValor_Juros.Value    := cBxValor_Juros.value    + FieldByName('Valor_Juros').AsCurrency;
              cBxValor_Multa.value    := cBxValor_Juros.value    + FieldByName('Valor_Multa').AsCurrency;
              cBxValor_Desconto.value := cBxValor_Desconto.value + FieldByName('Valor_Desconto').AsCurrency;

              if FieldByName('Tipo').asstring <> mTp then mTp := '*';
          end;

          // Verifica se todos os títulos selecionados são do mesmo tipo "R" / "P".
          LigaBotoesBx(true);
          if ValidaCampo(nil, mTp, '*', '=', 'Só é permitido baixar lançamentos em lote do mesmo tipo!', 'Erro de "Tipo"') then Abort;
          LigaBotoesBx(false);

          mListaIN := Copy(mListaIN, 1, Length(mListaIN)-1);

          with tTmp do begin
               sql.Clear;
               if trim(mListaIN) <> '' then begin
                  sql.Add('select Total_Baixado  = isnull(sum(Valor), 0)');
                  sql.Add('      ,Total_Multa    = isnull(sum(Valor_Multa), 0)');
                  sql.Add('      ,Total_Juros    = isnull(sum(Valor_Juros), 0)');
                  sql.Add('      ,Total_Desconto = isnull(sum(Valor_Desconto), 0)');
                  sql.Add('from   PagarReceberBaixas');
                  sql.Add('where  Empresa = '+quotedstr(UniMainModule.mEmpresaAtiva));
                  sql.Add('and    Titulo in('+mListaIN+')');
               end else begin
                  sql.Add('select Total_Baixado  = 0');
                  sql.Add('      ,Total_Multa    = 0');
                  sql.Add('      ,Total_Juros    = 0');
                  sql.Add('      ,Total_Desconto = 0');
               end;
               //sql.SaveToFile('c:\temp\Total_Baixas.sql');
               Open;
               cBxValor_Baixado.Value := tTmp.FieldByName('Total_Baixado').AsCurrency;
          end;

          gCambio.Enabled       := Plano.FieldByName('Cambio').AsBoolean;
          cBxValor_Aberto.Value := cBxValor_Parcela.value - tTmp.FieldByName('Total_Baixado').AsCurrency - tTmp.FieldByName('Total_Desconto').AsCurrency + tTmp.FieldByName('Total_Multa').AsCurrency + tTmp.FieldByName('Total_Juros').AsCurrency;
          if Plano.FieldByName('Cambio').asBoolean then begin
             cBxValor.Value := cBxValor_Parcela.value + cBxValor_Juros.value + cBxValor_Multa.value + cVariacaoCambial.value - cBxValor_Desconto.value;
          end else begin
             cBxValor.Value := cBxValor_Parcela.value + cBxValor_Juros.value + cBxValor_Multa.value - cBxValor_Desconto.value - cBxValor_Baixado.Value;
          end;

          cBxValor.Enabled          := GradeLan.SelectedRows.Count = 1;
          cBxValor_Multa.Enabled    := GradeLan.SelectedRows.Count = 1;
          cBxValor_Juros.Enabled    := GradeLan.SelectedRows.Count = 1;
          cBxValor_Desconto.Enabled := GradeLan.SelectedRows.Count = 1;
     end;

     Tag := 0;
end;

procedure TfFinanceiro.bBloquearClick(Sender: TObject);
var
   i:integer;
begin
     for i := 0 to 4 do begin
         Pasta.Pages[i].Enabled := false;
     end;

     bBloquear.Enabled         := false;
     pasta.Pages[5].TabVisible := true;
     pasta.ActivePageIndex     := 5;
     Empresas.Edit;
     cDataBloqueio.Text := Empresas.FieldByName('Fechamento_Financeiro').asstring;
     cDataBloqueio.SetFocus;
end;

procedure TfFinanceiro.bCancelarBaixaClick(Sender: TObject);
begin
     Baixas.Cancel;
     LigaBotoesBx(true);
end;

procedure TfFinanceiro.LigaBotoesBx(Estado:boolean);
begin
     Pasta.Pages[4].TabVisible := not Estado;
     pBarraNav.Enabled         := Estado;
     bBaixar.Enabled           := Estado;
     Pasta.Pages[0].Enabled    := Estado;
     Pasta.Pages[1].Enabled    := Estado;
     Pasta.Pages[2].Enabled    := Estado;
     Pasta.Pages[3].Enabled    := Estado;
     if not Estado then begin
        Pasta.ActivePageIndex := 4;
        Pasta.Pages[4].setfocus;
     end else begin
        Pasta.ActivePageIndex := 0;
        Pasta.Pages[0].setfocus;
     end;
end;

procedure TfFinanceiro.LigaBotoesEst(Estado:boolean);
begin
     if not Estado then begin
        Pasta.ActivePageIndex := 5;
     end else begin
        Pasta.ActivePageIndex := 0;
        Pasta.Pages[0].setfocus;
     end;
end;

procedure TfFinanceiro.ListaAfterScroll(DataSet: TDataSet);
begin
     with PagarReceber do begin
          sql.clear;
          sql.add('select * from PagarReceber where Titulo = '+Lista.FieldByName('Titulo').asstring);
          open;
     end;
     PegaBaixas;
end;

procedure TfFinanceiro.bCancelarClick(Sender: TObject);
begin
     PagarReceber.Cancel;
     LigaBotoes(true);
end;

procedure TfFinanceiro.bEditarClick(Sender: TObject);
begin
     with PagarReceber do begin
          if (Baixas.RecordCount > 0) and (FieldByname('Adiantamento_Numero').AsInteger = 0) then begin
             messagedlg('Lançamento baixado!'+#13+#13+'Para alterar este lançamente é necessário efetuar o estorno.', mtInformation, [mbok]);
             abort;
          end;
          
          if ValidaCampo(cData_Vencimento, cData_Vencimento.DateTime, Empresas.FieldByName('Fechamento_Financeiro').AsDateTime, '<=', 'Título dentro de um período fechado!', 'Período Fechado') then Abort;

          sql.clear;
          sql.add('select * from PagarReceber where Titulo = '+Lista.FieldByName('Titulo').asstring);
          open;
          mAdiant := FieldByName('Adiantamento_Numero').asinteger;
          try
             LigaBotoes(false);
             Edit;
             cConta.setfocus;
          except
             MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
          end;
     end;
end;

procedure TfFinanceiro.bEstornarClick(Sender: TObject);
begin
     with Baixas do begin
          with tTmp do begin
               sql.Clear;
               sql.Add('select Total_Baixado = isnull(sum(prb.Valor), 0)');
               sql.Add('from   PagarReceberBaixas prb');
               sql.Add('where  Empresa = '+quotedstr(UniMainModule.mEmpresaAtiva) );
               sql.Add('and    Titulo = '+Lista.FieldByName('Titulo').asstring);
               Open;

               // Verifica se ainda existe saldo a liquidar.
               if Aviso(Fieldbyname('Total_Baixado').AsCurrency, 0, '=', 'Não há liquidação para estornar!', 'Aviso') then Abort;
          end;

          if ValidaCampo(cData_Vencimento, cData_Vencimento.DateTime, Empresas.FieldByName('Fechamento_Financeiro').AsDateTime, '<=', 'Título dentro de um período fechado!', 'Período Fechado') then Abort;
     
          if recordCount > 0 then begin
             MessageDlg('Deseja realmente estornar este valor?'+#13+#13+'Valor : R$ '+formatfloat(',##0.00;0', FieldByName('Valor').Ascurrency), mtConfirmation, mbYesNo,
                       procedure(Comp:TComponent; ARes: Integer)
                       begin
                            if ARes = mrYes then begin
                               // Exclui o lançamento contabil da baixa estornada.
                               tTmp.sql.Clear;
                               tTmp.sql.Add('delete from Lancamentos where Empresa = :pEmp and Origem = ''FNLIQ'' and Origem_Numero = :pNum');
                               tTmp.ParamByName('pEmp').Asstring := fieldbyname('Empresa').AsString;
                               tTmp.ParamByName('pNum').Asstring := PagarReceber.fieldbyname('Titulo').asstring;
                               tTmp.Execute;
                               // Exclui o lançamento de baixa..
                               tTmp.sql.Clear;
                               tTmp.sql.Add('delete from PagarReceberBaixas where Registro = :pReg');
                               tTmp.ParamByName('pReg').AsInteger := fieldbyname('Registro').AsInteger;
                               tTmp.Execute;
                               MessageBeep(MB_ICONINFORMATION);
                               Alerta.Text := 'Valor estornado!';
                               Lista.Refresh;
                               Baixas.Refresh;
                               Alerta.Execute;
                            end;
                       end);
          end;
     end;
end;

procedure TfFinanceiro.UniFrameDestroy(Sender: TObject);
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

procedure TfFinanceiro.bBlocCancClick(Sender: TObject);
var 
   i:integer;
begin
     Empresas.Cancel;
     for i := 0 to 4 do begin
         Pasta.Pages[i].Enabled := true;
     end;
     pasta.ActivePageIndex     := 0;
     bBloquear.Enabled         := true;
     pasta.Pages[5].TabVisible := false;
end;

procedure TfFinanceiro.bLimparFiltroClick(Sender: TObject);
begin
     cCalend.Text             := inttostr(mDia)+'/'+inttostr(mMes)+'/'+cAno.Text;
     cAgrupar.Checked         := false;
     cBenefFiltro.KeyValue    := -1;
     cContaFiltro.KeyValue    := -1;
     cBancoFiltro.Keyvalue    := -1;
     cProcessoFiltro.Keyvalue := -1;
     cTipo. ItemIndex         := 2;
     cProv.ItemIndex          := 2;
     cSituacao.ItemIndex      := 3;
     cDocNumFiltro.Clear;
     uniPanel1.Enabled        := true;

     FiltraLancamentos;
end;

procedure TfFinanceiro.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFinanceiro.bFiltroClick(Sender: TObject);
begin
      FiltraLancamentos;
end;

procedure TfFinanceiro.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bGravar.Enabled    := not Estado;
     pFicha1.Enabled    := not Estado;
     cData_Previsao.SetFocus;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfFinanceiro.TotalizaBaixa;
begin
     with Baixas do begin
          if (State = dsInsert ) or (State = dsEdit) then begin
             cBxValor.value := (cBxValor_Aberto.value + cBxValor_Multa.value + cBxValor_Juros.value) - cValor_Desconto.value;
          end;
     end;
end;

procedure TfFinanceiro.bBlocPerClick(Sender: TObject);
var
  i:integer;
begin
     with tTmp do begin
          sql.Clear;
          sql.Add('update Empresas set Fechamento_Financeiro = :pData where CNPJ = :pEmp');
          parambyname('pData').Value := cDataBloqueio.DateTime;
          parambyname('pEmp').Value  := UniMainModule.mEmpresaAtiva;
          execute;
     end;
     for i := 0 to 4 do begin
         Pasta.Pages[i].Enabled := true;
     end;
     
     pasta.ActivePageIndex     := 0;
     bBloquear.Enabled         := true;
     pasta.Pages[5].TabVisible := false;
end;

procedure TfFinanceiro.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;

      Pasta.Pages[4].TabVisible := false;

      with Bancos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,Conta');
           sql.add('      ,Conta_Contabil');
           sql.add('from Bancos');
           sql.add('order by Nome');
           open;
      end;
      with Plano do begin
           sql.clear;
           sql.add('select Conta');
           sql.add('      ,Nome = Nome_Financeiro');
           sql.add('      ,Tributo');
           sql.add('      ,Adiantamento');
           sql.add('      ,Devolucao');
           sql.add('      ,Tipo');
           sql.add('      ,Processo_Obrigatorio');
           sql.add('      ,Custo_Entrada');
           sql.add('      ,Custo_Saida');
           sql.add('      ,Custo_Seletivo');
           sql.add('      ,Custo_Outros');
           sql.add('      ,Nivel');
           sql.add('      ,Codigo');
           sql.add('      ,Provisao_ContraPartida');
           sql.add('      ,Provisao_Historico');
           sql.add('      ,Liquidacao_ContraPartida');
           sql.add('      ,Liquidacao_Historico');
           sql.add('      ,Cambio');
           sql.add('from PlanoContas');
           sql.add('order by Nome');
           open;
      end;
      with CentroCusto do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from  CentroCusto');
           sql.add('order by Codigo, Nome');
           open;
      end;
      with Modal do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao');
           sql.add('from ModalidadesPagamento');
           sql.add('order by Descricao');
           open;
      end;
      with Processos do begin
           sql.clear;
           sql.add('select Processo');
           sql.add('      ,Declaracao = DUIMP');
           sql.add('      ,Tipo = ''IMPORTAÇÃO'' ');
           sql.add('      ,Cliente');
           sql.add('      ,Cliente_Nome = (select Nome from Destinatarios dst where dst.Codigo = pi.Cliente)');
           sql.add('from  ProcessosImp pi');
           sql.add('where Empresa = '+ quotedstr(uniMainModule.mEmpresaAtiva));
           sql.add('and   Data_Encerramento is null');
           sql.add('union all');
           sql.add('select Processo');
           sql.add('      ,Declaracao = DE');
           sql.add('      ,Tipo = ''EXPORTAÇÃO'' ');
           sql.add('      ,Cliente');
           sql.add('      ,Cliente_Nome = (select Nome from Destinatarios Dst where dst.Codigo = pe.Cliente)');
           sql.add('from  ProcessosExp pe');
           sql.add('where Empresa = '+ quotedstr(uniMainModule.mEmpresaAtiva));
           sql.add('and   Data_Encerramento is null');
           sql.add('order by Tipo, Declaracao');
           //sql.savetofile('c:\temp\Financeiro_Processos.sql');
           open;
      end;
      with TipoDoc do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from  TipoDocumento');
           sql.add('order by Nome');
           open;
      end;
      with Adiantamentos do begin
           sql.clear;
           sql.add('select distinct');
           sql.add('       CNPJ = (select CNPJ from Destinatarios fr where fr.Codigo = pr.Beneficiario)');
           sql.add('      ,Adiantamento_Numero = isnull(Beneficiario, 0)');
           sql.add('      ,Nome = (select Nome from Destinatarios fr where fr.Codigo = pr.Beneficiario)');
           sql.add('from PagarReceber pr');
           sql.add('where (select isnull(Adiantamento, 0) from PlanoContas pc where pc.Codigo = pr.Conta) = 1');
           sql.add('and (select CNPJ from Destinatarios fr where fr.Codigo = pr.Beneficiario) <> '''' ');
           sql.Add('order by Nome, CNPJ');
           //sql.SaveToFile('c:\temp\Beneficiario_Adiantamentos.SQL');
           Open;
      end;
      with FormaPgto do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao');
           sql.add('from FormasPagamento');
           sql.add('order by Descricao');
           open;
           while not eof do begin
                 cBxForma_Pgto.Items.Add(FieldByName('Descricao').asstring);
                 next;
           end;
      end;
      with Empresas do begin
           sql.clear;
           sql.add('select Razao_Social');
           sql.add('      ,CNPJ');
           sql.add('      ,Unidade = case when isnull(Numero_Filial, 0) = 0 then ''MATRIZ'' else ''FILIAL ''+cast(numero_Filial as char(3)) end');
           sql.add('      ,Fechamento_Financeiro');
           sql.add('      ,Estado');
           sql.add('from  Empresas');
           sql.add('where substring(CNPJ, 1, 8) = '+quotedstr(copy(UniMainModule.mEmpresaAtiva, 1, 8)) );
           sql.add('order by CNPJ, Numero_Filial');
           open;
      end;
      with Config do begin
           sql.clear;
           sql.add('select Classificacao_CambioVarAtiva');
           sql.add('      ,Classificacao_CambioVarPassiva');
           sql.add('      ,Parametrizacao_Contabil');
           sql.add('      ,Contab_Metodo');
           sql.add('from  Config');
           sql.add('where Empresa = '+ quotedstr(uniMainModule.mEmpresaAtiva));
           open;
      end;
      with Embarques do begin
           sql.add('select Registro');
           sql.add('      ,Navio');
           sql.add('      ,Referencia');
           sql.add('      ,Processo');
           sql.add('from Embarques');
           sql.add('where status <> ''ENCERRADO'' ');
           sql.add('order by cast(Referencia as int), Navio');
           open;
      end;

      LigaBotoes(true);

      Pasta.ActivePageIndex      := 0;
      cCalend.DateTime           := Date;
      cTipo.ItemIndex            := 2;
      cSituacao.ItemIndex        := 3;
      cProv.ItemIndex            := 2;
      mDia                       := dayof(date);
      mMes                       := monthof(Date);
      cAno.Value                 := yearof(Date);
      cMes.Items[mMes-1].Pressed := true;
      cDia.Items[mDia-1].Pressed := true;

      FiltraLancamentos;
end;

procedure TfFinanceiro.bPesquisaClick(Sender: TObject);
begin
     PagarReceber.Cancel;
     LigaBotoes(true);
end;

procedure TfFinanceiro.bSalvarBaixaClick(Sender: TObject);
var
  msel: integer;
begin
      with Baixas do begin
           if CampoVazio(cBxBanco,'') then Abort;
           if CampoVazio(cBxData,'') then Abort;
           if CampoVazio(cBxForma_Pgto,'') then Abort;
           if CampoVazio(cBxForma_PgtoDoc,'') then Abort;
           if ValidaCampo(cBxValor, cBxValor.Value, 0, '<=', 'É necessário informar o "Valor a ser Baixado"!', 'Campo obrigatório') then Abort;
           if ValidaCampo(cBxValor, cBxValor.Value, cBxValor_Aberto.value, '>', 'Valor informado não pode ser maior que o saldo!', 'Valor inválido') then Abort;
           if (Trim(Config.FieldbyName('Classificacao_CambioVarAtiva').AsString) = '') or (Trim(Config.FieldByName('Classificacao_CambioVarPassiva').AsString) = '') then begin
              MessageDlg('Erro !'+#13+#13+
                         'É necessário parametrizar as classificações financeiras de variação cambial para baixas de fechamento de câmbio.'+#13+#13+
                         'Vá em "Configuração/Parâmetros/Financeiros/Lançamentos - [Classificações Financeiras para Fechamento de Câmbio].', mtError, [mbOK]);
              Abort;
           end;

           try
               // Baixando todos os registros selecionados.
               for mSel := 0 to pred(GradeLan.SelectedRows.Count) do begin
                   GradeLan.DataSource.DataSet.GotoBookMark(GradeLan.SelectedRows.Items[mSel]);

                   // Lançamento Financeiro - Baixa do título.
                   Append;
                        FieldByName('Data').value                  := Date;
                        FieldByName('Numero_ContratoCambio').value := Contratos.FieldByName('Numero').AsString;
                        FieldByname('Taxa_FechamentoCambio').Value := Contratos.FieldByName('Taxa_Cambial').AsFloat;
                        FieldByName('Titulo').Value                := Lista.FieldByName('Titulo').AsInteger;
                        FieldByName('Tipo').Value                  := Lista.FieldByName('Tipo').AsString;
                        FieldByName('Origem_Multa').Value          := iif(GradeLan.SelectedRows.Count > 1, 'T', 'B');
                        FieldByName('Origem_Juros').Value          := iif(GradeLan.SelectedRows.Count > 1, 'T', 'B');
                        FieldByName('Origem_Desconto').Value       := iif(GradeLan.SelectedRows.Count > 1, 'T', 'B');
                        FieldByName('Forma_Pgto').Value            := cBxForma_Pgto.Text;
                        FieldByName('Forma_PgtoDoc').Value         := cBxForma_PgtoDoc.Text;
                        FieldByName('Banco').Value                 := Bancos.FieldByName('Codigo').AsInteger;
                        FieldByName('Banco_Conta').Value           := Bancos.FieldByName('Conta').Value;
                        FieldByName('Observacao').Value            := cBxObs.Lines.Text;
                        FieldByName('Empresa').Value               := uniMainModule.mEmpresaAtiva;
                        if GradeLan.SelectedRows.Count > 1 then begin
                           FieldByname('Valor_Juros').Value    := Lista.FieldByName('Valor_Juros').ascurrency;
                           FieldByname('Valor_Multa').Value    := Lista.FieldByName('Valor_Multa').ascurrency;
                           FieldByname('Valor_Desconto').Value := Lista.FieldByName('Valor_Desconto').ascurrency;
                           FieldByName('Valor').Value          := (Lista.FieldByName('Valor_Parcela').ascurrency+Lista.FieldByName('Valor_Juros').ascurrency+Lista.FieldByName('Valor_Multa').ascurrency)-Lista.FieldByName('Valor_Desconto').ascurrency;
                        end else begin
                           FieldByname('Valor_Juros').Value    := cBxValor_Juros.value;
                           FieldByname('Valor_Multa').Value    := cBxValor_Multa.value;
                           FieldByname('Valor_Desconto').Value := cBxValor_Desconto.value;
                           FieldByName('Valor').Value          := cBxValor.Value + cBxValor_Multa.Value + cBxValor_Juros.Value - cBxValor_Desconto.Value;
                        end;
                        FieldByName('Registro').Value := GeraCodigo('PagarReceberBaixas', 'Registro');
                   Post;

                   // Lançamento Contabil - Liquidação.
                   if trim(Plano.FieldByName('Liquidacao_ContraPartida').asstring) <> '' then begin
                      LancamentoContabil('FNLIQ', fieldbyname('Titulo').asstring, fieldbyname('Tipo').asstring, Config.fieldbyname('Contab_Metodo').asinteger);
                   end;
               end;
           except
               on E:Exception do begin
                  LogErros('PagarReceberBaixas', 'Falha desconhecida, não pode efetuar a baixa do título!'+FieldByName('Titulo').asstring+'***'+#13+E.Message+')');
                  ShowmessageN('Falha desconhecida, não pode baixa o título!');
                  LigaBotoesBx(true);
                  Abort;
               end;
           end;
      end;

      PagarReceber.Tag := 0;
      PagarReceber.Refresh;
      Lista.Refresh;
      Baixas.Refresh;

      MessageBeep(MB_ICONINFORMATION);
      Alerta.Text := 'Baixa efetuada com sucesso!';
      Alerta.Execute;

      LigaBotoesBx(true);
end;

procedure TfFinanceiro.PagarReceberBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Titulo').AsString,'Delete');
end;

procedure TfFinanceiro.PagarReceberBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Titulo').AsString, EstadoTabela(DataSet));
end;

procedure TfFinanceiro.PastaChange(Sender: TObject);
begin
     pFiltro.Collapsed := true;
end;

procedure TfFinanceiro.cAgruparChange(Sender: TObject);
begin
     uniPanel1.Enabled := not cAgrupar.Checked;
end;

procedure TfFinanceiro.cAnoChange(Sender: TObject);
begin
     cCalend.Text := FormatFloat('00', mDia)+'/'+FormatFloat('00',mMes)+'/'+cAno.Text;
     FiltraLancamentos;
end;

procedure TfFinanceiro.cBxDataExit(Sender: TObject);
begin
     if Contratos.RecordCount > 0 then begin
        with Cotacao do begin
             sql.clear;
             sql.add('select * from Cotacao where Moeda = :pMoeda and Data = :pData');
             ParamByName('pMoeda').asinteger := Contratos.FieldByName('Moeda').AsInteger;
             ParamByName('pData').asinteger  := Baixas.FieldByName('Data').Value;
             open;
             if recordcount > 0 then begin
                if cTaxa_FechamentoCambio.Value <= 0 then begin
                   cTaxa_FechamentoCambio.Value := Cotacao.FieldByName('Valor').AsFloat;
                end;
             end;
        end;
     end;
end;

procedure TfFinanceiro.cBxForma_PgtoChange(Sender: TObject);
begin
     gCheque.Enabled := uppercase(cBxForma_Pgto.Text) = 'CHEQUE';
end;

procedure TfFinanceiro.cBxValor_DescontosChange(Sender: TObject);
begin
     TotalizaBaixa;
end;

procedure TfFinanceiro.cBxValor_JurosChange(Sender: TObject);
begin
     TotalizaBaixa;
end;

procedure TfFinanceiro.cBxValor_MultaChange(Sender: TObject);
begin
     TotalizaBaixa;
end;

procedure TfFinanceiro.cContaChange(Sender: TObject);
begin
      with TipoDoc do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from  TipoDocumento');
           if Plano.FieldByName('Tributo').AsBoolean then begin
              sql.add('where isnull(Tributo, 0) = 1');
           end;
           sql.add('order by Nome');
           open;
      end;
      if Plano.fieldByName('Adiantamento').asboolean then begin
         cAdiantamento.Clear;
         cAdiantamento.Enabled := false;
      end else begin
         cAdiantamento.Enabled := true;
      end;
      FiltraBenef(Plano.fieldbyName('Tipo').asstring);
end;

procedure TfFinanceiro.cDesconto_LiquidacaoExit(Sender: TObject);
begin
      Totaliza;
end;

procedure TfFinanceiro.cDiaClick(Sender: TUniCustomButtonItem);
begin
      mDia         := Sender.Index+1;
      cCalend.Text := FormatFloat('00', mDia)+'/'+FormatFloat('00',mMes)+'/'+cAno.Text;
      FiltraLancamentos;
end;

procedure TfFinanceiro.GradeDblClick(Sender: TObject);
begin
      bEditarclick(self);
end;

procedure TfFinanceiro.cMesClick(Sender: TUniCustomButtonItem);
begin
      mMes := Sender.Index+1;
      cCalend.Text := FormatFloat('00', mDia)+'/'+FormatFloat('00',mMes)+'/'+cAno.Text;
      FiltraLancamentos;
end;

procedure TfFinanceiro.cMesesChange(Sender: TObject);
begin
     FiltraLancamentos;
end;

procedure TfFinanceiro.cTaxa_FechamentoCambioChange(Sender: TObject);
begin
     CalculaCambio;
end;

procedure TfFinanceiro.cValor_DescontoExit(Sender: TObject);
begin
     Totaliza;
end;

procedure TfFinanceiro.cValor_DocumentoExit(Sender: TObject);
begin
     Totaliza;
end;

procedure TfFinanceiro.cValor_JurosExit(Sender: TObject);
begin
     Totaliza;
end;

procedure TfFinanceiro.cValor_MultaExit(Sender: TObject);
begin
     Totaliza;
end;

procedure TfFinanceiro.cValor_ParcelaExit(Sender: TObject);
begin
     Totaliza;
end;

procedure TfFinanceiro.Totaliza;
begin
      with PagarReceber do begin
           if (State = dsInsert ) or (State = dsEdit) then begin
              if FieldByName('Valor_Parcela').asCurrency = 0 then begin
                 FieldByName('Valor_Parcela').value := FieldByName('Valor_Documento').asCurrency;
              end;

              FieldByName('Valor_Total').value := FieldByName('Valor_Parcela').ascurrency + FieldByName('Valor_Juros').ascurrency + FieldByName('Valor_Multa').ascurrency - FieldByName('Valor_Desconto').ascurrency;
           end;
      end;
end;

procedure TfFinanceiro.FiltraLancamentos;
var
   i: integer;
begin
       // Pega os dias com movimento.
       with tDias do begin
            sql.clear;
            sql.add('select distinct Dia = day(Data_Vencimento)');
            sql.add('from  PagarReceber');
            sql.add('where Empresa = '+quotedstr(uniMainModule.mEmpresaAtiva));
            sql.add('and   Year(Data_Vencimento) = '+cAno.Text +' and month(Data_Vencimento) = '+inttostr(mMes));
            sql.add('order by Dia');
            //sql.SaveToFile('c:\temp\Financeiro_dias_Movimento.sql');
            Open;
            first;
            for i := 0 to 30 do begin
                cDia.Items[i].Caption := Formatfloat('00', i+1);
            end;
            while not eof do begin
                  //cDia.Items[FieldByName('Dia').AsInteger-1].Caption := FormatFloat('00', FieldByName('Dia').asinteger)+' <i class="fa fa-check-circle" aria-hidden="true"></i>';
                  cDia.Items[FieldByName('Dia').AsInteger-1].Caption := '<span style="text-decoration:underline #000 solid 2px"> '+FormatFloat('00', FieldByName('Dia').asinteger); //+' <i class="fa fa-check-circle" aria-hidden="true"></i>';
                  next;
            end;
       end;

       pFiltro.Title := 'FILTRO: '+FormatFloat('00', mDia) + ' de '+NomeMes(mMes) +' de '+cAno.Text;

       if (trim(cBenefFiltro.text) = '') and (trim(cContaFiltro.text) = '') and (trim(cBancoFiltro.text) = '') and (trim(cProcesso.text) = '') and (cProv.ItemIndex <> 1) and (trim(cDocNumFiltro.Text) = '') and (trim(cProcessoFiltro.Text) = '') then begin
          cAgrupar.Checked := false;
       end;

       with Lista do begin
            sql.clear;
            sql.Add('select Titulo');
            sql.Add('      ,Conta');
            sql.Add('      ,Tipo');
            sql.Add('      ,Centro_Custo');
            sql.Add('      ,Data_Vencimento');
            sql.Add('      ,Valor_Documento');
            sql.Add('      ,Valor_Parcela');
            sql.Add('      ,Documento_Numero');
            sql.Add('      ,Processo');
            sql.Add('      ,Parcela');
            sql.Add('      ,Valor_Juros');
            sql.Add('      ,Valor_Multa');
            sql.Add('      ,Valor_Desconto');
            sql.Add('      ,Valor_Parcela');
            sql.Add('      ,Valor_Total');
            sql.Add('      ,Valor_Operacao');
            sql.Add('      ,Valor_Aberto = pr.Valor_Parcela - isnull((select sum(isnull(Valor, 0)) from PagarReceberBaixas prb where prb.Titulo = pr.Titulo), 0)');
            sql.Add('      ,Baixa = cast(case when (select isnull(sum(Valor), 0) from PagarReceberBaixas prb where prb.Titulo = pr.Titulo) = 0 then 0 else 1 end as bit)');
            sql.Add('      ,Nome = (select Nome_Financeiro from PlanoContas pc where pc.Conta = pr.Conta)');
            sql.Add('      ,Beneficiario = case when isnull(Transferencia, 0) = 0 then');
            sql.Add('                           (select Nome from Destinatarios dst where dst.Codigo = pr.Beneficiario)');
            sql.Add('                      else');
            sql.Add('                           (select Nome from Bancos where Codigo = PR.Banco)');
            sql.Add('                      end');
            sql.Add('      ,Observacao');
            sql.Add('      ,Origem');
            sql.Add('      ,Vinculo');
            sql.Add('from PagarReceber pr');
            sql.Add('where Empresa = '+quotedstr(uniMainModule.mEmpresaAtiva));
            if not cAgrupar.checked then begin
               sql.Add('and pr.Data_Vencimento = :pData');
               parambyName('pData').AsDate := cCalend.DateTime;
            end;
            if cTipo.itemindex = 0 then begin
               sql.Add('and pr.Tipo = ''P''');
            end;
            if cTipo.itemindex = 1 then begin
               sql.Add('and pr.Tipo = ''R''');
            end;
            if cSituacao.itemindex = 0 then begin
               sql.Add('and (select isnull(sum(valor), 0) from PagarReceberBaixas prb where prb.Titulo= pr.Titulo) = 0');
            end;
            if cSituacao.itemindex = 1 then begin
               sql.Add('and (select isnull(sum(valor), 0) from PagarReceberBaixas prb where PRB.Titulo = pr.Titulo) = Valor_Total');
            end;
            if cSituacao.itemindex = 2 then begin
               sql.Add('and ((select isnull(sum(valor), 0) from PagarReceberBaixas prb where prb.Titulo = pr.Titulo) > 0 and');
               sql.Add('     (select isnull(sum(valor), 0) from PagarReceberBaixas prb where prb.Titulo = pr.Titulo) < Valor_Total)');
            end;
            if trim(cBenefFiltro.Text) <> '' then begin
               sql.Add('and pr.Beneficiario = '+inttostr(cBenefFiltro.KeyValue));
            end;
            if trim(cContaFiltro.Text) <> '' then begin
               sql.Add('and pr.Conta = '+quotedstr(Plano.fieldbyname('Conta').AsString));
            end;
            if trim(cBancoFiltro.Text) <> '' then begin
               sql.Add('and Banco = '+inttostr(cBanco.KeyValue));
            end;
            if trim(cProcessoFiltro.Text) <> '' then begin
               sql.Add('and pr.Processo like '+ quotedstr('%'+cProcessoFiltro.text+'%'));
            end;
            if cProv.itemindex = 0 then begin
               sql.Add('and isnull(pr.Provisorio,0) = 0');
            end;
            if cProv.itemindex = 1 then begin
               sql.Add('and isnull(pr.Provisorio,0) = 1');
            end;
            if trim(cDocNumFiltro.Text) <> '' then begin
               sql.Add('and pr.Documento_Numero like '+ quotedstr('%'+cDocNumFiltro.text+'%'));
            end;
            sql.Add('order by Data_Vencimento desc');
            //sql.savetofile('c:\temp\Financeiro.sql');
            open;

            PegaBaixas;
            PegaContratos;
            PegaAdiantamentos;

            bEditar.Enabled  := RecordCount > 0;
            bExcluir.Enabled := RecordCount > 0;
       end;
       with tTmp do begin  
            sql.clear;
            sql.Add('select Custo_Entrada  = sum(iif(Tipo = ''P'' and Custo_Entrada  = 1, Valor_Parcela, 0))');
            sql.Add('      ,Custo_Saida    = sum(iif(Tipo = ''P'' and Custo_Saida    = 1, Valor_Parcela, 0))');
            sql.Add('      ,Custo_Seletivo = sum(iif(Tipo = ''P'' and Custo_Seletivo = 1, Valor_Parcela, 0))');
            sql.Add('      ,Custo_Outros   = sum(iif(Tipo = ''P'' and Custo_Outros   = 1, Valor_Parcela, 0))');
            sql.Add('      ,Recebimentos   = sum(iif(Tipo = ''R'', Valor_Parcela, 0))');
            sql.Add('      ,Pagamentos     = sum(iif(Tipo = ''P'', Valor_Parcela, 0))');
            sql.Add('from PagarReceber pr');
            sql.Add('where Empresa = '+quotedstr(uniMainModule.mEmpresaAtiva));
            sql.Add('and pr.Data_Vencimento = :pData');
            parambyName('pData').AsDate := cCalend.DateTime;
            open;
            brTotais.Items[0].Caption := 'Custo Entrada: ' + FormatFloat(',##0.00', fieldbyname('Custo_Entrada').AsCurrency);
            brTotais.Items[1].Caption := 'Custo Saída: '   + FormatFloat(',##0.00', fieldbyname('Custo_Saida').AsCurrency);
            brTotais.Items[2].Caption := 'Custo Seletivo: '+ FormatFloat(',##0.00', fieldbyname('Custo_Seletivo').AsCurrency);
            brTotais.Items[3].Caption := 'Custo Outros: '  + FormatFloat(',##0.00', fieldbyname('Custo_Outros').AsCurrency);
            brTotais.Items[4].Caption := 'Recebimentos: '  + FormatFloat(',##0.00', fieldbyname('Recebimentos').AsCurrency);
            brTotais.Items[5].Caption := 'Pagamentos: '    + FormatFloat(',##0.00', fieldbyname('Pagamentos').AsCurrency);
            brTotais.Items[6].Caption := 'Pedido Pai: '    + 'R-0000000';
            brTotais.Items[7].Caption := 'Pedido Filho 1: '+ 'R-0000001';
            brTotais.Items[8].Caption := 'Pedido Filho 2: '+ 'R-0000002';
            brTotais.Items[9].Caption := 'Bloqueado: '     + '00/00/0000';
       end;
end;

procedure TfFinanceiro.PegaBaixas;
begin
      with Baixas do begin
           if PagarReceber.Tag = 0 then begin
              sql.clear;
              sql.add('select *');
              sql.add('      ,Banco_Nome = (select Nome from Bancos where Codigo = Banco)');
              sql.add('from  PagarReceberBaixas');
              sql.Add('where Empresa = '+quotedstr(uniMainModule.mEmpresaAtiva));
              sql.add('and   Titulo = :pTitulo');
              parambyname('pTitulo').asinteger := Lista.fieldbyname('Titulo').asinteger;
              //sql.savetofile('c:\temp\Gerenciador_Financeiro_Baixas.sql');
              open;
           end;
      end;
end;

procedure TfFinanceiro.PegaContratos;
begin
      with Contratos do begin
           sql.Clear;
           sql.Add('select Numero');
           sql.Add('      ,Data');
           sql.Add('      ,Moeda');
           sql.Add('      ,Taxa_Cambial');
           sql.Add('from  ContratoCambio');
           sql.Add('where Empresa = '+quotedstr(uniMainModule.mEmpresaAtiva));
           sql.Add('and   Numero = :pContrato');
           ParamByName('pContrato').AsString := Lista.FieldByName('Documento_Numero').AsString;
           Open;
      end;
end;

procedure TfFinanceiro.PegaAdiantamentos;
begin
      with ListaAd do begin
           sql.clear;
           sql.Add('select pr.Titulo');
           sql.Add('      ,pr.Valor_Total');
           sql.Add('      ,pr.Documento_Data');
           sql.Add('      ,pr.Adiantamento_Numero');
           sql.Add('      ,pr.Banco');
           sql.Add('      ,pr.Tipo');
           sql.Add('      ,Valor_Baixado = isnull((select sum(Valor) from PagarReceberBaixas prb where prb.Titulo = pr.Titulo), 0)');
           sql.add('      ,Beneficiario = (select Nome from Destinatarios dst where dst.Codigo = pr.Adiantamento_Numero)');
           sql.Add('from  PagarReceber pr');
           sql.Add('where pr.Processo = '+ quotedstr(trim(Lista.FieldByName('Processo').AsString)) );
           sql.Add('and Adiantamento = 1');
           sql.Add('order by Tipo, Titulo');
           //sql.SaveToFile('c:\temp\Adiantamentos.sql');
           open;
      end;
end;

procedure TfFinanceiro.bGravarClick(Sender: TObject);
var
   mContas: TStringList;
begin
     mContas := TStringList.create;
     Screen.Cursor := crSQLWait;

     with PagarReceber do begin
          // Verifica todos os campos obrigatórios do título.
          if ValidaCampo(cData_Vencimento, cData_Vencimento.DateTime, Empresas.FieldByName('Fechamento_Financeiro').AsDateTime, '<=', 'A data do vencimento esta dentro de um período já fechado!', 'Data inválida') then Abort;
          if ValidaCampo(cData_Vencimento, cData_Vencimento.DateTime, FieldByName('Documento_Data').Value, '<', 'A "Data do Vencimento" não pode ser menor que a "Data do Documento!', 'Data inválida') then Abort;
          if ValidaCampo(cValor_Documento, cValor_Documento.Value   , 0, '<=', 'O "Valor do Documento" não pode ser igual a zero !', 'Valor inválido') then Abort;
          if ValidaCampo(cValor_Parcela  , cValor_Parcela.Value     , 0, '<=', 'O "Valor da Parcela" não pode ser igual a zero !', 'Valor inválido') then Abort;
          if (Plano.FieldByName('Processo_Obrigatorio').AsBoolean) and (CampoVazio(cProcesso, 'Esta Classificação Financeira obriga informar o número do "Processo".')) then abort;
          if CampoVazio(cData_Vencimento , 'É necessário informar a "Data de Vencimento" do título.') then Abort;
          if CampoVazio(cConta           , 'É necessário informar a "Classificação Financeira".')     then Abort;
          if CampoVazio(cDocumento       , 'É necessário informar o "Tipo do Documento".')            then Abort;
          if CampoVazio(cDocumento_Data  , 'É necessário informar a "Data do Documento".')            then Abort;
          if CampoVazio(cNumero_Documento, 'É necessário informar o "Número do Documento".')          then Abort;
          if CampoVazio(cBeneficiario    , 'É necessário informar o "Beneficiário".')                 then Abort;
          
          // Verifica se já existe documento lançado com o mesmo número e valor e beneficiário, para evitar duplicidade.
          if State = dsInsert then begin
             with tTmp do begin
                  SQL.Clear;
                  SQL.Add('select Beneficiario = (select Nome from Destinatarios where Codigo = Beneficiario)');
                  SQL.Add('from   PagarReceber');
                  SQL.Add('where  Empresa = '+quotedstr(uniMainModule.mEmpresaAtiva));
                  SQL.Add('and   Valor_Documento = :pValor');
                  SQL.Add('and   Beneficiario = :pBenef');
                  SQL.Add('and   Documento_Numero LIKE '+QuotedStr('%'+Trim(FieldByName('Documento_Numero').AsString)+'%'));
                  ParamByName('pValor').AsCurrency := PagarReceber.FieldByName('Valor_Documento').AsCurrency;
                  ParamByName('pBenef').AsINteger  := PagarReceber.FieldByName('Destinatario').AsInteger;
                  Open;

                  if RecordCount > 0 then begin
                     MessageBeep(MB_ICONWARNING);
                     if MessageDlg('Atenção!'+#13+#13+
                                   'Já existe um título com este número de documento e com este valor para '+#13+Trim(FieldByName('Beneficiario').AsString)+#13+#13+
                                   'Deseja realmente salvar o novo título?', mtInformation, [mbYes, mbNo]) = mrNo then begin
                        cValor_Documento.
                        SetFocus;
                        Abort;
                     end;
                  end;
             end;
             FieldByName('Titulo').Value         := GeraCodigo('PagarReceber', 'Titulo');
             FieldByName('Valor_Operacao').Value := FieldByName('Valor_Total').Value;
          end;

          FieldByName('Custo_Entrada').Value  := Plano.FieldByName('Custo_Entrada').asboolean;
          FieldByName('Custo_Saida').Value    := Plano.FieldByName('Custo_Saida').asboolean;
          FieldByName('Custo_Seletivo').Value := Plano.FieldByName('Custo_Seletivo').asboolean;
          FieldByName('Custo_Outros').Value   := Plano.FieldByName('Custo_Outros').asboolean;
          FieldByName('Nivel').Value          := Plano.FieldByName('Nivel').asinteger;
          FieldByName('Tipo').Value           := Plano.FieldByName('Tipo').AsString;
          FieldByName('Emprestimo').Value     := false;
          FieldByName('Processo_Tipo').Value  := Copy(Processos.FieldByName('Tipo').AsString, 1, 1);
          FieldByName('Adiantamento').Value   := Plano.FieldByName('Adiantamento').asboolean;
          FieldByName('Devolucao').Value      := Plano.FieldByName('Devolucao').asboolean;
          FieldByName('Tributo').Value        := Plano.FieldByName('Tributo').asboolean;
          FieldByName('Origem').Value         := 'FIN';

          // Salva o título.
          try
              Post;
          except
              on E:Exception do begin
                 LogErros('PagarReceber', 'Falha desconhecida, não pode salvar o título no financeiro! ['+FieldByName('Titulo').asstring+'] '+#13+E.Message);
                 ShowmessageN('Falha desconhecida, não pode salvar o título no financeiro!');
                 Screen.Cursor := crDefault;
                 Abort;
              end;
          end;
          // Deleta baixa de "Compensação" e o lançamento contabil, caso seja removido ou alterado o número do adiantamento, para recriar.
          if mAdiant <> 0 then begin
             with tTmp do begin
                  sql.clear;
                  sql.add('delete from PagarReceberBaixas where Empresa = :pEmp and Titulo = :pTitulo');
                  ParamByName('pEmp').asstring     := PagarReceber.FieldByName('Empresa').AsString;
                  ParamByName('pTitulo').asinteger := PagarReceber.FieldByName('Titulo').asinteger;
                  execute;
             end;
          end;
          // Gera a "Baixa" para os lançamentos de compensação de adiantamento: "Quando informado o número do adiantamento".
          if trim(cAdiantamento.Text) <> '' then begin
             try
                 Baixas.Append;
                        Baixas.FieldByName('Registro').Value           := GeraCodigo('PagarReceberBaixas', 'Registro');
                        Baixas.FieldByName('Empresa').Value            := UniMainModule.mEmpresaAtiva;
                        Baixas.FieldByName('Tipo').Value               := Plano.FieldByName('Tipo').AsString;
                        Baixas.FieldByName('Titulo').Value             := FieldbyName('Titulo').AsInteger;
                        Baixas.FieldByName('Data').Value               := FieldbyName('Data_Vencimento').AsDateTime;
                        Baixas.FieldByName('Valor').Value              := FieldbyName('Valor_Total').AsCurrency;
                        Baixas.FieldByName('Valor_Multa').Value        := FieldbyName('Valor_Multa').AsCurrency;
                        Baixas.FieldByName('Valor_Juros').Value        := FieldbyName('Valor_Juros').AsCurrency;
                        Baixas.FieldByName('Valor_Desconto').Value     := FieldbyName('Valor_Desconto').AsCurrency;
                        Baixas.FieldByName('Observacao').Value         := 'Valor referente a prestação de adiantamento de '+ cAdiantamento.Text;
                        Baixas.FieldByName('Compensacao').Value        := true;
                        Baixas.FieldByName('Compensacao_Numero').Value := FieldbyName('Beneficiario').asinteger;
                 Baixas.Post;
             except
                 on E:Exception do begin
                    LogErros('Baixas', 'Falha desconhecida, não pode efetuar a baixa de compensação do título!'+FieldByName('Titulo').asstring+#13+E.Message+')');
                 end;
             end;
             // Compensação de adiantamento á fornecedor.
             LancamentoContabil('FNCAF', fieldbyname('Titulo').asstring, fieldbyname('Tipo').asstring, Config.fieldbyname('Contab_Metodo').asinteger);  
             // Compensação de adiantamento á cliente.
             LancamentoContabil('FNCAC', fieldbyname('Titulo').asstring, fieldbyname('Tipo').asstring, Config.fieldbyname('Contab_Metodo').asinteger);
          end;

          // Lancamento contabil de provisão.
          if trim(Plano.FieldByName('Provisao_ContraPartida').asstring) <> '' then begin
             LancamentoContabil('FNPRV', fieldbyname('Titulo').asstring, fieldbyname('Tipo').asstring, Config.fieldbyname('Contab_Metodo').asinteger);
          end;

          Lista.Refresh;
          PegaBaixas;

          MessageBeep(MB_ICONINFORMATION);
          Alerta.Text := 'Lançamento financeiro salvo no banco de dados!';
          Alerta.Execute;
     end;

     LigaBotoes(true);
     Screen.Cursor := crDefault;
end;

procedure TfFinanceiro.CalculaCambio;
begin
      if Contratos.fieldbyname('Taxa_Cambial').asfloat > 0 then begin
         cVariacaoCambial.Value := ((cBxValor.Value/Contratos.fieldbyname('Taxa_Cambial').asfloat) * cTaxa_FechamentoCambio.Value) - cBxValor.Value;
         cTotalCambio.Value     := cBxValor.Value + cVariacaoCambial.Value;
         if cVariacaoCambial.Value > 0 then
            cVariacaoCambial.FieldLabel := 'Variação(Passiva)'
         else
            cVariacaoCambial.FieldLabel := 'Variação(Ativa)';
      end;
end;

procedure TfFinanceiro.FiltraBenef(Tipo:string);
begin
      with Beneficiario do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.Add('      ,CNPJ_CPF = case when CNPJ  <> '''' then');
           sql.Add('                       concat(substring(CNPJ,1,2),''.'',substring(CNPJ,3,3),''.'',substring(CNPJ,6,3),''/'',substring(CNPJ,9,4),''-'',substring(CNPJ,13,2))');
           sql.Add('                  else');
           sql.Add('                       concat(substring(CPF,1,3),''.'',substring(CPF,4,3),''.'',substring(CPF,7,3),''-'',substring(CPF,10,2)) ');
           sql.Add('                  end');
           sql.add('      ,Fornecedor');
           sql.add('      ,Cliente');
           sql.add('from Destinatarios');
           sql.add('where (isnull(CNPJ,'''')+isnull(CPF,'''')) <> '''' ');
           if Tipo = 'P' then begin
              sql.Add('and isnull(Fornecedor,0) = 1');
           end else begin
              sql.Add('and isnull(Cliente,0) = 1');
           end;
           sql.add('order by Nome');
           open;
      end;
end;



end.
