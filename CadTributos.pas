unit CadTributos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniScrollBox, uniSpeedButton, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, uniGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMultiItem, uniComboBox, uniDBComboBox, uniBitBtn, uniBasicGrid, uniSweetAlert;

type
  TfCadTributos = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    Grade: TUniDBGrid;
    uniTabSheet1: TuniTabSheet;
    UniScrollBox1: TUniScrollBox;
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
    dsTributos: TDataSource;
    cCodigo: TUniDBEdit;
    cCodigo_SRF: TUniDBEdit;
    cDescricao: TUniDBEdit;
    cValor: TUniDBFormattedNumberEdit;
    cDia_Vencimento: TUniDBNumberEdit;
    PlanoContas: TFDQuery;
    Tributos: TFDQuery;
    TiposDoc: TFDQuery;
    Destinatarios: TFDQuery;
    Historico: TFDQuery;
    dsHistorico: TDataSource;
    UniGroupBox1: TUniGroupBox;
    cConta_D: TUniDBLookupComboBox;
    cConta_C: TUniDBLookupComboBox;
    cHistorico: TUniDBLookupComboBox;
    UniGroupBox4: TUniGroupBox;
    cOrgao: TUniDBLookupComboBox;
    cClassificacao_Financeira: TUniDBLookupComboBox;
    cDocumento: TUniDBLookupComboBox;
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
    procedure TributosBeforePost(DataSet: TDataSet);
    procedure TributosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadTributos.bAdicionarClick(Sender: TObject);
begin
      with Tributos do begin
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

procedure TfCadTributos.bCancelarClick(Sender: TObject);
begin
      Tributos.Cancel;
      LigaBotoes(true);
end;

procedure TfCadTributos.bEditarClick(Sender: TObject);
begin
      try
          LigaBotoes(false);
          Tributos.Edit;
          cCodigo.setfocus;
      except
          Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadTributos.bExcluirClick(Sender: TObject);
begin
     with Tributos do begin
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

procedure TfCadTributos.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadTributos.bSalvarClick(Sender: TObject);
begin
      with Tributos do begin
           if (State = dsInsert) and (Existe(Tributos, 'Codigo', FieldByName('Codigo').AsString)) then begin
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
               if (State = dsInsert) then begin
                  Tributos.FieldByName('Registro').Value := GeraCodigo('Tributos', 'Registro');
               end;
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadTributos.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
     pFicha1.Enabled       := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadTributos.UniFrameCreate(Sender: TObject);
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

      with Tributos do begin
           sql.clear;
           sql.add('select * from Tributos order by Descricao');
           open;
      end;
      with Destinatarios do begin
           sql.clear;
           sql.add('select Codigo, Nome from Destinatarios where Orgao_Publico = 1 order by Nome');
           open;
      end;
      with PlanoContas do begin
           sql.clear;
           sql.add('select Conta, Codigo, Nome_Financeiro, Nome_Contabil from PlanoContas order by Nome_Financeiro, Nome_Contabil');
           open;
      end;
      with TiposDoc do begin
           sql.clear;
           sql.add('select Codigo, Nome from TipoDocumento order by Nome');
           open;
      end;
      with Historico do begin
           sql.clear;
           sql.add('select Codigo, Descricao from Historicos order by Descricao');
           open;
      end;
end;

procedure TfCadTributos.UniFrameDestroy(Sender: TObject);
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

procedure TfCadTributos.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadTributos.TributosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadTributos.TributosBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadTributos.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Tributos, 'Tributos', 'Codigo', 'Descricao',cPesquisa.text);
end;


end.
