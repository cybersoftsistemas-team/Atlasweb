unit DespRegistroDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, 
  uniGUIFrame, UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, 
  uniDBDateTimePicker, uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, uniComboBox, UniGroupBox, uniSpinEdit, unimToggle,
  FireDAC.Comp.Client, Funcoes, Data.DB, uniSweetAlert, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, uniMemo, uniRadioGroup, uniDBRadioGroup, uniDBComboBox,
  uniCheckBox, uniMultiItem, uniLabel, System.DateUtils;

type
  TfDespRegistroDI = class(TUniFrame)
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
    tReg: TFDQuery;
    tTmp: TFDQuery;
    Label5: TuniLabel;
    Memo: TuniMemo;
    Pasta: TUniPageControl;
    tDadosDI: TuniTabSheet;
    TabSheet1: TuniTabSheet;
    DI: TFDQuery;
    dsDI: TDataSource;
    Grade: TUniDBGrid;
    UniTabSheet1: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    pFicha: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    UniPanel1: TUniPanel;
    cDI: TUniDBEdit;
    cFUNDAP: TUniDBCheckBox;
    cMultimodal: TUniDBCheckBox;
    cData: TUniDBDateTimePicker;
    cURF_Entrega: TUniDBLookupComboBox;
    cURF_Despacho: TUniDBLookupComboBox;
    clModalidade_Importacao: TUniDBLookupComboBox;
    cConsignatario: TUniDBLookupComboBox;
    cPais_Procedencia: TUniDBLookupComboBox;
    cProcesso: TUniDBLookupComboBox;
    cMotivo_AdmissaoTemp: TUniDBLookupComboBox;
    cTipo_Pagamento: TUniDBRadioGroup;
    cTipo_Declaracao: TUniDBLookupComboBox;
    MotivoAdm: TFDQuery;
    dsMotivoAdm: TDataSource;
    ModalidadeImp: TFDQuery;
    dsModalidadeImp: TDataSource;
    TiposDeclaracao: TFDQuery;
    dsTiposDeclaracao: TDataSource;
    ProcessosImp: TFDQuery;
    dsProcessosImp: TDataSource;
    TipoImportador: TFDQuery;
    dsTipoImportador: TDataSource;
    cTipo_Importador: TUniDBLookupComboBox;
    ModalidadesDespacho: TFDQuery;
    dsModalidadesDespacho: TDataSource;
    cModalidade_Despacho: TUniDBLookupComboBox;
    URF: TFDQuery;
    dsURF: TDataSource;
    Consignatario: TFDQuery;
    dsConsignatario: TDataSource;
    Paises: TFDQuery;
    dsPaises: TDataSource;
    ViaTransporte: TFDQuery;
    dsViaTransporte: TDataSource;
    DocumentoCarga: TFDQuery;
    dsDocumentoCarga: TDataSource;
    TipoConhecimento: TFDQuery;
    dsTipoConhecimento: TDataSource;
    TipoManifesto: TFDQuery;
    dsTipoManifesto: TDataSource;
    UniTabSheet2: TUniTabSheet;
    uniScrollBox3: TUniScrollBox;
    UniPanel2: TUniPanel;
    cNumero_Veiculo: TUniDBEdit;
    cNomeVei: TUniDBComboBox;
    cNomeAgente: TUniDBComboBox;
    cData_Embarque: TUniDBDateTimePicker;
    cAgente_Numero: TUniDBEdit;
    cDocumento_Chegada: TUniDBEdit;
    cTipoConhecimento: TUniDBLookupComboBox;
    cNumero_Manifesto: TUniDBEdit;
    cData_Chegada: TUniDBDateTimePicker;
    cLocalEmb: TUniDBComboBox;
    cNumero_DocCargaMaster: TUniDBEdit;
    cNumero_DocCarga: TUniDBEdit;
    cVia_Transporte: TUniDBLookupComboBox;
    cTipo_DocCarga: TUniDBLookupComboBox;
    cFrete_PrePaid: TUniDBEdit;
    cFrete_Collect: TUniDBEdit;
    cSeguro_Real: TUniDBEdit;
    cRecinto_Aduaneiro: TUniDBLookupComboBox;
    cMoedaFrete: TUniDBLookupComboBox;
    cMoedaSeguro: TUniDBLookupComboBox;
    cFrete_Real: TUniDBEdit;
    cRecinto_AduaneiroSetor: TUniDBLookupComboBox;
    cVolumes_Embalagem: TUniDBEdit;
    cFrete_TerritorioNac: TUniDBEdit;
    cSeguro_ME: TUniDBEdit;
    cLocal_Embarque: TUniDBComboBox;
    cEmbalagem: TUniDBLookupComboBox;
    cPeso_Liquido: TUniDBEdit;
    cPeso_Bruto: TUniDBEdit;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    RecintoAduaneiro: TFDQuery;
    dsRecintoAduaneiro: TDataSource;
    RecintoSetor: TFDQuery;
    dsRecintoSetor: TDataSource;
    Bancos: TFDQuery;
    dsBancos: TDataSource;
    cBanco: TUniDBLookupComboBox;
    UniTabSheet3: TUniTabSheet;
    UniScrollBox4: TUniScrollBox;
    UniPanel3: TUniPanel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    Moedas: TFDQuery;
    dsMoedas: TDataSource;
    UniTabSheet4: TUniTabSheet;
    UniScrollBox5: TUniScrollBox;
    UniPanel8: TUniPanel;
    gAcrescimos: TUniDBGrid;
    pTributo: TUniContainerPanel;
    cAcrescimo: TUniDBLookupComboBox;
    cMoedaAcrescimo: TUniDBLookupComboBox;
    cValorAcrescimoME: TUniDBFormattedNumberEdit;
    cValorAcrescimoReal: TUniDBFormattedNumberEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniPanel9: TUniPanel;
    bNavegaTrib: TUniDBNavigator;
    bAddTrib: TUniSpeedButton;
    bEditTrib: TUniSpeedButton;
    bExcTrib: TUniSpeedButton;
    bCancTrib: TUniSpeedButton;
    bGravTrib: TUniSpeedButton;
    gTotalAcre: TUniDBGrid;
    DIAcrescimos: TFDQuery;
    dsDIAcrescimos: TDataSource;
    dsAcrescimos: TDataSource;
    Acrescimos: TFDQuery;
    TotalAcr: TFDQuery;
    dsTotalAcr: TDataSource;
    DIAcrescimosRegistro: TIntegerField;
    DIAcrescimosEmpresa: TStringField;
    DIAcrescimosRegistro_DI: TIntegerField;
    DIAcrescimosDI: TStringField;
    DIAcrescimosCodigo: TSmallintField;
    DIAcrescimosValor_ME: TCurrencyField;
    DIAcrescimosMoeda: TIntegerField;
    DIAcrescimosValor_Real: TCurrencyField;
    TotalAcrMoeda: TIntegerField;
    TotalAcrTotalME: TCurrencyField;
    TotalAcrTotalReal: TFloatField;
    DIAcrescimosDescricao: TStringField;
    TotalAcrDescricao: TStringField;
    UniDBEdit1: TUniDBEdit;
