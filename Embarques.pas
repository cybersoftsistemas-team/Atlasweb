unit Embarques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid,
  uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Menus, uniMainMenu, FireDAC.Comp.DataSet, uniRadioGroup, uniDBComboBox,  uniMemo, uniMultiItem, unimDBToggle, uniCheckBox, uniSegmentedButton;

type
  TfEmbarques = class(TUniFrame)
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    pBarraPesq: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    Alerta: TUniSweetAlert;
    dsArmazens: TDataSource;
    dstLaudosComBL: TDataSource;
    dstFiliais: TDataSource;
    dsNavios: TDataSource;
    dstNotas: TDataSource;
    dsPortos: TDataSource;
    dsProdutos: TDataSource;
    dstSoma: TDataSource;
    tArmazens: TFDQuery;
    tLaudosComBL: TFDQuery;
    tFiliais: TFDQuery;
    tNavios: TFDQuery;
    tNotas: TFDQuery;
    tPortos: TFDQuery;
    tProdutos: TFDQuery;
    tSoma: TFDQuery;
    tTerminal: TFDQuery;
    tTmp: TFDQuery;
    tTmp2: TFDQuery;
    tProdutosCodigo: TIntegerField;
    PopupMenu1: TPopupMenu;
    tFiliaisCidade: TStringField;
    tFiliaisEstado: TStringField;
    tFiliaisNome: TStringField;
    tProdutosDescricao_Reduzida: TStringField;
    Grade: TuniDBGrid;
    GradeBL: TuniDBGrid;
    GradeLaudos: TUniDBGrid;
    ATIVO1: TuniMenuItem;
    EMANDAMENTO1: TuniMenuItem;
    ENCERRADO1: TuniMenuItem;
    Pasta: TUniPageControl;
    Panel4: TuniPanel;
    Panel6: TuniPanel;
    Panel7: TuniPanel;
    Panel9: TuniPanel;
    TabSheet1: TuniTabSheet;
    TabSheet2: TuniTabSheet;
    TabSheet4: TuniTabSheet;
    TabSheet5: TuniTabSheet;
    tEmbarques: TFDQuery;
    dsEmbarques: TDataSource;
    tEmbarquesRegistro: TIntegerField;
    tEmbarquesNavio: TSmallintField;
    tEmbarquesOrdem: TIntegerField;
    tEmbarquesProcesso: TStringField;
    tEmbarquesPremium: TFloatField;
    tEmbarquesTranshipment: TFloatField;
    tEmbarquesFator_Conversao: TFloatField;
    tEmbarquesDescarga_Trigger: TFloatField;
    tEmbarquesVariacao_Termica: TIntegerField;
    tEmbarquesData_Chegada: TSQLTimeStampField;
    tEmbarquesData_Estimada: TSQLTimeStampField;
    tEmbarquesData_Atracacao: TSQLTimeStampField;
    tEmbarquesData_Descarga: TSQLTimeStampField;
    tEmbarquesFilial: TSmallintField;
    tEmbarquesQuantidade_15: TFloatField;
    tEmbarquesQuantidade_20: TFloatField;
    tEmbarquesTipo_Descarga: TStringField;
    tEmbarquesValor_Demurrage: TCurrencyField;
    tEmbarquesTempo_Demurrage: TFloatField;
    tEmbarquesTotal_ME: TCurrencyField;
    tEmbarquesCusto_Navio: TCurrencyField;
    tEmbarquesObservacao: TMemoField;
    tEmbarquesStatus: TStringField;
    tEmbarquesData_Partida: TSQLTimeStampField;
    tEmbarquesQuantidade_Carga: TFloatField;
    tEmbarquesReferencia: TStringField;
    tEmbarquesNavio_Nome: TStringField;
    Panel11: TUniPanel;
    cFiltroStatus: TUniRadioGroup;
    cFiltroBL: TUniRadioGroup;
    cFiltroLaudo: TUniRadioGroup;
    cFiltroFilial: TUniDBLookupComboBox;
    UniScrollBox1: TUniScrollBox;
    Panel2: TUniPanel;
    cData_Estimada: TUniDBDateTimePicker;
    cData_Chegada: TUniDBDateTimePicker;
    cData_Atracacao: TUniDBDateTimePicker;
    cData_Descarga: TUniDBDateTimePicker;
    cTipo_Descarga: TUniDBEdit;
    cPremium: TUniDBEdit;
    cTranshipment: TUniDBEdit;
    cFator_Conversao: TUniDBEdit;
    cValor_Demurrage: TUniDBEdit;
    cTempo_Demurrage: TUniDBEdit;
    cObservacao: TUniDBMemo;
    cStatus: TUniDBComboBox;
    cData_Partida: TUniDBDateTimePicker;
    cQuantidade_Carga: TUniDBEdit;
    cDifer: TUniFormattedNumberEdit;
    cReferencia: TUniDBEdit;
    UniSimplePanel1: TUniSimplePanel;
    tBL: TFDQuery;
    dsBL: TDataSource;
    dsLaudos: TDataSource;
    tLaudos: TFDQuery;
    cDescargaLT: TUniFormattedNumberEdit;
    cVariacao_Termica: TUniDBEdit;
    cTotal_ME: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    GradeSoma: TUniDBGrid;
    tSomaDescricao: TStringField;
    tSomaM3: TFloatField;
    tSomaLITROS: TFloatField;
    cNavio: TUniDBLookupComboBox;
    tBLRegistro: TIntegerField;
    tBLNavio1: TIntegerField;
    tBLNavio: TIntegerField;
    tBLBL: TStringField;
    tBLData_Emissao: TSQLTimeStampField;
    tBLTon_Vac: TFloatField;
    tBLTon_Air: TFloatField;
    tBLQuantidade_M315: TFloatField;
    tBLQuantidade_M320: TFloatField;
    tBLQuantidade_LT20: TFloatField;
    tBLEndossado: TBooleanField;
    tBLBloqueado: TBooleanField;
    tBLObservacao: TMemoField;
    tBLLaudo: TStringField;
    tBLQuantidade_LT15: TFloatField;
    tBLPorto: TStringField;
    tBLArmazem: TSmallintField;
    tBLQuantidade_EmbM315: TFloatField;
    tBLQuantidade_EmbLT15: TFloatField;
    tBLQuantidade_EmbM320: TFloatField;
    tBLQuantidade_EmbLT20: TFloatField;
    tBLCodigo_Mercadoria: TIntegerField;
    tBLEntreposto: TBooleanField;
    tLaudosRegistro: TLargeintField;
    tLaudosLaudo: TStringField;
    tLaudosNavio: TIntegerField;
    tLaudosData_Atracacao: TDateField;
    tLaudosData_Operacao: TDateField;
    tLaudosQuantidade_M320: TFloatField;
    tLaudosQuantidade_LT20: TFloatField;
    tLaudosQuantidade_RecebidaM320: TFloatField;
    tLaudosQuantidade_RecebidaLT20: TFloatField;
    tLaudosVariacao_DesLT: TFloatField;
    tLaudosVariacao_DesPerc: TFloatField;
    tLaudosObservacao: TMemoField;
    tLaudosVariacao_EmbLT: TFloatField;
    tLaudosVariacao_EmbPerc: TFloatField;
    tFiliaisCNPJ: TStringField;
    tFiliaisFilial: TSmallintField;
    tEmbarquesEmpresa: TStringField;
    PanelBL: TUniContainerPanel;
    cBL: TUniDBEdit;
    cData_Emissao: TUniDBDateTimePicker;
    cTon_Vac: TUniDBEdit;
    cTon_Air: TUniDBEdit;
    cQuantidade_M315: TUniDBEdit;
    cQuantidade_LT20: TUniDBEdit;
    cQuantidade_M320: TUniDBEdit;
    cQuantidade_LT15: TUniDBEdit;
    cPorto: TUniDBComboBox;
    cArmazem: TUniDBLookupComboBox;
    cQuantidade_EmbM315: TUniDBEdit;
    cQuantidade_EmbLT20: TUniDBEdit;
    cQuantidade_EmbM320: TUniDBEdit;
    cQuantidade_EmbLT15: TUniDBEdit;
    cProduto: TUniDBLookupComboBox;
    cDI: TUniDBEdit;
    UniPanel1: TUniPanel;
    NavegaBL: TUniDBNavigator;
    bAdicionarBL: TUniSpeedButton;
    bEditarBL: TUniSpeedButton;
    bExcluirBL: TUniSpeedButton;
    bCancelarBL: TUniSpeedButton;
    bGravarBL: TUniSpeedButton;
    PanelLaudo: TUniContainerPanel;
    cVariacao_EmbLT: TUniDBEdit;
    cDataOper: TUniDBDateTimePicker;
    cVariacao_EmbPerc: TUniDBEdit;
    cLaudo: TUniDBEdit;
    cVariacao_DesLT: TUniDBEdit;
    cVariacao_DesPerc: TUniDBEdit;
    tBLDUIMP: TStringField;
    tBLEmpresa: TStringField;
    tLaudosEmpresa: TStringField;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    cDataAtr: TUniDBDateTimePicker;
    cQtdeRecM320: TUniDBFormattedNumberEdit;
    cQtdeRecLT20: TUniDBFormattedNumberEdit;
    Panel13: TUniPanel;
    GradeLaudosComBL: TUniDBGrid;
    Panel10: TUniPanel;
    bAddLaudoBL: TUniButton;
    bRemLaudoBL: TUniButton;
    PanelLaudoBotoes: TUniPanel;
    NavegaLaudo: TUniDBNavigator;
    bAdicionarLaudo: TUniSpeedButton;
    bEditarLaudo: TUniSpeedButton;
    bExcluirLaudo: TUniSpeedButton;
    bCancelarLaudo: TUniSpeedButton;
    bGravarLaudo: TUniSpeedButton;
    cProcesso: TUniDBEdit;
    cFilial: TUniDBLookupComboBox;
    tNotasNota: TIntegerField;
    tNotasData: TDateField;
    tNotasSE: TStringField;
    tNotasEmissao: TStringField;
    tNotasDestinatario: TStringField;
    tNotasCNPJ: TStringField;
    tNotasProcesso: TStringField;
    tNotasTotal: TCurrencyField;
    tNotasQuantidade: TFloatField;
    UniDBGrid1: TUniDBGrid;
    UniPanel4: TUniPanel;
    brTotais: TUniSegmentedButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure tEmbarquesBeforePost(DataSet: TDataSet);
    procedure tEmbarquesBeforeDelete(DataSet: TDataSet);
    procedure cQuantidade_M315Exit(Sender: TObject);
    procedure cQuantidade_M320Exit(Sender: TObject);
    procedure cNavioExit(Sender: TObject);
    procedure cQtdeRecM320Exit(Sender: TObject);
    procedure cFiltroStatusClick(Sender: TObject);
    procedure GradeTitleClick(Column: TUniDBGridColumn);
    procedure cFiltroFilialChange(Sender: TObject);
    procedure tEmbarquesAfterScroll(DataSet: TDataSet);
    procedure bAdicionarBLClick(Sender: TObject);
    procedure bCancelarBLClick(Sender: TObject);
    procedure bEditarBLClick(Sender: TObject);
    procedure bExcluirBLClick(Sender: TObject);
    procedure bGravarBLClick(Sender: TObject);
    procedure GradeDblClick(Sender: TObject);
    procedure bAdicionarLaudoClick(Sender: TObject);
    procedure bGravarLaudoClick(Sender: TObject);
    procedure bCancelarLaudoClick(Sender: TObject);
    procedure bEditarLaudoClick(Sender: TObject);
    procedure bExcluirLaudoClick(Sender: TObject);
    procedure cPesquisaClick(Sender: TObject);
    procedure tLaudosAfterScroll(DataSet: TDataSet);
    procedure bAddLaudoBLClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bRemLaudoBLClick(Sender: TObject);
  private
    procedure Filtra;
    procedure PegaItens;
    procedure LigaForms;
    { Private declarations }
  public
    { Public declarations }
     DirOrdem
    ,CampoOrdem: string;
  end;

