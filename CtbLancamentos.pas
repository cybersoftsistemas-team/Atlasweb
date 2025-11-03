unit CtbLancamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, 
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox,
  UniGroupBox, uniSpinEdit, unimToggle, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniSweetAlert, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  uniMemo, uniMultiItem, uniDBComboBox, uniLabel, Funcoes, DateUtils, uniCheckBox;

type
  TfCtbLancamentos = class(TUniFrame)
    pBarraNav: TUniPanel;
    bFechar: TUniSpeedButton;
    Pasta: TUnipageControl;
    Alerta: TUniSweetAlert;
    tTotalizaCredAno: TCurrencyField;
    tTotalizaCredDia: TCurrencyField;
    tTotalizaCredLote: TCurrencyField;
    tTotalizaCredMes: TCurrencyField;
    tTotalizaDebAno: TCurrencyField;
    tTotalizaDebDia: TCurrencyField;
    tTotalizaDebLote: TCurrencyField;
    tTotalizaDebMes: TCurrencyField;
    tTotalizaDifAno: TCurrencyField;
    tTotalizaDifDia: TCurrencyField;
    tTotalizaDifLote: TCurrencyField;
    tTotalizaDifMes: TCurrencyField;
    dstBenef: TDataSource;
    dstEmpresas: TDataSource;
    dstPlano: TDataSource;
    dstProcessos: TDataSource;
    dstTotaliza: TDataSource;
    tBenef: TFDQuery;
    tData: TFDQuery;
    tEmpresas: TFDQuery;
    tMes: TFDQuery;
    tPlano: TFDQuery;
    tProcessos: TFDQuery;
    tTmp: TFDQuery;
    tTotaliza: TFDQuery;
    tTotalizaLanAno: TIntegerField;
    tTotalizaLanDia: TIntegerField;
    tTotalizaLanLote: TIntegerField;
    tTotalizaLanMes: TIntegerField;
    tTotalizaLote: TIntegerField;
    tTotalizaLotesAno: TIntegerField;
    tTotalizaLotesDia: TIntegerField;
    tTotalizaLotesMes: TIntegerField;
    Lancamentos: TFDQuery;
    dsLancamentos: TDataSource;
    pLista: TUniTabSheet;
    UniPanel1: TUniPanel;
    Panel8: TUniPanel;
    GroupBox1: TUniGroupBox;
    cDebLote: TUniDBEdit;
    cDifLote: TUniDBEdit;
    cCredLote: TUniDBEdit;
    cLanLote: TUniDBEdit;
    cLote: TUniDBEdit;
    UniPanel2: TUniPanel;
    gLotes: TUniDBGrid;
    gLancamentos: TUniDBGrid;
    UniGroupBox3: TUniGroupBox;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniGroupBox4: TUniGroupBox;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniGroupBox5: TUniGroupBox;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    UniDBEdit16: TUniDBEdit;
    UniDBEdit17: TUniDBEdit;
    tHistoricos: TFDQuery;
    dstHistoricos: TDataSource;
    tTipoDoc: TFDQuery;
    dsTipoDoc: TDataSource;
    UniTabSheet1: TUniTabSheet;
    UniScrollBox3: TUniScrollBox;
    UniPanel5: TUniPanel;
    pFichaLote: TUniPanel;
    UniPanel7: TUniPanel;
    pFichaLan: TUniPanel;
    cConta_Credito: TUniDBLookupComboBox;
    cConta_Debito: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBEdit21: TUniDBEdit;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    cEmpresaLan: TUniDBEdit;
    cHistorico_Codigo: TUniDBEdit;
    cHistorico_Complemento: TUniDBMemo;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    cHistorico: TUniDBLookupComboBox;
    UniPanel6: TUniPanel;
    NavLote: TUniDBNavigator;
    bAdLote: TUniSpeedButton;
    bEdLote: TUniSpeedButton;
    bExcLote: TUniSpeedButton;
    bCancLote: TUniSpeedButton;
    bGravLote: TUniSpeedButton;
    cDescricao: TUniDBEdit;
    UniDBDateTimePicker3: TUniDBDateTimePicker;
    UniDBEdit26: TUniDBEdit;
    UniDBEdit27: TUniDBEdit;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    cEmpresa: TUniDBLookupComboBox;
    UniPanel8: TUniPanel;
    NavLan: TUniDBNavigator;
    bAdLan: TUniSpeedButton;
    bEdLan: TUniSpeedButton;
    bExcLan: TUniSpeedButton;
    bCancLan: TUniSpeedButton;
    bGravLan: TUniSpeedButton;
    tLotes: TFDQuery;
    dstLotes: TDataSource;
    UniDBEdit18: TUniDBEdit;
    cValor: TUniDBFormattedNumberEdit;
    UniPanel3: TUniPanel;
    cAno: TUniSpinEdit;
    bFiltro: TUniSpeedButton;
    cMes: TUniSpinEdit;
    cDia: TUniSpinEdit;
    cTodos: TUniCheckBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancLoteClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure LigaBotoesLan(Estado: boolean);
    procedure bExcLoteClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdLoteClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure LancamentosBeforePost(DataSet: TDataSet);
    procedure LancamentosBeforeDelete(DataSet: TDataSet);
    procedure bFiltroClick(Sender: TObject);
    procedure gLotesDblClick(Sender: TObject);
    procedure cTodosChange(Sender: TObject);
    procedure gLotesCellClick(Column: TUniDBGridColumn);
    procedure bEdLoteClick(Sender: TObject);
    procedure bGravLoteClick(Sender: TObject);
    procedure bGravLanClick(Sender: TObject);
    procedure bAdLanClick(Sender: TObject);
    procedure bEdLanClick(Sender: TObject);
    procedure bExcLanClick(Sender: TObject);
  private
    procedure FiltraLotes;
    procedure FiltraLancamentos;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCtbLancamentos.bAdLanClick(Sender: TObject);
