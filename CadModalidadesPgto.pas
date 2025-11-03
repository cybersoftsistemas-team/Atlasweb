unit CadModalidadesPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Dialogs, RXCtrls, ExtCtrls, RXDBCtrl, StdCtrls, DBCtrls, ComCtrls, DB, 
  DBAccess, MSAccess,  MemDS, Grids, DBGrids, Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniBasicGrid, uniDBGrid, uniRadioGroup, uniDBRadioGroup, uniGUIClasses, uniEdit, uniDBEdit, uniLabel, uniButton, uniGUIBaseClasses, uniPanel, uniSweetAlert;

type
  TfCadModalidadesPgto = class(TFrame)
    Panel1: TuniPanel;
    bSair: TuniButton;
    
    bPesquisa: TuniButton;
    Panel2: TuniPanel;
    StaticText5: TuniLabel;
    cDescricao: TuniDBEdit;
    StaticText3: TuniLabel;
    cCodigo: TuniDBEdit;
    Grade: TuniDBGrid;
    tCodigo: TFDQuery;
    tCodigoCodigo: TSmallintField;
    cForma: TuniDBRadioGroup;
    StaticText15: TuniLabel;
    cNumeroParcelas: TuniDBEdit;
    StaticText16: TuniLabel;
    DBEdit13: TuniDBEdit;
    StaticText17: TuniLabel;
    DBEdit14: TuniDBEdit;
    StaticText1: TuniLabel;
    cDia: TuniDBEdit;
    
    procedure NavegaClick(Sender: TObject; Button: TNavigateBtn);
    procedure NavegaBeforeAction(Sender: TObject; Button: TNavigateBtn);
    
    procedure bPesquisaClick(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mPesquisa : String;
  end;

var
  Cadastro_ModalidadesPagamento: TfCadModalidadesPgto;

implementation

Uses MainModule;

{$R *.dfm}

procedure TfCadModalidadesPgto.NavegaClick(Sender: TObject;Button: TNavigateBtn);
Var
    i : Integer;
begin
      If (Button = nbEdit) or (Button = nbInsert) then begin
         For i := 0 to 6 do begin
             //Navega.Controls[i].Enabled := False;
         End;
         If Button = nbInsert then cForma.ItemIndex := 0;
         Panel2.Enabled   := True;
         cNumeroParcelas.SetFocus;
      End;
      If (Button = nbPost) or (Button = nbCancel) then Begin
         Screen.Cursor := crSQLWait;
         //ModalidadesPgto.Refresh;
         Panel2.Enabled := False;
         Screen.Cursor := crDefault;
      End;
end;

procedure TfCadModalidadesPgto.NavegaBeforeAction(Sender: TObject;Button: TNavigateBtn);
begin
      //Navega.SetFocus;
      If (Button = nbPost) then begin
      {
         If (ModalidadesPgtoPrazo_Dia.AsInteger > 31) or (ModalidadesPgtoPrazo_Dia.AsInteger < 0) then begin
            MessageDlg('Erro!'+#13+#13+'Dia invalido, informe um dia entre 0 e 31.', mtError, [mbOK]);
            cDia.SetFocus;
            Abort;
         End;
      }
      End;
      {
      If (Button = nbPost) and (ModalidadesPgto.State = dsInsert) then begin
         Screen.Cursor := crSQLWait;
         tCodigo.Open;
         ModalidadesPgtoCodigo.Value := tCodigoCodigo.Value+1;
         tCodigo.Close;
         Screen.Cursor := crDefault;
      End;
      }
end;

procedure TfCadModalidadesPgto.bPesquisaClick(Sender: TObject);
begin
     mPesquisa := InputBox('Pesquisa', 'Codigo/Descrição', mPesquisa);
//     If ModalidadesPgto.Locate('Codigo', mPesquisa, [loCaseInsensitive]) = False then
//        ModalidadesPgto.Locate('Descricao', mPesquisa, [loCaseInsensitive, loPartialKey]);
end;

procedure TfCadModalidadesPgto.DBEdit13Exit(Sender: TObject);
begin
{
      If ModalidadesPgtoPrazo_Primeira.AsInteger > 0 then
         cForma.ItemIndex := 1
      else
         cForma.ItemIndex := 0;
         }
end;

end.
