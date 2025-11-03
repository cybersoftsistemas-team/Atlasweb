unit CadPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUiframe, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniButton, uniDBNavigator, uniEdit, uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, uniDBRadioGroup, uniGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniCheckBox, uniMultiItem,
  uniComboBox, uniDBComboBox, uniRadioGroup, uniBitBtn, unimDBEdit, uniSweetAlert, uniBasicGrid;

type
  TfCadPlanoContas = class(TUniFrame)
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
    dsModalidade: TDataSource;
    dsNivel: TDataSource;
    dsTiposDoc: TDataSource;
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
    cProvisao_ContaC: TUniDBLookupComboBox;
    cProvisao_Historico: TUniDBLookupComboBox;
    cLiquidacao_Historico: TUniDBLookupComboBox;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    dsGrupos: TDataSource;
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
    Destinatarios: TFDQuery;
    dsDestinatarios: TDataSource;
    gTributo: TUniGroupBox;
    cOrgao: TUniDBLookupComboBox;
    cCodigo_RFB: TUniDBLookupComboBox;
    cValor: TUniDBFormattedNumberEdit;
    cDia_Vencimento: TUniDBFormattedNumberEdit;
    Empresas: TFDQuery;
    CSTCOFINS: TFDQuery;
    dsCSTCOFINS: TDataSource;
    cProvisao_ContraPartida: TUniDBComboBox;
    cLiquidacao_ContraPartida: TUniDBComboBox;
    cTipo_Partida: TUniDBRadioGroup;
    UniDBRadioGroup2: TUniDBRadioGroup;
    cConta: TUniDBEdit;
    cNomeContabil: TUniDBEdit;
    cCodigo: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    cNomeFinanceiro: TUniDBEdit;
    UniDBRadioGroup1: TUniDBRadioGroup;
    UniGroupBox1: TUniGroupBox;
    cRelatorio: TUniDBCheckBox;
    cCambio: TUniDBCheckBox;
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
    cTributo: TUniDBCheckBox;
    cTaxa: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    UniDBCheckBox13: TUniDBCheckBox;
    UniDBCheckBox14: TUniDBCheckBox;
    cModalidade_Importacao: TUniDBLookupComboBox;
    cNivel: TUniDBLookupComboBox;
    cTipo_Documento: TUniDBLookupComboBox;
    UniGroupBox5: TUniGroupBox;
    cDRE_Principal: TUniDBLookupComboBox;
    cDRE_Desconto: TUniDBLookupComboBox;
    cDRE_DescontoDupl: TUniDBLookupComboBox;
    cDRE_Juros: TUniDBLookupComboBox;
    tContas: TFDQuery;
    dstContas: TDataSource;
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

procedure TfCadPlanoContas.bAdicionarClick(Sender: TObject);
begin
      with PlanoContas do begin
           try
               LigaBotoes(false, true);
               Append;

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
               FieldByName('Sintetica').Value             := false;
               FieldByName('Resultado').Value             := false;
               FieldByName('LALUR').Value                 := false;
               FieldByName('DRE').Value                   := false;
               FieldByName('Balanco').Value               := false;
               FieldByName('Detalha_Beneficiario').Value  := false;
               FieldByName('Detalha_Processo').Value      := false;

               cConta.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadPlanoContas.bCancelarClick(Sender: TObject);
begin
     PlanoContas.cancel;
     LigaBotoes(true, true);
end;

procedure TfCadPlanoContas.bEditarClick(Sender: TObject);
begin
      try
          LigaBotoes(false, true);
          PlanoContas.Edit;
          cConta.setfocus;
      except
          Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadPlanoContas.bExcluirClick(Sender: TObject);
var
   tTemp:TFDQuery;
begin
     // Verifica se classificacção financeira ja foi utilizada.
     with tTemp do begin
          TFDQuery.Create(nil);
          Connection := uniMainModule.Conecta;

          SQL.Clear;
          SQL.Add('select count(*) as Movimento from PagarReceber where Conta = :pConta');
          ParamByName('pConta').AsString := Trim(PlanoContas.FieldByName('Codigo').AsString);
          Open;
          if FieldByName('Movimento').AsInteger > 0 then begin
             Aviso('Esta Conta Financeira não pode ser excluida, pois ja foram feitos lançamentos financeiros utilizando-a.', atInfo);
             Cancel;
             Abort;
          end;

          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+PlanoContas.FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadPlanoContas.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadPlanoContas.bSalvarClick(Sender: TObject);
var
  tTemp:TFDQuery;
