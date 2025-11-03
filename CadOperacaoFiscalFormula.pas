unit CadOperacaoFiscalFormula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniMemo,
  uniDBMemo, uniEdit, uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniButton,
  uniBitBtn, uniSpeedButton, CalcExpress, uniSweetAlert, uniMultiItem, uniComboBox, uniSpinEdit, uniLabel;

type
  TfCadOperacaoFiscalFormula = class(TUniForm)
    tOpFormulas: TFDQuery;
    dsOpFormulas: TDataSource;
    UniPanel3: TUniPanel;
    bSair: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    tCampos: TFDQuery;
    dstCampos: TDataSource;
    Macro: TCalcExpress;
    Alerta: TUniSweetAlert;
    tCalculaveis: TFDQuery;
    dstCalculaveis: TDataSource;
    bAddCampo: TUniSpeedButton;
    tmp: TFDQuery;
    UniContainerPanel1: TUniContainerPanel;
    gCalculaveis: TUniDBGrid;
    gCampos: TUniDBGrid;
    cPesqCampos: TUniEdit;
    cPesqCalc: TUniEdit;
    bFiltraCalc: TUniSpeedButton;
    bFiltraCampos: TUniSpeedButton;
    gFormulas: TUniDBGrid;
    bAdicionarCalc: TUniSpeedButton;
    cTabela: TUniComboBox;
    cFormula: TUniMemo;
    cOrdem: TUniSpinEdit;
    bExcluir: TUniSpeedButton;
    cPesqForm: TUniEdit;
    bFiltraForm: TUniSpeedButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    procedure bSairClick(Sender: TObject);
    function  ChecaFormula: boolean;
    procedure bFiltraCalcClick(Sender: TObject);
    procedure bFiltraCamposClick(Sender: TObject);
    procedure cPesqCamposKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cPesqCalcChange(Sender: TObject);
    procedure cPesqCamposChange(Sender: TObject);
    procedure cPesqCalcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UniFormShow(Sender: TObject);
    procedure bAdicionarCalcClick(Sender: TObject);
    procedure bAddCampoClick(Sender: TObject);
    procedure gCamposDblClick(Sender: TObject);
    procedure cTabelaChange(Sender: TObject);
    procedure tOpFormulasAfterScroll(DataSet: TDataSet);
    procedure bGravarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure gCalculaveisDblClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure cFormulaAjaxEvent(Sender: TComponent; EventName: string; Params: TUniStrings);
    procedure bFiltraFormClick(Sender: TObject);
    procedure cPesqFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure FiltraCalculaveis;
    procedure FiltraCampos;
    procedure FiltraFormulas;
    { Private declarations }
  public
    { Public declarations }
    mCodigoCampo
   ,mOrdem
   ,mCodOper: integer;
  end;

function fCadOperacaoFiscalFormula: TfCadOperacaoFiscalFormula;

implementation

{$R *.dfm}

uses
  MainModule, Funcoes, uniGUIApplication;

function fCadOperacaoFiscalFormula: TfCadOperacaoFiscalFormula;
begin
    Result := TfCadOperacaoFiscalFormula(UniMainModule.GetFormInstance(TfCadOperacaoFiscalFormula));
end;

procedure TfCadOperacaoFiscalFormula.FiltraCampos;
begin
     with tCampos do begin
          sql.clear;
          sql.Add('select * ');
          sql.add('from Campos');
          sql.add('where Descricao like '+quotedstr('%'+cPesqCampos.text+'%'));
          sql.add('and Calculavel = 1');
          if trim(cTabela.Text) <> '' then begin
             sql.Add('and Tabela = '+quotedstr(cTabela.Text));
          end;
          sql.add('order by Descricao, Tabela');
          open;
     end;
end;

procedure TfCadOperacaoFiscalFormula.gCalculaveisDblClick(Sender: TObject);
begin
     bAdicionarCalcclick(self);
end;

procedure TfCadOperacaoFiscalFormula.gCamposDblClick(Sender: TObject);
begin
     bAddCampoClick(self);
end;

procedure TfCadOperacaoFiscalFormula.tOpFormulasAfterScroll(DataSet: TDataSet);
begin
     cFormula.Text       := DataSet.FieldByName('Formula').AsString;
     cOrdem.value        := DataSet.FieldByName('Ordem_Calculo').asinteger;
     mOrdem              := DataSet.FieldByName('Ordem_Calculo').asinteger;
     cFormula.FieldLabel := 'FORMULA DO CAMPO: '+DataSet.FieldByName('Campo').AsString;
end;

