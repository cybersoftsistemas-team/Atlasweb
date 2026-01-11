unit FatPedidoNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, system.ansistrings,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker,
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Menus, uniMainMenu, FireDAC.Comp.DataSet, uniMemo, uniDBComboBox, uniMultiItem, uniDBText, uniLabel, uniRadioGroup, uniDBRadioGroup, uniStringGrid, uniDBTreeGrid, CalcExpress, 
  System.Generics.Collections, uniCheckBox, uniToolBar, uniListBox, uniSegmentedButton, System.Rtti, System.RegularExpressions;

type
  TfFatPedidoNF = class(TUniFrame)
    aLista: TUniTabSheet;
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
    Alerta: TUniSweetAlert;
    MenuCusto: TUniPopupMenu;
    Grade2: TuniDBGrid;
    mnDesmarcarCusto: TuniMenuItem;
    mnDesmarcarCustoEntrada: TuniMenuItem;
    mnDesmarcarCustoOutros: TuniMenuItem;
    mnDesmarcarCustoTodos: TuniMenuItem;
    mnDesmarcarCustoTodosEntrada: TuniMenuItem;
    mnDesmarcarCustoTodosOutros: TuniMenuItem;
    mnDesmarcarSeletivo: TuniMenuItem;
    mnDesmarcarSeletivoTodos: TuniMenuItem;
    mnMarcarCusto: TuniMenuItem;
    mnMarcarCustoEntrada: TuniMenuItem;
    mnMarcarCustoOutros: TuniMenuItem;
    mnMarcarCustoTodos: TuniMenuItem;
    mnMarcarCustoTodosEntrada: TuniMenuItem;
    mnMarcarCustoTodosOutros: TuniMenuItem;
    mnMarcarSeletivo: TuniMenuItem;
    mnMarcarSeletivoTodos: TuniMenuItem;
    N1: TuniMenuItem;
    N2: TuniMenuItem;
    N3: TuniMenuItem;
    Pasta: TUniPageControl;
    TabSheet1: TuniTabSheet;
    TabSheet2: TuniTabSheet;
    TabSheet3: TuniTabSheet;
    dsPedidosNF: TDataSource;
    UniScrollBox1: TUniScrollBox;
    UniPanel1: TUniPanel;
    cPedido: TUniDBEdit;
    cOperacao: TUniDBLookupComboBox;
    Destinatarios: TFDQuery;
    dsDestinatarios: TDataSource;
    OpFiscal: TFDQuery;
    dsOPFiscal: TDataSource;
    Beneficio: TFDQuery;
    dsBeneficio: TDataSource;
    Transportador: TFDQuery;
    dsTransportador: TDataSource;
    ModalFrete: TFDQuery;
    dsModalFrete: TDataSource;
    IndPresenca: TFDQuery;
    dsIndPresenca: TDataSource;
    PresencaComp: TFDQuery;
    dsPresencaComp: TDataSource;
    Intermediador: TFDQuery;
    dsIntermediador: TDataSource;
    TiposDesc: TFDQuery;
    dsTiposDesc: TDataSource;
    TipoPgto: TFDQuery;
    dsTipoPgto: TDataSource;
    FormaPgto: TFDQuery;
    dsFormaPgto: TDataSource;
    OpVeiculo: TFDQuery;
    dsOpVeiculo: TDataSource;
    RestVeiculo: TFDQuery;
    dsRestVeiculo: TDataSource;
    PanelDados1: TUniContainerPanel;
    NFRef: TFDQuery;
    dsNFRef: TDataSource;
    dsEmpresas: TDataSource;
    Empresas: TFDQuery;
    Config: TFDQuery;
    dsConfig: TDataSource;
    PedidosNF: TFDQuery;
    Macro: TCalcExpress;
    Grade: TUniDBGrid;
    cDestinatario: TUniDBLookupComboBox;
    cTransportador: TUniDBLookupComboBox;
    cNFRef: TUniDBLookupComboBox;
    cVolume_Especie: TUniDBEdit;
    cVolume_Quantidade: TUniDBEdit;
    cVolume_Marca: TUniDBEdit;
    cVolume_Numero: TUniDBEdit;
    cForma_Pagamento: TUniDBLookupComboBox;
    cDescricao_Forma: TUniDBEdit;
    cIntermediador: TUniDBLookupComboBox;
    cBeneficio_Fiscal: TUniDBLookupComboBox;
    cModalidade_Frete: TUniDBLookupComboBox;
    cIndicador_Intermediario: TUniDBLookupComboBox;
    cIndicador_Presenca: TUniDBLookupComboBox;
    cTipoDesc: TUniDBLookupComboBox;
    cDesconto_Percentual: TUniDBFormattedNumberEdit;
    cAliquota_IRPJ: TUniDBFormattedNumberEdit;
    cAliquota_CSLL: TUniDBFormattedNumberEdit;
    cTipo_Pagamento: TUniDBLookupComboBox;
    cOperacao_Veiculo: TUniDBLookupComboBox;
    cVeiculo_Restricao: TUniDBLookupComboBox;
    cTaxa_Cambio: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniSimplePanel1: TUniSimplePanel;
    UniPanel3: TUniPanel;
    cValorProdutos: TUniDBFormattedNumberEdit;
    cValorDespesas: TUniDBFormattedNumberEdit;
    cValorFrete: TUniDBFormattedNumberEdit;
    cValorSeguro: TUniDBFormattedNumberEdit;
    cValorII: TUniDBFormattedNumberEdit;
    cValorIPI: TUniDBFormattedNumberEdit;
    cValorPIS: TUniDBFormattedNumberEdit;
    cValorCOFINS: TUniDBFormattedNumberEdit;
    cValorICMS: TUniDBFormattedNumberEdit;
    cValorICMSST: TUniDBFormattedNumberEdit;
    cTotalDesconto: TUniDBFormattedNumberEdit;
    cValorPedido: TUniDBFormattedNumberEdit;
    cValorBCII: TUniDBFormattedNumberEdit;
    cValorBCIPI: TUniDBFormattedNumberEdit;
    cValorBCPIS: TUniDBFormattedNumberEdit;
    cValorBCCOFINS: TUniDBFormattedNumberEdit;
    cValorBCICMS: TUniDBFormattedNumberEdit;
    cValorBCICMSST: TUniDBFormattedNumberEdit;
    cValorAFRMM: TUniDBFormattedNumberEdit;
    cValorDIFALDest: TUniDBFormattedNumberEdit;
    cValorDIFALOrig: TUniDBFormattedNumberEdit;
    cValorBCIS: TUniDBFormattedNumberEdit;
    cValorIS: TUniDBFormattedNumberEdit;
    cValorBCIBS: TUniDBFormattedNumberEdit;
    cValorIBS: TUniDBFormattedNumberEdit;
    ValorBCCBS: TUniDBFormattedNumberEdit;
    cValorCBS: TUniDBFormattedNumberEdit;
    UniTabSheet1: TUniTabSheet;
    GradeItens: TUniDBGrid;
    tLotes: TFDQuery;
    cLotes: TUniDBComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    Armazem: TFDQuery;
    dsArmazem: TDataSource;
    UniDBComboBox1: TUniDBComboBox;
    cValor_Desconto: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit14: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    Representantes: TFDQuery;
    dsRepresentantes: TDataSource;
    UniDBFormattedNumberEdit15: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit16: TUniDBFormattedNumberEdit;
    AtendeCall: TFDQuery;
    dsAtendeCall: TDataSource;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit;
    UniDBEdit2: TUniDBEdit;
    bVeiculo: TUniButton;
    BarraItens: TUniPanel;
    bAddItens: TUniSpeedButton;
    bEditItens: TUniSpeedButton;
    bExcItens: TUniSpeedButton;
    bCancItens: TUniSpeedButton;
    bGravItens: TUniSpeedButton;
    bExcTodosItens: TUniSpeedButton;
    bNFRef: TUniSpeedButton;
    bDUE: TUniSpeedButton;
    bDUIMP: TUniSpeedButton;
    PedidosNFItens: TFDQuery;
    dsPedidosNFItens: TDataSource;
    ttmp: TFDQuery;
    ICMS: TFDQuery;
    dsICMS: TDataSource;
    UniContainerPanel1: TUniContainerPanel;
    cEntregaRetirada: TUniComboBox;
    tTotaliza: TFDQuery;
    PedidosNFItensPedido: TIntegerField;
    PedidosNFItensItem: TSmallintField;
    PedidosNFItensCFOP: TStringField;
    PedidosNFItensCodigo_Mercadoria: TIntegerField;
    PedidosNFItensDescricao_Mercadoria: TMemoField;
    PedidosNFItensNCM: TStringField;
    PedidosNFItensUM: TStringField;
    PedidosNFItensQuantidade: TFloatField;
    PedidosNFItensValor_Unitario: TFloatField;
    PedidosNFItensValor_Produtos: TCurrencyField;
    cEmpresa: TUniDBLookupComboBox;
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
    procedure PedidosNFBeforePost(DataSet: TDataSet);
    procedure PedidosNFBeforeDelete(DataSet: TDataSet);
    procedure bAddItensClick(Sender: TObject);
    procedure bCancItensClick(Sender: TObject);
    procedure bEditItensClick(Sender: TObject);
    procedure bExcItensClick(Sender: TObject);
    procedure bDUIMPClick(Sender: TObject);
    procedure bExcTodosItensClick(Sender: TObject);
    procedure PedidosNFAfterScroll(DataSet: TDataSet);
    procedure bVeiculoClick(Sender: TObject);
    procedure bGravItensClick(Sender: TObject);
  private
    procedure LigaBotoesItens(Estado: boolean);
    function SubstituirCampos(Campo: string): string;
    function SubstituirCondicao(Campo: string): string;
    procedure FrameFilhoFechou(Sender: TObject);
    procedure TotalizaPedido;
    { Private declarations }
  public
    { Public declarations }
    mNomeAba: string;
    mQtde: real;
  end;

