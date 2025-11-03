unit CadPlanoFinanceiroGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel,
  uniScrollBox, uniSpeedButton, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniBasicGrid, uniBitBtn, uniSweetAlert;

type
  TfCadPlanoFinanceiroGrupos = class(TUniFrame)
    Alerta: TUniSweetAlert;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
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
    dsGrupos: TDataSource;
    cNome: TUniDBEdit;
    Grade: TUniDBGrid;
    cCodigo: TUniDBEdit;
    Grupos: TFDQuery;
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
    procedure GruposBeforePost(DataSet: TDataSet);
    procedure GruposBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    mCodAntes:string;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadPlanoFinanceiroGrupos.bAdicionarClick(Sender: TObject);
begin
      with Grupos do begin
           try
               LigaBotoes(false);
               Append;
               cCodigo.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadPlanoFinanceiroGrupos.bCancelarClick(Sender: TObject);
begin
      Grupos.Cancel;
      LigaBotoes(true);
end;

procedure TfCadPlanoFinanceiroGrupos.bEditarClick(Sender: TObject);
begin
      mCodAntes := cCodigo.Text;
      try
          LigaBotoes(false);
          Grupos.Edit;
          cCodigo.setfocus;
      except
          Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadPlanoFinanceiroGrupos.bExcluirClick(Sender: TObject);
begin
     with Grupos do begin
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

procedure TfCadPlanoFinanceiroGrupos.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadPlanoFinanceiroGrupos.bSalvarClick(Sender: TObject);
var
   tPesq:TFDQuery;
begin
      with Grupos do begin
           if trim(FieldByName('Codigo').AsString) = '' then begin
              MessageDlg('O campo "Codigo" não pode ficar em branco!', mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Nome').AsString) = '' then begin
              MessageDlg('O campo "Nome" não pode ficar em branco!', mtError, [mbOK]);
              cNome.SetFocus;
              Abort;
           end;

           if State = dsInsert then begin
              if Existe(Grupos, 'Codigo', FieldByName('Codigo').AsString) then begin
                 MessageDlg('Já existe um grupo cadastrado com esse "Código" !'+#13+#13, mtError, [mbOK]);
                 cCodigo.SetFocus;
                 Abort;
              end;
           end else begin
              tPesq            := TFDQuery.Create(nil);
              tPesq.Connection := uniMainModule.Conecta;
              tPesq.SQL.Clear;
              tPesq.SQL.Add('select Codigo, Nome from PlanoFinanceiroGrupos where Codigo = :pCod');
              tPesq.ParamByName('pCod').AsString := cCodigo.Text;
              tPesq.Open;
              if (tPesq.RecordCount > 0) and (tPesq.FieldByName('Codigo').AsString <> mCodAntes ) then begin
                 MessageDlg('Código do grupo "'+cCodigo.Text+'" já utilizado para "'+tPesq.FieldByName('Nome').AsString+'".'+#13+#13+'Por favor, informe um código diferente.' , mtError, [mbok]);
                 cCodigo.SetFocus;
                 Abort;
              end;
              tPesq.Free;
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

procedure TfCadPlanoFinanceiroGrupos.LigaBotoes(Estado:boolean);
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

procedure TfCadPlanoFinanceiroGrupos.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top  := 30;
             TuniPanel(Components[i]).Left := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).color := clNone;
          end;
      end;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      Grupos.sql.clear;
      Grupos.sql.add('select * from PlanoFinanceiroGrupos order by Nome');
      Grupos.open;
end;

procedure TfCadPlanoFinanceiroGrupos.UniFrameDestroy(Sender: TObject);
begin
      Grupos.close;
end;

procedure TfCadPlanoFinanceiroGrupos.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadPlanoFinanceiroGrupos.GruposBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadPlanoFinanceiroGrupos.GruposBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadPlanoFinanceiroGrupos.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Grupos, 'PlanoFinanceiroGrupos', 'Codigo', 'Nome', cPesquisa.text);
end;


end.