procedure TfCadOperacaoFiscalFormula.FiltraCalculaveis;
begin
     with tCalculaveis do begin
          sql.clear;
          sql.Add('select * ');
          sql.add('from CamposCalculaveis');
          sql.Add('where Codigo not in(select Codigo from OperacaoFiscalFormulas where Operacao = :pOper)');
          sql.add('and Descricao like '+quotedstr('%'+cPesqCalc.text+'%'));
          sql.add('order by Tipo, Descricao');
          parambyname('pOper').AsInteger := mCodoper;
          open;
     end;
end;

procedure TfCadOperacaoFiscalFormula.bAdicionarCalcClick(Sender: TObject);
var
  mOrdem: integer;
begin
     with tOpFormulas do begin
          last;
          mOrdem := fieldbyname('Ordem_Calculo').asinteger+1;
          append;
               fieldbyname('Operacao').value      := mCodOper;
               fieldbyname('Codigo').value        := tCalculaveis.fieldbyname('Codigo').AsInteger;
               fieldbyname('Tipo').value          := tCalculaveis.fieldbyname('Tipo').asstring;
               fieldbyname('Campo').value         := tCalculaveis.fieldbyname('Campo').asstring;
               fieldbyname('Tabela').value        := tCalculaveis.fieldbyname('Tabela').asstring;
               fieldbyname('Desativada').value    := true;
               fieldbyname('Descricao').value     := tCalculaveis.fieldbyname('Descricao').asstring;
               fieldbyname('Ordem_Calculo').value := mOrdem;
               fieldbyname('Imposto').value       := tCalculaveis.fieldbyname('Imposto').asboolean;
          post;
     end;
end;

procedure TfCadOperacaoFiscalFormula.bCancelarClick(Sender: TObject);
begin
     tOpFormulas.cancel;
end;

procedure TfCadOperacaoFiscalFormula.bExcluirClick(Sender: TObject);
begin
     with tOpFormulas do begin
          MessageDlg('Deseja realmente remover este campo?'+#13+#13, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             Delete;
                             Alerta.Text := 'Campo Removido!';
                             Alerta.Execute;
                          end;
                    end);
     end;
end;

procedure TfCadOperacaoFiscalFormula.bFiltraCamposClick(Sender: TObject);
begin
     FiltraCampos;
end;

procedure TfCadOperacaoFiscalFormula.bFiltraFormClick(Sender: TObject);
begin
      FiltraFormulas;
end;

procedure TfCadOperacaoFiscalFormula.bFiltraCalcClick(Sender: TObject);
begin
     FiltraCalculaveis;
end;

procedure TfCadOperacaoFiscalFormula.bGravarClick(Sender: TObject);
begin
     if ChecaFormula then begin
        if cOrdem.Value <> mOrdem then begin
           with tmp do begin
                sql.Clear;
                if cOrdem.Value < mOrdem then begin
                   sql.Add('update OperacaoFiscalFormulas set Ordem_Calculo = Ordem_Calculo+1 where Ordem_Calculo >= :pIni and ordem_Calculo < :pFim');
                end else begin
                   sql.Add('update OperacaoFiscalFormulas set Ordem_Calculo = Ordem_Calculo-1 where Ordem_Calculo > :pFim and ordem_Calculo <= :pIni');
                end;
                parambyname('pIni').value := cOrdem.Value;
                parambyname('pFim').value := mOrdem;
                execute;
           end;
        end;
        with tOpFormulas do begin
             edit;
                fieldbyname('Formula').Value       := cFormula.text;
                fieldbyname('Desativada').Value    := iif(trim(cFormula.text) <> '', false, true);
                fieldbyname('Ordem_Calculo').Value := cOrdem.Value;
             post;
             refresh;
        end;
     end;
end;

procedure TfCadOperacaoFiscalFormula.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
     fCadOperacaoFiscalFormula.Release;
end;

procedure TfCadOperacaoFiscalFormula.UniFormCreate(Sender: TObject);
begin
     with cFormula.JSInterface do begin
          JSAddListener('blur', 'function(){ajaxRequest(this, "_blur", ["cpos="+this.inputEl.dom.selectionStart])}');
     end;
end;

procedure TfCadOperacaoFiscalFormula.UniFormShow(Sender: TObject);
begin
     FiltraFormulas;
     with tmp do begin
          sql.clear;
          sql.add('select distinct tabela from Campos where Calculavel = 1 and Visivel = 1');
          open;
          first;
          while not eof do begin
                cTabela.Items.add(fieldbyname('Tabela').asstring);
                next;
          end;
     end;
     FiltraCalculaveis;
     FiltraCampos;
     tOpFormulas.Locate('Codigo', mCodigoCampo, [loCaseInsensitive]);
