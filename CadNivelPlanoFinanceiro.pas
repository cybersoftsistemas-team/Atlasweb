unit CadNivelPlanoFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel,
  uniScrollBox, uniSpeedButton, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniBitBtn, uniBasicGrid, uniSweetAlert;

type
  TfCadNivelClassificacao = class(TUniFrame)
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
    dsNivelClass: TDataSource;
    cCodigo: TUniDBNumberEdit;
    cNivel: TUniDBNumberEdit;
    cDescricao: TUniDBEdit;
    NivelClass: TFDQuery;
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
    procedure NivelClassBeforePost(DataSet: TDataSet);
    procedure NivelClassBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadNivelClassificacao.bAdicionarClick(Sender: TObject);
begin
      with NivelClass do begin
           try
               LigaBotoes(false);
               Append;
               cCodigo.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadNivelClassificacao.bCancelarClick(Sender: TObject);
begin
      NivelClass.Cancel;
      LigaBotoes(true);
end;

procedure TfCadNivelClassificacao.bEditarClick(Sender: TObject);
begin
      try
         LigaBotoes(false);
         NivelClass.Edit;
         cCodigo.setfocus;
      except
         Showmessage('Não pode editar o registro corrente!');
      end;
end;

procedure TfCadNivelClassificacao.bExcluirClick(Sender: TObject);
begin
     with NivelClass do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Codigo').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             MessageBeep(MB_ICONINFORMATION);
                             Alerta.Text := 'Registro excluído do banco de dados!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfCadNivelClassificacao.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadNivelClassificacao.bSalvarClick(Sender: TObject);
begin
      with NivelClass do begin
           if (State = dsInsert) then begin
              FieldByName('Codigo').Value := GeraCodigo('NivelClass', 'Codigo');
           end;
           if (State = dsInsert) and (Existe(NivelClass, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if FieldByName('Codigo').AsInteger = 0 then begin
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
               MessageBeep(MB_ICONINFORMATION);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadNivelClassificacao.LigaBotoes(Estado:boolean);
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

procedure TfCadNivelClassificacao.NivelClassBeforePost(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadNivelClassificacao.NivelClassBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadNivelClassificacao.UniFrameCreate(Sender: TObject);
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
      with NivelClass do begin
           sql.clear;
           sql.add('select * from NivelClassificacao order by Nivel');
           open;
      end;
end;

procedure TfCadNivelClassificacao.UniFrameDestroy(Sender: TObject);
begin
      NivelClass.close;
end;

procedure TfCadNivelClassificacao.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadNivelClassificacao.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(NivelClass, 'NivelClassificacao', 'Codigo', 'Descricao', cPesquisa.text);
end;


end.