implementation

{$R *.dfm}

uses MainModule, Main, EmbarquesLaudosBL;

procedure TfEmbarques.bAddLaudoBLClick(Sender: TObject);
begin
      LaudosBL.mNavio := tEmbarques.fieldbyname('Navio').asinteger;
      LaudosBL.mLaudo := tLaudos.fieldbyname('Laudo').asstring;
      LaudosBL.ShowModal;
      tLaudosComBL.Refresh;
end;

procedure TfEmbarques.bAdicionarBLClick(Sender: TObject);
begin
      with tBL do begin
           try
               pBarraNav.Enabled := false;
               Append;
               AtivaBotoes(NavegaBL, bAdicionarBL, bEditarBL, bExcluirBL, bGravarBL, bCancelarBL);
               LigaForms;
               cPorto.SetFocus;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfEmbarques.bAdicionarClick(Sender: TObject);
begin
      with tEmbarques do begin
           try
               Append;
                    FieldByName('Status').value  := 'ATIVO';
                    FieldByName('Empresa').value := UniMainModule.mEmpresaAtiva;

               Pasta.ActivePageIndex := 1;
               cFilial.SetFocus;
               AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bGravar, bCancelar, Pasta);
               LigaForms;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfEmbarques.bAdicionarLaudoClick(Sender: TObject);
