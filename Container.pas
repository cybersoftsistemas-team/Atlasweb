unit Container;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Data.DB, Vcl.Dialogs, vcl.Graphics, FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Stan.Param, uniGUIBaseClasses, 
  uniGUIClasses, uniGUIFrame, uniPanel, uniButton, uniSpeedButton, uniDBNavigator, uniSweetAlert, uniEdit, uniCheckBox, uniPageControl, uniDBGrid, uniDBEdit, 
  uniDBMemo, uniDBLookupComboBox, uniDBDateTimePicker, uniDBComboBox, uniComboBox, uniLabel, uniBasicGrid, Funcoes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniMemo, uniDateTimePicker, uniMultiItem, uniBitBtn, Vcl.Controls, Vcl.Forms;

type
  TfContainer = class(TUniFrame)
    Alerta: TUniSweetAlert;
    pBarraNav: TUniPanel;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bPesquisa: TUniSpeedButton;
    bSair: TUniSpeedButton;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    Grade: TUniDBGrid;
    aFicha: TUniTabSheet;
    Panel1: TUniPanel;
    pFicha: TUniPanel;
    cProcesso: TUniDBLookupComboBox;
    cNumero: TUniDBEdit;
    cTipoEmbarque: TUniDBComboBox;
    cConhecimento: TUniDBEdit;
    cTipo: TUniDBEdit;
    cTamanho: TUniDBEdit;
    cArmador: TUniDBEdit;
    cTerminal: TUniDBEdit;
    cData_Entrada: TUniDBDateTimePicker;
    cHora_Entrada: TUniDBEdit;
    cPrevisao_SaidaData: TUniDBDateTimePicker;
    cHora_Saida: TUniDBEdit;
    cFreeTime: TUniDBEdit;
    cValorDemurrage: TUniDBEdit;
    cTaxa: TUniDBEdit;
    cArmazem: TUniDBLookupComboBox;
    DBLookupComboBox3: TUniDBLookupComboBox;
    cTransportadora_Entrega: TUniDBLookupComboBox;
    cDataEntrega: TUniDBDateTimePicker;
    cHora_Entrega: TUniDBEdit;
    cData_Pagamento: TUniDBDateTimePicker;
    cObservacao: TUniDBMemo;
    cMemoProcessos: TUniDBMemo;
    cAdicionarProcesso: TUniComboBox;
    bAdicionarProcesso: TUniButton;
    cDemurrage: TUniEdit;
    cTotalME: TUniEdit;
    cTotalReal: TUniEdit;
    Container: TFDQuery;
    Processos: TFDQuery;
    Armazens: TFDQuery;
    ArmazensCodigo: TIntegerField;
    ArmazensNome: TStringField;
    ArmazensCNPJ: TStringField;
    Transportadores: TFDQuery;
    ttmp: TFDQuery;
    tContainer: TFDQuery;
    dsContainer: TDataSource;
    dsProcessos: TDataSource;
    dsArmazens: TDataSource;
    dsTransportadores: TDataSource;
    cTravar: TUniCheckBox;
    cEmpresa: TUniDBLookupComboBox;
    Empresas: TFDQuery;
    dsEmpresas: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bGravarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cFreeTimeExit(Sender: TObject);
    procedure cHora_EntradaExit(Sender: TObject);
    procedure cProcessoChange(Sender: TObject);
    procedure cTravarClick(Sender: TObject);
    procedure cNumeroChange(Sender: TObject);
    procedure cValorDemurrageChange(Sender: TObject);
    procedure cTipoEmbarqueExit(Sender: TObject);
    procedure bAdicionarProcessoClick(Sender: TObject);
    procedure cDataEntregaExit(Sender: TObject);
  private
    procedure LigaBotoes(Estado: Boolean);
    procedure CalculaDemurrage;
    procedure CarregaProcessosAdicionais;
    procedure AtualizaTipoEmbarque;
  public
    mProcesso: String;
    mConhecimento: String;
    procedure AbrirDados;
  end;

implementation

uses MainModule, Main, ValidaCRUD;

{$R *.dfm}

procedure TfContainer.UniFrameCreate(Sender: TObject);
var
   i:integer;
begin
      // Alinhando todas as fichas de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).color := clNone;
          end;
      end;

     LigaBotoes(True);
     Pasta.ActivePage := aLista;
     AbrirDados;
