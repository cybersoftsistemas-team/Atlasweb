unit CadModalidadesImportacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, uniCheckBox, FireDAC.Comp.DataSet, uniMultiItem, uniComboBox, uniDBComboBox, uniBasicGrid, uniDBGrid, uniGroupBox, uniSweetAlert;

type
  TfCadModalidadesImportacao = class(TUniFrame)
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    Pasta: TUnipageControl;
    aDados: TUniTabSheet;
    Modal: TFDQuery;
    dsModal: TDataSource;
    UniScrollBox1: TUniScrollBox;
    pFicha: TUniPanel;
    cCodigo: TUniDBEdit;
    cDescricao: TUniDBEdit;
    cApuracao_PISCOFINS: TUniDBCheckBox;
    cExige_Cliente: TUniDBCheckBox;
    UniGroupBox1: TUniGroupBox;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniDBLookupComboBox11: TUniDBLookupComboBox;
    UniDBLookupComboBox12: TUniDBLookupComboBox;
    Plano: TFDQuery;
    dsPlano: TDataSource;
    CentroCusto: TFDQuery;
    dsCentroCusto: TDataSource;
    Destinatarios: TFDQuery;
    dsDestinatarios: TDataSource;
    Documentos: TFDQuery;
    dsDocumentos: TDataSource;
    aLista: TUniTabSheet;
    Grade: TUniDBGrid;
    Alerta: TUniSweetAlert;
    UniGroupBox2: TUniGroupBox;
    UniDBLookupComboBox16: TUniDBLookupComboBox;
    UniDBLookupComboBox17: TUniDBLookupComboBox;
    UniDBLookupComboBox18: TUniDBLookupComboBox;
    UniDBLookupComboBox19: TUniDBLookupComboBox;
    UniDBLookupComboBox20: TUniDBLookupComboBox;
    UniDBLookupComboBox21: TUniDBLookupComboBox;
    UniDBLookupComboBox22: TUniDBLookupComboBox;
    UniDBLookupComboBox23: TUniDBLookupComboBox;
    UniDBLookupComboBox24: TUniDBLookupComboBox;
    UniDBCheckBox1: TUniDBCheckBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado, Edita:boolean);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure TiposProcessoBeforePost(DataSet: TDataSet);
    procedure TiposProcessoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadModalidadesImportacao.bAdicionarClick(Sender: TObject);
begin
      with Modal do begin
           try
               LigaBotoes(false, true);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadModalidadesImportacao.bExcluirClick(Sender: TObject);
begin
     with Modal do begin
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

procedure TfCadModalidadesImportacao.bGravarClick(Sender: TObject);
begin
      with Modal do begin
           if (State = dsInsert) then begin
              FieldByName('Codigo').Value := GeraCodigo('ModalidadeImportacao', 'Codigo');
           end;
           if (State = dsInsert) and (Existe(Modal, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Descricao').AsString) = '' then begin
              MessageDlg('O campo "Descricao" não pode ficar em branco!', mtError, [mbOK]);
              cDescricao.SetFocus;
              Abort;
           end;
           try
               Post;
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
               LigaBotoes(true, true);
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadModalidadesImportacao.bCancelarClick(Sender: TObject);
begin
      Modal.Cancel;
      LigaBotoes(true, true);
end;

procedure TfCadModalidadesImportacao.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false, true);
         Modal.Edit;
         cCodigo.setfocus;
     except
         Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadModalidadesImportacao.UniFrameDestroy(Sender: TObject);
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

procedure TfCadModalidadesImportacao.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadModalidadesImportacao.LigaBotoes(Estado, Edita:boolean);
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

procedure TfCadModalidadesImportacao.UniFrameCreate(Sender: TObject);
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

      LigaBotoes(true, true);
      Pasta.ActivePageIndex := 0;

      with Modal do begin
           sql.clear;
           sql.add('select *');
           sql.add('from ModalidadeImportacao');
           sql.add('order by Codigo');
           open;
      end;

      with Plano do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Conta');
           sql.add('      ,Nome = Nome_Contabil');
           sql.Add('from PlanoContas');
           sql.Add('order by Nome');
           //sql.SaveToFile('c:\temp\PlanoFinanceiro.sql');
           open;
      end;

      CentroCusto.sql.clear;
      CentroCusto.sql.add('select Codigo, nome from CentroCusto order by Nome');
      CentroCusto.open;

      Documentos.sql.clear;
      Documentos.sql.add('select Codigo, Nome from TipoDocumento order by Nome');
      Documentos.open;

      Destinatarios.sql.clear;
      Destinatarios.sql.add('select Codigo, Nome from Destinatarios where Orgao_Publico = 1 order by Nome');
      Destinatarios.open;
end;

procedure TfCadModalidadesImportacao.TiposProcessoBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadModalidadesImportacao.TiposProcessoBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;


end.