begin
      with tLaudos do begin
           try
               pBarraNav.Enabled := false;
               Append;
               AtivaBotoes(NavegaLaudo, bAdicionarLaudo, bEditarLaudo, bExcluirLaudo, bGravarLaudo, bCancelarLaudo);
               LigaForms;
               cLaudo.SetFocus;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfEmbarques.bExcluirBLClick(Sender: TObject);
begin
     with tBL do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('BL').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfEmbarques.bExcluirClick(Sender: TObject);
begin
     bExcluir.Enabled := false;
     with tEmbarques do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Ordem').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
     bExcluir.Enabled := true;
end;

procedure TfEmbarques.bExcluirLaudoClick(Sender: TObject);
begin
     with tLaudos do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Laudo').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfEmbarques.bGravarBLClick(Sender: TObject);
begin
      with tBL do begin
           if CampoVazio(cPorto,'') then abort;
           if CampoVazio(cArmazem,'') then abort;
           if CampoVazio(cProduto,'') then abort;
           if CampoVazio(cBL,'') then abort;
           if CampoVazio(cData_Emissao,'') then abort;
           if State = dsInsert then begin
              fieldByName('Registro').Value := GeraCodigo('EmbarquesBL', 'Registro');
              fieldbyname('Empresa').Value  := tEmbarques.fieldbyname('Empresa').asstring;
           end;
           try
               Post;
               AtivaBotoes(NavegaBL, bAdicionarBL, bEditarBL, bExcluirBL, bGravarBL, bCancelarBL);
               LigaForms;
               pBarraNav.Enabled := true;
               Alerta.TitleText := 'Sucesso!';
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfEmbarques.bGravarClick(Sender: TObject);
begin
      with tEmbarques do begin
           if (State = dsInsert) then begin
              FieldByName('Codigo').Value := GeraCodigo('Embarques', 'Codigo');
           end;
           if (State = dsInsert) and (Existe(tEmbarques, 'Ordem', FieldByName('Ordem').AsString)) then begin
              MessageDlg('Já existe um "Navio" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cFilial.SetFocus;
              Abort;
           end;
           if FieldByName('Navio').asinteger = 0 then begin
              MessageDlg('O campo "Navio" não pode ficar em branco!', mtError, [mbOK]);
              cNavio.SetFocus;
              Abort;
           end;
           try
               FieldByName('Filial').value  := tFiliais.fieldbyname('Filial').asinteger;
               Post;
               AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bGravar, bCancelar, Pasta);
               LigaForms;
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfEmbarques.bGravarLaudoClick(Sender: TObject);
begin
      with tLaudos do begin
           if CampoVazio(cLaudo,'') then abort;
           if CampoVazio(cDataAtr,'') then abort;
           if CampoVazio(cDataOper,'') then abort;
           if CampoVazio(cQtdeRecM320,'') then abort;
           if CampoVazio(cQtdeRecLT20,'') then abort;
           if State = dsInsert then begin
              fieldByName('Registro').Value := GeraCodigo('EmbarquesLaudo', 'Registro');
              fieldbyname('Empresa').Value  := tEmbarques.fieldbyname('Empresa').asstring;
              fieldbyname('Navio').value    := tEmbarques.FieldByName('Navio').AsInteger;
           end;
           try
               Post;
               AtivaBotoes(NavegaLaudo, bAdicionarLaudo, bEditarLaudo, bExcluirLaudo, bGravarLaudo, bCancelarLaudo);
               LigaForms;
               pBarraNav.Enabled := true;
               Alerta.TitleText := 'Sucesso!';
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfEmbarques.bCancelarBLClick(Sender: TObject);
begin
      tBL.Cancel;
      AtivaBotoes(NavegaBL, bAdicionarBL, bEditarBL, bExcluirBL, bGravarBL, bCancelarBL);
      LigaForms;
      pBarraNav.Enabled := true;