begin
      tTemp            := TFDQuery.Create(nil);
      tTemp.Connection := uniMainModule.Conecta;

      with PlanoContas do begin
           if (State = dsInsert) and (Existe(PlanoContas, 'Codigo', FieldByName('Codigo').AsString)) then begin
              Aviso('Já existe uma Conta com este "Codigo" cadastrado!'+#13+#13, atError);
              cConta.SetFocus;
              Abort;
           end;
           if CampoVazio(cConta       , 'Campo obrigatório!'+#13+#13+'É necessário informar a "Conta Contabil".')  then Abort;
           if CampoVazio(cNomeContabil, 'Campo obrigatório!'+#13+#13+'É necessário informar o "Nome Contabil".')   then Abort;
           if CampoVazio(cNivel       , 'Campo obrigatório!'+#13+#13+'É necessário informar o "Nível de Acesso".') then Abort;
           if FieldByName('Aliquota_PIS').asfloat <> 0 then begin
              if CampoVazio(cCST_PIS, 'Campo obrigatório!'+#13+#13+'É necessário informar o "CST do PIS" quando informada alíquota.') then Abort;
           end;
           if FieldByName('Aliquota_COFINS').asfloat <> 0 then begin
              if CampoVazio(cCST_PIS, 'Campo obrigatório!'+#13+#13+'É necessário informar o "CST da COFINS" quando informada alíquota.') then Abort;
           end;
           if Trim(FieldByName('CST_PIS').AsString) <> '' then begin
              if CampoVazio(cCST_COFINS, 'Campo obrigatório!'+#13+#13+'CST de COFINS é campo obrigatório quando há CST de PIS informada.') then Abort;
           end;
           if Trim(FieldByName('CST_COFINS').AsString) <> '' then begin
              if CampoVazio(cCST_PIS, 'Campo obrigatório!'+#13+#13+'CST de PIS é campo obrigatório quando há CST de COFINS informada.') then Abort;
           end;
           if ValidaCampo(cProvisao_ContraPartida, cCodigo.text, cProvisao_ContraPartida.Text, '=', 'Conta contabil e a "Contra-Partida" da provisão não podem ser iguais!', 'Erro de campo') then Abort;
           if ValidaCampo(cLiquidacao_ContraPartida, cCodigo.text, cLiquidacao_ContraPartida.Text, '=', 'Conta contabil e a "Contra-Partida" da liquidação não podem ser iguais!', 'Erro de campo') then Abort;

           if Trim(FieldByName('Nome_Financeiro').AsString) = '' then begin
              FieldByName('Nome_Financeiro').value := Trim(FieldByName('Nome_Contabil').AsString);
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
               tTemp.SQL.Add('where (ltrim(rtrim(Conta)) = :pConta)' );
               tTemp.ParamByName('pConta').AsString     := Trim(FieldByName('Codigo').asstring);
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

procedure TfCadPlanoContas.Aviso(msg: string; Tipo: TAlertType);
begin
     Alerta.Text      := msg;
     if Tipo = atError   then MessageBeep(MB_ICONERROR);
     if Tipo = atSuccess then MessageBeep(MB_OK);
     if Tipo = atInfo    then MessageBeep(MB_ICONINFORMATION);
     Alerta.AlertType := Tipo;
     Alerta.Execute;
end;

procedure TfCadPlanoContas.LigaBotoes(Estado, Edita:boolean);
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

procedure TfCadPlanoContas.PlanoFinanceiroBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadPlanoContas.PlanoFinanceiroBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadPlanoContas.UniframeCreate(Sender: TObject);
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

      with PlanoContas do begin
           sql.clear;
           sql.add('select *');
           sql.add('from   PlanoContas');
           sql.add('order  by Nome_Contabil');
           Open;
      end;
      with tContas do begin
           sql.clear;
           sql.add('select Conta');
           sql.add('      ,Codigo');
           sql.add('      ,Nome = Nome_Contabil');
           sql.add('from   PlanoContas');
           sql.add('where  isnull(Sintetica, 0) = 0');
           sql.add('order  by Nome');
           Open;
      end;
      with Destinatarios do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from Destinatarios');
           sql.add('where Orgao_Publico = 1');
           sql.add('order by Nome');
           open;
      end;
      with ModalidadeImp do begin
           sql.clear;
           sql.add('select Codigo, Descricao from ModalidadeImportacao order by Codigo');
           open;
      end;
      with TiposDoc do begin
           sql.clear;
           sql.add('select Codigo, Nome from TipoDocumento order by Nome');
           open;
      end;
      with Niveis do begin
           sql.clear;
           sql.add('select * from NivelClassificacao order by Codigo');
           open;
      end;
      with CodigosRFB do begin
           sql.clear;
           sql.add('select Codigo, Descricao from CodigosRFB order by Descricao');
           open;
      end;
      with CSTPIS do begin
           sql.clear;
           sql.add('select Codigo, Descricao from CSTPIS');
           open;
      end;
      with CSTCOFINS do begin
           sql.clear;
           sql.add('select Codigo, Descricao from CSTCOFINS');
           open;
      end;
      with CredPIS do begin
           sql.clear;
           sql.add('select Codigo, Descricao from BCCreditoPISCOFINS');
           open;
      end;
      with DRE do begin
           sql.clear;
           sql.add('select Codigo, Nome from DRE order by Nome');
           open;
      end;
      with Historicos do begin
           sql.clear;
           sql.add('select Codigo, Descricao from Historicos order by Descricao');
           open;
      end;
end;

procedure TfCadPlanoContas.UniframeDestroy(Sender: TObject);
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

procedure TfCadPlanoContas.cAdiantamentoClick(Sender: TObject);
begin
     if cAdiantamento.Checked then cDevolucao.Checked := false;
end;

procedure TfCadPlanoContas.cDevolucaoClick(Sender: TObject);
begin
     if cDevolucao.Checked then cAdiantamento.Checked := false;
end;

procedure TfCadPlanoContas.cNomeExit(Sender: TObject);
begin
     if trim(cNomeContabil.Text) = '' then cNomeContabil.Text := cNomeContabil.Text;
end;

procedure TfCadPlanoContas.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     if Key = VK_RETURN then begin
        bPesquisa.Click;
     end;
end;

procedure TfCadPlanoContas.bPesquisaClick(Sender: TObject);
begin
     PlanoContas.Cancel;
     LigaBotoes(true, false);
     Pesquisa(PlanoContas, 'PlanoContas', 'Codigo', 'Nome_Contabil', cPesquisa.text);
end;


end.