begin
     with tLotes do begin
          if RecordCount = 0 then begin
             MessageDlgN('Nenhum Lote, não pode adicionar um novo lançamento!', mtWarning, []);
             Abort;
          end;
     end;
     with Lancamentos do begin
          try
              LigaBotoesLan(false);
              Append;
                   fieldbyname('Empresa').Value          := UniMainModule.mEmpresaAtiva;
                   fieldbyname('Data').Value             := tLotes.FieldByName('Data').value;
                   fieldbyname('Lote').Value             := tLotes.FieldByName('Lote').AsInteger;
                   fieldbyname('Origem').Value           := 'DGMAN'; 
                   fieldbyname('Origem_Descricao').Value := 'Lançamento manual referente á ';
                   fieldbyname('Recriar').Value          := false;
                   fieldbyname('Contabilizar').Value     := tLotes.FieldByName('Contabilizar').asboolean;

                   cEmpresaLan.SetFocus;
          except
              MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
          end;
     end;
end;

procedure TfCtbLancamentos.bAdLoteClick(Sender: TObject);
begin
     with tLotes do begin
          try
              LigaBotoes(false);
              Append;
                   fieldbyname('Empresa').Value      := UniMainModule.mEmpresaAtiva;
                   fieldbyname('Data').Value         := date;
                   fieldbyname('Origem').Value       := 'DGMAN'; 
                   fieldbyname('Descricao').Value    := 'Lançamento manual referente á '; 
                   fieldbyname('Contabilizar').Value := true;
                   fieldbyname('Aberto').Value       := true;
                   fieldbyname('Recriar').Value      := false;

                   cDescricao.SetFocus;
          except
              MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
          end;
     end;
end;

procedure TfCtbLancamentos.bEdLanClick(Sender: TObject);
begin
     with Lancamentos do begin
          if fieldbyname('Numero').AsInteger = 0 then begin
             MessageDlgN('Nenhum lançamento para alterar!', mtWarning, []);
             Abort;
          end;
          try
              LigaBotoesLan(false);
              Edit;
              cEmpresaLan.SetFocus;
          except
              MessageDlgN('Falha desconhecida, não pode editar o registro!', mtError, []);
          end;
     end;
end;

