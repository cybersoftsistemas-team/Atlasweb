unit CadLPCO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker,
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMultiItem, uniDBComboBox;

type
  TfCadLPCO = class(TuniFrame)
    ttmp: TFDQuery;
    Orgaos: TFDQuery;
    LPCO: TFDQuery;
    Alerta: TUniSweetAlert;
    dsLPCO: TDataSource;
    dsOrgaos: TDataSource;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    UniPanel1: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    pFicha: TUniPanel;
    cOrgao: TUniDBLookupComboBox;
    cNumero: TUniDBEdit;
    cDataIni: TUniDBDateTimePicker;
    cDataFim: TUniDBDateTimePicker;
    DBEdit1: TUniDBEdit;
    Grade: TUniDBGrid;
    procedure UniFrameCreate(Sender: TObject);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure LPCOAfterPost(DataSet: TDataSet);
    procedure LPCOBeforeDelete(DataSet: TDataSet);
    procedure bFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadLPCO.bPesquisaClick(Sender: TObject);
begin
     LPCO.Cancel;
     LigaBotoes(true);
     Filtra(LPCO, 'Numero', cPesquisa.text);
end;

procedure TfCadLPCO.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      LigaBotoes(true);
      with LPCO do begin
           sql.clear;
           sql.add('select *, Sel = cast(0 as bit) from LPCO order by Orgao_Anuente, Numero');
           open;
      end;
      with Orgaos do begin
           sql.clear;
           sql.add('select * from OrgaosAnuentes order by Codigo');
           open;
      end;
end;

procedure TfCadLPCO.NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
begin
{
    Navega.SetFocus;
   begin
         with ttmp do begin  
              if (LPCO.State = dsInsert) and (Button = nbPost) then begin
                 sql.clear;
                 sql.add('select count(*) as Existe from LPCO where Orgao_Anuente = '+quotedstr(LPCO.FieldByName('Orgao_Anuente').asstring)+' and Numero = '+quotedstr(cNumero.text));
                 open;
                 if fieldbyname('Existe').AsInteger > 0 then begin
                    MessageDlg('LPCO já esta cadastrado.', mtinformation, [mbOK], 0);
                    cOrgao.SetFocus;
                    abort;
                 end;
              end;
              if Button = nbDelete then begin
                 sql.clear;
                 sql.Add('select count(*) as Movimento from InvoiceItensLPCO where LPCO = '+LPCO.FieldByName('Registro').asstring);
                 open;
                 if fieldbyname('Movimento').asinteger > 0 then begin
                    MessageDlg('Este LPCO não pode ser excluido, pois ja foi utilizado em uma fatura.', mtError, [mbOK], 0);
                    LPCO.cancel;
                    abort;
                 end else begin
                    if MessageDlg('Deseja realmente excluir este LPCO?', mtConfirmation, [mbyes, mbno], 0) = mrno then begin;
                       LPCO.cancel;
                       abort;
                    end;
                 end;
              end;
         end;
    end;
}
end;

procedure TfCadLPCO.bAdicionarClick(Sender: TObject);
begin
      with LPCO do begin
           try
               LigaBotoes(false);
               Append;
                    FieldByName('Empresa').Value := UniMainModule.mEmpresaAtiva;
               cOrgao.SetFocus;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfCadLPCO.bExcluirClick(Sender: TObject);
begin
     with LPCO do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Numero').AsString, mtConfirmation,mbYesNo,
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

procedure TfCadLPCO.bSalvarClick(Sender: TObject);
begin
     with LPCO do begin
          try
              // Gera o registro em caso de inclusão.
              Post;
              LigaBotoes(true);
              Alerta.Text := 'Registro salvo no banco de dados!'; 
              Alerta.Execute;
          except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfCadLPCO.bCancelarClick(Sender: TObject);
begin
     LPCO.Cancel;
     LigaBotoes(true);
end;

procedure TfCadLPCO.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         LPCO.Edit;
         cOrgao.setfocus;
     except on E: Exception do
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;
 
procedure TfCadLPCO.UniFrameDestroy(Sender: TObject);
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
 
procedure TfCadLPCO.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled      := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bSalvar.Enabled    := not Estado;
end;

procedure TfCadLPCO.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadLPCO.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;
 
procedure TfCadLPCO.LPCOAfterPost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Numero').AsString, EstadoTabela(DataSet));
end;

procedure TfCadLPCO.LPCOBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Numero').AsString, 'Delete');
end;

end.