implementation

{$R *.dfm}

uses MainModule, Main, FatPedidoItensDUIMP, FatPedidoNFItem, FatPedidoVeiculo;

var
  FrameItem: TfFatPedidoNFItem;

procedure TfFatPedidoNF.bAddItensClick(Sender: TObject);
begin
     try
         LigaBotoesItens(false);
         GradeItens.hide;
         pBarraNav.Enabled := false;
         mNomeAba          := 'ITEM DO PEDIDO: '+FormatFloat('0000', PedidosNF.fieldbyname('Pedido').asinteger)+' ('+Destinatarios.fieldbyname('Nome').asstring+')';
         FrameItem         := TfFatPedidoNFItem.Create(uniTabSheet1, PedidosNF.FieldByName('Pedido').asinteger, 0, 'Adicionar');
         FrameItem.Parent  := uniTabSheet1;
         FrameItem.Align   := alClient;
         with FrameItem do begin
              uniTabSheet3.Caption := mNomeAba;
              OnDestroy            := FrameFilhoFechou;    
         end;
     except
         MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
     end;
end;

procedure TfFatPedidoNF.bAdicionarClick(Sender: TObject);
begin
      with PedidosNF do begin
           try
               LigaBotoes(false);
               PanelDados1.Enabled := true;
               Append;
                    FieldByName('Empresa').Value := UniMainModule.mEmpresaAtiva;
               cOperacao.SetFocus;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo "Pedido" !', mtError, []);
           end;
      end;
end;

procedure TfFatPedidoNF.bExcItensClick(Sender: TObject);
begin
     with PedidosNFItens do begin
          MessageDlg('Deseja realmente excluir este produto do pedido?'+#13+#13+FieldByName('Codigo_Mercadoria').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          try
                             if ARes = mrYes then begin
                                Delete;
                                TotalizaPedido;
                                Alerta.Text := 'Item excluído do Pedido!';
                                Alerta.Execute;
                             end;
                          except
                             MessageDlgN('Falha desconhecida, não pode excluir o "Item" !', mtError, []);
                          end;
                    end);
     end;
     LigaBotoes(false);