procedure TfCtbLancamentos.bEdLoteClick(Sender: TObject);
begin
      with tLotes do begin
           try
               LigaBotoes(false);
               Edit;
               cEmpresa.SetFocus;
           except
               MessageDlgN('Falha desconhecida, não pode editar o registro!', mtError, []);
           end;
      end;
end;

procedure TfCtbLancamentos.bExcLanClick(Sender: TObject);
begin
     with Lancamentos do begin
          if FieldByName('Recriar').asboolean then begin
             Alerta.Title     := 'Lançamento.';
             Alerta.AlertType := atInfo;
             Alerta.Text      := 'Lançamento de origem automática, não pode ser excluído!';
             Alerta.Execute;
             LigaBotoesLan(true);
             Abort;
          end;
     end;
     with tTmp do begin
          sql.clear;
          sql.add('select * from Lancamentos where Data = :pData and Lote = :pLote and Numero = :pNumero');
          parambyname('pData').Value   := Lancamentos.FieldByName('Data').Value;
          parambyname('pLote').Value   := Lancamentos.FieldByName('Lote').Value;
          parambyname('pNumero').Value := Lancamentos.FieldByName('Numero').Value;
          open;
          
          MessageDlg('Deseja realmente excluir este Lançamento?'+#13+#13+'Lançamento: '+FieldByName('Numero').AsString, mtConfirmation, mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             delete;
                             Alerta.Title     := 'Lançamento.';
                             Alerta.AlertType := atSuccess;
                             Alerta.Text      := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                             Lancamentos.Refresh;
                          end;
                    end);
     end;
     LigaBotoesLan(true);
end;

procedure TfCtbLancamentos.bExcLoteClick(Sender: TObject);
begin
     with tLotes do begin
          if FieldByName('Recriar').asboolean then begin
             Alerta.Title     := 'Lote.';
             Alerta.AlertType := atInfo;
             Alerta.Text      := 'Lote de origem automática, não pode ser excluído!';
             Alerta.Execute;
             LigaBotoes(true);
             Abort;
          end;
          
          MessageDlg('Atenção!'+#13+#13+'Isso ira apagar o lote ['+FieldByName('Lote').AsString+'] e todos os seus lançamentos'+#13+'Deseja realmente excluir este Lote?', mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             with tTmp do begin 
                                  sql.clear;
                                  sql.Add('delete from Lancamentos where Data = :pData and Lote = :pLote');
                                  parambyname('pData').value := fieldbyname('Data').value;
                                  parambyname('pLote').value := fieldbyname('Lote').value;
                                  execute;
                             end;
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfCtbLancamentos.cTodosChange(Sender: TObject);
begin
     cDia.Enabled := not cTodos.Checked;
end;

procedure TfCtbLancamentos.bCancLoteClick(Sender: TObject);
begin
      Lancamentos.Cancel;
      LigaBotoes(true);
end;

procedure TfCtbLancamentos.UniFrameDestroy(Sender: TObject);
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

procedure TfCtbLancamentos.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCtbLancamentos.bFiltroClick(Sender: TObject);
var 
   mData:TDate;
   merro:boolean;
begin
     mErro := true;
     try
        mData := strtodate(cDia.text+'/'+cMes.text+'/'+cAno.Text);
        mErro := false;
     except
        mErro := true;
     end;
     if not merro then begin
        FiltraLotes;
        FiltraLancamentos;
     end else begin
        Alerta.title := 'Data inválida!';
        Alerta.text  := 'Verifique a data Informada!';
        MessageBeep(MB_ICONERROR);
        Alerta.Execute;
     end;
end;

procedure TfCtbLancamentos.bGravLanClick(Sender: TObject);
begin
      with Lancamentos do begin
           if (State = dsInsert) then begin
              Lancamentos.FieldByName('Numero').Value := GeraNumeroLan(tLotes.FieldByName('Lote').AsInteger, tLotes.FieldByName('Data').Value);
           end;
           Alerta.AlertType := atError;
           Alerta.Title := 'Lançamento erro!';
           if (Trim(FieldByName('Conta_Debito').AsString) = '') and (Trim(FieldByName('Conta_Credito').AsString) = '') then begin
              Alerta.Text  := 'Ao menos uma conta deve ser informada!'; 
              Alerta.Execute;
              cConta_Debito.SetFocus;
              Abort;
           end;
           if FieldByName('Valor').ascurrency <= 0 then begin
              Alerta.Text  := 'Valor do lançamento não informado!'; 
              Alerta.Execute;
              cValor.SetFocus;
              Abort;
           end;
           if trim(cHistorico.Text)+trim(FieldByName('Historico_Complemento').asstring) = '' then begin
              Alerta.Text  := 'Histórico não informado!'; 
              Alerta.Execute;
              cHistorico.SetFocus;
              Abort;
           end;
           try
               Post;
               LigaBotoesLan(true);
               Alerta.AlertType := atSuccess;
               Alerta.Title := 'Lançamento.';
               Alerta.Text  := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfCtbLancamentos.bGravLoteClick(Sender: TObject);
begin
      with tLotes do begin
           if State = dsInsert then begin
              FieldByName('Registro').Value := GeraCodigo('Lotes', 'Registro');
              FieldByName('Lote').Value     := GeraLote(FieldbyName('Data').Value, FieldbyName('Empresa').Value, 'Lote manual referente á ', 'DGMAN');
           end;
           if Trim(FieldByName('Empresa').AsString) = '' then begin
              MessageDlg('O campo "Empresa" não pode ficar em branco!', mtError, [mbOK]);
              cEmpresa.SetFocus;
              Abort;
           end;
           try
               Post;
               LigaBotoes(true);
               Alerta.Title := 'Lote.';
               Alerta.Text  := 'Lote salvo no banco de dados!'; 
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfCtbLancamentos.LancamentosBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, 'Delete');
end;