end;

procedure TfEmbarques.bCancelarClick(Sender: TObject);
begin
      tEmbarques.Cancel;
      AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bGravar, bCancelar, Pasta);
      LigaForms;
end;

procedure TfEmbarques.bCancelarLaudoClick(Sender: TObject);
begin
      tLaudos.Cancel;
      AtivaEdicao(NavegaLaudo, bAdicionarLaudo, bEditarLaudo, bExcluirLaudo, bGravarLaudo, bCancelarLaudo, Pasta);
      pBarraNav.Enabled := true;
end;

procedure TfEmbarques.bEditarBLClick(Sender: TObject);
begin
     try
         pBarraNav.Enabled := false;
         tBL.Edit;
         AtivaBotoes(NavegaBL, bAdicionarBL, bEditarBL, bExcluirBL, bGravarBL, bCancelarBL);
         LigaForms;
         cPorto.SetFocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfEmbarques.bEditarClick(Sender: TObject);
begin
      with tEmbarques do begin
           try
               Edit;
               Pasta.ActivePageIndex := 1;
               cFilial.SetFocus;
               AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bGravar, bCancelar, Pasta);
               LigaForms;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfEmbarques.bEditarLaudoClick(Sender: TObject);
begin
     try
         pBarraNav.Enabled := false;
         tLaudos.Edit;
         AtivaBotoes(NavegaLaudo, bAdicionarLaudo, bEditarLaudo, bExcluirLaudo, bGravarLaudo, bCancelarLaudo);
         LigaForms;
         cLaudo.SetFocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfEmbarques.UniFrameDestroy(Sender: TObject);
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

