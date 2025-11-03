unit CadPlanoFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUiframe, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniButton, uniDBNavigator, uniEdit, uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, uniDBRadioGroup, uniGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniCheckBox, uniMultiItem,
  uniComboBox, uniDBComboBox, uniRadioGroup, uniBitBtn, unimDBEdit, uniSweetAlert, uniBasicGrid;

type
  TfCadPlanoFinanceiro = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Grade: TUniDBGrid;
    uniTabSheet1: TuniTabSheet;
    uniTabSheet2: TuniTabSheet;
    UniScrollBox1: TUniScrollBox;
    UniScrollBox2: TUniScrollBox;
    pFicha1: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    pBarraPesq: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    dsPlano: TDataSource;
    cCodigo: TUniDBEdit;
    cNome: TUniDBEdit;
    UniDBRadioGroup1: TUniDBRadioGroup;
    cModalidade_Importacao: TUniDBLookupComboBox;
    dsModalidade: TDataSource;
    UniGroupBox1: TUniGroupBox;
    cRelatorio: TUniDBCheckBox;
    cCambio: TUniDBCheckBox;
    cTitulo: TUniDBCheckBox;
    cCusto: TUniDBCheckBox;
    cSomente_Faturamento: TUniDBCheckBox;
    cAdiantamento: TUniDBCheckBox;
    cDevolucao: TUniDBCheckBox;
    cCusto_Seletivo: TUniDBCheckBox;
    cTransferencia: TUniDBCheckBox;
    cFechamento_Processo: TUniDBCheckBox;
    cCusto_Entrada: TUniDBCheckBox;
    cBoleto: TUniDBCheckBox;
    cDespesa_Fixa: TUniDBCheckBox;
    cNota_Referencia: TUniDBCheckBox;
    cProcesso_Obrigatorio: TUniDBCheckBox;
    cDesativada: TUniDBCheckBox;
    cCusto_Outros: TUniDBCheckBox;
    cNivel: TUniDBLookupComboBox;
    dsNivel: TDataSource;
    dsTiposDoc: TDataSource;
    cTipo_Documento: TUniDBLookupComboBox;
    dsCodigosRFB: TDataSource;
    UniGroupBox2: TUniGroupBox;
    cCST_PIS: TUniDBLookupComboBox;
    cAliquota_PIS: TUniDBFormattedNumberEdit;
    cAliquota_COFINS: TUniDBFormattedNumberEdit;
    cBCCredito: TUniDBLookupComboBox;
    cCST_COFINS: TUniDBLookupComboBox;
    cNatureza_Receita: TUniDBEdit;
    dsCSTPIS: TDataSource;
    dsCredPIS: TDataSource;
    pFicha2: TUniPanel;
    UniGroupBox3: TUniGroupBox;
    UniGroupBox4: TUniGroupBox;
    UniGroupBox5: TUniGroupBox;
    cProvisao_ContaC: TUniDBLookupComboBox;
    cProvisao_Historico: TUniDBLookupComboBox;
    cLiquidacao_Historico: TUniDBLookupComboBox;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    cDRE_Principal: TUniDBLookupComboBox;
    cDRE_Desconto: TUniDBLookupComboBox;
    cDRE_DescontoDupl: TUniDBLookupComboBox;
    cDRE_Juros: TUniDBLookupComboBox;
    cGrupo: TUniDBLookupComboBox;
    dsGrupos: TDataSource;
    PlanoFinanceiro: TFDQuery;
    PlanoContas: TFDQuery;
    Historicos: TFDQuery;
    ModalidadeImp: TFDQuery;
    Niveis: TFDQuery;
    TiposDoc: TFDQuery;
    Grupos: TFDQuery;
    CredPIS: TFDQuery;
    CodigosRFB: TFDQuery;
    CSTPIS: TFDQuery;
    DRE: TFDQuery;
    cTributo: TUniDBCheckBox;
    Destinatarios: TFDQuery;
    dsDestinatarios: TDataSource;
    gTributo: TUniGroupBox;
    cOrgao: TUniDBLookupComboBox;
    cCodigo_RFB: TUniDBLookupComboBox;
    cValor: TUniDBFormattedNumberEdit;
    cTaxa: TUniDBCheckBox;
    cDia_Vencimento: TUniDBFormattedNumberEdit;
    Empresas: TFDQuery;
    CSTCOFINS: TFDQuery;
    dsCSTCOFINS: TDataSource;
    cProvisao_ContraPartida: TUniDBComboBox;
    cLiquidacao_ContraPartida: TUniDBComboBox;
    cTipo_Partida: TUniDBRadioGroup;
    UniGroupBox6: TUniGroupBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    UniDBCheckBox13: TUniDBCheckBox;
    UniDBCheckBox14: TUniDBCheckBox;
    UniDBRadioGroup2: TUniDBRadioGroup;
    UniDBEdit1: TUniDBEdit;
    cNomeContabil: TUniDBEdit;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    procedure UniframeCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado, Edita:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniframeDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure PlanoFinanceiroBeforePost(DataSet: TDataSet);
    procedure PlanoFinanceiroBeforeDelete(DataSet: TDataSet);
    procedure cDevolucaoClick(Sender: TObject);
    procedure cAdiantamentoClick(Sender: TObject);
    procedure cNomeExit(Sender: TObject);
  private
    procedure Aviso(msg: string; Tipo: TAlertType);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadPlanoFinanceiro.bAdicionarClick(Sender: TObject);