end;

procedure TfFatPedidoNF.bExcluirClick(Sender: TObject);
begin
     with PedidosNF do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Pedido').AsString, mtConfirmation,mbYesNo,
                    procedure(Comp:TComponent; ARes: Integer)
                    begin
                          if ARes = mrYes then begin
                             try 
                                Delete;
                                Alerta.Text := 'Registro excluído do banco de dados!';
                                Alerta.Execute;
                             except
                                 MessageDlgN('Falha desconhecida, não pode excluir o "Pedido" !', mtError, []);
                             end;
                          end;
                    end);
     end;
end;

procedure TfFatPedidoNF.bExcTodosItensClick(Sender: TObject);
begin
     with PedidosNFItens do begin
          MessageDlg('Atenção!'+#13+#13+'Isso ira remover todos os "Itens" do Pedido '+fieldByName('Pedido').asstring+#13+#13+'Deseja realmente rewmover todos os itens?', mtConfirmation,mbYesNo,
                     procedure(Comp:TComponent; ARes: Integer)
                     begin
                           if ARes = mrYes then begin
                              with tTmp do begin
                                   sql.Clear;
                                   sql.add('delete from PedidosNFItens where Pedido = :pPed');
                                   parambyname('pPed').value := PedidosNF.FieldByName('Pedido').AsInteger;
                                   execute;
                                   PedidosNFItens.Refresh;
                                   TotalizaPedido;
                              end;
                              Alerta.Text := 'Todos os itens foram removidos do Pedido!';
                              Alerta.Execute;
                           end;
                     end);
     end;
end;