end;

procedure TfCadOperacaoFiscalFormula.bAddCampoClick(Sender: TObject);
var
    TextoA,
    TextoD,
    Texto: WideString;
    Pos: Integer;
begin
      if not tCampos.fieldbyname('Percentual').AsBoolean then begin
        if not tCampos.fieldbyname('Funcao').AsBoolean then begin
           Texto := tCampos.fieldbyname('Campo').asstring
        end else begin
           Texto := tCampos.fieldbyname('Campo').asstring+'{}';
        end;
     end else begin
        Texto := '('+tCampos.fieldbyname('Campo').asstring+'/100)';
     end;

     // Armazena a coluna em que está o cursor.
     pos := strtoint(cFormula.CustomAttribs.Values['cpos']);

     // Armazena o texto anterior.
     TextoA := Copy(cFormula.Text, 1, Pos);

     // Armazena o texto depois.
     TextoD := Copy(cFormula.Text,POS+1,Length(cFormula.Text));

     // Armazena o texto anterior, o texto desejato, e o texto posterior.
     cFormula.Text := textoA +' '+ texto +' '+ textoD;
end;

procedure TfCadOperacaoFiscalFormula.bSairClick(Sender: TObject);
begin
     close;
end;

procedure TfCadOperacaoFiscalFormula.cFormulaAjaxEvent(Sender: TComponent; EventName: string; Params: TUniStrings);
begin
     if EventName = '_blur' then begin
        (Sender as TUniMemo).CustomAttribs.Values['cpos'] := Params.Values['cpos'];
     end;
end;

function TfCadOperacaoFiscalFormula.ChecaFormula: boolean;
Var
    i
   ,mPos: integer;
    mTem: boolean;
    mCalculo
   ,mValTeste
   ,mCampo
   ,mFuncao: String;
   mLista: widestring;
   mQuebra: TStringList;