end;

procedure TfContainer.AbrirDados;
begin
     with Container do begin
          sql.clear;
          sql.add('select * from Container order by Processo, Numero');
          open;
     end;
     with Processos do begin
          sql.clear;
          sql.add('select Container_Numero');
          sql.add('      ,Processo');
          sql.add('      ,Agencia_Maritima');
          sql.add('      ,Documento_Carga');
          sql.add('      ,Taxa_FOB');
          sql.add('from ProcessosImp');
          sql.add('where Desativado <> 1');
          sql.add('order by Processo');
          open;
     end;
     with Armazens do begin
          sql.clear;
          sql.add('select Codigo, Nome, CNPJ');
          sql.add('from Destinatarios');
          sql.add('where Armazem = 1');
          sql.add('order by Nome');
          open;
     end;
     with Transportadores do begin
          sql.clear;
          sql.add('select Codigo, Nome, CNPJ');
          sql.add('from Destinatarios');
          sql.add('where Transportador = 1');
          sql.add('order by Nome');
          open;
     end;
     with Empresas do begin
          sql.clear;
          sql.add('select Razao_Social');
          sql.add('      ,CNPJ');
          sql.add('      ,Unidade = case when isnull(Filial, 0) = 0 then ''MATRIZ'' else ''FILIAL ''+cast(Filial as char(3)) end');
          sql.add('      ,Fechamento_Financeiro');
          sql.add('      ,Estado');
          sql.add('from  Empresas');
          sql.add('where substring(CNPJ, 1, 8) = '+quotedstr(copy(UniMainModule.mEmpresaAtiva, 1, 8)) );
          sql.add('order by CNPJ, Filial');
          open;
     end;
     {
     if Trim(mProcesso) <> '' then begin
        Container.Locate('Processo', mProcesso, [loCaseInsensitive]);
        cProcesso.Enabled := False;
     end;
     }
     CarregaProcessosAdicionais;
     CalculaDemurrage;
end;

procedure TfContainer.LigaBotoes(Estado: Boolean);
begin
     bAdicionar.Enabled := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bGravar.Enabled    := not Estado;
     bCancelar.Enabled  := not Estado;
     bPesquisa.Enabled  := Estado;
     Navega.Enabled     := Estado;
     aLista.TabVisible  := Estado;
     if Estado then Pasta.ActivePage := aLista else Pasta.ActivePage := aFicha;
     AtualizaTipoEmbarque;
end;

procedure TfContainer.bSairClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfContainer.bAdicionarClick(Sender: TObject);
var
  Origem: TFDQuery;
begin
     Origem := TFDQuery.Create(nil);
     try
        Origem.Connection := UniMainModule.Conecta;
        if cTravar.Checked and (not Container.IsEmpty) then begin
           with Origem do begin
                sql.clear;
                sql.add('select * from Container where Numero = :pNumero');
                parambyName('pNumero').AsString := Container.FieldByName('Numero').AsString;
                open;
           end;
        end;
        with Container do begin
             append;
             if Trim(mProcesso) <> '' then fieldbyname('Processo').AsString := mProcesso;
             if Trim(mConhecimento) <> '' then fieldbyname('Documento_Carga').AsString := mConhecimento;
             if cTravar.Checked and Origem.Active and (not Origem.IsEmpty) then begin
                // Copia os mesmos campos da rotina Desktop, sem sobrescrever a chave do registro.
                FieldByName('Hora_Entrada').Value           := Origem.FieldByName('Hora_Entrada').Value;
                FieldByName('Previsao_SaidaHora').Value     := Origem.FieldByName('Previsao_SaidaHora').Value;
                FieldByName('Data_Entrada').Value           := Origem.FieldByName('Data_Entrada').Value;
                FieldByName('Previsao_SaidaData').Value     := Origem.FieldByName('Previsao_SaidaData').Value;
                FieldByName('Data_Entrega').Value           := Origem.FieldByName('Data_Entrega').Value;
                FieldByName('Armazem').Value                := Origem.FieldByName('Armazem').Value;
                FieldByName('Valor_Demurrage').Value        := Origem.FieldByName('Valor_Demurrage').Value;
                FieldByName('Transportadora_Entrega').Value := Origem.FieldByName('Transportadora_Entrega').Value;
                FieldByName('Free_Time').Value              := Origem.FieldByName('Free_Time').Value;
                FieldByName('Tamanho').Value                := Origem.FieldByName('Tamanho').Value;
                FieldByName('Transportadora_Entrada').Value := Origem.FieldByName('Transportadora_Entrada').Value;
                FieldByName('Observacao').Value             := Origem.FieldByName('Observacao').Value;
                FieldByName('Hora_Entrega').Value           := Origem.FieldByName('Hora_Entrega').Value;
                FieldByName('Armador').Value                := Origem.FieldByName('Armador').Value;
                FieldByName('Conhecimento_Embarque').Value  := Origem.FieldByName('Conhecimento_Embarque').Value;
                FieldByName('Terminal').Value               := Origem.FieldByName('Terminal').Value;
                FieldByName('Processo').Value               := Origem.FieldByName('Processo').Value;
                FieldByName('Tipo').Value                   := Origem.FieldByName('Tipo').Value;
             end;
        end;
        LigaBotoes(False);
     finally
        Origem.Free;
     end;
