unit ComexPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses,
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, DateUtils, uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, 
  uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  uniDBComboBox, uniMultiItem, uniMemo, uniLabel, uniImage;

type
  TfComexPO = class(TuniFrame)
    Navega: TuniDBNavigator;
    tTemp: TFDQuery;
    Pasta: TUniPageControl;
    pDados: TuniTabSheet;
    pProdutos: TuniTabSheet;
    pLista: TuniTabSheet;
    Grade: TUniDBGrid;
    POItens: TFDQuery;
    Processos: TFDQuery;
    ProcessosHistorico: TFDQuery;
    TipoProduto: TFDQuery;
    ViaTransporte: TFDQuery;
    TiposProcesso: TFDQuery;
    Paises: TFDQuery;
    Moedas: TFDQuery;
    INCOTERMS: TFDQuery;
    CondicaoCambial: TFDQuery;
    Clientes: TFDQuery;
    Exportadores: TFDQuery;
    Empresas: TFDQuery;
    Produtos: TFDQuery;
    PO: TFDQuery;
    pBarraNav: TUniPanel;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    Alerta: TUniSweetAlert;
    dsPO: TDataSource;
    dsProdutos: TDataSource;
    dsEmpresas: TDataSource;
    dsExportadores: TDataSource;
    dsClientes: TDataSource;
    dsCondicaoCambial: TDataSource;
    dsINCOTERMS: TDataSource;
    dsMoedas: TDataSource;
    dsPaises: TDataSource;
    dsTiposProcesso: TDataSource;
    dsViaTransporte: TDataSource;
    dsTipoProduto: TDataSource;
    dsProcessosHistorico: TDataSource;
    dsProcessos: TDataSource;
    dsPOItens: TDataSource;
    pFicha: TUniPanel;
    cPO: TUniDBEdit;
    cProcesso: TUniDBEdit;
    cRequis: TUniDBEdit;
    DBMemo1: TUniDBMemo;
    cData: TUniDBDateTimePicker;
    cExportador: TUniDBLookupComboBox;
    cCondCambio: TUniDBLookupComboBox;
    cLocalEmb: TUniDBComboBox;
    cLocalEnt: TUniDBComboBox;
    cMoeda: TUniDBLookupComboBox;
    cPais: TUniDBLookupComboBox;
    cModalidade: TUniDBLookupComboBox;
    cCliente: TUniDBLookupComboBox;
    cVia: TUniDBLookupComboBox;
    cTipo_Mercadoria: TUniDBLookupComboBox;
    cTotal: TUniFormattedNumberEdit;
    bImportar: TUniButton;
    bImprimir: TUniButton;
    pBarraPesq: TUniPanel;
    cPesquisa: TUniEdit;
    UniPanel1: TUniPanel;
    Grade2: TUniDBGrid;
    Panel3: TUniPanel;
    Navegaitens: TUniDBNavigator;
    bAddItem: TUniSpeedButton;
    bEditItem: TUniSpeedButton;
    bExcItem: TUniSpeedButton;
    bCancItem: TUniSpeedButton;
    bSalvarItem: TUniSpeedButton;
    cItensValor: TUniFormattedNumberEdit;
    cItensQtde: TUniFormattedNumberEdit;
    pFichaItem: TUniContainerPanel;
    cQtde: TUniDBEdit;
    cValor: TUniDBEdit;
    cProduto: TUniDBLookupComboBox;
    cQuantidade_Unidade: TUniDBEdit;
    cQuantidade_Volumes: TUniDBEdit;
    DBEdit3: TUniDBEdit;
    PORegistro: TIntegerField;
    PONumero: TStringField;
    POProcesso: TStringField;
    POData: TSQLTimeStampField;
    POExportador: TSmallintField;
    PORequisitante: TStringField;
    POVia_Transporte: TSmallintField;
    POLocal_Embarque: TStringField;
    POLocal_Entrega: TStringField;
    POINCOTERMS: TStringField;
    POCondicao_Cambial: TSmallintField;
    POMoeda: TSmallintField;
    POObservacao: TMemoField;
    POEmpresa: TStringField;
    POPais_Origem: TStringField;
    POResponsavel: TStringField;
    POCliente: TSmallintField;
    POTipo_Mercadoria: TSmallintField;
    POExportador_Nome: TStringField;
    POCliente_Nome: TStringField;
    Config: TFDQuery;
    bPesquisa: TUniSpeedButton;
    cEmpresa: TUniDBLookupComboBox;
    cINCOTERMS: TUniDBLookupComboBox;
    POItensRegistro: TIntegerField;
    POItensPO: TStringField;
    POItensCodigo_Mercadoria: TSmallintField;
    POItensItem: TSmallintField;
    POItensNCM: TStringField;
    POItensFabricante: TSmallintField;
    POItensEmpresa: TStringField;
    POItensDescricao: TStringField;
    POItensTotal: TBCDField;
    POModalidade: TSmallintField;
    Beneficios: TFDQuery;
    dsBeneficios: TDataSource;
    POItensQuantidade: TBCDField;
    POItensValor: TBCDField;
    POItensQuantidade_Unidade: TBCDField;
    POItensQuantidade_Volumes: TBCDField;
    procedure UniFrameCreate(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure LigaBotoesItens(Estado: boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure POBeforeDelete(DataSet: TDataSet);
    procedure bImprimirClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure cClienteChange(Sender: TObject);
    procedure bAddItemClick(Sender: TObject);
    procedure bCancItemClick(Sender: TObject);
    procedure bEditItemClick(Sender: TObject);
    procedure bExcItemClick(Sender: TObject);
    procedure bSalvarItemClick(Sender: TObject);
    procedure POAfterPost(DataSet: TDataSet);
    procedure Totaliza;
    procedure CarregaLocais;
    procedure POItensAfterPost(DataSet: TDataSet);
    procedure POItensAfterDelete(DataSet: TDataSet);
    procedure POItensCalcFields(DataSet: TDataSet);
  private
    procedure AbreProcesso;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses MainModule, Main, ComexPOImportar;

{$R *.dfm}

procedure TfComexPO.UniFrameCreate(Sender: TObject);
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
     LigaBotoesItens(true);
     Pasta.ActivePageIndex := 0;
     
     with PO do begin
          sql.clear;
          sql.add('select *');
          sql.add('from PO');
          sql.add('order by Data');
          open;
     end;
     with POItens do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from POItens');
          open;
     end;
     with Produtos do begin
          sql.clear;
          sql.add('select Codigo');
          sql.add('      ,Descricao');
          sql.add('      ,NCM');
          sql.add('      ,Quantidade_Unidade');
          sql.add('      ,Quantidade_Volumes');
          sql.add('      ,Fabricante');
          sql.add('from Produtos');
          sql.add('where isnull(Desativado, 0) = 0');
          //sql.Add('and Cliente = :pCliente');
          //parambyname('pCliente').AsInteger := PO.fieldbyname('Cliente').AsInteger;
          open;
     end;
     with Empresas do begin
          sql.Clear;
          sql.add('select CNPJ');
          sql.add('      ,Razao_Social');
          sql.add('      ,Numero_Filial');
          sql.add('      ,Processo_Automatico');
          sql.add('      ,PO_Automatico');
          sql.add('      ,Mascara_Processo');
          sql.add('      ,Processo');
          sql.add('      ,Mascara_PO');
          sql.add('      ,PO');
          sql.add('      ,Beneficio_Fiscal');
          sql.add('      ,Estado');
          sql.add('from Empresas');
          sql.add('where CNPJ = :pEmpresa');
          ParamByName('pEmpresa').value := UniMainModule.mEmpresaAtiva;
          Open;
     end;
     with Beneficios do begin
          sql.Clear;
          sql.add('select ICMS_Diferido from BeneficioFiscal');
          sql.add('where Codigo = :pCod');
          ParamByName('pCod').value := Empresas.fieldbyname('Beneficio_Fiscal').Value;
          Open;
     end;
     with Exportadores do begin
          sql.Clear;
          sql.Add('select Codigo, Nome from Destinatarios where Estado = ''EX'' and isnull(Desativado, 0) = 0 order by Nome');
          Open;
     end;
     with Clientes do begin
          sql.Clear;
          sql.Add('select Codigo, Nome, Mascara_Processo from Destinatarios where Importador = 1 and isnull(Desativado, 0) = 0 order by Nome');
          Open;
     end;
     with CondicaoCambial do begin
          sql.Clear;
          sql.Add('select Codigo, Descricao from CondicaoCambial order by Codigo');
          Open;
     end;
     with Incoterms do begin
          sql.Clear;
          sql.Add('select Codigo, Descricao from INCOTERMS order by Codigo');
          Open;
     end;
     with Moedas do begin
          sql.Clear;
          sql.Add('select Codigo, Nome, Simbolo from Moedas order by Nome');
          Open;
     end;
     with Paises do begin
          sql.Clear;
          sql.Add('select * from Paises order by Nome');
          Open;
     end;
     with TiposProcesso do begin
          sql.Clear;
          sql.Add('select Codigo, Descricao from ModalidadeImportacao order by Codigo');
          Open;
     end;
     with ViaTransporte do begin
          sql.Clear;
          sql.Add('select Codigo, Descricao from ViaTransporte order by Descricao');
          Open;
     end;
     with TipoProduto do begin
          sql.Clear;
          sql.Add('select Codigo, Descricao from TipoProduto order by Descricao');
          Open;
     end;
     with Config do begin
          sql.Clear;
          sql.Add('select Processo_Numero, Processo_DigitosAno from Config where Empresa = :pEmpresa');
          ParamByName('pEmpresa').value := UniMainModule.mEmpresaAtiva;
          Open;
     end;
     with ProcessosHistorico do begin
          sql.clear;
          sql.add('select * from ProcessosHistorico where Processo = :pProcesso');
          parambyname('pProcesso').AsString := trim(PO.fieldbyname('Processo').AsString);
          open;
     end;
     // Carregando os locais de embarque/ Locais de Entrega pré-existentes.
     CarregaLocais;
     Totaliza;

     Pasta.ActivePageIndex := 0;
end;

procedure TfComexPO.CarregaLocais;
begin
     with tTemp do begin
          // Carregando os locais de embarque pré-existentes.
          sql.Clear;
          sql.Add('select distinct Local_Embarque from PO Order BY Local_Embarque');
          open;
          cLocalEmb.Items.Clear;
          while Not eof do begin
                cLocalEmb.Items.add(fieldbyname('Local_Embarque').asstring);
                next;
          end;
          // Carregando os locais de entrega pré-existentes.
          sql.Clear;
          sql.Add('select distinct Local_Entrega from PO Order BY Local_Entrega');
          open;
          cLocalEnt.Items.Clear;
          while not eof do begin
                cLocalEnt.Items.add(fieldbyname('Local_Entrega').asstring);
                next;
          end;  
     end;
end;

procedure TfComexPO.AbreProcesso;
var
  mResp: string;
begin
     // Faz a abertura do processo caso não exista.
     with tTemp do begin
          sql.clear;
          sql.add('select Nome from Usuarios where Matricula = :pMat');
          parambyname('pMat').value  := UniMainModule.mUsuarioMatricula;
          open;
          mResp := fieldbyname('Nome').asstring;
     end;
     with Processos do begin
          try 
             sql.Clear;
             sql.Add('select * from ProcessosImp where Empresa = :pEmp and Processo = :pProc');
             parambyname('pEmp').value  := UniMainModule.mEmpresaAtiva;
             parambyname('pProc').value := cProcesso.Text;
             open;
             
             if RecordCount = 0 then begin
                Append;
                     fieldbyname('Processo').value            := cProcesso.Text;
                     fieldbyname('Data').value                := Now;
                     fieldbyname('Empresa').value             := PO.fieldbyname('Empresa').asstring;
                     fieldbyname('Responsavel').value         := tTemp.fieldbyname('Nome').asstring;
                     fieldbyname('Exportador').value          := PO.fieldbyname('Exportador').value;
                     fieldbyname('Entreposto').value          := false;
                     fieldbyname('Beneficio_Fiscal').value    := Empresas.fieldbyname('Beneficio_Fiscal').value;
                     fieldbyname('Condicao_Cambio').value     := PO.fieldbyname('Condicao_Cambial').value;
                     fieldbyname('Tipo_Mercadoria').value     := PO.fieldbyname('Tipo_Mercadoria').value;
                     fieldbyname('Incoterms').value           := PO.fieldbyname('Incoterms').value;
                     fieldbyname('Desativado').value          := False;
                     fieldbyname('Local_Embarque').value      := PO.fieldbyname('Local_Embarque').value;
                     fieldbyname('Local_Desembarque').value   := PO.fieldbyname('Local_Entrega').value;
                     fieldbyname('Processo_Abertura').value   := now;
                     fieldbyname('Courrier').value            := false;
                     fieldbyname('Modalidade').value          := PO.fieldbyname('Modalidade').value;
                     fieldbyname('DA').value                  := false;
                     fieldbyname('Admissao_Temporaria').value := false;
                     fieldbyname('Origem_Mercadoria').value   := 1;
                     fieldbyname('Remover_Valoracao').value   := false;
                     fieldbyname('Suspensao_Impostos').value  := false;
                     fieldbyname('Reducao_PIS').value         := 0;
                     fieldbyname('Reducao_COFINS').value      := 0;
                     fieldbyname('Consignatario_CNPJ').value  := ApenasNumeros(Empresas.fieldbyname('CNPJ').value);
                     fieldbyname('Consignatario_UF').value    := Empresas.fieldbyname('Estado').value;
                     fieldbyname('Valor_FOBME').value         := cTotal.value;
                     fieldbyname('Valor_FOBMEAdicoes').value  := 0;
                     fieldbyname('Valor_FOB').value           := 0;
                     fieldbyname('Valor_FobAdicoes').value    := 0;
                     fieldbyname('Valor_ICMS').value          := 0;
                     fieldbyname('Quantidade').value          := 0;
                     fieldbyname('Valor_AFRMM').value         := 0;
                     fieldbyname('Valor_TaxaSISCOMEX').value  := 0;
                     fieldbyname('Via_Transporte').value      := PO.fieldbyname('Via_Transporte').value;
                     fieldbyname('Pais_Origem').value         := PO.fieldbyname('Pais_Origem').value;
                     fieldbyname('Valor_PIS').value           := 0;
                     fieldbyname('Valor_PIS2').value          := 0;
                     fieldbyname('Valor_COFINS').value        := 0;
                     fieldbyname('Valor_COFINS2').value       := 0;
                     fieldbyname('Vencimento_Cambio').value   := 0;
                     fieldbyname('Moeda_Fob').value           := PO.fieldbyname('Moeda').value;
                     fieldbyname('Preco_Venda').value         := false;
                     fieldbyname('ICMS_Diferido').value       := Beneficios.fieldbyname('ICMS_Diferido').AsBoolean; 
                     if PO.fieldbyname('Modalidade').AsInteger in [2, 3] then begin
                        fieldbyname('Cliente').value              := PO.fieldbyname('Cliente').value;
                        fieldbyname('Consignatario_CNPJ').value   := ApenasNumeros(Clientes.FieldByName('CNPJ').AsString);
                        fieldbyname('Consignatario_UF').value     := FieldByName('Estado').AsString;
                        fieldbyname('Margem_Lucro').value         := Clientes.fieldbyname('Margem_Lucro').value;
                        fieldbyname('Desconto_Operacional').value := Clientes.fieldbyname('Desconto_Operacional').value;
                        fieldbyname('Desconto_Adicional').value   := Clientes.fieldbyname('Desconto_Adicional').value;
                     end;
                Post;
             
                // Registro do Histórico do processo (FollowUp).
                with tTemp do begin
                     sql.Clear;
                     sql.Add('select isnull(max(Registro), 0)+1 as Reg from ProcessosHistorico');
                     open;
                end;
                with ProcessosHistorico do begin
                     Append;
                          fieldbyname('Registro').Value  := tTemp.fieldbyname('Reg').AsInteger;
                          fieldbyname('Data').Value      := now;
                          fieldbyname('Processo').Value  := PO.fieldbyname('Processo').AsString;
                          fieldbyname('Descricao').Value := 'Abertura do processo Pelo PO: '+PO.fieldbyname('Numero').asstring;
                          fieldbyname('Documento').Value := PO.fieldbyname('Numero').AsString;
                          fieldbyname('Empresa').Value   := PO.fieldbyname('Empresa').value;
                     Post;
                end;
             end;

             LogDados(Processos, 'Abertura do Processo via PO: '+FieldByName('Processo').AsString, EstadoTabela(Processos));
          except on E: Exception do
             MessageDlgN('Erro!'+#13+'Não pode abrir o processo!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexPO.Totaliza;
begin
     with tTemp do begin
          sql.clear;
          sql.add('select Total = sum(Valor * Quantidade) from POItens where PO = :pPO and Empresa = :pEmpresa');
          ParamByName('pPO').value      := PONumero.AsString;
          ParamByName('pEmpresa').value := UniMainModule.mEmpresaAtiva;
          open;
          cItensQtde.Value  := POItens.RecordCount;
          cItensValor.Value := FieldByName('Total').AsCurrency;
          cTotal.FieldLabel := 'Total em ' + Moedas.FieldByName('Simbolo').AsString;
          cTotal.Value      := FieldByName('Total').AsCurrency;
     end;
end;

procedure TfComexPO.cClienteChange(Sender: TObject);
begin
     with Produtos do begin
          sql.Clear;
          if PO.fieldbyname('Cliente').AsInteger > 0 then begin
             sql.Add('select * from Produtos where Cliente = :pCliente and Desativado <> 1');
             parambyname('pCliente').AsInteger := PO.fieldbyname('Cliente').asinteger;
          end else begin
             sql.Add('select * from Produtos where Desativado <> 1');
          end;
          open;
     end;
end;

procedure TfComexPO.bImprimirClick(Sender: TObject);
begin
(*
      Impressao_ProcessosOP_PO           := TImpressao_ProcessosOP_PO.Create(Self);
      Impressao_ProcessosOP_PO.Caption   := Caption;
      Impressao_ProcessosOP_PO.mpesquisa := cPO.Text;
      Impressao_ProcessosOP_PO.ShowModal;
*)
end;

procedure TfComexPO.bImportarClick(Sender: TObject);
begin
    fComexPOImportar.ShowModal;
end;

procedure TfComexPO.bAddItemClick(Sender: TObject);
begin
      with POItens do begin
           try
               CarregaLocais;
               LigaBotoesItens(false);
               Append;
                    FieldByName('Empresa').Value := UniMainModule.mEmpresaAtiva;
                    FieldByName('PO').Value      := PO.Fieldbyname('Numero').value;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfComexPO.bAdicionarClick(Sender: TObject);
begin
      with PO do begin
           try
               CarregaLocais;
               LigaBotoes(false);
               Pasta.ActivePageIndex := 1;
               Append;
                    // Gerando o número do processo caso esteja automatico.
                    fieldbyname('Empresa').value     := UniMainModule.mEmpresaAtiva;
                    fieldbyname('Responsavel').Value := UniMainModule.mUsuarioAtivo;
                    fieldbyname('Data').Value        := now;
                    
                    cProcesso.Enabled := not Empresas.fieldbyname('Processo_Automatico').asboolean;
                    cPO.Enabled       := not Empresas.fieldbyname('PO_Automatico').asboolean;

                    if not Empresas.fieldbyname('Processo_Automatico').asboolean then begin
                       cProcesso.SetFocus;
                    end else begin
                       if not Empresas.fieldbyname('PO_Automatico').asboolean then begin
                          cPO.SetFocus;
                       end else begin
                          cModalidade.Setfocus;
                       end
                    end;
           except on E: Exception do
               begin
                   MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!'+#13+E.Message, mtError, [mbOK]);
                   bCancelarclick(self);
               end;
           end;
      end;
end;

procedure TfComexPO.bExcluirClick(Sender: TObject);
begin
     with PO do begin
          try
             MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Numero').AsString, mtConfirmation, mbYesNo,
                       procedure(Comp:TComponent; ARes: Integer)
                       begin
                            if ARes = mrYes then begin
                               with POItens do begin
                                    try
                                       sql.clear;
                                       sql.add('delete from POItens where Empresa = :pEmp and PO = :pPO');
                                       parambyname('pEmp').AsString := PO.fieldbyname('Empresa').AsString;
                                       parambyname('pPO').AsString  := PO.fieldbyname('Numero').AsString;
                                       execute;
                                    except on E: Exception do
                                       begin
                                            abort;
                                            MessageDlgN('Erro desconhecida, não pode excluir os itens do PO!'+#13+E.Message, mtError, [mbOK]);
                                       end;
                                    end;
                               end;
                               Delete;
                               Alerta.Text := 'PO excluído do banco de dados!';
                               Alerta.Execute;
                            end;
                       end);
          except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode excluir o PO!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexPO.bSalvarClick(Sender: TObject);
begin
      with PO do begin
           // Executando as consistencias dos campos.
           if not Empresas.fieldbyname('Processo_Automatico').asboolean then begin
              if CampoVazio(cProcesso, 'Processo')then Abort;
           end;
           if not Empresas.fieldbyname('PO_Automatico').asboolean then begin
              if CampoVazio(cPO, 'Número do PO') then Abort;
           end;
           if CampoVazio(cEmpresa   ,'Empresa')           then Abort;
           if CampoVazio(cModalidade,'Modalidade')        then Abort;
           if CampoVazio(cData      ,'Data')              then Abort;
           if CampoVazio(cExportador,'Exportador')        then Abort;
           if CampoVazio(cCondCambio,'Codição Cambial')   then Abort;
           if CampoVazio(cVia       ,'Via de Transporte') then Abort;
           if CampoVazio(cLocalEmb  ,'Local de Embarqe')  then Abort;
           if CampoVazio(cLocalEnt  ,'Local de Entrega')  then Abort;
           if CampoVazio(cCondCambio,'Condição de Venda') then Abort;
           if CampoVazio(cMoeda     ,'Moeda')             then Abort;
           if (fieldbyname('Modalidade').asinteger in [2, 3]) and (fieldbyname('Cliente').AsInteger = 0) then begin
              Alerta.Text := 'CLIENTE é obrigatório para '+TiposProcesso.fieldbyname('Descricao').asstring;
              Alerta.Execute;
              cCliente.setfocus;
              Abort;
           end;
           try
               if State = dsInsert then begin
                  try 
                     with Empresas do begin
                          // Gerando o número do Processo caso esteja automatico.
                          if fieldbyname('Processo_Automatico').asboolean then begin
                             PO.fieldbyname('Processo').Value := GeraProcPO(fieldbyname('CNPJ').value, PO.fieldbyname('Cliente').asinteger, 'PR');
                          end;
                          // Gerando o número do PO caso esteja automatico.
                          if fieldbyname('PO_Automatico').asboolean then begin
                             PO.fieldbyname('Numero').Value := GeraProcPO(fieldbyname('CNPJ').value, PO.fieldbyname('Cliente').asinteger, 'PO');
                          end;
                          edit;
                               fieldbyname('PO').Value       := fieldbyname('PO').asinteger + 1;
                               fieldbyname('Processo').Value := fieldbyname('Processo').asinteger + 1;
                          post;
                     end;
                  except on E: Exception do 
                     begin
                        MessageDlgN('Falha desconhecida, não pode atualiza os Números do PO ou Processo no cadastro da empresa!'+#13+E.Message, mtError, [mbOK]);
                        abort;
                     end;
                  end;
                  try 
                     // Registro do Histórico do processo (Follow-Up).
                     with ProcessosHistorico do begin
                          append;
                               fieldbyname('Registro').Value  := GeraCodigo('ProcessosHistorico', 'Registro');
                               fieldbyname('Data').Value      := Now;
                               fieldbyname('Processo').Value  := PO.fieldbyname('Processo').AsString;
                               fieldbyname('Descricao').Value := 'Confecção da Purchase Order (PO).';
                               fieldbyname('Documento').Value := PO.fieldbyname('Numero').AsString;
                               fieldbyname('Empresa').Value   := PO.fieldbyname('Empresa').AsString;
                          post;
                     end;
                  except on E: Exception do
                     begin 
                        MessageDlgN('Falha desconhecida, não pode registra o evento no Follow-Up!'+#13+E.Message, mtError, [mbOK]);
                        abort;
                     end;
                  end;
               end;
               
               // Gera o registro em caso de inclusão.
               if State = dsInsert then begin
                  fieldbyname('Registro').Value := GeraCodigo('PO', 'Registro');
               end;
               Post;

               // Abre um novo processo de importação via PO caso não exista.
               AbreProcesso;
               
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfComexPO.bCancelarClick(Sender: TObject);
begin
      PO.Cancel;
      LigaBotoes(true);
end;

procedure TfComexPO.bEditarClick(Sender: TObject);
begin
     try
         Pasta.ActivePageIndex := 1;
         LigaBotoes(false);
         PO.Edit;
         cModalidade.setfocus;
     except on E: Exception do
         MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;
 
procedure TfComexPO.UniFrameDestroy(Sender: TObject);
var
   i: integer;
begin
     // Fecha todas as tabelas do form.
     for i := 0 to pred(ComponentCount) do begin
         if Components[i] is TFDQuery then begin
            TFDQuery(Components[i]).close;
         end;
     end;
end;
 
procedure TfComexPO.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bSalvar.Enabled    := not Estado;
     pFicha.Enabled     := not Estado;
end;

procedure TfComexPO.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfComexPO.bPesquisaClick(Sender: TObject);
begin
     PO.Cancel;
     LigaBotoes(true);
     Filtra(PO, 'Numero', cPesquisa.text);
end;
 
procedure TfComexPO.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
     if Key = VK_RETURN then begin
        bPesquisa.Click;
     end;
end;
 
procedure TfComexPO.POAfterPost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Numero').AsString, EstadoTabela(DataSet));
end;

procedure TfComexPO.POBeforeDelete(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Registro').AsString, 'Delete');
end;

procedure TfComexPO.POItensAfterDelete(DataSet: TDataSet);
begin
     Totaliza;
end;

procedure TfComexPO.POItensAfterPost(DataSet: TDataSet);
begin
     Totaliza;
end;

procedure TfComexPO.POItensCalcFields(DataSet: TDataSet);
begin
    DataSet.fieldbyname('Total').value := DataSet.fieldbyname('Valor').ascurrency * DataSet.fieldbyname('Quantidade').asfloat;
end;

procedure TfComexPO.LigaBotoesItens(Estado:boolean);
begin
     NavegaItens.Enabled := Estado;
     bEditItem.Enabled   := Estado;
     bExcItem.Enabled    := Estado;
     bAddItem.Enabled    := Estado;
     bCancItem.Enabled   := not Estado;
     bSalvarItem.Enabled := not Estado;
     pFichaItem.Enabled  := not Estado;
end;

procedure TfComexPO.bExcItemClick(Sender: TObject);
begin
     with POItens do begin
          try
             MessageDlg('Deseja realmente excluir este Item?'+#13+#13+FieldByName('Item').AsString, mtConfirmation,mbYesNo,
                       procedure(Comp:TComponent; ARes: Integer)
                       begin
                             if ARes = mrYes then begin
                                Delete;
                                Alerta.Text := 'Item excluído do banco de dados!';
                                Alerta.Execute;
                             end;
                       end);
           except on E: Exception do
             MessageDlgN('Falha desconhecida, não pode excluir o Item!'+#13+E.Message, mtError, [mbOK]);
          end;
     end;
end;

procedure TfComexPO.bSalvarItemClick(Sender: TObject);
begin
      with POItens do begin
           if CampoVazio(cProduto, 'Produto')        then Abort;
           if CampoVazio(cQtde   , 'Quantidade')     then Abort;
           if CampoVazio(cValor  , 'Valor Unitário') then Abort;

           try
               // Gera o registro em caso de inclusão.
               if State = dsInsert then begin
                  with tTemp do begin
                       sql.clear;
                       sql.add('select isnull(max(item), 0)+1 as Item from POItens where PO = :pPO and Empresa = :pEmpresa');
                       ParamByName('pEmpresa').value := UniMainModule.mEmpresaAtiva;
                       ParamByName('pPO').value      := PO.fieldbyname('Numero').value;
                       open;
                  end;
                  fieldbyname('Item').Value := tTemp.fieldbyname('Item').value;
               end;
               fieldbyname('Registro').Value           := GeraCodigo('POItens', 'Registro');
               fieldbyname('Fabricante').Value         := Produtos.fieldbyname('Fabricante').value;
               fieldbyname('NCM').Value                := Produtos.fieldbyname('NCM').value;
               fieldbyname('Quantidade_Unidade').Value := Produtos.fieldbyname('Quantidade_Unidade').value;
               fieldbyname('Quantidade_Volumes').Value := POItens.fieldbyname('Quantidade').asfloat / Produtos.fieldbyname('Quantidade_Volumes').asfloat;
               Post;
               LigaBotoesItens(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
           except on E: Exception do
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
           end;
      end;
end;

procedure TfComexPO.bCancItemClick(Sender: TObject);
begin
      POItens.Cancel;
      LigaBotoesItens(true);
end;

procedure TfComexPO.bEditItemClick(Sender: TObject);
begin
     try
         LigaBotoesItens(false);
         POItens.Edit;
         cProduto.setfocus;
     except on E: Exception do
         MessageDlgN('Falha desconhecida, não pode editar o registro corrente!'+#13+E.Message, mtError, [mbOK]);
     end;
end;



end.