begin
      result := false;
      if trim(cFormula.Text) <> '' then begin
         mCalculo := cFormula.Text;
         mCalculo := stringreplace(mCalculo, ' ', '', [rfReplaceAll]);
         mCalculo := stringreplace(mCalculo, #10, '', [rfReplaceAll]);
         mCalculo := stringreplace(mCalculo, #12, '', [rfReplaceAll]);
         mCalculo := stringreplace(mCalculo, #13, '', [rfReplaceAll]);
         mLista   := '';

         // Convertendo a fórmula digitada com os valores de teste.
         if Trim(mCalculo) <> '' then begin
            mQuebra      := QuebraString(mCalculo, ']');
            mQuebra.Text := stringreplace(mQuebra.Text, 'CONDIÇÃO', '', [rfreplaceall]);
            mQuebra.Text := stringreplace(mQuebra.Text, '{', '', [rfreplaceall]);
            mQuebra.Text := stringreplace(mQuebra.Text, '}', '', [rfreplaceall]);
            mQuebra.Text := stringreplace(mQuebra.Text, '<', '', [rfreplaceall]);
            mQuebra.Text := stringreplace(mQuebra.Text, '>', '', [rfreplaceall]);
            mQuebra.Text := stringreplace(mQuebra.Text, ';', '', [rfreplaceall]);
            mQuebra.Text := stringreplace(mQuebra.Text, '=', '', [rfreplaceall]);
            mQuebra.Text := stringreplace(mQuebra.Text, ' ', '', [rfreplaceall]);
            mQuebra.text := ApenasLetras(mQuebra.text);
            for i := pred(mQuebra.Count) downto 0 do begin
                if trim(mQuebra[i]) <> '' then begin
                   mLista := mLista + quotedstr(mQuebra[i]) + ',';
                end;
            end;
            mLista := copy(mLista,1, length(mLista)-1);

            with tCampos do begin
                 DisableControls;
                 sql.clear;
                 sql.Add('select *');
                 sql.add('from Campos');
                 sql.add('where Campo in('+mLista+')');
                 //sql.SaveToFile('c:\temp\Lista_Campo_Formula.sql');
                 open;
                 mLista := '';

                 First;
                 while not Eof do begin
                       mValTeste := iif(trim(fieldbyname('Valor_Teste').asstring) <> '', trim(fieldbyname('Valor_Teste').asstring), '0');
                       if not fieldbyname('Funcao').asboolean then begin
                          mCalculo := stringreplace(mCalculo, fieldbyname('Campo').AsString, mValTeste, [rfReplaceAll,rfIgnoreCase]);
                       end else begin
                          mTem := true;
                          while mTem do begin
                                mPos := Pos(fieldbyname('Campo').asstring, mCalculo);
                                for i := mPos to Length(mCalculo) do begin
                                    mFuncao := mFuncao + mCalculo[i];
                                    If mCalculo[i] = '}' then break;
                                end;
                                mCalculo := stringreplace(mCalculo, mFuncao, mValTeste, [rfReplaceAll,rfIgnoreCase]);
                                mFuncao  := '';
                                mTem     := Pos(fieldbyname('Campo').asstring, mCalculo) <> 0;
                          end;
                       end;

                       // Verifica se todos os campos da formula existem na tabela de origem.
                       mCampo := tCampos.FieldByName('Campo').AsString;
                       mCampo := copy(mCampo, pos('[', mCampo)+1, 60);
                       mCampo := stringreplace(mCampo, ']', '', [rfReplaceAll]);
                       with tmp do begin
                            sql.Clear;
                            sql.Add('select Campo = isc.Column_name');
                            sql.Add('from information_schema.columns isc');
                            sql.Add('where isc.table_name = '+quotedstr(tCampos.FieldByName('Tabela').AsString));
                            sql.Add('and isc.column_name = '+quotedstr(mCampo));
                            open;
                            if recordcount = 0 then begin
                               mLista := mLista + mCampo+#13;
                            end;
                       end;
                       next;
                 end;
                 // Remove a função codição para evitar erro.
                 while pos('CONDIÇÃO', mCalculo) > 0 do begin
                       mCalculo := copy(mCalculo, 1, pos('CONDIÇÃO', mCalculo)-1) + ' 1 '+copy(mCalculo, pos('}', mCalculo)+1, 500);
                 end;
                 // Testa se a formula esta correta.
                 if not SinalSequencia(mCalculo) then begin
                    with Macro do begin
                         if Length(trim(apenasletras(mCalculo))) = 0 then begin
                            Formula := Trim(mCalculo);
                            result  := true;
                         end else begin
                            Alerta.AlertType := atError;
                            Alerta.TitleText := 'ERRO DE FÓRMULA';
                            Alerta.Text      := 'Erro na fórmula do campo: '+mCalculo;
                            Alerta.Execute;
                         end;
                    end;
                 end else begin
                    if not result then begin
                       Alerta.AlertType := atError;
                       Alerta.TitleText := 'ERRO DE FÓRMULA';
                       Alerta.Text      := 'Erro na fórmula do campo: '+tOpFormulas.Fieldbyname('Campo').AsString;
                       Alerta.Execute;
                    end;
                 end;
                 if trim(mLista) <> '' then begin
                    Alerta.AlertType := atError;
                    Alerta.TitleText := 'ERRO DE FÓRMULA';
                    Alerta.Text      := 'O seguintes campos não foram encontrados em suas tabelas de Origem: '+#13+mLista;
                    Alerta.Execute;
                 end;
                 EnableControls;
            end;
         end;
         bFiltraCamposClick(self);
      end else begin
         result := true;
      end;
end;

procedure TfCadOperacaoFiscalFormula.cPesqCamposChange(Sender: TObject);
begin
      if trim(cPesqCampos.text) = '' then begin
         FiltraCampos;
      end;
end;

procedure TfCadOperacaoFiscalFormula.cPesqCamposKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         FiltraCampos;
      end;
end;

procedure TfCadOperacaoFiscalFormula.cPesqFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         FiltraFormulas;
      end;
end;

procedure TfCadOperacaoFiscalFormula.cTabelaChange(Sender: TObject);
begin
      FiltraCampos;
end;

procedure TfCadOperacaoFiscalFormula.cPesqCalcChange(Sender: TObject);
begin
      if trim(cPesqCalc.text) = '' then begin
         FiltraCalculaveis
      end;
end;

procedure TfCadOperacaoFiscalFormula.cPesqCalcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         FiltraCalculaveis;
      end;
end;

procedure TfCadOperacaoFiscalFormula.FiltraFormulas;
begin
     with tOpFormulas do begin
          sql.clear;
          sql.Add('select *');
          sql.add('from OperacaoFiscalFormulas');
          sql.Add('where Operacao = :pCodigo');
          if trim(cPesqForm.Text) <> '' then begin
             sql.Add('and Descricao like '+quotedstr('%'+cPesqForm.Text+'%'));
          end;
          parambyname('pCodigo').Value := mCodOper;
          sql.add('order by Tipo, Ordem_Calculo, Campo');
          open;
     end;
end;


end.



