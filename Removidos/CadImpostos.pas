unit CadImpostos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniScrollBox, uniSpeedButton, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, uniGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMultiItem, uniComboBox, uniDBComboBox, uniBitBtn, uniBasicGrid;

type
  TfCadImpostos = class(TUniFrame)
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
    dsImpostos: TDataSource;
    cCodigo: TUniDBEdit;
    cCodigo_SRF: TUniDBEdit;
    cDescricao: TUniDBEdit;
    cValor: TUniDBFormattedNumberEdit;
    cDia_Vencimento: TUniDBNumberEdit;
    UniGroupBox4: TUniGroupBox;
    UniGroupBox1: TUniGroupBox;
    cOrgao: TUniDBLookupComboBox;
    cClassificacao_Financeira: TUniDBLookupComboBox;
    cDocumento: TUniDBLookupComboBox;
    cConta_D: TUniDBLookupComboBox;
    cConta_C: TUniDBLookupComboBox;
    cHistorico: TUniDBLookupComboBox;
    dsPlanoFin: TDataSource;
    PlanoContas: TFDQuery;
    PlanoFinanceiro: TFDQuery;
    Impostos: TFDQuery;
    TiposDoc: TFDQuery;
    Destinatarios: TFDQuery;
    Historico: TFDQuery;
    dsHistorico: TDataSource;
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
    procedure ImpostosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadImpostos.bAdicionarClick(Sender: TObject);
begin
      with Impostos do begin
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

procedure TfCadImpostos.bCancelarClick(Sender: TObject);
begin
      Impostos.Cancel;
      LigaBotoes(true);
end;

procedure TfCadImpostos.bEditarClick(Sender: TObject);
begin
      try
          LigaBotoes(false);
          Impostos.Edit;
          cCodigo.setfocus;
      except
          Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadImpostos.bExcluirClick(Sender: TObject);
begin
     with Impostos do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                          end;
                    end);
     end;
end;

procedure TfCadImpostos.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadImpostos.bSalvarClick(Sender: TObject);
begin
      with Impostos do begin
           if (State = dsInsert) and (Existe(Impostos, 'Codigo', FieldByName('Codigo').AsString)) then begin
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
               LigaBotoes(true);
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadImpostos.LigaBotoes(Estado:boolean);
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

procedure TfCadImpostos.UniFrameCreate(Sender: TObject);
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

      Impostos.sql.clear;
      Impostos.sql.add('select * from Impostos order by Descricao');
      Impostos.open;

      Destinatarios.sql.clear;
      Destinatarios.sql.add('select Codigo, Nome from Destinatarios where Orgao_Publico = 1 order by Nome');
      Destinatarios.open;

      PlanoContas.sql.clear;
      PlanoContas.sql.add('select Conta, Codigo, Nome from PlanoContas order by Nome');
      PlanoContas.open;

      TiposDoc.sql.clear;
      TiposDoc.sql.add('select Codigo, Descricao from TiposDocumentos order by Descricao');
      TiposDoc.open;

      Historico.sql.clear;
      Historico.sql.add('select Codigo, Descricao from Historicos order by Descricao');
      Historico.open;

      PlanoFinanceiro.sql.clear;
      PlanoFinanceiro.sql.add('select Codigo, Nome');
      PlanoFinanceiro.sql.add('from   PlanoFinanceiro');
      PlanoFinanceiro.sql.add('order  by Codigo');
      PlanoFinanceiro.open;

end;

procedure TfCadImpostos.UniFrameDestroy(Sender: TObject);
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

procedure TfCadImpostos.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadImpostos.ImpostosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Codigo').AsString, DataSet.FieldByName('Descricao').AsString);
end;

procedure TfCadImpostos.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Impostos, 'Codigo', 'Descricao',cPesquisa.text);
end;


end.