procedure TfCtbLancamentos.LancamentosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, EstadoTabela(DataSet));
end;

procedure TfCtbLancamentos.LigaBotoes(Estado:boolean);
begin
     NavLote.Enabled    := Estado;
     bEdLote.Enabled    := Estado;
     bExcLote.Enabled   := Estado;
     bAdLote.Enabled    := Estado;
     bCancLote.Enabled  := not Estado;
     bGravLote.Enabled  := not Estado;
     pFichaLote.Enabled := not Estado;
end;

procedure TfCtbLancamentos.LigaBotoesLan(Estado:boolean);
begin
     NavLan.Enabled    := Estado;
     bEdLan.Enabled    := Estado;
     bExcLan.Enabled   := Estado;
     bAdLan.Enabled    := Estado;
     bCancLan.Enabled  := not Estado;
     bGravLan.Enabled  := not Estado;
     pFichaLan.Enabled := not Estado;
end;

procedure TfCtbLancamentos.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      uniPanel1.Color  := clNone;
      uniPanel2.Color  := clNone;
      pFichaLan.Color  := clNone;
      pFichaLote.Color := clNone;
      uniPanel5.Color  := clNone;
      uniPanel7.Color  := clNone;
      uniPanel8.Color  := clNone;
      Panel8.Color     := clNone;
      cDia.Value       := dayof(date);
      cMes.Value       := monthof(date);
      cAno.Value       := yearof(date);
      
      LigaBotoes(true);
      LigaBotoesLan(true);
      Pasta.ActivePageIndex := 0;

      with tTmp do begin
           sql.clear;
           sql.add('select Ano = Year(Data)');
           sql.add('      ,Mes = month(Data)');
           sql.add('      ,Dia = day(Data)');
           sql.add('      ,Data');
           sql.add('from Lotes');
           sql.add('where Data = (select max(Data) from Lotes)');
           open;
           if RecordCount > 0 then begin
              cAno.Value := fieldbyname('Ano').asinteger;
              cMes.Value := fieldbyname('Mes').asinteger;
              cDia.Value := fieldbyname('Dia').asinteger;
           end;
      end;
      with tEmpresas do begin
           sql.clear;
           sql.add('select CNPJ');
           sql.add('      ,Razao_Social');
           sql.add('      ,Numero_Filial');
           sql.add('from Empresas');
           sql.add('order by Numero_Filial');
           open;
      end;
      with tPlano do begin
           sql.clear;
           sql.add('select Conta');
           sql.add('      ,Codigo');
           sql.add('      ,Nome_Contabil');
           sql.add('from PlanoContas');
           sql.add('where isnull(Sintetica, 0) =.0');
           sql.add('and isnull(Desativada, 0) =.0');
           sql.add('order by Nome_Contabil');
           open;
      end;
      with tHistoricos do begin
           sql.clear;
           sql.add('select *');
           sql.add('from Historicos');
           sql.add('order by Descricao');
           open;
      end;
      with tBenef do begin
           sql.clear;
           sql.add('select Nome');
           sql.add('      ,Codigo');
           sql.add('      ,CNPJ_CPF = ltrim(rtrim(isnull(CNPJ, '''')))+ltrim(rtrim(isnull(CPF, '''')))');
           sql.add('from Destinatarios');
           sql.add('order by Nome');
           open;
      end;
      with tProcessos do begin
           sql.clear;
           sql.add('select Processo');
           sql.add('      ,Incoterms');
           sql.add('      ,Declaracao = DI');
           sql.add('      ,Tipo = ''IMP''');
           sql.add('from ProcessosImp');
           sql.add('union all');
           sql.add('select Processo');
           sql.add('      ,Incoterms');
           sql.add('      ,Declaracao = DE');
           sql.add('      ,Tipo = ''EXP''');
           sql.add('from ProcessosExp');
           sql.add('order by Tipo, Processo');
           open;
      end;
      with tTipoDoc do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from TiposDocumentos');
           sql.add('order by Nome');
           open;
      end;
      
      FiltraLotes;
      FiltraLancamentos;