procedure TfFatPedidoNF.bGravarClick(Sender: TObject);
begin
     with PedidosNF do begin
          if CampoVazio(cBeneficio_Fiscal,'"Beneficio Fiscal" é obrigatório!') then Abort;
          if CampoVazio(cModalidade_Frete,'Modalidade de frete é campo obrigatório!') then Abort;
          if CampoVazio(cIndicador_Presenca,'Indicador de Presença do Comprador é campo obrigatório!') then Abort;
          if fieldbyName('Volume_Quantidade').asfloat <> 0 then begin
             if CampoVazio(cVolume_Especie,'Falta informar a "ESPÉCIE" dos volumes.'+#13+#13+'Se a quantidade de volumes é maior que zero a espécie dos volumes deve ser informada.') then Abort;
          end;
          if trim(fieldbyName('Volume_Especie').asstring) <> '' then begin
             if CampoVazio(cVolume_Quantidade,'Falta informar a "QUANTIDADE" dos volumes.'+#13+#13+'A quantidade de volumes deve maior que zero se a espécie de volumes for informada.') then Abort;
          end;
          if Fieldbyname('ES').asinteger = 0 then begin
             if Aviso(Destinatarios.FieldByName('Indicador_IE').value, '', '=', '"Indicador de Inscrição Estadual" do Fornecedor não informado no cadastro de Fornecedores.', '') then Abort
          else
             if Aviso(Destinatarios.FieldByName('Indicador_IE').value, '', '=', '"Indicador de Inscrição Estadual" do Cliente não informado no cadastro de Clientes.', '') then abort;
          end;
          if (FieldByName('Forma_Pagamento').AsInteger = 99) then begin // and (fieldbyname('Descricao_Forma').AsString = '') then begin
             if CampoVazio(cDescricao_Forma,'"Descrição da Forma de Pagamento" é obrigatório para "99 Outros".') then Abort;
          end;
          if fieldbyname('Indicador_Presenca').AsInteger in[2, 3, 4] then begin
             if CampoVazio(cIntermediador,'"Intermediador" é obrigatório para indicador de presença = 2, 3 e 4 !') then Abort;
          end;
          if OpFiscal.fieldbyname('Transportador').asboolean then begin
             if CampoVazio(cTransportador,'Para operações de combustivel o transportador e obrigatório!') then Abort;
          end;
          if (fieldbyname('ES').AsInteger = 1) and (ICMS.RecordCount = 0) then begin
             if Aviso(ICMS.RecordCount, 0, '=', 'Estado do Cliente ('+ Destinatarios.fieldbyname('Estado').AsString+') não cadastrado na tabela de ICMS.', '') then abort;
          end;
          // Caso esteja selecionado em configurações, bloqueia o cliente em caso de atraso de pagamento.
          if Config.fieldbyname('Faturamento_BloquearAtraso').AsBoolean then begin
             with ttmp do begin
                  sql.clear;
                  sql.add('select Atraso = isnull(count(*), 0)');
                  sql.add('from PagarReceber pr');
                  sql.add('where Beneficiario = :pDest');
                  sql.add('and datediff(Day, Data_Vencimento, getdate()) > (select Atraso_Maximo from Destinatarios  where Codigo = Beneficiario)');
                  sql.add('and isnull(round((select sum(Valor) from PagarReceberBaixas prb where pr.Titulo = prb.Titulo), 2),0) < round(Valor_Total, 2)');
                  parambyName('pDest').AsInteger := Destinatarios.FieldByName('Codigo').asinteger;
                  open;
                  if Aviso(fieldbyname('Atraso').asinteger, 0, '>', 'Constam pagamentos em atraso para o cliente informado.'+#13+#13+'Não é possível emitir notas para este cliente.', 'ATRASO DE PAGAMENTO') then abort;
             end;
          end;

          // Verifica se o cliente informado é uma das filias para pedidos de transferência.
          if OpFiscal.FieldByName('Transferencia').AsBoolean then begin
             // Verifica se o CNPJ do Destinatário igual Emissor.
             if ValidaCampo(cDestinatario, Destinatarios.FieldByName('CNPJ_CPF').AsString, Empresas.FieldByName('CNPJ').asstring, '=', 'CNPJ inválido para Pedido de transferência.'+#13+#13+'Não é possível emitir notas de transferência para a própria empresa.', 'TRANSFERÊNCIA') then Abort;

             // Verifica se o CNPJ do Destinatario é de uma filial.
             with ttmp do begin
                  sql.clear;
                  sql.add('select Empresas = count(*)');
                  sql.add('from Cybersoft_Cadastros.dbo.Empresas');
                  sql.add('where  CNPJ like '+QuotedStr(Copy(Destinatarios.FieldByName('CNPJ_CPF').AsString, 1, 8)+'%'));
                  open;
                  if ValidaCampo(cDestinatario, FieldByName('Empresas').AsInteger, 0, '=', 'CNPJ inválido para Pedido de transferência.'+#13+#13+'CNPJ do destinatário não compatível com o da empresa atual.', 'TRANSFERÊNCIA') then Abort;
             end;
          end;
          if CampoVazio(cTipo_Pagamento,'"Tipo de Pagamento" é obrigatório!') then Abort;
          if CampoVazio(cForma_Pagamento,'"Forma de Pagamento" é obrigatório!') then Abort;
          with ttmp do begin
               sql.Clear;
               sql.Add('select Nome from Municipios where Codigo = :pCodigo');
               parambyname('pCodigo').value := Destinatarios.FieldByName('Municipio').AsString;
               open;
          end;
          try
              fieldbyname('Data_Emissao').Value               := now;
              fieldbyname('Hora_Emissao').Value               := now;
              fieldbyname('Empresa').Value                    := UniMainModule.mEmpresaAtiva;
              fieldbyname('Destinatario_CNPJ_CPF').Value      := trim(Destinatarios.FieldByName('CNPJ').AsString)+trim(Destinatarios.FieldByName('CPF').AsString);
              fieldbyname('Destinatario_Nome').Value          := Destinatarios.FieldByName('Nome').AsString;
              fieldbyname('Destinatario_Rua').Value           := Destinatarios.FieldByName('Rua').AsString;
              fieldbyname('Destinatario_RuaNumero').Value     := Destinatarios.FieldByName('Rua_Numero').AsString;
              fieldbyname('Destinatario_Complemento').Value   := Destinatarios.FieldByName('Complemento').AsString;
              fieldbyname('Destinatario_Bairro').Value        := Destinatarios.FieldByName('Bairro').AsString;
              fieldbyname('Destinatario_Municipio').Value     := Destinatarios.FieldByName('Municipio').AsString;
              fieldbyname('Destinatario_MunicipioNome').Value := ttmp.FieldByName('Nome').AsString;
              fieldbyname('Destinatario_Estado').Value        := Destinatarios.FieldByName('Estado').AsString;
              fieldbyname('Destinatario_CEP').Value           := Destinatarios.FieldByName('CEP').AsString;
              fieldbyname('Destinatario_Pais').Value          := Destinatarios.FieldByName('Pais').AsString;
              fieldbyname('Destinatario_Telefone1').Value     := Destinatarios.FieldByName('Telefone1').AsString;
              fieldbyname('Destinatario_IE').Value            := Destinatarios.FieldByName('Inscricao_Estadual').AsString;
              fieldbyname('Destinatario_Juridica').Value      := iif(trim(Destinatarios.FieldByName('CNPJ').AsString) <> '', 1, 0);
              fieldbyname('ES').Value                         := OpFiscal.FieldByName('ES').AsInteger;
              fieldbyname('ES_Desc').Value                    := iif(OpFiscal.FieldByName('ES').AsInteger = 0, 'ENTRADA', 'SAÍDA');
              fieldbyname('Op_Descricao').Value               := OpFiscal.FieldByName('Descricao').AsString;
              fieldbyname('Processo_Desc').Value              := 'REVENDA';
              if fieldbyname('Tipo_Processo').asstring = 'I' then fieldbyname('Processo_Desc').Value := 'IMPORTAÇÃO';
              if fieldbyname('Tipo_Processo').asstring = 'E' then fieldbyname('Processo_Desc').Value := 'EXPORTAÇÃO';
              fieldbyname('Entrega_Retirada').Value := null;
              if cEntregaRetirada.ItemIndex = 0 then fieldbyname('Entrega_Retirada').Value := 'E';
              if cEntregaRetirada.ItemIndex = 1 then fieldbyname('Entrega_Retirada').Value := 'R';
              Post;
              
              LigaBotoes(true);
              Alerta.Text := 'Registro salvo no banco de dados!';
              Alerta.Execute;
              PanelDados1.Enabled := false;
          except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, []);
          end;
     end;
end;

procedure TfFatPedidoNF.bGravItensClick(Sender: TObject);
var
  mEstoque: real;
begin
     with FrameItem do begin
          // Validação de todos os campos.
          CampoVazio(cProduto,'"Produto" é obrigatório!');
          CampoVazio(cCFOP,'"CFOP" é obrigatório!');
          if (MatchText(OpFiscal.FieldByName('Destino_Origem').asstring, ['I', 'E'])) then begin 
             CampoVazio(cProcesso,'"Processo" é obrigatório para esse tipo de operação!');
          end;
          if not OpFiscal.fieldbyname('Complementar').AsBoolean and (PedidosNFItens.fieldbyname('Quantidade').asfloat <= 0) then begin
             CampoVazio(cQtde,'"Quantidade" do item inválida!');
          end;
          CampoVazio(cValor_Unitario,'"Valor Unitario" do item inválido!"');
          
          // Verifica Estoque.
          if OpFiscal.fieldbyname('Movimenta_Estoque').asboolean and (PedidosNF.FieldByName('ES').AsInteger = 1) then begin
             if not Produtos.fieldbyname('Estoque_Navio').asboolean then begin
                mEstoque := EstoqueProduto(PedidosNFItens.fieldbyname('Codigo_Mercadoria').asinteger);
             end else begin
                mEstoque := EstoqueProdutoEmb(PedidosNFItens.fieldbyname('Codigo_Mercadoria').asinteger, PedidosNFItens.fieldbyname('Embarque').asinteger);
             end;
          end;
          if PedidosNFItens.state = dsEdit then mEstoque := mEstoque + mQtde;
          if ValidaCampo(cQtde, PedidosNFItens.fieldbyname('Quantidade').asfloat, mEstoque, '>', 'Quantidade maior que a disponível para este item'+#13+#13+'Estoque Disponível: '+FormatFloat(',##0.000', mEstoque), 'SEM ESTOQUE') then Abort;

          // Verifica Inventario.
          if OpFiscal.fieldbyname('Movimenta_Inventario').asboolean and (PedidosNF.FieldByName('ES').AsInteger = 1) then begin
             if not Produtos.fieldbyname('Estoque_Navio').asboolean then begin
                mEstoque := InventarioProduto(PedidosNFItens.fieldbyname('Codigo_Mercadoria').asinteger);
             end;
          end;
          if PedidosNFItens.state = dsEdit then mEstoque := mEstoque + mQtde;
          if ValidaCampo(cQtde, PedidosNFItens.fieldbyname('Quantidade').asfloat, mEstoque, '>', 'Quantidade maior que a disponível para este item'+#13+#13+'Inventario Disponível: '+FormatFloat(',##0.000', mEstoque), 'SEM INVENTÁRIO') then Abort;

          // Salva o item.
          try
              with PedidosNFItens do begin
                   if State = dsInsert then begin
                      with ttmp do begin
                           sql.clear;
                           sql.Add('select isnull(max(Item), 0)+1 as Item from PedidosNFItens where Pedido = :pPed');
                           parambyname('pPed').Value := PedidosNF.Fieldbyname('Pedido').value;
                           Open;
                           PedidosNFITens.fieldByName('Item').Value := ttmp.fieldbyname('Item').AsInteger;
                      end;
                   end;
                   fieldByName('Pedido').Value                := PedidosNF.Fieldbyname('Pedido').value;
                   fieldbyname('Empresa').Value               := PedidosNF.Fieldbyname('Empresa').value;
                   fieldbyname('ES').Value                    := PedidosNF.Fieldbyname('ES').value;
                   fieldbyname('Operacao').Value              := PedidosNF.Fieldbyname('Operacao').value;
                   fieldbyname('Codigo_Fabricante').Value     := Produtos.Fieldbyname('Codigo_Fabricante').value;
                   fieldbyname('Descricao_Mercadoria').Value  := Produtos.Fieldbyname('Descricao').value;
                   fieldbyname('Movimenta_Inventario').Value  := OPFiscal.Fieldbyname('Movimenta_Inventario').asboolean;
                   fieldbyname('Movimenta_Estoque').Value     := OPFiscal.Fieldbyname('Movimenta_Estoque').asboolean;
                   fieldbyname('Movimenta_EstoqueRep').Value  := OPFiscal.Fieldbyname('Movimenta_EstoqueRep').asboolean;
                   fieldbyname('Movimenta_EstoqueInd').Value  := OPFiscal.Fieldbyname('Movimenta_EstoqueInd').asboolean;
                   fieldbyname('Apuracao_PISCOFINS').Value    := OPFiscal.Fieldbyname('Apuracao_PISCOFINS').value;
                   fieldbyname('Finalidade_Mercadoria').Value := OPFiscal.Fieldbyname('Finalidade_Mercadoria').value;
                   Post;

                   LigaBotoes(true);
                   Alerta.Text := 'Registro salvo no banco de dados!';
                   Alerta.Execute;
                   PanelDados1.Enabled := false;
              end;
          except on E: Exception do
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, []);
          end;
          
          // Avisa quando o produto esta abaixo ou igual ao estoque mínimo.
          if mEstoque <= FrameItem.Produtos.fieldbyname('Estoque_Minimo').asfloat then begin
             Alerta.AlertType := atInfo;
             Alerta.Title     := 'ATENÇÃO';
             Alerta.TitleText := 'ESTOQUE MÍNIMO';
             Alerta.Text      := 'Ateção!'+#13+#13+'Estoque do produto atingiu estoque mínimo: '+FormatFloat(',##0.000', ProdutosEstoque_Minimo.Value);
             MessageBeep(MB_ICONINFORMATION);
             Alerta.Execute;
          end;
     end;
     FreeAndNil(FrameItem);
     PedidosNFItens.Cancel;
     PedidosNFItens.Refresh;
     LigaBotoesItens(true);
end;

procedure TfFatPedidoNF.bCancelarClick(Sender: TObject);
begin
      PedidosNF.Cancel;
      LigaBotoes(true);
      PanelDados1.Enabled := false;
end;

procedure TfFatPedidoNF.bCancItensClick(Sender: TObject);
begin
      FreeAndNil(FrameItem);
      PedidosNFItens.Cancel;
      LigaBotoesItens(true);
end;

procedure TfFatPedidoNF.bDUIMPClick(Sender: TObject);
begin
      fFatPedidoItensDUIMP.mPedido   := PedidosNF.FieldByName('Pedido').asinteger;
      fFatPedidoItensDUIMP.mEstado   := PedidosNF.FieldByName('Destinatario_Estado').asstring;
      fFatPedidoItensDUIMP.mOperacao := PedidosNF.FieldByName('Operacao').asinteger;
      fFatPedidoItensDUIMP.ShowModal;
      PedidosNFItens.refresh;
end;

procedure TfFatPedidoNF.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         PedidosNF.Edit;
         PanelDados1.Enabled := true;
         cOperacao.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o "Pedido" !', mtError, []);
     end;
end;

procedure TfFatPedidoNF.bEditItensClick(Sender: TObject);
begin
     try
         LigaBotoesItens(false);
         GradeItens.hide;
         pBarraNav.Enabled := false;
         mNomeAba          := 'ITEM DO PEDIDO: '+FormatFloat('0000', PedidosNF.fieldbyname('Pedido').asinteger)+' ('+Destinatarios.fieldbyname('Nome').asstring+')';
         FrameItem         := TfFatPedidoNFItem.Create(uniTabSheet1, PedidosNF.FieldByName('Pedido').asinteger, PedidosNFItens.FieldByName('Item').AsInteger, 'Editar');
         FrameItem.Parent  := uniTabSheet1;
         FrameItem.Align   := alClient;
         with FrameItem do begin
              uniTabSheet3.Caption := mNomeAba;
              OnDestroy := FrameFilhoFechou;    
         end;
     except
         MessageDlgN('Falha desconhecida, não pode editar o registro!', mtError, []);
     end;
end;

procedure TfFatPedidoNF.UniFrameDestroy(Sender: TObject);
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

procedure TfFatPedidoNF.FrameFilhoFechou(Sender: TObject);
begin
    // Restaurar estado original
    TotalizaPedido;
    GradeItens.show;
    BarraItens.show;
    pBarraNav.Enabled := true;
end;

procedure TfFatPedidoNF.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfFatPedidoNF.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled      := Estado;
     bEditar.Enabled     := Estado and (PedidosNF.RecordCount > 0);
     bExcluir.Enabled    := Estado and (PedidosNF.RecordCount > 0);
     bAdicionar.Enabled  := Estado;
     bCancelar.Enabled   := not Estado;
     bGravar.Enabled     := not Estado;
     BarraItens.Enabled  := Barraitens.Visible;
     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfFatPedidoNF.LigaBotoesItens(Estado:boolean);
begin
     bAdditens.Enabled      := Estado;
     bEditItens.Enabled     := Estado and (PedidosNFItens.RecordCount > 0);
     bExcitens.Enabled      := Estado and (PedidosNFItens.RecordCount > 0);
     bExcTodosItens.Enabled := Estado and (PedidosNFItens.RecordCount > 0);
     bCancItens.Enabled     := not Estado;
     bGravItens.Enabled     := not Estado;
     bDUIMP.Enabled         := Estado;
     bDUE.Enabled           := Estado;
     bNFRef.Enabled         := Estado;
     BarraItens.Enabled     := BarraItens.Visible;
     if not Estado then Pasta.ActivePageIndex := 2;
end;

procedure TfFatPedidoNF.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as fichas de dados ao centro do componente pai.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (TuniPanel(Components[i]).Parent.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;
      
      Pasta.ActivePageIndex := 0;
      with PedidosNF do begin
           sql.clear;
           sql.add('select *');
           sql.Add('from PedidosNF');
           sql.Add('order by Pedido');
           open;
      end;
      with Empresas do begin
           sql.Clear;
           sql.Add('select CNPJ');
           sql.Add('      ,Estado');
           sql.add('      ,Unidade = case when isnull(Numero_Filial, 0) = 0 then ''MATRIZ'' else ''FILIAL ''+cast(numero_Filial as char(3)) end');
           sql.Add('      ,Razao_Social');
           sql.Add('      ,Regime_Tributario');
           sql.Add('from Empresas');
           sql.add('where substring(CNPJ, 1, 8) = '+quotedstr(copy(UniMainModule.mEmpresaAtiva, 1, 8)) );
           open;
      end;
      with Config do begin
           sql.Clear;
           sql.add('select Empresa');
           sql.add('      ,Faturamento_BloquearAtraso');
           sql.add('from Config');
           sql.add('where Empresa = :pEmpresa');
           parambyname('pEmpresa').Value := UniMainModule.mEmpresaAtiva;
           open;
      end;
      with OpFiscal do begin
           sql.clear;
           sql.add('select Codigo');
           sql.Add('      ,Descricao');
           sql.Add('      ,Destino_Origem');
           sql.Add('      ,Tipo = iif(ES = 0, ''ENTRADA'', ''SAÍDA'') ');
           sql.Add('      ,ES');
           sql.Add('      ,Nota_Referencia');
           sql.Add('      ,Apuracao_PISCOFINS');
           sql.Add('      ,Transportador');
           sql.Add('      ,Transferencia');
           sql.Add('      ,Complementar');
           sql.Add('from OperacaoFiscal');
           sql.add('order by Tipo, Descricao');
           open;
      end;
      if OpFiscal.fieldbyname('Nota_Referencia').asboolean then begin
         cNFRef.Enabled := true;
         with NFRef do begin
              sql.clear;
              sql.add('select Chave');
              sql.add('      ,Data_Emissao');
              sql.Add('      ,Processo');
              sql.add('from NotasFiscais');
              sql.add('where isnull(Cancelada, 0) = 0');
              sql.add('and isnull(Denegada, 0) = 0');
              sql.add('order by Data_Emissao, Chave');
              open;
         end;
      end;
      with Beneficio do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('from BeneficioFiscal');
           sql.add('order by Nome');
           open;
      end;
      with Transportador do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,CNPJ_CPF = iif(isnull(CNPJ, '''') <> '''', replicate(''0'', 14-len(isnull(CNPJ,'''')))+isnull(CNPJ,''''), replicate(''0'', 14-len(isnull(CPF, '''')))+isnull(CPF,''''))');
           sql.add('from Destinatarios');
           sql.Add('where isnull(Transportador, 0) = 1');
           sql.add('order by Nome');
           open;
      end;
      with Armazem do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,CNPJ');
           sql.add('from Destinatarios');
           sql.Add('where isnull(Armazem, 0) = 1');
           sql.add('order by Nome');
           open;
      end;
      with Representantes do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,CNPJ');
           sql.add('from Destinatarios');
           sql.Add('where isnull(Representante, 0) = 1');
           sql.add('order by Nome');
           open;
      end;
      with AtendeCall do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,CNPJ');
           sql.add('from Destinatarios');
           sql.Add('where isnull(Atendente_Call, 0) = 1');
           sql.add('order by Nome');
           open;
      end;
      with ModalFrete do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Descricao');
           sql.add('from ModalidadesFrete');
           sql.add('order by Descricao');
           open;
      end;
      with IndPresenca do begin
           sql.clear;
           sql.add('select Codigo = 0, Descricao = ''Operação sem intermediador (em site ou plataforma própria)'' ');
           sql.add('union all');
           sql.add('select Codigo = 1, Descricao = ''Operação em site ou plataforma de terceiros (intermediadores/marketplace)'' ');
           sql.add('order by Codigo');
           open;
      end;
      with TipoPgto do begin
           sql.clear;
           sql.add('select Codigo = 0, Descricao = ''A VISTA'' ');
           sql.add('union all');
           sql.add('select Codigo = 1, Descricao = ''A PRAZO'' ');
           sql.add('union all');
           sql.add('select Codigo = 2, Descricao = ''OUTROS'' ');
           sql.add('order by Codigo');
           open;
      end;
      with FormaPgto do begin
           sql.clear;
           sql.add('select * from FormasPagamento order by Codigo');
           open;
      end;
      with PresencaComp do begin
           sql.clear;
           sql.add('select * from PresencaComprador order by Codigo');
           open;
      end;
      with Intermediador do begin
           sql.clear;
           sql.add('select * from Intermediadores order by Codigo');
           open;
      end;
      with TiposDesc do begin
           sql.clear;
           sql.add('select * from TiposDescontos');
           open;
      end;
      with OpVeiculo do begin
           sql.clear;
           sql.add('select * from OperacaoVeiculo');
           open;
      end;
      with RestVeiculo do begin
           sql.clear;
           sql.add('select * from RestricaoVeiculo');
           open;
      end;
      cLotes.Items.Clear;
      with tLotes do begin
           sql.clear;
           sql.add('select distinct Lote from NotasFiscais where Lote is not null');
           open;
           first;
           while not Eof do begin
                 cLotes.Items.Add(fieldbyname('Lote').AsString);
                 next;
           end;
           close;
      end;
      with ICMS do begin
           sql.clear;
           sql.add('select UF from ICMS where UF = :pUF');
           parambyname('pUF').value := PedidosNF.FieldByName('Destinatario_Estado').AsString;
           open;
      end;

      LigaBotoes(true);
      LigaBotoesItens(true);
end;

procedure TfFatPedidoNF.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfFatPedidoNF.bPesquisaClick(Sender: TObject);
begin
     PedidosNF.Cancel;
     LigaBotoes(true);
     Pesquisa(PedidosNF, 'Pedido', 'Pedido',cPesquisa.text)
end;

procedure TfFatPedidoNF.bVeiculoClick(Sender: TObject);
var
  FVeiculo: TfFatPedidoVeiculo;
begin
     FVeiculo := TfFatPedidoVeiculo.Create(UniApplication);
     FVeiculo.FramePedido := Self;   // <-- AQUI PASSA A REFERÊNCIA
     FVeiculo.ShowModal;
end;

procedure TfFatPedidoNF.PedidosNFBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Pedido').AsString, EstadoTabela(DataSet));
end;

procedure TfFatPedidoNF.PedidosNFAfterScroll(DataSet: TDataSet);
begin
     with Destinatarios do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Nome');
          sql.add('      ,CNPJ_CPF = iif(isnull(CNPJ, '''') <> '''', replicate(''0'', 14-len(isnull(CNPJ,'''')))+isnull(CNPJ,''''), replicate(''0'', 14-len(isnull(CPF, '''')))+isnull(CPF,''''))');
          sql.add('      ,CNPJ');
          sql.add('      ,CPF');
          sql.add('      ,Estado');
          sql.add('      ,Indicador_IE');
          sql.add('      ,Rua');
          sql.add('      ,Rua_Numero');
          sql.add('      ,Complemento');
          sql.add('      ,Bairro');
          sql.add('      ,Municipio');
          sql.add('      ,Estado');
          sql.add('      ,CEP');
          sql.add('      ,Pais');
          sql.add('      ,Telefone1');
          sql.add('      ,Inscricao_Estadual');
          sql.add('      ,Atacadista');
          sql.add('      ,Varejista');
          sql.add('      ,Simples_Nacional');
          sql.add('      ,Consumidor_Final');
          sql.add('from Destinatarios');
          sql.add('where isnull(Desativado, 0) = 0');
          sql.add('and Cliente = case when :pES = 1 then 1 end');
          sql.add('or Fornecedor = case when :pES = 0 then 1 end');
          sql.add('order by Nome');
          parambyname('pES').asinteger := PedidosNF.fieldbyname('ES').AsInteger;
          open;
     end;
     with PedidosNFItens do begin
          sql.clear;
          sql.add('select * from PedidosNFItens where Pedido = :pPed order by Item');
          parambyname('pPed').value := PedidosNF.FieldByName('Pedido').asinteger;
          open;
          // Armazem a quantidade para checar o estoque em caso de alteração do item.
          mQtde := fieldbyname('Quantidade').AsFloat;
     end;
     with PedidosNF do begin
          cEntregaRetirada.ItemIndex := -1;
          if fieldbyname('Entrega_Retirada').Value = 'E' then cEntregaRetirada.ItemIndex := 0;
          if fieldbyname('Entrega_Retirada').Value = 'R' then cEntregaRetirada.ItemIndex := 1;
     end;
     LigaBotoesItens(true);
end;

procedure TfFatPedidoNF.PedidosNFBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Pedido').AsString, 'Delete');
end;

function TfFatPedidoNF.SubstituirCampos(Campo: string): string;
var
  Match: TMatch;
  CampoNome
 ,NomeDataSet: string;
  DataSet: TDataSet;
  mValor: real;
begin
     Result      := '';
     NomeDataSet := copy(Campo, 1, pos('_', Campo)-1);
     // Localiza componente pelo nome
     DataSet := TDataSet(FindComponent(NomeDataset));
     if not DataSet.Active then begin
        result := '0';
        exit;
     end;
     // Expressão regular para pegar o texto dentro dos colchetes
     Match     := TRegEx.Match(Campo, '\[(.*?)\]');
     CampoNome := Match.Groups[1].Value;
     if DataSet.FindField(CampoNome) <> nil then begin
        Result := iif(DataSet.FieldByName(CampoNome).AsString = '', '0', DataSet.FieldByName(CampoNome).AsString);
     end else begin
        Result := '0';
     end;
end;

function TfFatPedidoNF.SubstituirCondicao(Campo: string): string;
var
   mPosFun
  ,i: integer;
   mFuncao
  ,mFunCondic
  ,mValorCondic1
  ,mValorCondic2
  ,mFunTermo1
  ,mFunTermo2
  ,mSinal: string;
begin
     result := '';
     while Pos('{', Campo) > 0 do begin
           Campo := stringreplace(Campo, 'CONDIÇÃO', '', [rfReplaceAll]);
           mPosFun := Pos('{', Campo)+1;
           mFuncao := Copy(Campo, mPosFun, Pos('}', Campo)-mPosFun);

           // Condição da função.
           mFunCondic := Copy(mFuncao, 1, Pos(';', mFuncao));
           mFuncao    := StringReplace(mFuncao, mFunCondic, '', [rfReplaceAll]);
           mFunCondic := StringReplace(mFunCondic, ';', '', [rfReplaceAll]);

           // Primeiro termo da função.
           mFunTermo1 := Copy(mFuncao, 1, Pos(';', mFuncao));
           mFuncao    := StringReplace(mFuncao, mFunTermo1, '', [rfReplaceAll] );
           mFunTermo1 := StringReplace(mFunTermo1, ';', '', [rfReplaceAll] );

           // Segundo termo da função.
           mFunTermo2 := StringReplace(mFuncao, ';', '', [rfReplaceAll]);

           // Sinal utilizado no teste de condição.
           mSinal := '';
           for i := 1 to Length(mFunCondic) do begin
               if (mFunCondic[i] = '=') or (mFunCondic[i] = '>') or (mFunCondic[i] = '<') then mSinal := mSinal + mFunCondic[i];
           end;

           // Valores da condição.
           mValorCondic1 := Copy(mFunCondic, 1, Pos(mSinal, mFunCondic)-1);
           mValorCondic2 := Copy(mFunCondic, Pos(mSinal, mFunCondic)+Length(mSinal), Length(mFunCondic)-Length(mSinal)-Length(mValorCondic1)) ;
           mFuncao := '';
           for i := Pos('{', Campo) to Length(Campo) do begin
               mFuncao := mFuncao + Campo[i];
               if Campo[i] = '}' then break;
           end;
           if ApenasNumeros(mValorCondic2) <> '' then begin
              if (mSinal = '=' ) and (StrtoFloat(mValorCondic1) =  StrtoFloat(mValorCondic2)) or
                 (mSinal = '>' ) and (StrtoFloat(mValorCondic1) >  StrtoFloat(mValorCondic2)) or
                 (mSinal = '<' ) and (StrtoFloat(mValorCondic1) <  StrtoFloat(mValorCondic2)) or
                 (mSinal = '<>') and (StrtoFloat(mValorCondic1) <> StrtoFloat(mValorCondic2)) or
                 (mSinal = '<=') and (StrtoFloat(mValorCondic1) <= StrtoFloat(mValorCondic2)) or
                 (mSinal = '>=') and (StrtoFloat(mValorCondic1) >= StrtoFloat(mValorCondic2)) then
                 Campo := StringReplace(Campo, mFuncao, mFunTermo1, [rfReplaceAll])
              else
                 Campo := StringReplace(Campo, mFuncao, mFunTermo2, [rfReplaceAll]);
           end else begin
              if (mSinal = '=' ) and (mValorCondic1 =  mValorCondic2) or
                 (mSinal = '>' ) and (mValorCondic1 >  mValorCondic2) or
                 (mSinal = '<' ) and (mValorCondic1 <  mValorCondic2) or
                 (mSinal = '<>') and (mValorCondic1 <> mValorCondic2) or
                 (mSinal = '<=') and (mValorCondic1 <= mValorCondic2) or
                 (mSinal = '>=') and (mValorCondic1 >= mValorCondic2) then
                 Campo := StringReplace(Campo, mFuncao, mFunTermo1, [rfReplaceAll])
              else
                 Campo := StringReplace(Campo, mFuncao, mFunTermo2, [rfReplaceAll]);
           end;
     end;
     result := Campo;
end;

procedure TfFatPedidoNF.TotalizaPedido;
var
  msql: widestring;
  mCampo: string;
begin
     with ttmp do begin
          sql.clear;
          sql.Add('select Campo from CamposCalculaveis where Tipo = ''Totalizador'' and Tabela = ''PedidosNF'' and Ativo = 1');
          open;
          first;
     end;     
     with tTotaliza do begin
          sql.clear;
          msql := '';
          msql := 'update PedidosNF set ';
          while not ttmp.eof do begin
                mCampo := ttmp.FieldByName('Campo').asstring + stringofchar(' ', 20-Length(ttmp.FieldByName('Campo').asstring));
                msql   := msql + #13 + '                '+mCampo + ' = isnull((select sum(isnull(' + mCampo + ', 0)) from PedidosNFitens pni where pni.Pedido = '+PedidosNF.fieldbyname('Pedido').asstring+'), 0),';
                ttmp.next;
          end;
          msql := copy(msql, 1, length(msql)-1);
          msql := msql+#13+'where Pedido = '+PedidosNF.fieldbyname('Pedido').asstring;
          sql.add(msql);
          //sql.SaveToFile('c:\temp\Totaliza_PedidoNF.sql');
          execute;
     end;
     PedidosNF.Refresh;
end;



end.