end;

procedure TfContainer.bEditarClick(Sender: TObject);
begin
     if Container.IsEmpty then Exit;
     Container.Edit;
     LigaBotoes(False);
end;

procedure TfContainer.bExcluirClick(Sender: TObject);
begin
     if Container.IsEmpty then Exit;
     MessageDlg('Deseja realmente excluir o container ' + Container.FieldByName('Numero').AsString + '?', mtConfirmation, mbYesNo,
                procedure(Comp: TComponent; ARes: Integer)
                begin
                     if ARes = mrYes then begin
                        Container.Delete;
                        Alerta.Text := 'Registro excluído do banco de dados!';
                        Alerta.Execute;
                     end;
                end);
end;

procedure TfContainer.bGravarClick(Sender: TObject);
begin
     if not TValidaCRUD.ValidarFormulario(pFicha) then abort;
     if not VerificaContainer(cNumero.Text) then begin 
        MessageDlg('Número do container incorreto!', mtError, [mbOK]);
        abort;
     end;
     if (Container.State = dsInsert) and (Existe(Container, 'Numero', Container.fieldbyname('Numero').asstring)) then begin
        MessageDlg('Número de Container já cadastrado!', mtError, [mbOK]);
        cNumero.SetFocus;
        Abort;
     end;
     
     try
        if Container.State in [dsInsert, dsEdit] then Container.Post;
        LigaBotoes(True);
        CalculaDemurrage;
     except
        on E: Exception do MessageDlg('Falha ao gravar container: ' + E.Message, mtError, [mbOK]);
     end;
end;

procedure TfContainer.bCancelarClick(Sender: TObject);
begin
     Container.Cancel;
     LigaBotoes(True);
end;

procedure TfContainer.bPesquisaClick(Sender: TObject);
var
  mPesquisa: String;
begin
     mPesquisa := UpperCase(Trim(cPesquisa.Text));
     if mPesquisa = '' then Exit;
     if not Container.Locate('Processo', mPesquisa, [loPartialKey, loCaseInsensitive]) then begin
        with ttmp do begin
             sql.clear;
             sql.add('select top 1 Numero from Container where Documento_Carga like :pPesquisa');
             ParamByName('pPesquisa').AsString := '%' + mPesquisa + '%';
             open;
             if IsEmpty then
                MessageDlg('Nenhum registro encontrado com número de Container ou Documento de Carga informado!', mtInformation, [mbOK])
             else
                Container.Locate('Numero', FieldByName('Numero').AsString, [loCaseInsensitive]);
        end;
     end;
     CalculaDemurrage;
end;

procedure TfContainer.cPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then bPesquisaClick(Sender);
end;

procedure TfContainer.cFreeTimeExit(Sender: TObject);
begin
     if Container.State in [dsInsert, dsEdit] then
        if not Container.FieldByName('Data_Entrada').IsNull then
           Container.FieldByName('Data_Saida').AsDateTime :=
             Container.FieldByName('Data_Entrada').AsDateTime + Container.FieldByName('Free_Time').AsInteger;
end;

procedure TfContainer.cHora_EntradaExit(Sender: TObject);
begin
     if Container.State in [dsInsert, dsEdit] then
        if Trim(Container.FieldByName('Hora_Saida').AsString) = '' then
           Container.FieldByName('Hora_Saida').AsString := Container.FieldByName('Hora_Entrada').AsString;