procedure TfEmbarques.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfEmbarques.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     DirOrdem   := 'desc';
     CampoOrdem := 'Navio';
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             //TuniPanel(Components[i]).Top   := 30;
             //TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;
      
      AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bGravar, bCancelar, Pasta);
      AtivaEdicao(NavegaBL, bAdicionarBL, bEditarBL, bExcluirBL, bGravarBL, bCancelarBL, Pasta);
      AtivaEdicao(NavegaLaudo, bAdicionarLaudo, bEditarLaudo, bExcluirLaudo, bGravarLaudo, bCancelarLaudo, Pasta);
      LigaForms;

      Pasta.ActivePageIndex := 0;
      with tNavios do begin
           sql.clear;
           sql.add('select *');
           sql.add('from Navios');
           sql.add('order by Nome');
           open;
      end;
      with tFiliais do begin
           sql.Clear;
           sql.Add('select distinct');
           sql.Add('       CNPJ');
           sql.Add('      ,Filial = Numero_Filial');
           sql.Add('      ,Nome   = cast(iif(Numero_Filial > 0, ''FILIAL ''+cast(Numero_Filial as varchar(6)), ''MATRIZ'') as varchar(10))');
           sql.Add('      ,Cidade = cast(upper((select Nome from Municipios where Codigo = Municipio_Codigo)) as varchar(30))');
           sql.Add('      ,Estado = cast(Estado as varchar(4))');
           sql.Add('from Empresas');
           sql.add('where SUBSTRING(CNPJ, 1, 8) = '+quotedstr(Copy(UniMainModule.mEmpresaAtiva, 1, 8)));
           sql.add('order by Numero_Filial');
           open;
      end;
      with tPortos do begin
           sql.clear;
           sql.add('select distinct Porto from EmbarquesBL where isnull(Porto, '''') <> '''' order by Porto');
           open;
           first;
           cPorto.Clear;
           while not eof do begin
                 cPorto.Items.add(fieldbyname('Porto').asstring);
                 next;
           end;
      end;
      with tArmazens do begin
           sql.Clear;
           sql.Add('select Codigo, CNPJ, Nome, Municipio from Destinatarios');
           sql.Add('where Armazem = 1');
           sql.Add('order by Nome');
           open;
      end;
      with tProdutos do begin
           sql.Clear;
           sql.Add('select Codigo');
           sql.add('      ,Descricao_Reduzida');
           sql.add('from Produtos');
           sql.Add('where isnull(Desativado, 0) = 0');
           sql.Add('and Origem_Mercadoria in(1,2,6,7)');
           sql.Add('order by Descricao_Reduzida');
           open;
      end;

      Filtra;
end;
procedure TfEmbarques.cPesquisaClick(Sender: TObject);
begin
     if cPesquisa.text = '' then filtra;
end;

procedure TfEmbarques.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfEmbarques.bPesquisaClick(Sender: TObject);
begin
     tEmbarques.Cancel;
     with tEmbarques do begin
          sql.Clear;
          sql.Add('select *, Navio_Nome = (select Nome from Navios where Codigo = Navio) from Embarques where Referencia like '+quotedstr('%'+cPesquisa.text+'%'));
          Open;
          if recordcount = 0 then begin
             sql.Clear;
             sql.Add('select *, Navio_Nome = (select Nome from Navios where Codigo = Navio) from Embarques where Processo like '+quotedstr('%'+cPesquisa.text+'%'));
             Open;
             if recordcount = 0 then begin
                sql.Clear;
                sql.Add('select *, Navio_Nome = (select Nome from Navios where Codigo = Navio) from Embarques where Navio in(select Codigo from Navios where Nome like '+quotedstr('%'+cPesquisa.text+'%')+')');
                Open;
             end;
          end;

          if recordcount = 0 then begin
             MessageDlg('Nenhum registro encontrado!', mtError, [mbOK]);
          end;
     end;
end;

procedure TfEmbarques.bRemLaudoBLClick(Sender: TObject);
var
   i: integer;
begin
      if MessageDlg('Deseja realmente remover os BL''s selecionados?', mtConfirmation,mbYesNo) = mrNo then abort;
      with GradeLaudosComBL do begin
           if SelectedRows.Count > 0 then begin
              tLaudosComBL.DisableControls;
              try
                 for i := 0 to pred(SelectedRows.Count) do begin
                     tLaudosComBL.Bookmark := SelectedRows[i];
                     with tTmp do begin
                          sql.clear;
                          sql.Add('update EmbarquesBL set Laudo = null where Navio = :pNavio and Laudo = :pLaudo and BL = :pBL');
                          parambyname('pNavio').Value := tEmbarques.fieldbyname('Navio').asinteger;
                          parambyname('pLaudo').Value := tLaudos.fieldbyname('Laudo').asstring;
                          parambyname('pBL').Value    := tLaudosComBL.FieldByName('BL').asstring;
                          execute;
                     end;
                 end;
              finally
                 tLaudosComBL.Refresh;
             end;
           end;
      end;
end;