begin
      with PlanoFinanceiro do begin
           try
               LigaBotoes(false, true);
               Append;

               FieldByName('Titulo').Value                := false;
               FieldByName('Cambio').Value                := false;
               FieldByName('Relatorio').Value             := false;
               FieldByName('Somente_Faturamento').Value   := false;
               FieldByName('Devolucao').Value             := false;
               FieldByName('Adiantamento').Value          := false;
               FieldByName('Despesa_Fixa').Value          := false;
               FieldByName('Nota_Referencia').Value       := false;
               FieldByName('Transferencia').Value         := false;
               FieldByName('Processo_Obrigatorio').Value  := false;
               FieldByName('Fechamento_Processo').Value   := false;
               FieldByName('Custo_Entrada').Value         := false;
               FieldByName('Custo_Saida').Value           := false;
               FieldByName('Custo_Seletivo').Value        := false;
               FieldByName('Custo_Outros').Value          := false;
               FieldByName('Desativada').Value            := false;
               FieldByName('Tributo').Value               := false;
               FieldByName('Partida').Value               := 'D';
               FieldByName('Tipo').Value                  := 'P';
               FieldByName('Modalidade_Importacao').Value := 0;
               FieldByName('Plano_Financeiro').Value      := false;
               FieldByName('Conta_Titulo').Value          := false;
               FieldByName('Conta_Sintetica').Value       := false;
               FieldByName('Conta_Resultado').Value       := false;
               FieldByName('Conta_LALUR').Value           := false;
               FieldByName('Conta_DRE').Value             := false;
               FieldByName('Conta_Balanco').Value         := false;
               FieldByName('Conta_DetBeneficiario').Value := false;
               FieldByName('Conta_DetProcesso').Value     := false;

               cCodigo.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadPlanoFinanceiro.bCancelarClick(Sender: TObject);
begin
     PlanoFinanceiro.cancel;
     LigaBotoes(true, true);
end;

procedure TfCadPlanoFinanceiro.bEditarClick(Sender: TObject);
begin
      try
          LigaBotoes(false, true);
          PlanoFinanceiro.Edit;
          cCodigo.setfocus;
      except
          Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadPlanoFinanceiro.bExcluirClick(Sender: TObject);
var
   tTemp:TFDQuery;
begin
     // Verifica se classificacção financeira ja foi utilizada.
     with tTemp do begin
          TFDQuery.Create(nil);
          Connection := uniMainModule.Conecta;

          SQL.Clear;
          SQL.Add('select count(*) AS Movimento from PagarReceber where Classificacao = :pClass');
          ParamByName('pClass').AsString := Trim(PlanoFinanceiro.FieldByName('Codigo').AsString);
          Open;
          if FieldByName('Movimento').AsInteger > 0 then begin
             Aviso('Esta Classificação Financeira não pode ser excluida, pois ja foram feitos lançamentos financeiros utilizando-a.', atInfo);
             Cancel;
             Abort;
          end;

          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+PlanoFinanceiro.FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Aviso('Registro excluído do banco de dados!', atSuccess);
                          end;
                    end);
     end;
     tTemp.Free;
end;

procedure TfCadPlanoFinanceiro.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadPlanoFinanceiro.bSalvarClick(Sender: TObject);
var
  tTemp:TFDQuery;