//    dsTotalAcre: TDataSource;
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
    procedure DIBeforePost(DataSet: TDataSet);
    procedure DIBeforeDelete(DataSet: TDataSet);
    procedure cRecinto_AduaneiroChange(Sender: TObject);
    procedure cProcessoExit(Sender: TObject);
    procedure cRegistroChange(Sender: TObject);
    procedure bAddTribClick(Sender: TObject);
    procedure bGravTribClick(Sender: TObject);
    procedure UniDBEdit1ChangeValue(Sender: TObject);
//    procedure cRegistroChange(Sender: TObject);
//    procedure DBGrid1DblClick(Sender: TObject);
//    procedure DBGrid3DblClick(Sender: TObject);
//    procedure GradeDblClick(Sender: TObject);
//    procedure GradeAcreDblClick(Sender: TObject);
//    procedure DBGrid2DblClick(Sender: TObject);

  private
    procedure PegaNavios;
    procedure PegaAgente;
    procedure PegaAcrescimos;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfDespRegistroDI.bAddTribClick(Sender: TObject);
begin
      with DIAcrescimos do begin
           try
               //LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfDespRegistroDI.bAdicionarClick(Sender: TObject);
begin
      with DI do begin
           try
               LigaBotoes(false);
               Append;
           except
               MessageDlgN('Falha desconhecida, não pode adicionar um novo registro!', mtError, []);
           end;
      end;