procedure TfEmbarques.tEmbarquesBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Navio_Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfEmbarques.tLaudosAfterScroll(DataSet: TDataSet);
begin
     with tLaudosComBL do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from  EmbarquesBL');
          sql.add('where Navio = :pNavio');
          sql.add('and Laudo = :pLaudo');
          sql.add('order by BL');
          parambyname('pNavio').Value := tEmbarques.fieldbyname('Navio').asinteger;
          parambyname('pLaudo').Value := tLaudos.fieldbyname('Laudo').asstring;
          open;
     end;
end;

procedure TfEmbarques.tEmbarquesAfterScroll(DataSet: TDataSet);
begin
     PegaItens;
end;

procedure TfEmbarques.tEmbarquesBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Navio_Nome').AsString, 'Delete');
end;

procedure TfEmbarques.cFiltroFilialChange(Sender: TObject);
begin
     Filtra;
end;

procedure TfEmbarques.cFiltroStatusClick(Sender: TObject);
begin
     Filtra;
end;

procedure TfEmbarques.cQuantidade_M315Exit(Sender: TObject);
begin
     with tBL do begin
          fieldbyname('Quantidade_LT15').Value := fieldbyname('Quantidade_M315').AsFloat * 1000;
          if fieldbyname('Quantidade_EmbM315').asfloat <= 0 then begin
             fieldbyname('Quantidade_EmbM315').Value := fieldbyname('Quantidade_M315').AsFloat;
             fieldbyname('Quantidade_EmbLT15').Value := fieldbyname('Quantidade_M315').AsFloat * 1000;
          end;
     end;
end;

procedure TfEmbarques.cQuantidade_M320Exit(Sender: TObject);
begin
     with tBL do begin
          fieldbyname('Quantidade_LT20').Value := fieldbyname('Quantidade_M320').AsFloat * 1000;
          if fieldbyname('Quantidade_EmbM320').asfloat <= 0 then begin
             fieldbyname('Quantidade_EmbM320').Value := fieldbyname('Quantidade_M320').AsFloat;
             fieldbyname('Quantidade_EmbLT20').Value := fieldbyname('Quantidade_M320').AsFloat * 1000;
          end;
     end;
end;

procedure TfEmbarques.cNavioExit(Sender: TObject);
begin
     with tEmbarques do begin
          if State = dsInsert then begin
             cReferencia.Text := ApenasNumeros(FieldByName('Navio').AsString);
          end;
     end;
end;

procedure TfEmbarques.cQtdeRecM320Exit(Sender: TObject);
begin
     with tLaudos do begin
          fieldbyname('Quantidade_RecebidaLT20').value  := fieldbyname('Quantidade_RecebidaM320').asfloat * 1000;
     end;
end;

procedure TfEmbarques.Filtra;
begin
     with tEmbarques do begin
          sql.Clear;
          sql.Add('select *');
          sql.add('      ,Navio_Nome = (select Nome from Navios where Codigo = Navio)');
          sql.Add('from Embarques cn');
          sql.add('where Codigo is not null');
          if cFiltroStatus.ItemIndex > 0 then begin
             sql.add('and Status = '+quotedstr(cFiltroStatus.Items[cFiltroStatus.ItemIndex]));
          end;
          if cFiltroBL.ItemIndex = 1 then begin
             sql.add('and (select count(*) from Embarques emb where emb.Navio = cn.Ordem) > 0');
          end;
          if cFiltroBL.ItemIndex = 2 then begin
             sql.add('and (select count(*) from Embarques emb where emb.Navio = cn.Ordem) = 0');
          end;
          if cFiltroLaudo.ItemIndex = 1 then begin
             sql.add('and (select count(*) from Embarques emb where emb.Navio = cn.Ordem) > 0');
          end;
          if cFiltroLaudo.ItemIndex = 2 then begin
             sql.add('and (select count(*) from Embarques emb where emb.Navio = cn.Ordem) = 0');
          end;
          if cFiltroFilial.Text <> '' then begin
             sql.add('and Filial = :pFilial');
             parambyname('pFilial').AsInteger := cFiltroFilial.KeyValue;
          end;
          sql.add('order by '+CampoOrdem+' '+DirOrdem);
          //sql.SaveToFile('c:\temp\Embarques.sql');
          open;
     end;
          
end;
                          
procedure TfEmbarques.GradeDblClick(Sender: TObject);
begin
     try
         AtivaEdicao(Navega, bAdicionar, bEditar, bExcluir, bGravar, bCancelar, Pasta);
         tEmbarques.Edit;
         Pasta.ActivePageIndex := 1;
         cFilial.SetFocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfEmbarques.GradeTitleClick(Column: TUniDBGridColumn);
begin
     DirOrdem   := iif(DirOrdem = 'asc', 'desc', 'asc');
     CampoOrdem := Column.FieldName;
     Filtra;
end;