//  mConta:integer;
begin
      tTemp            := TFDQuery.Create(nil);
      tTemp.Connection := uniMainModule.Conecta;

      with PlanoFinanceiro do begin
           if (State = dsInsert) and (Existe(PlanoFinanceiro, 'Codigo', FieldByName('Codigo').AsString)) then begin
              Aviso('Já existe uma Classificação com este "Nome" cadastrado com esse código!'+#13+#13, atError);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              Aviso('O campo "Código" não pode ficar em branco!', atError);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Nome').AsString) = '' then begin
              Aviso('O campo "Nome" não pode ficar em branco!', atError);
              cNome.SetFocus;
              Abort;
           end;
           if FieldByName('Nivel').AsInteger = 0 then begin
              Aviso('Nivel de acesso da classificação financeira é campo obrigatório.', atError);
              cNivel.SetFocus;
              Abort;
           end;
           if (FieldByName('Aliquota_PIS').Value > 0) and (Trim(FieldByName('CST_PIS').AsString) = '') then begin
              Aviso('CST de PIS é campo obrigatório quando há alíquota de PIS.', atError);
              cCST_PIS.SetFocus;
              Abort;
           end;
           if (FieldByName('Aliquota_COFINS').Value > 0) and (Trim(FieldByName('CST_COFINS').AsString) = '') then begin
              Aviso('CST de COFINS é campo obrigatório quando há alíquota de COFINS.', atError);
              cCST_COFINS.SetFocus;
              Abort;
           end;
           if (Trim(FieldByName('CST_PIS').AsString) <> '') and (Trim(FieldByName('CST_COFINS').AsString) = '') then begin
              Aviso('CST de COFINS é campo obrigatório quando há CST de PIS.', atError);
              cCST_COFINS.SetFocus;
              Abort;
           end;
           if (Trim(FieldByName('CST_PIS').AsString) = '') and (Trim(FieldByName('CST_COFINS').AsString) <> '') then begin
              Aviso('CST de PIS é campo obrigatório quando há CST de COFINS.', atError);
              cCST_PIS.SetFocus;
              Abort;
           end;
           if (Trim(FieldByName('Conta_Contabil').AsString) <> '') and (Trim(FieldByName('Provisao_ContraPartida').AsString) <> '') then begin
              if Trim(FieldByName('Conta_CodigoRed').AsString) = Trim(FieldByName('Provisao_ContraPartida').AsString) then begin
                 Aviso('Conta contabil e a "Contra-Partida" da provisão não podem ser iguais!', atError);
                 cProvisao_ContraPartida.SetFocus;
                 Abort;
              end;
           end;
           if (Trim(FieldByName('Conta_Contabil').AsString) <> '') and (Trim(FieldByName('Liquidacao_ContraPartida').AsString) <> '') then begin
              if Trim(FieldByName('Conta_CodigoRed').AsString) = Trim(FieldByName('Liquidacao_ContraPartida').AsString) then begin
                 MessageDlg('Conta contabil e a "Contra-Partida" da liquidação não podem ser iguais!', mtError, [mbok]);
                 Aviso('Conta contabil e a "Contra-Partida" da liquidação não podem ser iguais!', atError);
                 cLiquidacao_ContraPartida.SetFocus;
                 Abort;
              end;
           end;

           Screen.Cursor := crSQLWait;
           try
               FieldByName('Codigo').Value := Trim(FieldByName('Codigo').Value);
               Post;
               Alerta.Text := 'Registro salvo no banco de dados!';
               MessageBeep(MB_ICONINFORMATION);
               Alerta.Execute;

               // Atualiza os lançamentos do financeiro.
               tTemp.SQL.Clear;
               tTemp.SQL.Add('update PagarReceber set Custo_Saida    = :pCustoSai');
               tTemp.SQL.Add('                       ,Custo_Entrada  = :pCustoEnt');
               tTemp.SQL.Add('                       ,Custo_Outros   = :pCustoOut');
               tTemp.SQL.Add('                       ,Custo_Seletivo = :pCustoSel');
               tTemp.SQL.Add('                       ,Nivel          = :pNivel');
               tTemp.SQL.Add('where (ltrim(rtrim(Classificacao)) = :pClass)' );
               tTemp.ParamByName('pClass').AsString     := Trim(FieldByName('Codigo').asstring);
               tTemp.ParamByName('pNivel').AsInteger    := FieldByName('Nivel').asinteger;
               tTemp.ParamByName('pCustoSai').AsBoolean := FieldByName('Custo_Saida').asboolean;
               tTemp.ParamByName('pCustoSel').AsBoolean := FieldByName('Custo_Seletivo').asboolean;
               tTemp.ParamByName('pCustoEnt').AsBoolean := FieldByName('Custo_Entrada').asboolean;
               tTemp.ParamByName('pCustoOut').AsBoolean := FieldByName('Custo_Outros').asboolean;
               tTemp.Execute;
               tTemp.SQL.Clear;
               tTemp.Close;

               LigaBotoes(true, true);
           except
               Aviso('Falha desconhecida, não pode salvar o registro corrente!', atError);
           end;
      end;
      Screen.Cursor := crdefault;
      tTemp.Free;
end;

procedure TfCadPlanoFinanceiro.Aviso(msg: string; Tipo: TAlertType);
begin
     Alerta.Text      := msg;
     if Tipo = atError   then MessageBeep(MB_ICONERROR);
     if Tipo = atSuccess then MessageBeep(MB_OK);
     if Tipo = atInfo    then MessageBeep(MB_ICONINFORMATION);
     Alerta.AlertType := Tipo;
     Alerta.Execute;
end;

procedure TfCadPlanoFinanceiro.LigaBotoes(Estado, Edita:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
     pFicha1.Enabled       := not Estado;
     pFicha2.Enabled       := not Estado;
     Pasta.ActivePageIndex := iif(Edita, 1, 0);
end;

procedure TfCadPlanoFinanceiro.PlanoFinanceiroBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadPlanoFinanceiro.PlanoFinanceiroBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadPlanoFinanceiro.UniframeCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone;
          end;
      end;

      LigaBotoes(true, true);
      Pasta.ActivePageIndex := 0;

      PlanoFinanceiro.sql.clear;
      PlanoFinanceiro.sql.add('select *');
      PlanoFinanceiro.sql.add('from   PlanoFinanceiro');
      PlanoFinanceiro.sql.add('order  by Nome');
      PlanoFinanceiro.Open;

      PlanoContas.sql.clear;
      PlanoContas.sql.add('select Codigo');
      PlanoContas.SQL.Add('     , Conta_CodigoRed');
      PlanoContas.SQL.Add('     , Conta = Conta_Contabil');
      PlanoContas.SQL.Add('     , Nome  = Nome_Contabil');
      PlanoContas.sql.add('from   PlanoFinanceiro');
      PlanoContas.sql.add('where isnull(Plano_Financeiro, 0) = 1');
      PlanoContas.sql.add('and   isnull(Conta_Sintetica, 0) = 0');
      PlanoContas.sql.add('and   isnull(Conta_Contabil, '''') <> '''' ');
      PlanoContas.sql.add('order  by Nome');
      PlanoContas.Open;

      Grupos.sql.clear;
      Grupos.sql.add('select * from PlanoFinanceiroGrupos order by Codigo');
      Grupos.open;

      Destinatarios.sql.clear;
      Destinatarios.sql.add('select Codigo, Nome from Destinatarios where Orgao_Publico = 1 order by Nome');
      Destinatarios.open;

      ModalidadeImp.sql.clear;
      ModalidadeImp.sql.add('select Codigo, Descricao from ModalidadeImportacao order by Codigo');
      ModalidadeImp.open;

      TiposDoc.sql.clear;
      TiposDoc.sql.add('select Codigo, Nome from TipoDocumento order by Nome');
      TiposDoc.open;

      Niveis.sql.clear;
      Niveis.sql.add('select * from NivelClassificacao order by Codigo');
      Niveis.open;

      CodigosRFB.sql.clear;
      CodigosRFB.sql.add('select Codigo, Descricao from CodigosRFB order by Descricao');
      CodigosRFB.open;

      CSTPIS.sql.clear;
      CSTPIS.sql.add('select Codigo, Descricao from CSTPIS');
      CSTPIS.open;

      CSTCOFINS.sql.clear;
      CSTCOFINS.sql.add('select Codigo, Descricao from CSTCOFINS');
      CSTCOFINS.open;

      CredPIS.sql.clear;
      CredPIS.sql.add('select Codigo, Descricao from BCCreditoPISCOFINS');
      CredPIS.open;

      DRE.sql.clear;
      DRE.sql.add('select Codigo, Nome from DRE order by Nome');
      DRE.open;

      Historicos.sql.clear;
      Historicos.sql.add('select Codigo, Descricao from Historicos order by Descricao');
      Historicos.open;
end;

procedure TfCadPlanoFinanceiro.UniframeDestroy(Sender: TObject);
var
   i:integer;
begin
      // Fecha todas as tabelas do form.
      for i := 0 to pred(ComponentCount) do begin
          if Components[i] is TFDQuery then begin
             TFDQuery(Components[i]).Close;
          end;
      end;
end;

procedure TfCadPlanoFinanceiro.cAdiantamentoClick(Sender: TObject);
begin
     if cAdiantamento.Checked then cDevolucao.Checked := false;
end;

procedure TfCadPlanoFinanceiro.cDevolucaoClick(Sender: TObject);
begin
     if cDevolucao.Checked then cAdiantamento.Checked := false;
end;

procedure TfCadPlanoFinanceiro.cNomeExit(Sender: TObject);
begin
     if trim(cNomeContabil.Text) = '' then cNomeContabil.Text := cNome.Text;

end;

procedure TfCadPlanoFinanceiro.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     if Key = VK_RETURN then begin
        bPesquisa.Click;
     end;
end;

procedure TfCadPlanoFinanceiro.bPesquisaClick(Sender: TObject);
begin
     PlanoFinanceiro.Cancel;
     LigaBotoes(true, false);
     Pesquisa(PlanoFinanceiro, 'PlanoFinanceiro', 'Codigo', 'Nome', cPesquisa.text);
end;


end.
