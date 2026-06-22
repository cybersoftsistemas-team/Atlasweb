unit CadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, vcl.DBCtrls,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox,
  uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit,
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, uniGroupBox, uniRadioGroup, uniDBRadioGroup, uniCheckBox, uniDBComboBox, uniMemo, uniMultiItem, uniComboBox, uniImage, uniLabel, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.ExtCtrls, uniSweetAlert;

type
  TfCadProdutos = class(TUniFrame)
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
    Pasta: TUnipageControl;
    TabCST: TuniTabSheet;
    TabDesc: TuniTabSheet;
    TabParam: TuniTabSheet;
    tabProduto: TuniTabSheet;
    TabValores: TuniTabSheet;
    TabSheet1: TuniTabSheet;
    Produtos: TFDQuery;
    dsProdutos: TDataSource;
    UniPanel2: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    UniScrollBox2: TUniScrollBox;
    UniScrollBox3: TUniScrollBox;
    UniScrollBox4: TUniScrollBox;
    UniScrollBox5: TUniScrollBox;
    UniScrollBox9: TUniScrollBox;
    pFicha: TUniPanel;
    cCodigo: TUniDBEdit;
    clTipo: TUniDBLookupComboBox;
    clNCM: TUniDBLookupComboBox;
    cCodigo_Fabricante: TUniDBEdit;
    cFabricante: TUniDBLookupComboBox;
    cFornecedor: TUniDBLookupComboBox;
    clLinha: TUniDBLookupComboBox;
    cGTIN: TUniDBEdit;
    cGTIN_Unidade: TUniDBEdit;
    GroupBox11: TUniGroupBox;
    GroupBox12: TUniGroupBox;
    cValor_Entrada: TUniDBEdit;
    cValor_CustoMedio: TUniDBEdit;
    cValor_Venda: TUniDBEdit;
    cValor_ConsumidorFinal: TUniDBEdit;
    cValor_ME: TUniDBEdit;
    UniPanel1: TUniPanel;
    clCSTPIS_Entrada: TUniDBLookupComboBox;
    clCSTCOFINS_Entrada: TUniDBLookupComboBox;
    GrupoPIS: TUniGroupBox;
    cCSTPIS_AliquotaUM: TUniDBCheckBox;
    cCSTPIS_Monofasica: TUniDBCheckBox;
    cCSTPIS_AliquotaZero: TUniDBCheckBox;
    cCSTPIS_Isenta: TUniDBCheckBox;
    cCSTPIS_Suspensao: TUniDBCheckBox;
    cCSTPIS_SemIncidencia: TUniDBCheckBox;
    cCSTPIS_Outras: TUniDBCheckBox;
    GrupoCOFINS: TUniGroupBox;
    cCSTCOFINS_AliquotaUMEnt: TUniDBCheckBox;
    cCSTCOFINS_MonofasicaEnt: TUniDBCheckBox;
    cCSTCOFINS_AliquotaZeroEnt: TUniDBCheckBox;
    cCSTCOFINS_IsentaEnt: TUniDBCheckBox;
    cCSTCOFINS_SuspensaoEnt: TUniDBCheckBox;
    cCSTCOFINS_SemIncidenciaEnt: TUniDBCheckBox;
    cCSTCOFINS_OutrasEnt: TUniDBCheckBox;
    GroupBox3: TUniGroupBox;
    cCSTPIS_AliquotaUMEnt: TUniDBCheckBox;
    cCSTPIS_MonofasicaEnt: TUniDBCheckBox;
    cCSTPIS_AliquotaZeroEnt: TUniDBCheckBox;
    cCSTPIS_IsentaEnt: TUniDBCheckBox;
    cCSTPIS_SuspensaoEnt: TUniDBCheckBox;
    cCSTPIS_SemIncidenciaEnt: TUniDBCheckBox;
    cCSTPIS_OutrasEnt: TUniDBCheckBox;
    GroupBox4: TUniGroupBox;
    cCSTCOFINS_AliquotaUM: TUniDBCheckBox;
    cCSTCOFINS_Monofasica: TUniDBCheckBox;
    cCSTCOFINS_AliquotaZero: TUniDBCheckBox;
    cCSTCOFINS_Isenta: TUniDBCheckBox;
    cCSTCOFINS_Suspensao: TUniDBCheckBox;
    cCSTCOFINS_SemIncidencia: TUniDBCheckBox;
    cCSTCOFINS_Outras: TUniDBCheckBox;
    Grade: TUniDBGrid;
    clTipo_Item: TUniDBLookupComboBox;
    cDescricao_Ingles: TUniDBMemo;
    cDescricao: TUniDBMemo;
    cDescricao_Reduzida: TUniDBEdit;
    cLargura: TUniDBEdit;
    cUnidade: TUniDBLookupComboBox;
    clUnidade_Origem: TUniDBLookupComboBox;
    cQuantidade_Volumes: TUniDBEdit;
    cAltura: TUniDBEdit;
    cComprimento: TUniDBEdit;
    cTipoConversao: TUniDBComboBox;
    cQuantidade_Unidade: TUniDBEdit;
    Modal: TFDQuery;
    dsModal: TDataSource;
    NCM: TFDQuery;
    dsNCM: TDataSource;
    UniGroupBox1: TUniGroupBox;
    iFoto: TUniImage;
    cOrigem: TUniDBLookupComboBox;
    dsOrigem: TDataSource;
    Origem: TFDQuery;
    Fornecedores: TFDQuery;
    dsFornecedores: TDataSource;
    Fabricantes: TFDQuery;
    dsFabricantes: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    TipoProduto: TFDQuery;
    dsTipoProduto: TDataSource;
    Linhas: TFDQuery;
    dsLinhas: TDataSource;
    CSTPIS: TFDQuery;
    dsCSTPIS: TDataSource;
    Comissoes: TFDQuery;
    dsComissoes: TDataSource;
    UniPanel3: TUniPanel;
    GroupBox8: TUniGroupBox;
    cDesconto_A: TUniDBEdit;
    cDesconto_B: TUniDBEdit;
    cDesconto_C: TUniDBEdit;
    cDesconto_D: TUniDBEdit;
    cDesconto_E: TUniDBEdit;
    cComissao_A: TUniDBEdit;
    cComissao_B: TUniDBEdit;
    cComissao_C: TUniDBEdit;
    cComissao_D: TUniDBEdit;
    cComissao_E: TUniDBEdit;
    cBloqueio_A: TUniDBCheckBox;
    cBloqueio_B: TUniDBCheckBox;
    cBloqueio_C: TUniDBCheckBox;
    cBloqueio_D: TUniDBCheckBox;
    cBloqueio_E: TUniDBCheckBox;
    cValor_VendaA: TUniDBEdit;
    cValor_VendaB: TUniDBEdit;
    cValor_VendaC: TUniDBEdit;
    cValor_VendaD: TUniDBEdit;
    cValor_VendaE: TUniDBEdit;
    GroupBox7: TUniGroupBox;
    cComissao: TUniDBEdit;
    cReducao_Comissao: TUniDBEdit;
    UniPanel4: TUniPanel;
    cDadosDetalhe: TUniPageControl;
    TabSheet2: TUniTabSheet;
    cPotencia_Motor: TUniDBEdit;
    cCilindradas: TUniDBEdit;
    cCapacidade_Tracao: TUniDBEdit;
    cDistancia_Eixos: TUniDBEdit;
    cTipo_Pintura: TUniDBEdit;
    cCodigo_MarcaModelo: TUniDBEdit;
    cPassageiros: TUniDBEdit;
    TabSheet3: TUniTabSheet;
    TabSheet4: TUniTabSheet;
    cPreco_MaxConsumidor: TUniDBEdit;
    TabSheet5: TUniTabSheet;
    clCodigo_ANP: TUniDBLookupComboBox;
    cDescricao_ANP: TUniDBMemo;
    cPercentual_GLGNN: TUniDBEdit;
    cPercentual_GLGNI: TUniDBEdit;
    cValor_Partida: TUniDBEdit;
    GroupBox10: TUniGroupBox;
    cRegistro_ANVISA: TUniDBEdit;
    cProcesso_ANVISA: TUniDBEdit;
    cVencimento_ANVISA: TUniDBDateTimePicker;
    GroupBox1: TUniGroupBox;
    cPromocao: TUniDBCheckBox;
    cPromocao_Valor: TUniDBEdit;
    GroupBox5: TUniGroupBox;
    cArmazem_Nome: TUniDBEdit;
    cArmazem_Rua: TUniDBEdit;
    cArmazem_Prateleira: TUniDBEdit;
    cArmazem_Posicao: TUniDBEdit;
    cDetalhe_Especifico: TUniDBRadioGroup;
    UniPanel8: TUniPanel;
    RxDBGrid1: TUniDBGrid;
    cClasseIPI: TUniDBLookupComboBox;
    cPeso_Liquido: TUniDBEdit;
    cPeso_Bruto: TUniDBEdit;
    Notas: TFDQuery;
    dsNotas: TDataSource;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    clTabela: TUniDBLookupComboBox;
    cTipo_Combustivel: TUniDBLookupComboBox;
    cTipo_Veiculo: TUniDBLookupComboBox;
    UniDBRadioGroup1: TUniDBRadioGroup;
    cEspecie_Veiculo: TUniDBLookupComboBox;
    cCondicao_Veiculo: TUniDBLookupComboBox;
    UniTabSheet1: TUniTabSheet;
    Combustiveis: TFDQuery;
    dsCombustiveis: TDataSource;
    Estados: TFDQuery;
    dsEstados: TDataSource;
    pTributo: TUniContainerPanel;
    cTributo: TUniDBLookupComboBox;
    cUF: TUniDBLookupComboBox;
    cModalidade: TUniDBLookupComboBox;
    cAliquota: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniPanel9: TUniPanel;
    bNavegaTrib: TUniDBNavigator;
    bAddTrib: TUniSpeedButton;
    bEditTrib: TUniSpeedButton;
    bExcTrib: TUniSpeedButton;
    bCancTrib: TUniSpeedButton;
    bGravTrib: TUniSpeedButton;
    Seriais: TFDQuery;
    dsSeriais: TDataSource;
    SeriaisNotas: TFDQuery;
    dsSeriaisNotas: TDataSource;
    Detalhes: TFDQuery;
    dsDetalhes: TDataSource;
    CSTCOFINS: TFDQuery;
    dsCSTCOFINS: TDataSource;
    Alerta: TUniSweetAlert;
    ClasseIPI: TFDQuery;
    dsClasseIPI: TDataSource;
    GradeValores: TUniDBGrid;
    UniTabSheet2: TUniTabSheet;
    UniScrollBox6: TUniScrollBox;
    UniPanel5: TUniPanel;
    UniGroupBox10: TUniGroupBox;
    UniDBEdit32: TUniDBEdit;
    UniDBEdit33: TUniDBEdit;
    UniDBEdit34: TUniDBEdit;
    UniDBEdit35: TUniDBEdit;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniGroupBox11: TUniGroupBox;
    UniDBEdit36: TUniDBEdit;
    UniDBEdit37: TUniDBEdit;
    UniDBEdit38: TUniDBEdit;
    UniDBEdit39: TUniDBEdit;
    UniGroupBox12: TUniGroupBox;
    UniDBEdit40: TUniDBEdit;
    UniDBEdit41: TUniDBEdit;
    UniDBEdit42: TUniDBEdit;
    UniDBEdit43: TUniDBEdit;
    UniDBEdit44: TUniDBEdit;
    UniGroupBox13: TUniGroupBox;
    UniDBEdit45: TUniDBEdit;
    UniDBEdit46: TUniDBEdit;
    UniDBEdit47: TUniDBEdit;
    UniDBEdit48: TUniDBEdit;
    UniDBEdit49: TUniDBEdit;
    UniDBEdit50: TUniDBEdit;
    UniGroupBox14: TUniGroupBox;
    UniDBEdit51: TUniDBEdit;
    UniDBEdit52: TUniDBEdit;
    UniDBEdit53: TUniDBEdit;
    UniDBEdit54: TUniDBEdit;
    UniDBEdit55: TUniDBEdit;
    GroupBox6: TUniGroupBox;
    cReciclavel: TUniDBCheckBox;
    cEntrada_ST: TUniDBCheckBox;
    cCusto_Seletivo: TUniDBCheckBox;
    cVisivel_Representa: TUniDBCheckBox;
    cLote_Obrigatorio: TUniDBCheckBox;
    cProducao_Nacional: TUniDBCheckBox;
    cSerial_Obrigatorio: TUniDBCheckBox;
    cEscala_Relevante: TUniDBCheckBox;
    cCNPJ_Fabricante: TUniDBEdit;
    cMateria_Prima: TUniDBCheckBox;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    cDesativado: TUniDBCheckBox;
    tUM: TFDQuery;
    dstUM: TDataSource;
    bFoto: TUniSpeedButton;
    bLimpaFoto: TUniSpeedButton;
    UniContainerPanel2: TUniContainerPanel;
    cEstoque_MinimoPerc: TUniDBEdit;
    cEstoque_Minimo: TUniDBEdit;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bGravarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure ProdutosBeforePost(DataSet: TDataSet);
    procedure ProdutosBeforeDelete(DataSet: TDataSet);
    procedure bAdicionarClick(Sender: TObject);
    procedure bFotoClick(Sender: TObject);
    procedure ProdutosAfterScroll(DataSet: TDataSet);
    procedure cDetalhe_EspecificoChangeValue(Sender: TObject);
    procedure bGravTribClick(Sender: TObject);
    procedure bAddTribClick(Sender: TObject);
    procedure bEditTribClick(Sender: TObject);
    procedure bExcTribClick(Sender: TObject);
    procedure bCancTribClick(Sender: TObject);
    procedure SeriaisAfterScroll(DataSet: TDataSet);
    procedure cEscala_RelevanteClick(Sender: TObject);
    procedure bLimpaFotoClick(Sender: TObject);
  private
    procedure LigaBotoes2(Estado: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadProdutos.bAddTribClick(Sender: TObject);
begin
//      with Tributos do begin
//           try
//               LigaBotoes2(false);
//               Append;
//                     FieldByName('Produto').Value := Produtos.FieldByName('Codigo').Value;
//                     FieldByName('Entrada_Saida').Value := 2;
//           except
//               Showmessage('Não pode adicionar um novo registro!');
//           end;
//      end;
end;

procedure TfCadProdutos.bAdicionarClick(Sender: TObject);
begin
      with Produtos do begin
           try
               LigaBotoes(false);
               Append;
           except
               Showmessage('Não pode adicionar um novo registro!');
           end;
      end;
end;

procedure TfCadProdutos.bExcluirClick(Sender: TObject);
begin
     with Produtos do begin
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

procedure TfCadProdutos.bExcTribClick(Sender: TObject);
begin
//     with Tributos do begin
//          MessageDlg('Deseja realmente excluir este tributo?'+#13+#13+FieldByName('Tributo').AsString, mtConfirmation,mbYesNo,
//                    procedure(Comp:TComponent; ARes: Integer)
//                    begin
//                          if ARes = mrYes then begin
//                             Delete;
//                             Alerta.Text := 'Tributo removido do produto!';
//                             Alerta.Execute;
//                          end;
//                    end);
//     end;
end;

procedure TfCadProdutos.bGravarClick(Sender: TObject);
begin
      with Produtos do begin
           if (State = dsInsert) and (Existe(Produtos, 'Codigo', FieldByName('Codigo').AsString)) then begin
              MessageDlg('Já existe um "Descricao" cadastrado com esse codigo!'+#13+#13, mtError, [mbOK]);
              cCodigo.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Descricao').AsString) = '' then begin
              MessageDlg('O campo "Descricao" não pode ficar em branco!', mtError, [mbOK]);
              cDescricao.SetFocus;
              Abort;
           end;
           try
               if (State = dsInsert) then begin
                  Produtos.FieldByName('Codigo').Value := GeraCodigo('Produtos', 'Codigo');
               end;
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadProdutos.bGravTribClick(Sender: TObject);
begin
//      with Tributos do begin
//           post;
//           LigaBotoes2(true);
//      end;
end;

procedure TfCadProdutos.bLimpaFotoClick(Sender: TObject);
begin
     with Produtos do begin
          fieldbyname('Imagem').clear;
          iFoto.Picture := nil;
     end;
end;

procedure TfCadProdutos.bCancelarClick(Sender: TObject);
begin
      Produtos.Cancel;
      LigaBotoes(true);
end;

procedure TfCadProdutos.bCancTribClick(Sender: TObject);
begin
//     with Tributos do begin
//          Cancel;
//          LigaBotoes2(true);
//     end;
end;

procedure TfCadProdutos.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Produtos.Edit;
         cCodigo.setfocus;
     except
         Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadProdutos.bEditTribClick(Sender: TObject);
begin
//      with Tributos do begin
//           try
//               LigaBotoes2(false);
//               Edit;
//               cTributo.SetFocus;
//           except
//               Showmessage('Não pode editar o registro corrente!');
//           end;
//      end;
end;

procedure TfCadProdutos.UniFrameDestroy(Sender: TObject);
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

procedure TfCadProdutos.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadProdutos.bFotoClick(Sender: TObject);
begin
     with Produtos do begin
          if OpenPictureDialog1.Execute then begin
             FieldByName('Imagem').AsString := OpenPictureDialog1.FileName;
             if fileexists(FieldByName('Imagem').AsString) then
                iFoto.Picture.LoadFromFile(FieldByName('Imagem').AsString);
          end;
     end;
end;

procedure TfCadProdutos.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bGravar.Enabled    := not Estado;
     pFicha.Enabled     := not Estado;
     uniPanel1.Enabled  := not Estado;
     uniPanel2.Enabled  := not Estado;
     uniPanel3.Enabled  := not Estado;
     uniPanel4.Enabled  := not Estado;
     uniPanel5.Enabled  := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadProdutos.LigaBotoes2(Estado:boolean);
begin
     bNavegaTrib.Enabled := Estado;
     bEditTrib.Enabled   := Estado;
     bExcTrib.Enabled    := Estado;
     bAddTrib.Enabled    := Estado;
     bCancTrib.Enabled   := not Estado;
     bGravTrib.Enabled   := not Estado;
     pTributo.Enabled    := not Estado;
end;

procedure TfCadProdutos.UniFrameCreate(Sender: TObject);
var
  i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone
          end;
      end;

      LigaBotoes(true);
      LigaBotoes2(true);
      Pasta.ActivePageIndex := 0;

      with Produtos do begin 
           sql.clear;
           sql.add('select *');
           sql.add('from Produtos');
           sql.add('order by Codigo');
           open;
      end;
      with Linhas do begin 
           sql.clear;
           sql.add('select *');
           sql.add('from ProdutosLinhas');
           sql.add('order by Descricao');
           open;
      end;
      with ClasseIPI do begin
           sql.clear;
           sql.add('select * from ClasseEnquadramentoIPI order by Descricao');
           open;
      end;
      with tUM do begin
           sql.clear;
           sql.add('select * from UnidadeMedida order by Nome');
           open;
      end;

      Modal.SQL.Clear;
      Modal.SQL.Add('select Codigo, Descricao from ModalidadeImportacao order by Codigo');
      Modal.Open;

      NCM.SQL.Clear;
      NCM.SQL.Add('select NCM, Produto from NCM order by Produto');
      NCM.Open;

      Origem.SQL.Clear;
      Origem.SQL.Add('select Codigo, Descricao from OrigemMercadoria order by Codigo');
      Origem.Open;

      Fornecedores.SQL.Clear;
      Fornecedores.SQL.add('select Codigo, Nome from Destinatarios where Fornecedor = 1');
      Fornecedores.Open;

      Fabricantes.SQL.Clear;
      Fabricantes.SQL.add('select Codigo, Nome from Destinatarios where Fabricante = 1');
      Fabricantes.Open;

      TipoProduto.SQL.Clear;
      TipoProduto.SQL.add('select Codigo, Descricao from TipoProduto order by Descricao');
      TipoProduto.Open;

      CSTPIS.SQL.Clear;
      CSTPIS.SQL.add('select Codigo, Descricao from CSTPIS order by Descricao');
      CSTPIS.Open;

      CSTCOFINS.SQL.Clear;
      CSTCOFINS.SQL.add('select Codigo, Descricao from CSTCOFINS order by Descricao');
      CSTCOFINS.Open;

      Comissoes.SQL.Clear;
      Comissoes.SQL.add('select Codigo, Descricao from TabelaComissoes order by Descricao');
      Comissoes.Open;

      Combustiveis.SQL.Clear;
      Combustiveis.SQL.add('select Codigo, Produto, Grupo, Familia from Combustiveis order by Produto');
      Combustiveis.Open;

      Estados.SQL.Clear;
      Estados.SQL.add('select UF, Nome from Estados order by Nome');
      Estados.Open;

      with uniMainModule do begin
           TipoCombustivel.open;
           TipoVeiculo.Open;
           EspecieVeiculo.Open;
           CondicaoVeiculo.Open;
      end;
      cCNPJ_Fabricante.Enabled := cEscala_Relevante.Checked;
end;

procedure TfCadProdutos.cDetalhe_EspecificoChangeValue(Sender: TObject);
var
   i:integer;
begin
     for i := 0 to pred(cDetalhe_Especifico.Items.Count) do begin
         cDadosDetalhe.Pages[i].Enabled := i = cDetalhe_Especifico.ItemIndex;
     end;
     if cDetalhe_Especifico.ItemIndex >= 0 then
        cDadosDetalhe.ActivePageIndex := cDetalhe_Especifico.ItemIndex
     else
        cDadosDetalhe.ActivePageIndex := 4;
end;

procedure TfCadProdutos.cEscala_RelevanteClick(Sender: TObject);
begin
     cCNPJ_Fabricante.Enabled := cEscala_Relevante.Checked;
end;

procedure TfCadProdutos.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadProdutos.bPesquisaClick(Sender: TObject);
begin
     Produtos.Cancel;
     LigaBotoes(true);
     Pesquisa(Produtos, 'Codigo', 'Descricao',cPesquisa.text)
end;

procedure TfCadProdutos.ProdutosAfterScroll(DataSet: TDataSet);
begin
     with Notas do begin
          sql.clear;
          sql.add('select distinct');
          sql.add('       Data_Entrada = Data_EntradaSaida');
          sql.add('      ,Nota');
          sql.add('      ,Valor_Inventario = round(Valor_Inventario, 4)');
          sql.add('      ,Valor_Entrada    = round(Valor_Unitario, 4)');
          sql.add('      ,Emissao = iif(Emissao = ''P'', ''PRÓPRIA'', ''TERCEIROS'')');
          sql.add('from NotasItens');
          sql.add('where Codigo_Mercadoria = :pCodigo');
          sql.add('and ES = 0');
          sql.add('and isnull(Cancelada, 0) = 0');
          sql.add('and isnull(Denegada, 0) = 0');
          sql.add('order by Data_Entrada desc, Nota Desc, Valor_Entrada desc');
          parambyname('pCodigo').AsInteger := Produtos.fieldbyname('Codigo').AsInteger;
          //sql.SaveToFile('c:\temp\CadProdutos_Notas.sql');
          open;
     end;
     with Seriais do begin
          sql.clear;
          sql.add('select *');
          sql.add('from  ProdutosSeriais');
          sql.add('where Produto = :pProd');
          sql.add('order by Tipo, Numero');
          paramByName('pProd').AsInteger := Produtos.FieldByName('Codigo').AsInteger;
          open;
     end;
     with Detalhes do begin 
          sql.clear;
          sql.add('select *');
          sql.add('from  ProdutosDetalhe');
          sql.add('where Produto = :pProd');
          sql.add('order by Data_Entrada desc, Nota_Entrada desc');
          paramByName('pProd').AsInteger := Produtos.FieldByName('Codigo').AsInteger;
          open;
     end;
     if fileexists(Produtos.fieldbyname('Imagem').AsString) then begin
        iFoto.Picture.LoadFromFile(Produtos.fieldbyname('Imagem').AsString);
     end else begin
        iFoto.Picture := nil;
     end;
end;

procedure TfCadProdutos.ProdutosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Descricao').AsString, EstadoTabela(DataSet));
end;

procedure TfCadProdutos.ProdutosBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Descricao').AsString,'Delete');
end;

procedure TfCadProdutos.SeriaisAfterScroll(DataSet: TDataSet);
begin
      with SeriaisNotas do begin
           sql.clear;
           sql.add('select Nota');
           sql.add('      ,Data');
           sql.add('      ,Tipo = case when Saida_Entrada = 0 then ''ENTRADA'' else ''SAÍDA'' end');
           sql.add('      ,Emissor_Nome = iif(Emissao = ''T'', ''TERCEIROS'', ''PRÓPRIO'')');
           sql.add('from ProdutosSeriaisNotas');
           sql.add('where Produto = :pCodigo');
           sql.add('and Numero = :pNumero');
           sql.add('order BY Data desc, Nota Desc');
           parambyName('pCodigo').AsInteger := Seriais.FieldByName('Produto').AsInteger;
           parambyName('pNumero').AsString  := Seriais.FieldByName('Numero').AsString;
           open;
      end;
end;



end.

