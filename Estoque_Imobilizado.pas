unit Estoque_Imobilizado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, 
  uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, 
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMemo, uniDBComboBox, 
  uniMultiItem, uniLabel, uniImage, uniRadioGroup, uniDBRadioGroup, FireDAC.Stan.StorageBin, DateUtils;

type
  TfEstoque_Imobilizado = class(TuniFrame)
    Navega: TUniDBNavigator;
    Pasta: TUniPageControl;
    TabSheet1: TUniTabSheet;
    TabSheet2: TUniTabSheet;
    TabSheet3: TUniTabSheet;
    Produtos: TFDQuery;
    Fornecedores: TFDQuery;
    Imobilizado: TFDQuery;
    pBarraNav: TUniPanel;
    bAdicionar_: TUniSpeedButton;
    bEditar_: TUniSpeedButton;
    bExcluir_: TUniSpeedButton;
    bSalvar_: TUniSpeedButton;
    bCancelar_: TUniSpeedButton;
    bFechar_: TUniSpeedButton;
    Alerta: TUniSweetAlert;
    dsImobilizado: TDataSource;
    dsFornecedores: TDataSource;
    dsProdutos: TDataSource;
    Ficha: TUniPanel;
    DBEdit2: TUniDBEdit;
    cICMSProprio: TUniDBEdit;
    cModelo: TUniDBEdit;
    cFornecedor: TUniDBLookupComboBox;
    cNotaEntrada: TUniDBEdit;
    cDataEntrada: TUniDBDateTimePicker;
    cICMS_ST: TUniDBEdit;
    cICMS_Frete: TUniDBEdit;
    cICMS_Dif_Aliquota: TUniDBEdit;
    cValor_Credito: TUniDBEdit;
    cDescricaoBem: TUniDBMemo;
    cCodigo_Imobilizado: TUniDBEdit;
    cFuncao: TUniDBMemo;
    cProduto: TUniDBLookupComboBox;
    cParcelas: TUniDBEdit;
    cApropriadas: TUniDBEdit;
    cMes_FimApropriacao: TUniDBEdit;
    cVida_Util: TUniDBEdit;
    cOrdem: TUniDBEdit;
    GroupBox2: TUniGroupBox;
    DBEdit16: TUniDBEdit;
    DBEdit15: TUniDBEdit;
    cApropriacao_Inicial: TUniDBEdit;
    cApropriacao_Meses: TUniDBEdit;
    cQuantidade: TUniDBEdit;
    UniPanel1: TUniPanel;
    DBEdit9: TUniDBEdit;
    DBEdit10: TUniDBEdit;
    DBDateEdit1: TUniDBDateTimePicker;
    DBEdit11: TUniDBEdit;
    DBEdit12: TUniDBEdit;
    DBEdit13: TUniDBEdit;
    DBEdit14: TUniDBEdit;
    RxDBComboBox5: TUniDBComboBox;
    cSaidaMotivo: TUniDBComboBox;
    UniPanel2: TUniPanel;
    cContaNumero: TUniDBEdit;
    cNatureza: TUniDBComboBox;
    cTipoConta: TUniDBComboBox;
    cNivelConta: TUniDBEdit;
    cContaNome: TUniDBEdit;
    cCentroCusto: TUniDBEdit;
    UniTabSheet1: TUniTabSheet;
    gIndust: TUniDBGrid;
    ImobilizadoRegistro: TFDAutoIncField;
    ImobilizadoEmpresa: TStringField;
    ImobilizadoCodigo_Mercadoria: TIntegerField;
    ImobilizadoCodigo_Imobilizado: TStringField;
    ImobilizadoDescricao: TStringField;
    ImobilizadoTipo_Movimentacao: TStringField;
    ImobilizadoFornecedor: TIntegerField;
    ImobilizadoData_Nota: TDateField;
    ImobilizadoNota_id: TIntegerField;
    ImobilizadoNota: TIntegerField;
    ImobilizadoSerie: TStringField;
    ImobilizadoModelo: TStringField;
    ImobilizadoICMS_Proprio: TFMTBCDField;
    ImobilizadoICMS_ST: TFMTBCDField;
    ImobilizadoICMS_Frete: TFMTBCDField;
    ImobilizadoICMS_Dif_Aliquota: TFMTBCDField;
    ImobilizadoValor_Credito: TFMTBCDField;
    ImobilizadoOrdem_Item: TSmallintField;
    ImobilizadoSaida_Motivo: TStringField;
    ImobilizadoSaida_Nota: TIntegerField;
    ImobilizadoSaida_DataNota: TDateField;
    ImobilizadoSaida_Modelo: TStringField;
    ImobilizadoSaida_Serie: TStringField;
    ImobilizadoSaida_Item: TSmallintField;
    ImobilizadoSaida_Meses: TSmallintField;
    ImobilizadoSaida_AliquotaICMS: TFMTBCDField;
    ImobilizadoFuncao: TStringField;
    ImobilizadoTipo_CalculoCredito: TSmallintField;
    ImobilizadoValor_Aquisicao: TFMTBCDField;
    ImobilizadoValor_Depreciacao: TFMTBCDField;
    ImobilizadoApropriacao_Inicial: TStringField;
    ImobilizadoApropriacao_Meses: TSmallintField;
    ImobilizadoParcelas: TSmallintField;
    ImobilizadoApropriadas: TSmallintField;
    ImobilizadoMes_FimApropriacao: TSmallintField;
    ImobilizadoAno_FimApropriacao: TSmallintField;
    ImobilizadoCentro_Custo: TStringField;
    ImobilizadoVida_Util: TSmallintField;
    ImobilizadoTipo_MovimentacaoSaida: TStringField;
    ImobilizadoConta_Numero: TStringField;
    ImobilizadoConta_Nome: TStringField;
    ImobilizadoConta_Natureza: TStringField;
    ImobilizadoConta_Tipo: TStringField;
    ImobilizadoConta_Nivel: TStringField;
    ImobilizadoMes_Faturamento: TSmallintField;
    ImobilizadoAno_Faturamento: TSmallintField;
    ImobilizadoQuantidade: TFMTBCDField;
    cAno_FimApropriacao: TUniDBEdit;
    TipoMov: TFDMemTable;
    dsTipoMov: TDataSource;
    cTipo_Movimentacao: TUniDBLookupComboBox;
    TipoCalc: TFDMemTable;
    dsTipoCalc: TDataSource;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    TipoMovDescricao: TStringField;
    TipoMovCodigo: TStringField;
    TipoCalcCodigo: TSmallintField;
    TipoCalcDescricao: TStringField;
    Uso: TFDMemTable;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    dsUso: TDataSource;
    ImobilizadoUso: TSmallintField;
    ImobilizadoUso_Desc: TStringField;
    cUso: TUniDBLookupComboBox;
    ImobilizadoTipo_MovDesc: TStringField;
    ttmp: TFDQuery;
    procedure UniFrameCreate(Sender: TObject);
    procedure cProdutoExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bCancelar_Click(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvar_Click(Sender: TObject);
    procedure bExcluir_Click(Sender: TObject);
    procedure bAdicionar_Click(Sender: TObject);
    procedure bEditar_Click(Sender: TObject);
    procedure bFechar_Click(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure ImobilizadoAfterPost(DataSet: TDataSet);
    procedure ImobilizadoBeforeDelete(DataSet: TDataSet);
    procedure cFornecedorEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MainModule, Main, ValidaCRUD;

{$R *.dfm}

procedure TfEstoque_Imobilizado.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
     // Alinhando todas as ficha de dados ao centro do form.
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TUniPanel then begin
            TuniPanel(Components[i]).Top   := 30;
            TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
            TuniPanel(Components[i]).Color := clNone
         end;
     end;
     
     LigaBotoes(true);
     Pasta.ActivePageIndex := 0;
    
     TipoMov.open;
     TipoCalc.open;
     Uso.open;
     with Imobilizado do begin
          sql.clear;
          sql.add('select *');
          sql.add('from Imobilizado');
          sql.add('order by Codigo_Mercadoria');
          open;
     end;
     with Produtos do begin
          sql.clear;
          sql.add('select Codigo, Descricao_Reduzida, Descricao from produtos where Desativado <> 1 order by Descricao_Reduzida');
          open;
     end;
     with Fornecedores do begin
          sql.Clear;
          sql.Add('select * from Destinatarios where Fornecedor = 1 and Desativado <> 1 order by Nome');
          Open;
     end;

     Pasta.ActivePageIndex := 0;
end;

procedure TfEstoque_Imobilizado.cProdutoExit(Sender: TObject);
begin
     if trim(ImobilizadoDescricao.AsString) = '' then begin
        ImobilizadoDescricao.AsString := trim(Produtos.fieldbyname('Descricao').asstring);
     end;   
end;

procedure TfEstoque_Imobilizado.bAdicionar_Click(Sender: TObject);
begin
      with Imobilizado do begin
           try
               LigaBotoes(false);
               Append;
                    FieldByName('Empresa').Value := UniMainModule.mEmpresaAtiva;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfEstoque_Imobilizado.bExcluir_Click(Sender: TObject);
begin
     with Imobilizado do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Processo').AsString, mtConfirmation,mbYesNo,
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

procedure TfEstoque_Imobilizado.bSalvar_Click(Sender: TObject);
begin
     if not TValidaCRUD.ValidarFormulario(Ficha) then abort;
     if (ImobilizadoMes_FimApropriacao.asinteger < 1) or (ImobilizadoMes_FimApropriacao.asinteger > 12) then begin
        ValidaCampo(cMes_FimApropriacao, 0, 0, '=', 'Mês informado para o final da apropriação deve estar entre "01" e "12".', 'Erro de campo');
        abort;
     end;
     if length(ImobilizadoAno_FimApropriacao.asstring) < 4 then begin
        ValidaCampo(cAno_FimApropriacao, 0, 0, '=', 'Ano informado para o final da apropriação inválido.', 'Erro de campo');
        abort;
     end;
     if (trim(RemoveCaracter('/', '', ImobilizadoSaida_DataNota.AsString)) <> '') and ((Trim(ImobilizadoMes_FimApropriacao.AsString) = '') and (Trim(ImobilizadoAno_FimApropriacao.AsString) = '')) then begin
        ImobilizadoMes_FimApropriacao.value := MonthOf(ImobilizadoSaida_DataNota.AsDateTime);
        ImobilizadoAno_FimApropriacao.value := YearOf(ImobilizadoSaida_DataNota.AsDateTime);
     end;
     with ttmp do begin
          sql.clear;
          with ttmp do begin
               sql.clear;
               sql.add('select Existe = case when exists (select 1');
               sql.add('                                  from NotasFiscais');
               sql.add('                                  where Data_Emissao between :pDataIni and :pDataFim');
               sql.add('                                  and ES = 1');
               sql.add('                                  and Valor_ICMS > 0');
               sql.add('                                  and Cancelada <> 1');
               sql.add('                                  and Denegada <> 1)');
               sql.add('                     then cast(1 as bit) else cast(0 as bit) end');
               parambyname('pDataIni').AsDate := StartOfTheMonth(Imobilizado.FieldByName('Data_Nota').AsDateTime);
               parambyname('pDataFim').AsDate := EndOfTheMonth(Imobilizado.FieldByName('Data_Nota').AsDateTime);
               open;
               if fieldbyname('Existe').asboolean then begin
                  ImobilizadoMes_Faturamento.Value := MonthOf(Imobilizado.FieldByName('Data_Nota').AsDateTime);
                  ImobilizadoAno_Faturamento.Value := YearOf(Imobilizado.FieldByName('Data_Nota').AsDateTime);
                  if ImobilizadoApropriadas.Value < 1 then ImobilizadoApropriadas.Value := 1;
               end;
          end;          
     end;     
     with Imobilizado do begin
          try
              Post;
              LigaBotoes(true);
              Alerta.Text := 'Registro salvo no banco de dados!'; 
              Alerta.Execute;
          except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfEstoque_Imobilizado.bCancelar_Click(Sender: TObject);
begin
     Imobilizado.Cancel;
     LigaBotoes(true);
end;

procedure TfEstoque_Imobilizado.bEditar_Click(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Imobilizado.Edit;
     except on E: Exception do
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;
 
procedure TfEstoque_Imobilizado.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled      := Estado;
     bEditar_.Enabled    := Estado;
     bExcluir_.Enabled   := Estado;
     bAdicionar_.Enabled := Estado;
     bCancelar_.Enabled  := not Estado;
     bSalvar_.Enabled    := not Estado;
     Ficha.Enabled       := not Estado;
end;

procedure TfEstoque_Imobilizado.bFechar_Click(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfEstoque_Imobilizado.bPesquisaClick(Sender: TObject);
begin
     Imobilizado.Cancel;
     LigaBotoes(true);
     Filtra(Imobilizado, 'Descricao', cPesquisa.text);
end;
 
procedure TfEstoque_Imobilizado.cFornecedorEnter(Sender: TObject);
begin
     with ttmp do begin
          sql.Clear;
          sql.Add('select Nota_id, Destinatario from NotasFiscais where Nota = :pNota and Data_ES = :pData and Destinatario = :pForn');
          parambyname('pNota').Value := fieldbyname('Nota').AsInteger;
          parambyname('pData').Value := fieldbyname('Data_Nota').value;
          open;
          ImobilizadoNota_id.value := fieldbyname('Destinatario').asinteger;
          if ImobilizadoFornecedor.AsInteger = 0 then begin
             ImobilizadoFornecedor.value := fieldbyname('Destinatario').asinteger;
          end;
     end;
end;

procedure TfEstoque_Imobilizado.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     if Key = VK_RETURN then begin
        bPesquisa.Click;
     end;
end;
 
procedure TfEstoque_Imobilizado.ImobilizadoAfterPost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Codigo').AsString, EstadoTabela(DataSet));
end;

procedure TfEstoque_Imobilizado.ImobilizadoBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Codigo').AsString, 'Delete');
end;



end.
