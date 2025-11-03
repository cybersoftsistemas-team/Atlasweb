unit CadNavios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniButton, uniDBNavigator, uniEdit,
  uniDBEdit, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniCheckBox, uniBitBtn, uniBasicGrid, uniSweetAlert;

type
  TfCadNavios = class(TUniFrame)
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
    dsNavios: TDataSource;
    cCodigo: TUniDBEdit;
    cNome: TUniDBEdit;
    Navios: TFDQuery;
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
    procedure NaviosBeforePost(DataSet: TDataSet);
    procedure NaviosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadNavios.bAdicionarClick(Sender: TObject);
begin
      with Navios do begin
           try
               LigaBotoes(false);
               Append;
               cCodigo.setfocus;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadNavios.bCancelarClick(Sender: TObject);
begin
     Navios.Cancel;
     LigaBotoes(true);
end;

procedure TfCadNavios.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Navios.Edit;
         cCodigo.setfocus;
     except
         Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadNavios.bExcluirClick(Sender: TObject);
begin
     with Navios do begin
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

procedure TfCadNavios.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Close;
end;

procedure TfCadNavios.bSalvarClick(Sender: TObject);
begin
      with Navios do begin
           if (State = dsInsert) then begin
              Navios.FieldByName('Codigo').Value := GeraCodigo('Navios', 'Codigo');
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

procedure TfCadNavios.NaviosBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadNavios.NaviosBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadNavios.LigaBotoes(Estado:boolean);
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

procedure TfCadNavios.UniFrameCreate(Sender: TObject);
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
      with Navios do begin
           sql.clear;
           sql.add('select * from Navios');
           open;
      end;
end;

procedure TfCadNavios.UniFrameDestroy(Sender: TObject);
begin
     Navios.Close;
end;

procedure TfCadNavios.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadNavios.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Navios, 'Navios', 'Codigo', 'Desricao',cPesquisa.text);
end;


end.
