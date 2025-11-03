unit CadNCM;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid,
    uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator,
    uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
    FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniStringGrid, uniCheckBox,
    uniGroupBox, uniMultiItem, uniComboBox, uniDBComboBox, uniSweetAlert;

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
    cCusto_Seletivo: TUniDBCheckBox;
    cCEST: TUniDBEdit;
    cFCP: TUniDBCheckBox;
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
    ICMSNCM: TStringField;
    ICMSEstado: TStringField;
    ICMSST: TFloatField;
    ICMSMVA_Imp: TFloatField;
    ICMSMVA_Nac: TFloatField;
    ICMSReducao_BCICMSOp: TFloatField;
    ICMSReducao_BCICMSOp2: TFloatField;
    ICMSReducao_BCICMSST: TFloatField;
    tmp: TFDQuery;
    UniScrollBox1: TUniScrollBox;
    pPanel2: TUniPanel;
    UniPanel2: TUniPanel;
    NavegaICMS: TUniDBNavigator;
    bAddICMS: TUniSpeedButton;
    bEditICMS: TUniSpeedButton;
    bDelICMS: TUniSpeedButton;
    bCancICMS: TUniSpeedButton;
    bSalvaICMS: TUniSpeedButton;
    pFichaICMS: TUniContainerPanel;
    UniDBGrid2: TUniDBGrid;
    cEstado: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    CSTICMS: TFDQuery;
    dsCSTICMS: TDataSource;
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
  private
    procedure LigaBotoesICMS(Estado: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

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
     LigaBotoes(true);
     Pesquisa(NCM, 'NCM', '', 'Produto',cPesquisa.text)
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

end.