end;

procedure TfContainer.cDataEntregaExit(Sender: TObject);
begin
     CalculaDemurrage;
end;

procedure TfContainer.cProcessoChange(Sender: TObject);
begin
     with Container do begin
//          if not (State in [dsInsert, dsEdit]) or Processos.IsEmpty then Exit;
//          if not Processos.Locate('Processo', cProcesso.KeyValue, []) then Exit;
          FieldByName('Numero').AsString                := Processos.FieldByName('Container_Numero').AsString;
          FieldByName('Armador').AsString               := Processos.FieldByName('Agencia_Maritima').AsString;
          FieldByName('Conhecimento_Embarque').AsString := Processos.FieldByName('Documento_Carga').AsString;
          AtualizaTipoEmbarque;
     end;
end;

procedure TfContainer.cTravarClick(Sender: TObject);
begin
     if Container.IsEmpty then Exit;
     with tContainer do begin
          sql.clear;
          sql.add('select * from Container where Numero = :pNumero');
          parambyName('pNumero').AsString := Container.FieldByName('Numero').AsString;
          open;
     end;
end;

procedure TfContainer.cNumeroChange(Sender: TObject);
begin
     if not (Container.State in [dsInsert, dsEdit]) then cTravar.Checked := False;
end;

procedure TfContainer.CalculaDemurrage;
var
  Dias: Integer;
  Valor: Currency;
  Taxa: Double;
begin
     with Container do begin
          if not Active or IsEmpty then Exit;
          if FieldByName('Previsao_SaidaData').IsNull then Exit;
          if FieldByName('Data_Entrega').IsNull then
             Dias := Trunc(Date) - Trunc(FieldByName('Previsao_SaidaData').AsDateTime)
          else
             Dias := Trunc(FieldByName('Data_Entrega').AsDateTime) - Trunc(FieldByName('Previsao_SaidaData').AsDateTime);
          if State in [dsInsert, dsEdit] then
             if FieldByName('Taxa').AsFloat = 0 then
                if Processos.Active and not Processos.IsEmpty then
                   FieldByName('Taxa').AsFloat := Processos.FieldByName('Taxa_FOB').AsFloat;
             
          Valor           := FieldByName('Valor_Demurrage').AsCurrency;
          Taxa            := FieldByName('Taxa').AsFloat;
          cDemurrage.Text := IntToStr(Dias);
          cTotalME.Text   := FormatFloat('#,##0.00', Valor * Dias);
          cTotalReal.Text := FormatFloat('#,##0.00', Valor * Dias * Taxa);
     end;
end;

procedure TfContainer.cValorDemurrageChange(Sender: TObject);
begin
     CalculaDemurrage;
end;

procedure TfContainer.AtualizaTipoEmbarque;
var
  Estado: Boolean;
begin
     Estado := UpperCase(cTipoEmbarque.Text) = 'LCL - INTEGRAL';
     bAdicionarProcesso.Enabled := Estado and (Container.State in [dsInsert, dsEdit]);
     cAdicionarProcesso.Enabled := Estado and (Container.State in [dsInsert, dsEdit]);
     cMemoProcessos.Enabled := Estado and (Container.State in [dsInsert, dsEdit]);
end;

procedure TfContainer.cTipoEmbarqueExit(Sender: TObject);
begin
     AtualizaTipoEmbarque;
end;

procedure TfContainer.CarregaProcessosAdicionais;
begin
     cAdicionarProcesso.Items.Clear;
     if not Processos.Active then Exit;
     Processos.First;
     while not Processos.Eof do begin
        cAdicionarProcesso.Items.Add(Processos.FieldByName('Processo').AsString);
        Processos.Next;
     end;
     Processos.First;
end;

procedure TfContainer.bAdicionarProcessoClick(Sender: TObject);
begin
     if Trim(cAdicionarProcesso.Text) = '' then Exit;
     if not (Container.State in [dsInsert, dsEdit]) then Exit;
     Container.FieldByName('Memo_Processos').AsString :=
       Container.FieldByName('Memo_Processos').AsString + cAdicionarProcesso.Text + ', ';
     cAdicionarProcesso.ItemIndex := -1;
end;

end.