end;

procedure TfDespRegistroDI.bExcluirClick(Sender: TObject);
begin
     with DI do begin
          MessageDlg('Deseja realmente excluir estes dados?'+#13+#13+FieldByName('Registro').AsString, mtConfirmation,mbYesNo,
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

procedure TfDespRegistroDI.bGravarClick(Sender: TObject);
begin
      with DI do begin
           if (State = dsInsert) then begin
              FieldByName('Registro').Value := GeraCodigo('DI', 'Registro');
           end;
           
           // Verifica todos os campos obigatorios.
           if ValidaCampo(cData,  DateTimeToUnix(cData.DateTime), 0, '<=', 'A "Data" deve ser informada!', 'Data inválida') then Abort;
           if ValidaCampo(cProcesso, cProcesso.text, '', '=', 'O "Processo" deve ser informado!', 'Número de processo inválido') then Abort;
           if ValidaCampo(clModalidade_Importacao, clModalidade_Importacao.Text, '', '=', 'A "Modalidade de Importação" deve ser informada!', 'Modalidade de Importação inválida') then Abort;
           if ValidaCampo(cTipo_Declaracao, cTipo_Declaracao.Text, '', '=', 'A "Tipo de Declaração" deve ser informada!', 'Tipo de Declaração inválida') then Abort;
           if ValidaCampo(cTipo_Importador, cTipo_Importador.Text, '', '=', 'O "Tipo de Importador" deve ser informado!', 'Tipo de Importador inválido') then Abort;
           if ValidaCampo(cURF_Despacho, cURF_Despacho.Text, '', '=', 'O "URF de Despacho" deve ser informada!', 'URF de Despacho inválida') then Abort;
           if ValidaCampo(cURF_Entrega, cURF_Entrega.Text, '', '=', 'O "URF de Entrega" deve ser informada!', 'URF de Entrega inválida') then Abort;
           if ValidaCampo(cPais_Procedencia, cPais_Procedencia.Text, '', '=', 'O "País de Procedência" deve ser informada!', 'País de Procedência inválido') then Abort;
           
           try
               // Gera o registro em caso de inclusão.
               if State = dsInsert then begin
                  FieldByName('Registro').Value := GeraCodigo('DI', 'Registro');
                  FieldByName('Empresa').Value  := uniMainModule.mEmpresaAtiva; 
               end;
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!'; 
               Alerta.Execute;
               PegaNavios;
               PegaAgente;
           except
               MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
           end;
      end;
end;

procedure TfDespRegistroDI.bGravTribClick(Sender: TObject);
begin
      with DIAcrescimos do begin
           try
               fieldbyname('Registro').value    := GeraCodigo('DIAcrescimo', 'Registro');
               fieldbyname('Registro_DI').value := DI.FieldByName('Registro').asinteger;
               fieldbyname('DI').value          := DI.FieldByName('DI').AsString;
               fieldbyname('Empresa').value     := uniMainModule.mEmpresaAtiva; 
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfDespRegistroDI.bCancelarClick(Sender: TObject);
begin
      DI.Cancel;
      LigaBotoes(true);
end;

procedure TfDespRegistroDI.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         DI.Edit;
//         cRegistro.setfocus;
     except
        MessageDlgN('Falha desconhecida, não pode editar o registro corrente!', mtError, []);
     end;
end;

procedure TfDespRegistroDI.UniFrameDestroy(Sender: TObject);
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

procedure TfDespRegistroDI.bFecharClick(Sender: TObject);
begin
      MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfDespRegistroDI.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled     := Estado;
     bEditar.Enabled    := Estado;
     bExcluir.Enabled   := Estado;
     bAdicionar.Enabled := Estado;
     bCancelar.Enabled  := not Estado;
     bGravar.Enabled    := not Estado;
     uniPanel1.Enabled  := not Estado;
     uniPanel2.Enabled  := not Estado;
     uniPanel3.Enabled  := not Estado;
     uniPanel8.Enabled  := not Estado;

     if not Estado then Pasta.ActivePageIndex := 1;
end;

procedure TfDespRegistroDI.UniDBEdit1ChangeValue(Sender: TObject);
begin
      PegaAcrescimos;
end;

procedure TfDespRegistroDI.UniFrameCreate(Sender: TObject);
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
      Pasta.ActivePageIndex := 0;

      with DI do begin
           sql.clear;
           sql.add('select *');
           sql.add('from DI');
           sql.add('order by Registro');
           open;
      end;
      // Carregando os locais de embarque pré-existentes.
      with tTmp do begin
           sql.Clear;
           sql.Add('select distinct local_Embarque from Invoice where ltrim(rtrim(Local_Embarque)) <> '''' order by Local_Embarque');
           open;
           cLocalEmb.Items.Clear;
           while not eof do begin
                 cLocalEmb.Items.add(FieldByName('Local_Embarque').asString);
                 Next;
           end;
      end;
      with MotivoAdm do begin
           SQL.Clear;
           SQL.Add('select * from MotivoAdmissaoTemp order by Codigo');
           Open;
      end;
      with ModalidadeImp do begin
           SQL.Clear;
           SQL.Add('select Codigo, Descricao from ModalidadeImp order by Codigo');
           Open;
      end;
      with TiposDeclaracao do begin
           SQL.Clear;
           SQL.Add('select Codigo, Descricao from TiposDeclaracao order by Codigo, Descricao');
           Open;
      end;
      with ProcessosImp do begin
           SQL.Clear;
           SQL.Add('select Processo from ProcessosImp order by Processo');
           Open;
      end;
      with TipoImportador do begin
           sql.clear;
           sql.add('select Codigo, Descricao from TipoImportador');
           open;
      end;
      with ModalidadesDespacho do begin
           sql.clear;
           sql.add('select Codigo, Descricao from ModalidadesDespacho');
           open;
      end;
      with URF do begin
           sql.clear;
           sql.add('select Codigo, Nome from LocalDesembaraco order by Nome');
           open;
      end;
      with Consignatario do begin
           sql.clear;
           sql.add('select Codigo, Nome from Destinatarios where Cliente = 1 order by Nome');
           open;
      end;
      with Paises do begin
           sql.clear;
           sql.add('select Codigo, Nome from Paises order by Nome');
           open;
      end;
      with ViaTransporte do begin
           sql.clear;
           sql.add('select Codigo, Descricao from ViaTransporte order by Descricao');
           open;
      end;
      with DocumentoCarga do begin
           sql.clear;
           sql.add('select Codigo, Descricao from DocumentoCarga order by Descricao');
           open;
      end;
      with TipoConhecimento do begin
           sql.clear;
           sql.add('select Codigo, Descricao from TipoConhecimento order by Descricao');
           open;
      end;
      with TipoManifesto do begin
           sql.clear;
           sql.add('select Codigo, Descricao from TipoManifesto order by Descricao');
           open;
      end;
      with RecintoAduaneiro do begin
           sql.clear;
           sql.add('select Codigo, Nome from RecintoAduaneiro order by Nome');
           open;
      end;
      with Bancos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.add('      ,Nome');
           sql.add('      ,Conta = replicate(''0'', 10-len(Conta))+cast(Conta as varchar(10))');
           sql.add('from Bancos');
           sql.add('where isnull(Desativado, 0) = 0');
           sql.add('and Tipo_Conta = ''CORRENTE'' ');
           sql.add('order by Nome');
           open;
      end;
      with Moedas do begin
           sql.clear;
           sql.add('select Codigo');
           sql.Add('      ,Nome');
           sql.Add('      ,Pais');
           sql.add('from Moedas');
           sql.Add('order by Nome');
           open;
      end;
      with Acrescimos do begin
           sql.clear;
           sql.add('select Codigo');
           sql.Add('      ,Descricao');
           sql.add('from Acrescimos');
           sql.Add('order by Descricao');
           open;
      end;
      
//      PegaAcrescimos;
      cRecinto_AduaneiroChange(self);
      PegaNavios;
      PegaAgente;
end;

// Pega os acréscimos da DI.
procedure TfDespRegistroDI.PegaAcrescimos;
begin
      with DIAcrescimos do begin
           sql.clear;
           sql.add('select *');
           sql.Add('      ,Descricao = (select Descricao from Acrescimos acr where acr.Codigo = dia.Codigo)');
           sql.add('from DIAcrescimo dia');
           sql.add('where Registro_DI = :pReg');
           sql.Add('order by Codigo');
           Parambyname('pReg').Asinteger := DI.FieldByName('Registro').asinteger;
           open;
      end;
      with TotalAcr do begin
           close;
           sql.clear;
           sql.Add('select dia.Moeda');
           sql.Add('      ,Descricao = (select Nome from Moedas moe where moe.Codigo = dia.Moeda)');
           sql.add('      ,TotalME   = sum(isnull(dia.Valor_ME, 0))');
           sql.Add('      ,TotalReal = sum(isnull(dia.Valor_ME, 0)) * (select isnull(Valor, 1) from Cybersoft_Cadastros.dbo.Cotacao cot where cot.Moeda = dia.Moeda and cot.Data = :pData)');
           sql.Add('from DIAcrescimo dia');
           sql.Add('where Registro_DI = :pReg');
           sql.Add('group by dia.moeda');
           Parambyname('pReg').Asinteger := DI.FieldByName('Registro').asinteger;
           Parambyname('pData').Asdate   := DI.FieldByName('Data').asdatetime;
           //sql.SaveToFile('c:\temp\Total_Acrescimo.sql');
           open;
      end;
end;

// Carrega os nome de veículos pré-existentes.
procedure TfDespRegistroDI.PegaNavios;
begin
      with tTmp do begin
           close;
           SQL.Clear;
           SQL.Add('select distinct Nome_Veiculo from DI order by Nome_Veiculo');
           Open;
           cNomeVei.Items.Clear;
           while not tReg.eof do begin
                 cNomeVei.Items.add(tReg.FieldByName('Nome_Veiculo').asString);
                 tReg.Next;
           end;
           close;
      end;
end;

// Carrega os nome dos agente transportador pré-existentes.
procedure TfDespRegistroDI.PegaAgente;
begin
     with tTmp do begin
          close;
          SQL.Clear;
          SQL.Add('select distinct Agente_Transportador from DI order by Agente_Transportador');
          Open;
          cNomeAgente.Items.Clear;
          while not tReg.eof do begin
                cNomeAgente.Items.add(tReg.FieldByName('Agente_Transportador').asString);
                tReg.Next;
          end;
          close;
     end;
end;

procedure TfDespRegistroDI.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfDespRegistroDI.bPesquisaClick(Sender: TObject);
begin
     DI.Cancel;
     LigaBotoes(true);
     Pesquisa(DI,'DI','Registro', 'DI',cPesquisa.text)
end;

procedure TfDespRegistroDI.DIBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('DI').AsString, EstadoTabela(DataSet));
end;

procedure TfDespRegistroDI.DIBeforeDelete(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('DI').AsString, 'Delete');
end;

procedure TfDespRegistroDI.cRecinto_AduaneiroChange(Sender: TObject);
begin
     with RecintoSetor do begin
          sql.clear;
          sql.add('select distinct Setor');
          sql.add('      ,Recinto');
          sql.add('      ,Descricao');
          sql.add('from OrgaosSRF');
          sql.add('where Recinto = :pRecinto');
          sql.add('order by Descricao');
          ParamByName('pRecinto').value := RecintoAduaneiro.fieldbyname('Codigo').value;
          Open;
     end;
end;

procedure TfDespRegistroDI.cProcessoExit(Sender: TObject);
begin
//     with Dados, dmDespacho do begin
//          if (DI.State = dsInsert) or (DI.State = dsEdit)  then begin
//             DIPais_Procedencia.Value      := InvoicePais_Origem.asinteger;
//             DIModalidade_Importacao.Value := InvoiceModalidade_Importacao.asinteger;
//             DIVia_Transporte.Value        := InvoiceVia_Transporte.value;
//             DILocal_Embarque.Value        := InvoiceLocal_Embarque.Value;
//             DIMoeda_Frete.Value           := InvoiceMoeda_Frete.Value;
//             DIMoeda_Seguro.Value          := InvoiceMoeda_Seguro.Value;
//             DIFrete_PrePaid.Value         := InvoiceFrete_PrePaid.Value;
//             DIFrete_Collect.Value         := InvoiceFrete_Collect.Value;
//          end;
//     end;
end;

procedure TfDespRegistroDI.cRegistroChange(Sender: TObject);
begin
//     with Dados, dmDespacho do begin
//          with DIAdicoes do begin
//               sql.clear;
//               sql.Add('select *');
//               sql.Add('from DIAdicoes');
//               sql.Add('where DI = :pDI');
//               sql.Add('order by NCM, Adicao');
//               Parambyname('pDI').Asstring := DIDI.asstring;
//               open;
//          end;
//          with DIAcrescimo do begin
//               sql.clear;
//               sql.Add('select *');
//               sql.Add('from DIAcrescimo');
//               sql.Add('where DI = :pDI');
//               sql.Add('order by Moeda');
//               Parambyname('pDI').Asstring := DIDI.asstring;
//               open;
//          end;
//          with DIDocumentos do begin
//               sql.clear;
//               sql.Add('select *');
//               sql.Add('      ,Descricao = (select Descricao from Cybersoft_Cadastros.dbo.DocumentoInstrucao dit where dit.Codigo = did.Codigo)');
//               sql.Add('from DIDocumentos did');
//               sql.Add('where DI = :pDI');
//               sql.Add('order by Descricao');
//               Parambyname('pDI').Asstring := DIDI.asstring;
//               open;
//          end;
//          with tTotalAcre do begin
//               sql.clear;
//               sql.Add('select dia.Moeda');
//               sql.add('      ,TotalME   = sum(isnull(dia.Valor_ME, 0))');
//               sql.Add('      ,TotalReal = sum(isnull(dia.Valor_ME, 0)) * (select isnull(Valor, 1) from Cybersoft_Cadastros.dbo.Cotacao cot where cot.Moeda = dia.Moeda and cot.Data = :pData)');
//               sql.Add('from DIAcrescimo dia');
//               sql.Add('where DI = :pDI');
//               sql.Add('group by dia.Registro_DI, dia.moeda');
//               Parambyname('pDI').Asstring := DIDI.asstring;
//               //sql.SaveToFile('c:\temp\Total_Acrescimo.sql');
//               open;
//          end;
//     end;
end;


end.




