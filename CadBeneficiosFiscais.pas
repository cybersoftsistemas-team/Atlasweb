unit CadBeneficiosFiscais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, 
  FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniRadioGroup, uniDBRadioGroup, uniMultiItem, uniComboBox, uniDBComboBox, uniCheckBox, uniGroupBox, uniSweetAlert;

type
  TfCadBeneficiosFiscais = class(TUniFrame)
    Alerta: TUniSweetAlert;
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
    Pasta: TuniPageControl;
    TabSheet1: TuniTabSheet;
    TabSheet2: TuniTabSheet;
    Beneficio: TFDQuery;
    dsBenificio: TDataSource;
    Grade: TUniDBGrid;
    RecuperarICMS: TFDQuery;
    dsRecuperarICMS: TDataSource;
    UniScrollBox1: TUniScrollBox;
    pFicha: TUniPanel;
    cCodigo: TUniDBEdit;
    cNome: TUniDBEdit;
    GroupBox1: TUniGroupBox;
    cBCICMSEnt_FOB: TUniDBCheckBox;
    cBCICMSEnt_Frete: TUniDBCheckBox;
    cBCICMSEnt_Seguro: TUniDBCheckBox;
    cBCICMSEnt_II: TUniDBCheckBox;
    cBCICMSEnt_IPI: TUniDBCheckBox;
    cBCICMSEnt_PIS: TUniDBCheckBox;
    cBCICMSEnt_COFINS: TUniDBCheckBox;
    cBCICMSEnt_Despesas: TUniDBCheckBox;
    cVencimento_ICMS: TUniDBEdit;
    cEstado: TUniDBLookupComboBox;
    cReducaoICMS_Entrada: TUniDBEdit;
    cReducaoICMS_Saida: TUniDBEdit;
    cICMS_Diferido: TUniDBCheckBox;
    cVencimento_ICMSSub: TUniDBEdit;
    cReducao_AliquotaICMS: TUniDBEdit;
    cInativa: TUniDBCheckBox;
    cCodigo_Receita: TUniDBLookupComboBox;
    cCaucao_RetBANDES: TUniDBEdit;
    cValor_TaxaCartorio: TUniDBEdit;
    cPercentual_TaxaCartorio: TUniDBEdit;
    cTaxa_LeilaoBANDES: TUniDBEdit;
    cLimite_Contrato: TUniDBEdit;
    Estados: TFDQuery;
    dsEstados: TDataSource;
    UniGroupBox1: TUniGroupBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    UniDBCheckBox8: TUniDBCheckBox;
    RecuperarICMSAliquota_ICMS: TFloatField;
    RecuperarICMSAliquota_Recuperar: TFloatField;
    RecuperarICMSRegistro: TSmallintField;
    RecuperarICMSBeneficio: TSmallintField;
    RecuperarICMSBase_Calculo: TStringField;
    UniScrollBox2: TUniScrollBox;
    pFicha2: TUniPanel;
    pFicha3: TUniContainerPanel;
    cBase_Calculo: TUniDBRadioGroup;
    cAliquota_Recuperar: TUniDBEdit;
    cAliquota_ICMS: TUniDBEdit;
    gRetorno: TUniDBGrid;
    PanelNav: TUniPanel;
    Navega2: TUniDBNavigator;
    bAddAliq: TUniSpeedButton;
    bEdiAliq: TUniSpeedButton;
    bExcAliq: TUniSpeedButton;
    bCanAliq: TUniSpeedButton;
    bGraAliq: TUniSpeedButton;
    CodigosRFBSPED: TFDQuery;
    dsCodigosRFBSPED: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure LigaBotoes2(Estado:boolean);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure BeneficioBeforePost(DataSet: TDataSet);
    procedure BeneficioBeforeDelete(DataSet: TDataSet);
    procedure bAddAliqClick(Sender: TObject);
    procedure bEdiAliqClick(Sender: TObject);
    procedure bExcAliqClick(Sender: TObject);
    procedure bCanAliqClick(Sender: TObject);
    procedure bGraAliqClick(Sender: TObject);
    procedure cCodigoChangeValue(Sender: TObject);
    procedure cEstadoChangeValue(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadBeneficiosFiscais.bAddAliqClick(Sender: TObject);
begin
      with RecuperarICMS do begin
           try
               LigaBotoes2(false);
               Append;
               cAliquota_ICMS.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadBeneficiosFiscais.bAdicionarClick(Sender: TObject);
begin
      with Beneficio do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadBeneficiosFiscais.bExcAliqClick(Sender: TObject);
begin
     with RecuperarICMS do begin
          MessageDlg('Deseja realmente excluir estes dados?', mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                          end;
                    end);
     end;
end;

procedure TfCadBeneficiosFiscais.bExcluirClick(Sender: TObject);
begin
     with Beneficio do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadBeneficiosFiscais.bGraAliqClick(Sender: TObject);
begin
      with RecuperarICMS do begin
           if (State = dsInsert) then begin
              FieldByName('Registro').Value := GeraCodigo('RecuperarICMS', 'Registro');
           end;
           try
               Post;
               LigaBotoes2(true);
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadBeneficiosFiscais.bGravarClick(Sender: TObject);
begin
      with Beneficio do begin
           if (State = dsInsert) then begin
              FieldByName('Codigo').Value := GeraCodigo('Beneficio', 'Codigo');
           end;
           if (State = dsInsert) and (Existe(Beneficio, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Benefício" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Código" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Nome').AsString) = '' then begin
              MessageDlg('O campo "Nome" não pode ficar em branco!', mtError, [mbOK]);
              cNome.SetFocus;
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

procedure TfCadBeneficiosFiscais.bCanAliqClick(Sender: TObject);
begin
      RecuperarICMS.cancel;
      LigaBotoes2(true);
end;

procedure TfCadBeneficiosFiscais.bCancelarClick(Sender: TObject);
begin
      Beneficio.Cancel;
      LigaBotoes(true);
end;

procedure TfCadBeneficiosFiscais.bEdiAliqClick(Sender: TObject);
begin
     try
         LigaBotoes2(false);
         RecuperarICMS.Edit;
         cAliquota_ICMS.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadBeneficiosFiscais.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Beneficio.Edit;
         cCodigo.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadBeneficiosFiscais.UniFrameDestroy(Sender: TObject);
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

procedure TfCadBeneficiosFiscais.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadBeneficiosFiscais.LigaBotoes(Estado:boolean);
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

procedure TfCadBeneficiosFiscais.LigaBotoes2(Estado:boolean);
begin
     Navega2.Enabled  := Estado;
     bEdiAliq.Enabled := Estado;
     bExcAliq.Enabled := Estado;
     bAddAliq.Enabled := Estado;
     bCanAliq.Enabled := not Estado;
     bGraAliq.Enabled := not Estado;
     pFicha3.Enabled  := not Estado;
end;

procedure TfCadBeneficiosFiscais.UniFrameCreate(Sender: TObject);
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
      LigaBotoes2(true);
      Pasta.ActivePageIndex := 0;

      with Beneficio do begin
           sql.clear;
           sql.add('select * from BeneficioFiscal order by Nome');
           open;
      end;
      with RecuperarICMS do begin
           sql.clear;
           sql.add('select * from RecuperarICMS where Beneficio = :pBene');
           parambyname('pBene').asinteger := Beneficio.fieldbyname('Codigo').asinteger;
           open;
      end;
      with Estados do begin
           sql.clear;
           sql.add('select * from Estados order by Nome');
           open;
      end;
end;

procedure TfCadBeneficiosFiscais.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadBeneficiosFiscais.bPesquisaClick(Sender: TObject);
begin
     Beneficio.Cancel;
     LigaBotoes(true);
     Pesquisa(Beneficio, 'BeneficioFiscal', 'Codigo', 'Nome',cPesquisa.text)
end;

procedure TfCadBeneficiosFiscais.BeneficioBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadBeneficiosFiscais.BeneficioBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadBeneficiosFiscais.cCodigoChangeValue(Sender: TObject);
begin
      with RecuperarICMS do begin
           sql.clear;
           sql.add('select * from RecuperarICMS where Beneficio = :pBene order by Aliquota_ICMS');
           ParamByName('pBene').asinteger := Beneficio.fieldbyName('Codigo').asinteger;
           open;
      end;
end;

procedure TfCadBeneficiosFiscais.cEstadoChangeValue(Sender: TObject);
begin
      With CodigosRFBSPED do begin
           sql.clear;
           sql.Add('select * from CodigosRFBSPED where Estado = :pEstado or Estado is null order by Descricao');
           ParamByName('pEstado').asstring := cEstado.KeyValueStr;
           Open;
      End;
end;


end.
