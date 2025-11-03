unit CadMunicipios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel,
  uniScrollBox, uniSpeedButton, Funcoes, Data.DB, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client,
  uniComboBox, uniDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMultiItem, uniDBComboBox, uniBitBtn, uniBasicGrid, uniSweetAlert;

type
  TfCadMunicipios = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    Grade: TUniDBGrid;
    aFicha2: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    pFicha: TUniPanel;
    BarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    UniPanel2: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    dsMunicipios: TDataSource;
    cCodigo: TUniDBEdit;
    cNumero: TUniDBEdit;
    cNome: TUniDBEdit;
    cUF: TUniDBEdit;
    cEstado: TUniDBLookupComboBox;
    dsEstados: TDataSource;
    Estados: TFDQuery;
    Municipios: TFDQuery;
    MunicipiosCodigo: TIntegerField;
    MunicipiosNumero: TSmallintField;
    MunicipiosNome: TStringField;
    MunicipiosUF: TStringField;
    MunicipiosEstado: TStringField;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure MunicipiosBeforePost(DataSet: TDataSet);
    procedure MunicipiosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadMunicipios.bAdicionarClick(Sender: TObject);
begin
      with Municipios do begin
           try
               LigaBotoes(false);
               Append;
               cCodigo.Enabled := true;
               cCodigo.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadMunicipios.bCancelarClick(Sender: TObject);
begin
      Municipios.Cancel;
      LigaBotoes(true);
end;

procedure TfCadMunicipios.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Municipios.Edit;
         cCodigo.Enabled := false;
         cCodigo.setfocus;
     except
         Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadMunicipios.bExcluirClick(Sender: TObject);
begin
     with Municipios do begin
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

procedure TfCadMunicipios.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadMunicipios.bSalvarClick(Sender: TObject);
begin
      with Municipios do begin
           if (State = dsInsert) and (Existe(Municipios, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um Município cadastrado com esse codigo!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(cCodigo.Text) = '' then begin
              MessageDlg('Campo "Código" deve ser informado', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(cEstado.Text) = '' then begin
              MessageDlg('Campo "Estado" deve ser informado', mtError, [mbOK]);
              cEstado.SetFocus;
              Abort;
           end;
           if Trim(cNome.Text) = '' then begin
              MessageDlg('Campo "Nome" deve ser informado', mtError, [mbOK]);
              cNome.SetFocus;
              Abort;
           end;

           try
               Municipios.FieldByName('Numero').Value := Estados.FieldByName('Numero').Value;
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfCadMunicipios.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
     pFicha.Enabled        := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadMunicipios.MunicipiosBeforePost(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadMunicipios.MunicipiosBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadMunicipios.UniFrameCreate(Sender: TObject);
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

      with Municipios do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Numero');
           sql.add('      ,Nome');
           sql.add('      ,UF');
//           sql.add('      ,Estado = (select Nome from Estados est where est.uf = mun.uf)');
           sql.add('from  Municipios mun');
           sql.add('order by UF, Nome');
           open;
      end;
      with Estados do begin
           sql.clear;
           sql.Add('select UF, Numero, Nome from Estados order by Nome');
           open;
      end;
end;

procedure TfCadMunicipios.UniFrameDestroy(Sender: TObject);
begin
      Municipios.close;
      Estados.Close;
end;

procedure TfCadMunicipios.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadMunicipios.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Municipios, 'Municipios', 'Codigo', 'Nome',cPesquisa.text);
end;


end.
