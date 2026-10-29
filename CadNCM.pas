unit CadNCM;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid,
    uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator,
    uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
    FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniStringGrid, uniCheckBox,
    uniGroupBox, uniMultiItem, uniComboBox, uniDBComboBox, uniSweetAlert,
    System.Net.HttpClient,
    System.Net.URLClient, uniMemo,
    System.JSON,
    System.Diagnostics,
    System.IOUtils;


type
  TfCadNCM = class(TUniFrame)
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
    Pasta: TUnipageControl;
    TabSheet1: TuniTabSheet;
    NCM: TFDQuery;
    dsNCM: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniScrollBox8: TUniScrollBox;
    pFicha: TUniPanel;
    clModalidade_BCICMS: TUniDBLookupComboBox;
    clCodigo_EXTIPI: TUniDBLookupComboBox;
    cEnquadramento_IPI: TUniDBLookupComboBox;
    cSelo_IPI: TUniDBEdit;
    cGenero: TUniDBLookupComboBox;
    clModalidade_BCICMSST: TUniDBLookupComboBox;
    cProduto: TUniDBEdit;
    cNCM: TUniDBEdit;
    cCEST: TUniDBEdit;
    cNALADI: TUniDBEdit;
    cDestaque: TUniDBEdit;
    GroupBox2: TUniGroupBox;
    cCodigo_DNF: TUniDBEdit;
    cFatorConv_DNF: TUniDBEdit;
    cCapacidadeVol_DNF: TUniDBEdit;
    GroupBox3: TUniGroupBox;
    cIPI_Isento: TUniDBCheckBox;
    cIPI_Suspensao: TUniDBCheckBox;
    cIPI_TribAliquotaZero: TUniDBCheckBox;
    GroupBox1: TUniGroupBox;
    cICMS_Isento: TUniDBCheckBox;
    cICMS_Suspensao: TUniDBCheckBox;
    cICMS_Imune: TUniDBCheckBox;
    cMVA_NaoReducao: TUniDBCheckBox;
    Genero: TFDQuery;
    dsGenero: TDataSource;
    dsEXTIPI: TDataSource;
    EXTIPI: TFDQuery;
    ModalBCICMS: TFDQuery;
    dsModalBCICMS: TDataSource;
    ModalBCICMSST: TFDQuery;
    dsModalBCICMSST: TDataSource;
    ClasseIPI: TFDQuery;
    dsClasseIPI: TDataSource;
    Alerta: TUniSweetAlert;
    UniTabSheet1: TUniTabSheet;
    ICMS: TFDQuery;
    dsICMS: TDataSource;
    Estados: TFDQuery;
    dsEstados: TDataSource;
    tmp: TFDQuery;
    UniScrollBox1: TUniScrollBox;
    pPanel2: TUniPanel;
    pFichaICMS: TUniContainerPanel;
    UniDBGrid2: TUniDBGrid;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    CSTICMS: TFDQuery;
    dsCSTICMS: TDataSource;
    UniGroupBox1: TUniGroupBox;
    cFCP: TUniDBCheckBox;
    cCusto_Seletivo: TUniDBCheckBox;
    ICMSNCM: TStringField;
    ICMSEstado: TStringField;
    ICMSST: TFMTBCDField;
    ICMSMVA_Imp: TFMTBCDField;
    ICMSMVA_Nac: TFMTBCDField;
    ICMSReducao_BCICMSOp: TFMTBCDField;
    ICMSReducao_BCICMSOp2: TFMTBCDField;
    ICMSReducao_BCICMSST: TFMTBCDField;
    UniContainerPanel1: TUniContainerPanel;
    cEstado: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniPanel2: TUniPanel;
    NavegaICMS: TUniDBNavigator;
    bAddICMS: TUniSpeedButton;
    bEditICMS: TUniSpeedButton;
    bDelICMS: TUniSpeedButton;
    bCancICMS: TUniSpeedButton;
    bSalvaICMS: TUniSpeedButton;
    bBuscarNCM: TUniButton;
    UniTabSheet2: TUniTabSheet;
    mJson: TUniMemo;
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
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure NCMBeforePost(DataSet: TDataSet);
    procedure NCMBeforeDelete(DataSet: TDataSet);
    procedure NCMAfterScroll(DataSet: TDataSet);
    procedure bAddICMSClick(Sender: TObject);
    procedure bEditICMSClick(Sender: TObject);
    procedure bDelICMSClick(Sender: TObject);
    procedure bSalvaICMSClick(Sender: TObject);
    procedure bCancICMSClick(Sender: TObject);
    procedure bBuscarNCMClick(Sender: TObject);
  private
    { Private declarations }
    procedure LigaBotoesICMS(Estado: boolean);