end;

procedure TfCtbLancamentos.FiltraLotes;
begin
      with tLotes do begin
           sql.clear;
           sql.add('select *');
           sql.add('from Lotes');
           if not cTodos.Checked then begin
              sql.add('where Data = :pData');
              parambyname('pData').AsDate := Date;
           end else begin
              sql.add('where Year(Data) = :pAno');
              sql.add('and month(Data)  = :pMes');
              parambyname('pAno').Asinteger := cAno.Value;
              parambyname('pMes').Asinteger := cMes.value;
           end;
           sql.add('order by Registro');
           open;
      end;
end;

procedure TfCtbLancamentos.gLotesCellClick(Column: TUniDBGridColumn);
begin
     FiltraLancamentos;
end;

procedure TfCtbLancamentos.gLotesDblClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         tLotes.Edit;
         cEmpresa.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfCtbLancamentos.FiltraLancamentos;
begin
      if tLotes.RecordCount > 0 then begin
         with Lancamentos do begin
              sql.clear;
              sql.add('select *');
              sql.add('      ,Descricao_Debito  = (select Nome_Contabil from PlanoContas where Codigo = Conta_Debito)');
              sql.add('      ,Descricao_Credito = (select Nome_Contabil from PlanoContas where Codigo = Conta_Credito)');
              sql.add('from Lancamentos');
              sql.add('where Empresa = :pEmp');
              sql.Add('and   Data = :pData');
              sql.add('and   Lote = :pLote');
              sql.add('order by Empresa, Lote, Numero');
              parambyname('pEmp').Asstring   := tLotes.FieldByName('Empresa').asstring;
              parambyname('pLote').Asinteger := tLotes.FieldByName('Lote').asinteger;
              if tLotes.RecordCount > 0 then begin
                 parambyname('pData').AsDate := tLotes.FieldByName('Data').Value;
              end else begin
                 parambyname('pData').AsDate := date;
              end;
              open;
         end;
         with tTotaliza do begin
              close;
              sql.Clear;
              sql.Add('SELECT Lote     = :pLote');
              sql.Add('      ,LanLote  = isnull((select count(*)   from Lancamentos where Data = :pData and Lote = :pLote), 0)');
              sql.Add('      ,DebLote  = isnull((select sum(Valor) from Lancamentos where Data = :pData and Lote = :pLote and isnull(Conta_Debito , '''') <> ''''), 0)');
              sql.Add('      ,CredLote = isnull((select sum(Valor) from Lancamentos where Data = :pData and Lote = :pLote and isnull(Conta_Credito, '''') <> ''''), 0)');
              sql.Add('      ,DifLote  = isnull((select isnull(sum(Valor), 0) from Lancamentos where Data = :pData and Lote = :pLote and isnull(Conta_Debito , '''') <> '''') - ');
              sql.Add('                         (select isnull(sum(Valor), 0) from Lancamentos where Data = :pData and Lote = :pLote and isnull(Conta_Credito, '''') <> ''''), 0)');
              sql.add('      ,LotesDia = (select count(Lote) from Lotes where data = :pData)');
              SQL.Add('      ,LanDia   = isnull((select count(*)   from Lancamentos where Data = :pData), 0)');
              sql.Add('      ,DebDia   = isnull((select sum(Valor) from Lancamentos where Data = :pData and isnull(Conta_Debito , '''') <> ''''), 0)');
              sql.Add('      ,CredDia  = isnull((select sum(Valor) from Lancamentos where Data = :pData and isnull(Conta_Credito, '''') <> ''''), 0)');
              sql.Add('      ,DifDia   = isnull((select isnull(sum(Valor), 0) from Lancamentos where Data = :pData and isnull(Conta_Debito , '''') <> '''') -');
              sql.Add('                         (select isnull(sum(Valor), 0) from Lancamentos where Data = :pData and isnull(Conta_Credito, '''') <> ''''), 0)');
              sql.Add('      ,LotesMes = (select count(Lote) from Lotes where year(Data) = :pAno and month(Data) = :pMes)');
              sql.Add('      ,LanMes   = isnull((select count(*)   from Lancamentos where year(Data) = :pAno and month(Data) = :pMes), 0)');
              sql.Add('      ,DebMes   = isnull((select sum(Valor) from Lancamentos where year(Data) = :pAno and month(Data) = :pMes and isnull(Conta_Debito , '''') <> ''''), 0)');
              sql.Add('      ,CredMes  = isnull((select sum(Valor) from Lancamentos where year(Data) = :pAno and month(Data) = :pMes and isnull(Conta_Credito, '''') <> ''''), 0)');
              sql.Add('      ,DifMes   = isnull((select isnull(sum(Valor), 0) from Lancamentos where year(Data) = :pAno and month(Data) = :pMes and isnull(Conta_Debito , '''') <> '''') -');
              sql.Add('                         (select isnull(sum(Valor), 0) from Lancamentos where year(Data) = :pAno and month(Data) = :pMes and isnull(Conta_Credito, '''') <> ''''), 0)');
              sql.Add('      ,LotesAno = (select count(Lote) from Lotes where Year(Data) = :pAno)');
              sql.Add('      ,LanAno   = isnull((select count(*)   from Lancamentos where Year(Data) = :pAno), 0)');
              sql.Add('      ,DebAno   = isnull((select sum(Valor) from Lancamentos where Year(Data) = :pAno and isnull(Conta_Debito , '''') <> ''''), 0)');
              sql.Add('      ,CredAno  = isnull((select sum(Valor) from Lancamentos where Year(Data) = :pAno and isnull(Conta_Credito, '''') <> ''''), 0)');
              sql.Add('      ,DifAno   = isnull((select isnull(sum(Valor), 0) from Lancamentos where Year(Data) = :pAno and isnull(Conta_Debito , '''') <> '''') -');
              sql.Add('                         (select isnull(sum(Valor), 0) from Lancamentos where Year(Data) = :pAno and isnull(Conta_Credito, '''') <> ''''), 0)');
              ParamByName('pData').AsDate    := tLotes.FieldByName('Data').value;
              ParamByName('pLote').Asinteger := tLotes.FieldByName('Lote').asinteger;
              ParamByName('pAno').Asinteger  := cAno.Value;
              ParamByName('pMes').Asinteger  := cMes.value;
              //sql.savetofile('c:\temp\Lancamentos_Totalizadores.sql');
              open;
         end;
      end;
end;



end.