procedure TfEmbarques.PegaItens;
begin
     if tEmbarques.state <= dsBrowse then begin
        with tNotas do begin
             sql.Clear;
             sql.Add('select Nota');
             sql.Add('      ,Data = Data_Emissao');
             sql.Add('      ,SE = case when Saida_Entrada = 0 then ''ENTRADA'' else ''SAÍDA'' end');
             sql.add('      ,Emissao = ''PROPRIA'' ');
             sql.Add('      ,Destinatario = Destinatario_Nome');
             sql.Add('      ,CNPJ = Destinatario_CNPJ_CPF');
             sql.Add('      ,Processo');
             sql.Add('      ,Total = Valor_TotalNota');
             sql.Add('      ,Quantidade = (select sum(Quantidade) from NotasItens ni where ni.Nota = nf.Nota and ni.Data = nf.Data_Emissao)');
             sql.Add('from  NotasFiscais nf');
             sql.add('where Nota in(select Nota from NotasItensNavios where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Nota');
             sql.add('      ,Data = Data_Emissao');
             sql.add('      ,SE = ''ENTRADA'' ');
             sql.add('      ,Emissao = ''TERCEIROS'' ');
             sql.add('      ,Destinatario = (select Nome from Destinatarios dst where dst.Codigo = Fornecedor)');
             sql.Add('      ,CNPJ = (select CNPJ from Destinatarios dst where dst.Codigo = Fornecedor)');
             sql.add('      ,Processo');
             sql.add('      ,Total = Valor_TotalNota');
             sql.Add('      ,Quantidade = (select sum(Quantidade) from NotasTerceirosItens nti where nti.Nota = nt.Nota and nti.Data_Emissao = nt.Data_Emissao and nti.Fornecedor = nt.Fornecedor)');
             sql.add('from NotasTerceiros nt');
             sql.add('where Nota in(select Nota from NotasTerceirosItens where Navio = :pNavio)');
             sql.add('order by Data, SE');
             parambyname('pNavio').asinteger := tEmbarques.fieldbyname('Navio').asinteger;
             //sql.SaveToFile('c:\temp\Embarques_Notas_Fiscais.sql');
             open;
        end;     
        with tTmp do begin
             sql.clear;
             sql.add('select NotasE = (select count(distinct Nota) from NotasItens where Navio = :pNavio and Saida_Entrada = 0)');
             sql.add('      ,NotasS = (select count(distinct Nota) from NotasItens where Navio = :pNavio and Saida_Entrada = 1)');
             sql.add('      ,QtdeE  = (select sum(Quantidade) from NotasItens where Navio = :pNavio and Saida_Entrada = 0)');
             sql.add('      ,QtdeS  = (select sum(Quantidade) from NotasItens where Navio = :pNavio and Saida_Entrada = 1)');
             sql.add('      ,TotalE = (select sum(Valor_TotalNota) from NotasFiscais where Nota in(select Nota from NotasItensNavios where Navio = :pNavio) and Saida_Entrada = 0)');
             sql.add('      ,TotalS = (select sum(Valor_TotalNota) from NotasFiscais where Nota in(select Nota from NotasItensNavios where Navio = :pNavio) and Saida_Entrada = 1)');
             parambyname('pNavio').AsInteger := tEmbarques.fieldbyname('Navio').AsInteger;
             open;
             brTotais.Items[0].Caption := 'Notas de Entrada: ' + fieldbyname('NotasE').asstring;
             brTotais.Items[1].Caption := 'Quantidade Entrada: ' + FormatFloat(',##0.000', fieldbyname('QtdeE').asfloat);
             brTotais.Items[2].Caption := 'Total de Entradas: ' + FormatFloat('R$ ,##0.00', fieldbyname('TotalE').ascurrency);
             brTotais.Items[3].Caption := 'Notas de Saída: ' + fieldbyname('NotasS').asstring;
             brTotais.Items[4].Caption := 'Quantidade Saída: ' + FormatFloat(',##0.000', fieldbyname('QtdeS').asfloat);
             brTotais.Items[5].Caption := 'Total de Saídas: ' + FormatFloat('R$ ,##0.00', fieldbyname('TotalS').ascurrency);
             brTotais.Items[6].Caption := 'Qtde (Entrada-Saídas): ' + FormatFloat(',##0.000',fieldbyname('NotasE').asfloat-fieldbyname('NotasS').asfloat);
        end;
        with tBL do begin
             sql.Clear;
             sql.Add('select *');
             sql.Add('from  EmbarquesBL');
             sql.add('where Navio = :pNavio');
             sql.add('order by BL');
             parambyname('pNavio').Value := tEmbarques.fieldbyname('Navio').asinteger;
             open;
        end;
        with tLaudos do begin
             sql.Clear;
             sql.Add('select *');
             sql.Add('from  EmbarquesLaudo');
             sql.add('where Navio = :pNavio');
             sql.add('order by Laudo');
             parambyname('pNavio').Value := tEmbarques.fieldbyname('Navio').asinteger;
             open;
             bAddLaudoBL.Enabled := recordcount > 0;
             bRemLaudoBL.Enabled := recordcount > 0;
             //bRemTodosLaudoBl.Enabled := recordcount > 0;
        end;
        with tSoma do begin
             sql.clear;
             sql.add('--[ 15º GRAUS ]----------------------------------------------------------------------------------------------------------');
             sql.add('select Descricao = ''Total 15º'' ');
             sql.add('      ,M3 = (select sum(Quantidade_m315) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(Quantidade_m315*1000) from EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Descricao = ''Total Não Endossado 15º'' ');
             sql.add('      ,M3 = (select sum(iif(Endossado = 0, Quantidade_m315, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(iif(Endossado = 0, Quantidade_m315*1000, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Descricao = ''Total Endossado 15º'' ');
             sql.add('      ,M3 = (select sum(iif(Endossado = 1, Quantidade_m315, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(iif(Endossado = 1, Quantidade_m315*1000, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Descricao = ''Total não Bloqueado 15º'' ');
             sql.add('      ,M3 = (select sum(iif(Bloqueado = 0, Quantidade_m315, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(iif(Bloqueado = 0, Quantidade_m315*1000, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Descricao = ''Total Bloqueado 15º'' ');
             sql.add('      ,M3 = (select sum(iif(Bloqueado = 1, Quantidade_m315, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(iif(Bloqueado = 1, Quantidade_m315*1000, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('--[ 20º GRAUS ]----------------------------------------------------------------------------------------------------------');
             sql.add('select Descricao = ''Total 20º'' ');
             sql.add('      ,M3 = (select sum(Quantidade_m320) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(Quantidade_m320*1000) from EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Descricao = ''Total Não Endossado 20º'' ');
             sql.add('      ,M3 = (select sum(iif(Endossado = 0, Quantidade_m320, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(iif(Endossado = 0, Quantidade_m320*1000, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Descricao = ''Total Endossado 20º'' ');
             sql.add('      ,M3 = (select sum(iif(Endossado = 1, Quantidade_m320, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(iif(Endossado = 1, Quantidade_m320*1000, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Descricao = ''Total não Bloqueado 20º'' ');
             sql.add('      ,M3 = (select sum(iif(Bloqueado = 0, Quantidade_m320, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(iif(Bloqueado = 0, Quantidade_m320*1000, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('union all');
             sql.add('select Descricao = ''Total Bloqueado 20º'' ');
             sql.add('      ,M3 = (select sum(iif(Bloqueado = 1, Quantidade_m320, 0)) from  EmbarquesBL where Navio = :pNavio)');
             sql.add('      ,LITROS = (select sum(iif(Bloqueado = 1, Quantidade_m320*1000, 0)) from  EmbarquesBL where Navio = :pNavio)');
             parambyname('pNavio').AsInteger := tEmbarques.fieldbyname('Ordem').AsInteger;
             open;
        end;
        with tTmp do begin
             sql.clear;
             sql.add('select Total_LT20 = sum(Quantidade_LT20)');
             sql.add('from   EmbarquesBL where Navio = :pNavio');
             parambyname('pNavio').AsInteger := tEmbarques.fieldbyname('Ordem').AsInteger;
             open;
             cDifer.Value := tEmbarques.fieldbyname('Quantidade_Carga').AsFloat - fieldbyname('Total_LT20').AsFloat;
        end;
        with tLaudosComBL do begin
             sql.Clear;
             sql.Add('select *');
             sql.Add('from  EmbarquesBL');
             sql.add('where Navio = :pNavio');
             sql.add('and Laudo = :pLaudo');
             sql.add('order by BL');
             parambyname('pNavio').Value := tEmbarques.fieldbyname('Navio').asinteger;
             parambyname('pLaudo').Value := tLaudos.fieldbyname('Laudo').asstring;
             open;
        end;
     end;
end;

procedure TfEmbarques.LigaForms;
begin
      Panel7.Enabled     := not (tEmbarques.State in[dsInsert, dsEdit]) and not (tLaudos.State in[dsInsert, dsEdit]);
      Panel11.Enabled    := not (tEmbarques.State in[dsInsert, dsEdit]) and not (tLaudos.State in[dsInsert, dsEdit]);
      PanelBL.Enabled    := tBl.State in[dsInsert, dsEdit];
      Panel4.Enabled     := not (tEmbarques.State in[dsInsert, dsEdit]) and not (tBL.State in[dsInsert, dsEdit]);
      PanelLaudo.Enabled := tLaudos.State in[dsInsert, dsEdit];
      Panel10.Enabled    := not (tLaudos.State in[dsInsert, dsEdit]);
      Panel13.Enabled    := not (tLaudos.State in[dsInsert, dsEdit]);
end;


end.
