unit CadEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, Funcoes,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniDBNavigator, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniDBEdit, uniScrollBox, uniButton, uniBitBtn, uniSpeedButton, uniEdit, uniPanel, uniBasicGrid, uniDBGrid, uniPageControl, uniGUIBaseClasses, uniRadioGroup, uniDBRadioGroup,
  uniCheckBox, uniDBCheckBox, uniGroupBox, uniLabel, uniSweetAlert;

type
  TfCadEstados = class(TUniFrame)
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    Grade: TUniDBGrid;
    UniPanel2: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    aFicha2: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    pFicha: TUniPanel;
    cNumero: TUniDBEdit;
    cNome: TUniDBEdit;
    cUF: TUniDBEdit;
    BarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    dsEstados: TDataSource;
    Estados: TFDQuery;
    cDed_Do: TUniDBEdit;
    cRegiao: TUniDBRadioGroup;
    cMascara_IE: TUniDBEdit;
    UniTabSheet1: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    pFicha2: TUniPanel;
    UniDBCheckBox1: TUniDBCheckBox;
    cGNRE_ST: TUniDBEdit;
    cCodigo_GNRE: TUniDBEdit;
    cConvenio: TUniDBEdit;
    cGNRE_AdicCod: TUniDBEdit;
    cGNRE_AdicTipo: TUniDBEdit;
    cGNRE_Imp: TUniDBEdit;
    cGNRE_DIFAL: TUniDBEdit;
    cICMS_Interno: TUniDBEdit;
    PlanoFin: TFDQuery;
    dsPlanoFin: TDataSource;
    Docs: TFDQuery;
    dsDocs: TDataSource;
    CentroCusto: TFDQuery;
    dsCentroCusto: TDataSource;
    Orgaos: TFDQuery;
    dsOrgaos: TDataSource;
    Regioes: TFDQuery;
    dsRegioes: TDataSource;
    GroupBox20: TUniGroupBox;
    cGNRE_Orgao: TUniDBLookupComboBox;
    clGNRE_TipoDocumento: TUniDBLookupComboBox;
    cGNRE_CentroCusto: TUniDBLookupComboBox;
    cGNRE_Classificacao: TUniDBLookupComboBox;
    GroupBox1: TUniGroupBox;
    cImp_Contribuinte: TUniDBEdit;
    cImp_NContribuinte: TUniDBEdit;
    cImp_ContribuinteCheia: TUniDBEdit;
    cImp_NContribuinteCheia: TUniDBEdit;
    GroupBox2: TUniGroupBox;
    cNac_ContribuinteCheia: TUniDBEdit;
    cNac_NContribuinteCheia: TUniDBEdit;
    cNac_Contribuinte: TUniDBEdit;
    cNac_NContribuinte: TUniDBEdit;
    Alerta: TUniSweetAlert;
    procedure bAdicionarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure EstadosBeforePost(DataSet: TDataSet);
    procedure EstadosBeforeDelete(DataSet: TDataSet);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPesquisaClick(Sender: TObject);
  private
    procedure LigaBotoes(Estado: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Main, MainModule;

procedure TfCadEstados.bAdicionarClick(Sender: TObject);
begin
      with Estados do begin
           try
               LigaBotoes(false);
               Append;
               cUF.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadEstados.bCancelarClick(Sender: TObject);
begin
      Estados.Cancel;
      LigaBotoes(true);
end;

procedure TfCadEstados.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Estados.Edit;
         cUF.setfocus;
     except
         Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadEstados.bExcluirClick(Sender: TObject);
begin
     with Estados do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Nome').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadEstados.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadEstados.bPesquisaClick(Sender: TObject);
begin
      Pesquisa(Estados, 'Estados', 'UF', 'Nome',cPesquisa.text);
end;

procedure TfCadEstados.bSalvarClick(Sender: TObject);
begin
      with Estados do begin
           if (State = dsInsert) and (Existe(Estados, 'UF', FieldByName('UF').AsString)) then begin
              MessageDlg('Já existe um Estado cadastrado com esse codigo!', mtError, [mbOK]);
              cUF.SetFocus;
              Abort;
           end;
           if Trim(cUF.Text) = '' then begin
              MessageDlg('Campo "Código" deve ser informado', mtError, [mbOK]);
              cUF.SetFocus;
              Abort;
           end;
           if Trim(cNome.Text) = '' then begin
              MessageDlg('Campo "Nome" deve ser informado', mtError, [mbOK]);
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

procedure TfCadEstados.cPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadEstados.EstadosBeforePost(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadEstados.EstadosBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadEstados.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
     pFicha.Enabled        := not Estado;
     pFicha2.Enabled       := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadEstados.UniFrameCreate(Sender: TObject);
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

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      with Estados do begin
           sql.clear;
           sql.Add('select *');
           sql.Add('from Estados');
           sql.Add('order by Nome');
           open;
      end;
      with PlanoFin do begin
           sql.clear;
           sql.Add('select Codigo, Nome = Nome_Financeiro from PlanoContas');
           sql.Add('where isnull(Desativada, 0) = 0');
           sql.add('and isnull(Plano_Financeiro, 0) = 1');
           sql.add('and isnull(Tributo, 0) = 1');
           sql.add('order by Nome, Codigo');
           open;
      end;
      with CentroCusto do begin
           sql.Clear;
           sql.Add('select Codigo, Nome from CentroCusto where Empresa = :pCNPJ order by Nome');
           ParamByName('pCNPJ').asstring := uniMainModule.mEmpresaAtiva;
           open;
      end;
      with Docs do begin
           sql.Clear;
           sql.Add('select Codigo, Nome from TipoDocumento where isnull(Desativada, 0) = 0 order by Nome');
           open;
      end;
      with Orgaos do begin
           sql.clear;
           sql.Add('select Codigo, Nome, CNPJ from Destinatarios where isnull(Orgao_Publico, 0) = 1 order by Nome');
           open;
      end;
end;

procedure TfCadEstados.UniFrameDestroy(Sender: TObject);
begin
      Estados.Close;
end;

end.
