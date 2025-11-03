unit Contab_BloquearPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, Dateutils,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniCheckBox, Vcl.Imaging.jpeg, uniImage;

type
  TfContab_BloquearPeriodo = class(TUniFrame)
    aLista: TUniTabSheet;
    pBarraNav: TUniPanel;
    bFechar: TUniSpeedButton;
    Pasta: TUnipageControl;
    FechamentoContabil: TFDQuery;
    dsFechamento: TDataSource;
    Alerta: TUniSweetAlert;
    UniImage1: TUniImage;
    FechamentoContabilAno: TSmallintField;
    FechamentoContabilMes: TSmallintField;
    FechamentoContabilNome_Mes: TStringField;
    FechamentoContabilFechado: TBooleanField;
    FechamentoContabilEmpresa: TStringField;
    FechamentoContabilCadeado: TStringField;
    bBloquearMes: TUniButton;
    bBloqTudo: TUniButton;
    bDesTudo: TUniButton;
    UniScrollBox1: TUniScrollBox;
    UniPanel3: TUniPanel;
    UniImage2: TUniImage;
    Grade: TUniDBGrid;
    UniPanel2: TUniPanel;
    cAno: TUniSpinEdit;
    cTodos: TUniCheckBox;
    UniSpeedButton1: TUniSpeedButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure GradeFieldImage(const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
    procedure FechamentoContabilCalcFields(DataSet: TDataSet);
    procedure bBloquearMesClick(Sender: TObject);
    procedure FechamentoContabilAfterScroll(DataSet: TDataSet);
    procedure bDesTudoClick(Sender: TObject);
    procedure bBloqTudoClick(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
  private
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfContab_BloquearPeriodo.UniFrameDestroy(Sender: TObject);
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

procedure TfContab_BloquearPeriodo.UniSpeedButton1Click(Sender: TObject);
begin
     Filtra;
end;

procedure TfContab_BloquearPeriodo.bBloqTudoClick(Sender: TObject);
var
   ttmp:TFDQuery;
begin
     If MessageDlg('Deseja realmente bloquear todos os mêses contabeis em aberto?', mtConfirmation, [mbYes, mbNo]) = mrNo then Abort;
     
     ttmp := TFDQuery.Create(nil);
     
     with ttmp do begin
          Connection := uniMainModule.Conecta;
          sql.Clear;
          sql.Add('update FechamentoContabil set Fechado = 1 where Ano = :pAno');
          parambyname('pAno').AsInteger := cAno.Value;
          Execute;
          ttmp.Free;
     end;
     FechamentoContabil.Refresh;
     FechamentoContabilAfterScroll(nil);
     LogDados(FechamentoContabil, 'Bloqueado todos os meses do ano ', 'Outros');
end;

procedure TfContab_BloquearPeriodo.bBloquearMesClick(Sender: TObject);
begin
     with FechamentoContabil do begin 
          if not fieldbyname('Fechado').AsBoolean then begin
             if MessageDlg('Deseja realmente bloquear este mês contabil?', mtConfirmation, [mbYes, mbNo]) = mrNo then begin
                Abort;
             end;
             LogDados(FechamentoContabil, 'Bloqueado mês - '+fieldbyname('Nome_Mes').AsString, 'Outros');
          end else begin
             if MessageDlg('Deseja realmente desbloquear este mês contabil?', mtConfirmation, [mbYes, mbNo]) = mrNo then begin
                Abort;
             end;
             LogDados(FechamentoContabil, 'Desbloqueado mês - '+fieldbyname('Nome_Mes').AsString, 'Outros');
          end;      
          
          Edit;
             fieldbyname('Fechado').value := not fieldbyname('Fechado').value;
          Post;
          Refresh;
     end;
end;

procedure TfContab_BloquearPeriodo.bDesTudoClick(Sender: TObject);
var
   ttmp:TFDQuery;
begin
     if MessageDlg('Deseja realmente desbloquear todos os mêses contabeis em aberto?', mtConfirmation, [mbYes, mbNo]) = mrNo then Abort;
     
     ttmp := TFDQuery.Create(nil);
     
     with ttmp do begin
          Connection := uniMainModule.Conecta;
          sql.Clear;
          sql.Add('update FechamentoContabil set Fechado = 0 where Ano = :pAno');
          parambyname('pAno').AsInteger := cAno.Value;
          Execute;
          ttmp.Free;
     end;
     FechamentoContabil.Refresh;
     FechamentoContabilAfterScroll(nil);
     LogDados(FechamentoContabil, 'Desbloqueado todos os meses do ano ', 'Outros');
end;

procedure TfContab_BloquearPeriodo.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfContab_BloquearPeriodo.UniFrameCreate(Sender: TObject);
begin
      with FechamentoContabil do begin
           sql.clear;      
           sql.add('insert into FechamentoContabil (Ano, Mes, Nome_Mes, Fechado, Empresa)');
           sql.add('       select Ano      = year(Data)');
           sql.add('             ,Mes      = month(Data)');
           sql.add('             ,Nome_Mes = case when month(Data) =  1 then ''Janeiro'' ');
           sql.add('                              when month(Data) =  2 then ''Fevereiro'' ');
           sql.add('                              when month(Data) =  3 then ''Março'' ');
           sql.add('                              when month(Data) =  4 then ''Abril'' ');
           sql.add('                              when month(Data) =  5 then ''Maio'' ');
           sql.add('                              when month(Data) =  6 then ''Junho'' ');
           sql.add('                              when month(Data) =  7 then ''Julho'' ');
           sql.add('                              when month(Data) =  8 then ''Agosto'' ');
           sql.add('                              when month(Data) =  9 then ''Setembro'' ');
           sql.add('                              when month(Data) = 10 then ''Outubro'' ');
           sql.add('                              when month(Data) = 11 then ''Novembro'' ');
           sql.add('                              when month(Data) = 12 then ''Dezembro'' ');
           sql.add('                         end');
           sql.add('		         ,Fechado  = 0');
           sql.add('             ,Empresa = '+UniMainModule.mEmpresaAtiva);
           sql.add('       from  Lancamentos');
           sql.add('       where (select count(*) from FechamentoContabil where Ano = year(Data) and Mes = month(Data)) = 0');
           sql.add('       group by year(Data), month(Data)');
           sql.add('       order by Ano, Mes');
           //FechamentoContabil.SQL.SaveToFile('c:\Temp\Fechamento_Contabil.sql');
           execute;
           
           sql.clear;      
           sql.add('select *');
           sql.add('from FechamentoContabil');
           sql.Add('where Ano = (select max(Ano) from FechamentoContabil)');
           sql.add('order by Ano desc, Mes');
           open;
           
           cAno.Value := fieldbyname('Ano').asinteger;
      end;
end;

procedure TfContab_BloquearPeriodo.Filtra;
begin
      with FechamentoContabil do begin
           sql.Clear;      
           sql.add('select *');
           sql.add('from FechamentoContabil');
           if not cTodos.Checked then begin
              sql.Add('where Ano = '+cAno.Text);
           end;
           sql.add('order by Ano desc, Mes');
           open;
      end;
end;

procedure TfContab_BloquearPeriodo.GradeFieldImage(const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
begin
     if SameText(AField.FieldName, 'Cadeado') then begin
        DoNotDispose := True;
        if AField.Asstring = '0' then
           OutImage := UniImage2.Picture.Graphic
        else 
           OutImage := UniImage1.Picture.Graphic;
     end;
end;

procedure TfContab_BloquearPeriodo.FechamentoContabilAfterScroll(DataSet: TDataSet);
begin
     with FechamentoContabil do begin
          if fieldbyname('Fechado').AsBoolean then
             bBloquearMes.Caption := 'Desbloquear Mês'
          else
             bBloquearMes.Caption := 'Bloquear Mês'
     end;
end;

procedure TfContab_BloquearPeriodo.FechamentoContabilCalcFields(DataSet: TDataSet);
begin
     with FechamentoContabil do begin
          if fieldbyname('Fechado').asboolean then 
             fieldbyname('Cadeado').value := '1' 
          else 
             fieldbyname('Cadeado').value := '0';
     end;
end;



end.