//    function BaixarTabelaNCM: string;
    procedure ImportarTabelaNCM;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, ConsultaTributacaoNCM;

procedure TfCadNCM.bAddICMSClick(Sender: TObject);
begin
      with ICMS do begin
           try
               LigaBotoesICMS(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadNCM.bAdicionarClick(Sender: TObject);
begin
      with NCM do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadNCM.bExcluirClick(Sender: TObject);
begin
     with NCM do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('NCM').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadNCM.bGravarClick(Sender: TObject);
begin
      with NCM do begin
           if (State = dsInsert) and (Existe(NCM, 'NCM', FieldByName('NCM').AsString)) then begin
              MessageDlg('Já existe um "NCM" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cNCM.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('NCM').AsString) = '' then begin
              MessageDlg('O campo "NCM" não pode ficar em branco!', mtError, [mbOK]);
              cNCM.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Produto').AsString) = '' then begin
              MessageDlg('O campo "Descrição" não pode ficar em branco!', mtError, [mbOK]);
              cProduto.SetFocus;
              Abort;
           end;

           try
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadNCM.bCancelarClick(Sender: TObject);
begin
      NCM.Cancel;
      LigaBotoes(true);
end;

procedure TfCadNCM.bCancICMSClick(Sender: TObject);
begin
      ICMS.Cancel;
      LigaBotoesICMS(true);
end;

procedure TfCadNCM.bDelICMSClick(Sender: TObject);
begin
     with ICMS do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Estado').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
     Estados.Refresh;
end;

procedure TfCadNCM.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         NCM.Edit;
         cNCM.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadNCM.bEditICMSClick(Sender: TObject);
begin
     try
         LigaBotoesICMS(false);
         ICMS.Edit;
         cEstado.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadNCM.UniFrameDestroy(Sender: TObject);
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

procedure TfCadNCM.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadNCM.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     pFicha.Enabled        := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadNCM.LigaBotoesICMS(Estado:boolean);
begin
     NavegaICMS.Enabled  := Estado;
     bEditICMS.Enabled   := Estado;
     bDelICMS.Enabled    := Estado;
     bAddICMS.Enabled    := Estado;
     bCancICMS.Enabled   := not Estado;
     bSalvaICMS.Enabled  := not Estado;
     pFichaICMS.Enabled  := not Estado;
end;

procedure TfCadNCM.UniFrameCreate(Sender: TObject);
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

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      with NCM do begin
           sql.clear;
           SQL.Add('select *');
           sql.add('from   NCM');
           sql.add('order  by NCM');
           open;
      end;
      with Genero do begin
           sql.clear;
           SQL.Add('select Codigo, Descricao');
           sql.add('from   Genero');
           sql.add('order  by Codigo');
           open;
      end;
      with EXTIPI do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from   EXTIPI');
           sql.add('order  by Codigo');
           open;
      end;
      with ModalBCICMS do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from   ModalidadeBCICMS');
           sql.add('order  by Codigo');
           open;
      end;
      with ModalBCICMSST do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from   ModalidadeBCICMSST');
           sql.add('order  by Codigo');
           open;
      end;
      with ClasseIPI do begin
           sql.clear;
           sql.Add('select Codigo, Descricao');
           sql.add('from EnquadramentoLegalIPI');
           sql.add('order by Codigo');
           open;
      end;
      with CSTICMS do begin
           sql.clear;
           sql.Add('select * from CSTICMSTabA');
           sql.add('order by Codigo');
           open;
      end;
end;

procedure TfCadNCM.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadNCM.bPesquisaClick(Sender: TObject);
begin
     NCM.Cancel;
     //LigaBotoes(true);
     Pesquisa(NCM, 'NCM', 'NCM', cPesquisa.text)
end;

procedure TfCadNCM.bSalvaICMSClick(Sender: TObject);
begin
      with ICMS do begin
           if Trim(FieldByName('Estado').AsString) = '' then begin
              MessageDlg('O campo "Estado" não pode ficar em branco!', mtError, [mbOK]);
              cEstado.SetFocus;
              Abort;
           end;
           with tmp do begin
                sql.clear;
                sql.Add('select count(*) as Qtde from NCMICMS where NCM = :pNCM and Estado = :pUF');
                parambyname('pNCM').Value := NCM.FieldByName('NCM').Value;
                parambyname('pUF').Value  := ICMS.FieldByName('Estado').Value;
                open;
                if fieldbyname('qtde').AsInteger > 0 then begin
                   MessageDlg('Estado ja cadastrado para esta NCM!', mtError, [mbOK]);
                   cEstado.SetFocus;
                   Abort;
                end;
           end;
           try
               fieldbyname('NCM').Value := NCM.FieldByName('NCM').Value;
               Post;
               LigaBotoesICMS(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
      Estados.Refresh;
end;

procedure TfCadNCM.NCMBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Produto').AsString, EstadoTabela(DataSet));
end;

procedure TfCadNCM.NCMAfterScroll(DataSet: TDataSet);
begin
      with ICMS do begin
           sql.clear;
           sql.Add('select *');
           sql.add('from NCMICMS');
           sql.add('where NCM = :pNCM');
           sql.add('order by Estado');
           parambyname('pNCM').value := NCM.FieldByName('NCM').AsString;
           open;
      end;
      with Estados do begin
           sql.clear;
           sql.Add('select UF, Nome');
           sql.add('from Estados');
           sql.add('order by Nome');
           open;
      end;
end;

procedure TfCadNCM.NCMBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Produto').AsString,'Delete');
end;

procedure TfCadNCM.bBuscarNCMClick(Sender: TObject);
begin
     mJson.lines.clear;
     try
          mJSON.Lines.Text := TConsultaTributacaoNCM.ConsultarImportacao('85176259',23, Date);
     except
          on E: Exception do ShowMessage(E.Message);
     end;
end;

procedure TfCadNCM.ImportarTabelaNCM;
const
     TAMANHO_LOTE = 500;
var
     Qry: TFDQuery;
     Raiz: TJSONObject;
     Lista: TJSONArray;
     Item: TJSONObject;
     JSON: string;
     Inicio, Qtde, i, j: Integer;
     Incluidos, Atualizados: Integer;
     Cronometro: TStopwatch;

     function Valor(const Campo: string): string;
     var
          V: TJSONValue;
     begin
          Result := '';
          V := Item.GetValue(Campo);
          if (V <> nil) and not (V is TJSONNull) then
               Result := V.Value;
     end;

     function DataNCM(const Campo: string): Variant;
     var
          D: TDateTime;
          F: TFormatSettings;
          S: string;
     begin
          Result := Null;
          S := Trim(Valor(Campo));
          if S = '' then Exit;
          F := TFormatSettings.Create('pt-BR');
          F.ShortDateFormat := 'dd/mm/yyyy';
          if not TryStrToDate(S, D, F) then raise Exception.Create('Data inválida: ' + S);
          Result := D;
     end;

begin
     Cronometro := TStopwatch.StartNew;

     // Lê o arquivo usando o método já testado.
     mJSON.Lines.LoadFromFile('C:\Projetos\AtlasWeb\Files\ncm_json_consulta.txt');
     JSON := mJSON.Lines.Text;
     Raiz := TJSONObject.ParseJSONValue(JSON) as TJSONObject;
     if Raiz = nil then raise Exception.Create('Arquivo JSON inválido.');

     try
          Lista := Raiz.GetValue('Nomenclaturas') as TJSONArray;
          if (Lista = nil) or (Lista.Count = 0) then raise Exception.Create('Nenhum NCM encontrado no JSON.');
          Qry := TFDQuery.Create(nil);
          try
               Qry.Connection := UniMainModule.Conecta;
               UniMainModule.Conecta.StartTransaction;
               try
                    // Limpa apenas a tabela de importação.
                    UniMainModule.Conecta.ExecSQL('DELETE FROM NCM_Oficial');
                    Qry.SQL.Text := 'INSERT INTO NCM_Oficial(' +
                                     'Codigo, Descricao, Data_Inicio, Data_Fim, ' +
                                     'Tipo_Ato_Ini, Numero_Ato_Ini, Ano_Ato_Ini) ' +
                                     'VALUES (' +
                                     ':Codigo, :Descricao, :Data_Inicio, :Data_Fim, ' +
                                     ':Tipo_Ato_Ini, :Numero_Ato_Ini, :Ano_Ato_Ini)';

                    Qry.ParamByName('Codigo').DataType := ftString;
                    Qry.ParamByName('Codigo').Size := 10;
                    Qry.ParamByName('Descricao').DataType := ftWideString;
                    Qry.ParamByName('Descricao').Size := 4000;
                    Qry.ParamByName('Data_Inicio').DataType := ftDate;
                    Qry.ParamByName('Data_Fim').DataType := ftDate;
                    Qry.ParamByName('Tipo_Ato_Ini').DataType := ftString;
                    Qry.ParamByName('Tipo_Ato_Ini').Size := 50;
                    Qry.ParamByName('Numero_Ato_Ini').DataType := ftString;
                    Qry.ParamByName('Numero_Ato_Ini').Size := 20;
                    Qry.ParamByName('Ano_Ato_Ini').DataType := ftString;
                    Qry.ParamByName('Ano_Ato_Ini').Size := 4;
                    Qry.Params.ArraySize := TAMANHO_LOTE;
                    Qry.Prepare;

                    Inicio := 0;

                    while Inicio < Lista.Count do begin
                         Qtde := Lista.Count - Inicio;
                         if Qtde > TAMANHO_LOTE then Qtde := TAMANHO_LOTE;

                         for j := 0 to Qtde - 1 do begin
                             i                                              := Inicio + j;
                             Item                                           := Lista.Items[i] as TJSONObject;
                             Qry.ParamByName('Codigo').AsStrings[j]         := Valor('Codigo');
                             Qry.ParamByName('Descricao').AsWideStrings[j]  := Valor('Descricao');
                             Qry.ParamByName('Data_Inicio').Values[j]       := DataNCM('Data_Inicio');
                             Qry.ParamByName('Data_Fim').Values[j]          := DataNCM('Data_Fim');
                             Qry.ParamByName('Tipo_Ato_Ini').AsStrings[j]   := Valor('Tipo_Ato_Ini');
                             Qry.ParamByName('Numero_Ato_Ini').AsStrings[j] := Valor('Numero_Ato_Ini');
                             Qry.ParamByName('Ano_Ato_Ini').AsStrings[j]    := Valor('Ano_Ato_Ini');
                         end;

                         Qry.Execute(Qtde, 0);
                         Inc(Inicio, Qtde);
                    end;

                    // Atualiza somente os registros diferentes.
                    Qry.SQL.Text := 'UPDATE D SET ' +
                                    'D.Descricao = O.Descricao, ' +
                                    'D.Data_Inicio = O.Data_Inicio, ' +
                                    'D.Data_Fim = O.Data_Fim, ' +
                                    'D.Tipo_Ato_Ini = O.Tipo_Ato_Ini, ' +
                                    'D.Numero_Ato_Ini = O.Numero_Ato_Ini, ' +
                                    'D.Ano_Ato_Ini = O.Ano_Ato_Ini ' +
                                    'FROM NCM_Oficial D ' +
                                    'INNER JOIN NCM_Oficial O ON O.Codigo = D.Codigo ' +
                                    'WHERE EXISTS (' +
                                    'SELECT D.Descricao, D.Data_Inicio, D.Data_Fim, ' +
                                    'D.Tipo_Ato_Ini, D.Numero_Ato_Ini, D.Ano_Ato_Ini ' +
                                    'EXCEPT ' +
                                    'SELECT O.Descricao, O.Data_Inicio, O.Data_Fim, ' +
                                    'O.Tipo_Ato_Ini, O.Numero_Ato_Ini, O.Ano_Ato_Ini)';

                    Qry.ExecSQL;
                    Atualizados := Qry.RowsAffected;

                    // Inclui apenas códigos novos.
                    Qry.SQL.Text := 'INSERT INTO NCM_Oficial (' +
                                    'Codigo, Descricao, Data_Inicio, Data_Fim, ' +
                                    'Tipo_Ato_Ini, Numero_Ato_Ini, Ano_Ato_Ini) ' +
                                    'SELECT O.Codigo, O.Descricao, O.Data_Inicio, O.Data_Fim, ' +
                                    'O.Tipo_Ato_Ini, O.Numero_Ato_Ini, O.Ano_Ato_Ini ' +
                                    'FROM NCM_Oficial O ' +
                                    'WHERE NOT EXISTS (' +
                                    'SELECT 1 FROM NCM_Oficial D WHERE D.Codigo = O.Codigo)';

                    Qry.ExecSQL;
                    Incluidos := Qry.RowsAffected;
                    UniMainModule.Conecta.Commit;
               except
                    if UniMainModule.Conecta.InTransaction then
                         UniMainModule.Conecta.Rollback;
                    raise;
               end;

          finally
               Qry.Free;
          end;

          Cronometro.Stop;

          ShowMessage('Atualização NCM concluída!' + sLineBreak +
                      'Registros no arquivo: ' + IntToStr(Lista.Count) + sLineBreak +
                      'Incluídos: ' + IntToStr(Incluidos) + sLineBreak +
                      'Atualizados: ' + IntToStr(Atualizados) + sLineBreak +
                      'Sem alteração: ' + IntToStr(Lista.Count - Incluidos - Atualizados) + sLineBreak +'Tempo: ' + FormatFloat('0.0', Cronometro.Elapsed.TotalSeconds) +' segundos');
     finally
          Raiz.Free;
     end;
end;


end.
