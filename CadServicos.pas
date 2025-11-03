unit CadServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, Funcoes, Data.DB, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniGUIBaseClasses, FireDAC.Comp.Client, uniDBLookUpComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMultiItem, uniComboBox, uniDBComboBox, uniMemo, uniCheckBox, uniBitBtn, uniBasicGrid, uniSweetAlert;

type
  TfCadServicos = class(TUniFrame)
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
    dsServicos: TDataSource;
    cCodigo: TUniDBEdit;
    cAtivo: TUniDBCheckBox;
    cDescricao: TUniDBEdit;
    cIndustria: TUniDBCheckBox;
    cPIS_Recuperar: TUniDBLookupComboBox;
    cPIS_Recolher: TUniDBLookupComboBox;
    cCOFINS_Recuperar: TUniDBLookupComboBox;
    cCOFINS_Recolher: TUniDBLookupComboBox;
    cCSLL_Recuperar: TUniDBLookupComboBox;
    cCSLL_Recolher: TUniDBLookupComboBox;
    cIR_Recuperar: TUniDBLookupComboBox;
    cIR_Recolher: TUniDBLookupComboBox;
    cINSS_Recuperar: TUniDBLookupComboBox;
    cINSS_Recolher: TUniDBLookupComboBox;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    Tributos: TFDQuery;
    Servicos: TFDQuery;
    clCSTCOFINS_Entrada: TUniDBLookupComboBox;
    cCSTPIS_Entrada: TUniDBLookupComboBox;
    cCSTCOFINS_Entrada: TUniDBLookupComboBox;
    cCSTCOFINS_Saida: TUniDBLookupComboBox;
    CSTPIS: TFDQuery;
    dsCSTPIS: TDataSource;
    ServicosAliquota_PIS: TFloatField;
    ServicosAliquota_COFINS: TFloatField;
    ServicosLimite_PIS: TCurrencyField;
    ServicosLimite_COFINS: TCurrencyField;
    ServicosLimite_IR: TCurrencyField;
    ServicosLimite_INSS: TCurrencyField;
    ServicosCodigo: TIntegerField;
    ServicosDesativado: TBooleanField;
    ServicosIndustria: TBooleanField;
    ServicosDescricao: TStringField;
    ServicosCSTPIS_Entrada: TStringField;
    ServicosCSTPIS_Saida: TStringField;
    ServicosCSTCOFINS_Entrada: TStringField;
    ServicosCSTCOFINS_Saida: TStringField;
    ServicosPIS_Recuperar: TStringField;
    ServicosPIS_Recolher: TStringField;
    ServicosCOFINS_Recuperar: TStringField;
    ServicosCOFINS_Recolher: TStringField;
    ServicosCSLL_Recuperar: TStringField;
    ServicosCSLL_Recolher: TStringField;
    ServicosLimite_CSLL: TCurrencyField;
    ServicosIR_Recuperar: TStringField;
    ServicosIR_Recolher: TStringField;
    ServicosINSS_Recuperar: TStringField;
    ServicosINSS_Recolher: TStringField;
    dsCSTCOFINS: TDataSource;
    CSTCOFINS: TFDQuery;
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
    procedure ServicosBeforePost(DataSet: TDataSet);
    procedure ServicosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadServicos.bAdicionarClick(Sender: TObject);
begin
      with Servicos do begin
           try
               LigaBotoes(false);
               Append;
               cCodigo.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadServicos.bCancelarClick(Sender: TObject);
begin
      Servicos.Cancel;
      LigaBotoes(true);
end;

procedure TfCadServicos.bEditarClick(Sender: TObject);
begin
      try
          LigaBotoes(false);
          Servicos.Edit;
          cCodigo.setfocus;
      except
          Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadServicos.bExcluirClick(Sender: TObject);
begin
     with UniMainModule, Servicos do begin
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

procedure TfCadServicos.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadServicos.bSalvarClick(Sender: TObject);
begin
      with Servicos do begin
           if (State = dsInsert) and (Existe(Servicos, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descrição" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if FieldByName('Codigo').AsInteger = 0 then begin
              MessageDlg('O campo "Código" não pode ficar em branco!', mtError, [mbOK]);
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
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadServicos.LigaBotoes(Estado:boolean);
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

procedure TfCadServicos.ServicosBeforePost(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadServicos.ServicosBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadServicos.UniFrameCreate(Sender: TObject);
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

      Servicos.sql.clear;
      Servicos.sql.add('select * from Servicos order by Descricao');
      Servicos.open;

      Tributos.sql.clear;
      Tributos.sql.add('select * from Tributos order by Descricao');
      Tributos.open;

      CSTPIS.sql.clear;
      CSTPIS.sql.add('select * from CSTPIS order by Descricao');
      CSTPIS.open;

      CSTCOFINS.sql.clear;
      CSTCOFINS.sql.add('select * from CSTCOFINS order by Descricao');
      CSTCOFINS.open;
end;

procedure TfCadServicos.UniFrameDestroy(Sender: TObject);
begin
      Servicos.close;
      Tributos.close;
end;

procedure TfCadServicos.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadServicos.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Servicos, 'Servicos', 'Codigo', 'Descricao', cPesquisa.text);
end;


end.
