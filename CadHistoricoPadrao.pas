unit CadHistoricoPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Menus, uniMainMenu, FireDAC.Comp.DataSet, uniMemo, uniCheckBox, uniSweetAlert;

type
  TfCadHistoricoPadrao = class(TUniFrame)
    Alerta: TUniSweetAlert;
    aLista: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
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
    UniTabSheet1: TUniTabSheet;
    pFicha: TUniPanel;
    tCodigo: TFDQuery;
    Grade: TuniDBGrid;
    BANCO1: TuniMenuItem;
    DATADOCUMENTO1: TuniMenuItem;
    DESCRIOCLASSIFICAOFINANCEIRA1: TuniMenuItem;
    DI1: TuniMenuItem;
    FORNECEDORES1: TuniMenuItem;
    IPODEDOCUMENTO1: TuniMenuItem;
    NDOCUMENTP1: TuniMenuItem;
    OBSERVAO1: TuniMenuItem;
    PROCESSO1: TuniMenuItem;
    Historicos: TFDQuery;
    dsHistoricos: TDataSource;
    cCodigo: TUniDBEdit;
    cDescricao: TUniDBEdit;
    cComplemento: TUniDBCheckBox;
    mnMacro: TUniPopupMenu;
    bMacro: TUniSpeedButton;
    cMacro: TUniDBMemo;
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
    procedure HistoricosBeforePost(DataSet: TDataSet);
    procedure HistoricosBeforeDelete(DataSet: TDataSet);
    procedure FORNECEDORES1Click(Sender: TObject);
    procedure PROCESSO1Click(Sender: TObject);
    procedure DI1Click(Sender: TObject);
    procedure DESCRIOCLASSIFICAOFINANCEIRA1Click(Sender: TObject);
    procedure IPODEDOCUMENTO1Click(Sender: TObject);
    procedure NDOCUMENTP1Click(Sender: TObject);
    procedure DATADOCUMENTO1Click(Sender: TObject);
    procedure BANCO1Click(Sender: TObject);
    procedure OBSERVAO1Click(Sender: TObject);
    procedure bMacroClick(Sender: TObject);
    procedure mnMacroPopup(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadHistoricoPadrao.bAdicionarClick(Sender: TObject);
begin
      with Historicos do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadHistoricoPadrao.bExcluirClick(Sender: TObject);
begin
     with Historicos do begin
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

procedure TfCadHistoricoPadrao.bGravarClick(Sender: TObject);
begin
      with Historicos do begin
           if (State = dsInsert) then begin
              Historicos.FieldByName('Codigo').Value := GeraCodigo('Historicos', 'Codigo');
           end;
           if (State = dsInsert) and (Existe(Historicos, 'Codigo', FieldByName('Codigo').AsString)) then begin
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
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadHistoricoPadrao.bCancelarClick(Sender: TObject);
begin
      Historicos.Cancel;
      LigaBotoes(true);
end;

procedure TfCadHistoricoPadrao.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Historicos.Edit;
         cCodigo.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadHistoricoPadrao.UniFrameDestroy(Sender: TObject);
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

procedure TfCadHistoricoPadrao.bMacroClick(Sender: TObject);
begin
     mnMacro.PopupBy(cMacro);
end;

procedure TfCadHistoricoPadrao.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadHistoricoPadrao.LigaBotoes(Estado:boolean);
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

procedure TfCadHistoricoPadrao.mnMacroPopup(Sender: TObject);
begin
      Historicos.fieldbyname('Macro').value := Trim(Historicos.fieldbyname('Macro').value) + ' <{CLASSIFICAÇÃO}>';
end;

procedure TfCadHistoricoPadrao.UniFrameCreate(Sender: TObject);
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

      Historicos.sql.clear;
      Historicos.sql.add('select Codigo');
      Historicos.sql.add('      ,Descricao');
      Historicos.sql.add('      ,Complemento');
      Historicos.sql.add('      ,Macro');
      Historicos.sql.add('from Historicos');
      Historicos.sql.add('order by Codigo');
      Historicos.open;
end;
procedure TfCadHistoricoPadrao.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadHistoricoPadrao.bPesquisaClick(Sender: TObject);
begin
     Historicos.Cancel;
     LigaBotoes(true);
     Pesquisa(Historicos, 'Historicos', 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadHistoricoPadrao.HistoricosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadHistoricoPadrao.HistoricosBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadHistoricoPadrao.FORNECEDORES1Click(Sender: TObject);
begin
     cMacro.Text := Trim(cMacro.Text) + ' <{BENEFICIARIO}>';
end;

procedure TfCadHistoricoPadrao.PROCESSO1Click(Sender: TObject);
begin
      cMacro.text := Trim(cMacro.Text)+ ' <{PROCESSO}>';
end;

procedure TfCadHistoricoPadrao.DI1Click(Sender: TObject);
begin
      cMacro.text := Trim(cMacro.text)+ ' <{DECLARAÇÃO}>';
end;

procedure TfCadHistoricoPadrao.DESCRIOCLASSIFICAOFINANCEIRA1Click(Sender: TObject);
begin
      cMacro.text := Trim(cMacro.text) + ' <{CLASSIFICAÇÃO}>';
end;

procedure TfCadHistoricoPadrao.IPODEDOCUMENTO1Click(Sender: TObject);
begin
      cMacro.text := Trim(cMacro.text) + ' <{TIPO DE DOCUMENTO}>';
end;

procedure TfCadHistoricoPadrao.NDOCUMENTP1Click(Sender: TObject);
begin
      cMacro.text := Trim(cMacro.text) + ' <{Nº DOCUMENTO}>';
end;

procedure TfCadHistoricoPadrao.DATADOCUMENTO1Click(Sender: TObject);
begin
      cMacro.text := Trim(cMacro.text) + ' <{DATA DOCUMENTO}>';
end;

procedure TfCadHistoricoPadrao.BANCO1Click(Sender: TObject);
begin
      cMacro.text := Trim(cMacro.text) + ' <{BANCO}>';
end;

procedure TfCadHistoricoPadrao.OBSERVAO1Click(Sender: TObject);
begin
      cMacro.text := Trim(cMacro.text) + ' <{OBSERVAÇÃO}>';
end;


end.
