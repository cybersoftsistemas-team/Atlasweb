unit CadSeriais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame,
  UniPageControl, uniDBGrid, uniPanel, uniDBLookUpComboBox, uniDBCheckBox, uniScrollBox, uniSpeedButton, uniDateTimePicker, uniDBDateTimePicker,
  uniButton, uniBitBtn, uniDBNavigator, uniEdit, uniDBEdit, uniDBMemo, uniBasicGrid, uniGUIBaseClasses, FireDAC.Comp.Client, Funcoes, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, uniComboBox, uniDBComboBox, uniMultiItem, FireDAC.Comp.DataSet, uniRadioGroup, uniDBRadioGroup, uniGroupBox, uniSweetAlert;

type
  TfCadSeriais = class(TUniFrame)
    Alerta: TUniSweetAlert;
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
    UniTabSheet1: TUniTabSheet;
    tRegistro: TFDQuery;
    gSeriais: TUniDBGrid;
    Seriais: TFDQuery;
    dsSeriais: TDataSource;
    ScrollBox: TUniScrollBox;
    pFicha: TUniPanel;
    Produtos: TFDQuery;
    dsProdutos: TDataSource;
    dsProcessos: TDataSource;
    Processos: TFDQuery;
    Cores: TFDQuery;
    dsCores: TDataSource;
    CoresDENATRAN: TFDQuery;
    dsCoresDENTRAN: TDataSource;
    UniTabSheet2: TUniTabSheet;
    gNotas: TUniDBGrid;
    Notas: TFDQuery;
    dsNotas: TDataSource;
    pNotas: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    cData: TUniDBDateTimePicker;
    UniDBRadioGroup1: TUniDBRadioGroup;
    UniDBRadioGroup2: TUniDBRadioGroup;
    cNumero: TUniDBEdit;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBComboBox1: TUniDBComboBox;
    cProcesso: TUniDBLookupComboBox;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    cProduto: TUniDBLookupComboBox;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    NotasRegistro: TIntegerField;
    NotasProduto: TIntegerField;
    NotasNumero: TStringField;
    NotasNota: TIntegerField;
    NotasChave_NFe: TStringField;
    NotasData: TSQLTimeStampField;
    NotasSaida_Entrada: TSmallintField;
    NotasEmissor: TStringField;
    cNota: TUniDBEdit;
    cChave: TUniDBEdit;
    bAddNF: TUniSpeedButton;
    bAltNF: TUniSpeedButton;
    bExcNF: TUniSpeedButton;
    bSalvarNF: TUniSpeedButton;
    bCancNF: TUniSpeedButton;
    SeriaisRegistro: TIntegerField;
    SeriaisProduto: TIntegerField;
    SeriaisProcesso: TStringField;
    SeriaisTipo: TStringField;
    SeriaisNumero: TStringField;
    SeriaisCor: TStringField;
    SeriaisAno_Modelo: TStringField;
    SeriaisAno_Fabricacao: TStringField;
    SeriaisCor_DENATRAN: TStringField;
    SeriaisDisponivel: TBooleanField;
    SeriaisProduto_Desc: TStringField;
    UniButton1: TUniButton;
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
    procedure ProdutosSeriaisBeforePost(DataSet: TDataSet);
    procedure ProdutosSeriaisBeforeDelete(DataSet: TDataSet);
    procedure FiltraNotas;
    procedure SeriaisAfterScroll(DataSet: TDataSet);
    procedure cNotaExit(Sender: TObject);
    procedure bAddNFClick(Sender: TObject);
    procedure bExcNFClick(Sender: TObject);
    procedure bCancNFClick(Sender: TObject);
    procedure bSalvarNFClick(Sender: TObject);
    procedure bAltNFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;

procedure TfCadSeriais.bAddNFClick(Sender: TObject);
begin
     Pasta.ActivePageIndex := 2;
     pNotas.Enabled := true;
     Notas.Append;
     cNota.SetFocus;
end;

procedure TfCadSeriais.bAdicionarClick(Sender: TObject);
begin
     with Seriais do begin
          try
              LigaBotoes(false);
              Append;
          except
              Showmessage('Não pode adicionar um novo registro!');
          end;
     end;
end;

procedure TfCadSeriais.bExcluirClick(Sender: TObject);
begin
     with Seriais do begin
          MessageDlg('Deseja realmente excluir este '+FieldByName('Tipo').AsString+' '+FieldByName('Numero').AsString+'?'+#13+#13, mtConfirmation,mbYesNo,
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

procedure TfCadSeriais.bExcNFClick(Sender: TObject);
begin
     with Notas do begin
          MessageDlg('Deseja realmente excluir esta nota fiscal?'+#13+#13, mtConfirmation,mbYesNo,
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

procedure TfCadSeriais.bGravarClick(Sender: TObject);
begin
      with Seriais do begin
           if (State = dsInsert) and (Existe(Seriais, 'Numero', FieldByName('Numero').AsString)) then begin
              MessageDlg('Já existe um "Serial/Chassi" cadastrado com esse código!'+#13+#13, mtError, [mbOK]);
              cNumero.SetFocus;
              Abort;
           end;
           if Trim(cProduto.text) = '' then begin
              MessageDlg('O campo "Produto" não pode ficar em branco!', mtError, [mbOK]);
              cProduto.SetFocus;
              Abort;
           end;
           if Trim(FieldByName('Numero').AsString) = '' then begin
              MessageDlg('O campo "Número" não pode ficar em branco!', mtError, [mbOK]);
              cNumero.SetFocus;
              Abort;
           end;

           try
               Post;
               LigaBotoes(true);
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
           except
               Showmessage('Falha desconhecida, não pode salvar o registro corrente!');
           end;
      end;
end;

procedure TfCadSeriais.bCancelarClick(Sender: TObject);
begin
      Seriais.Cancel;
      LigaBotoes(true);
end;

procedure TfCadSeriais.bCancNFClick(Sender: TObject);
begin
     Notas.Cancel;
end;

procedure TfCadSeriais.bEditarClick(Sender: TObject);
begin
     try
         LigaBotoes(false);
         Seriais.Edit;
         cProduto.setfocus;
     except
        Showmessage('Não pode editar o registro corrente!');
     end;
end;

procedure TfCadSeriais.UniFrameDestroy(Sender: TObject);
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

procedure TfCadSeriais.bAltNFClick(Sender: TObject);
begin
     Pasta.ActivePageIndex := 2;
     pNotas.Enabled := true;
     Notas.Edit;
     cNota.SetFocus;
end;

procedure TfCadSeriais.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].free;
end;

procedure TfCadSeriais.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bGravar.Enabled       := not Estado;
     pFicha.Enabled        := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadSeriais.UniFrameCreate(Sender: TObject);
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

      with Seriais do begin
           sql.clear;
           sql.add('select *');
           sql.add('from  ProdutosSeriais');
           sql.add('order by Produto, Processo, Tipo, Numero');
           open;
      end;
      with Produtos do begin
           sql.clear;
           sql.add('select Codigo, Descricao_Reduzida ');
           sql.add('from Produtos');
           sql.add('where isnull(Serial_Obrigatorio, 0) = 1');
           sql.add('order by Descricao, Descricao_Reduzida');
           open;
      end;
      with Processos do begin
           sql.clear;
           sql.add('select Processo, DI');
           sql.add('from ProcessosImp');
           sql.add('order by Processo');
           open;
      end;
      with Cores do begin
           sql.clear;
           sql.add('select *');
           sql.add('from Cores');
           sql.add('order by Nome');
           open;
      end;
      with CoresDENATRAN do begin
           sql.clear;
           sql.add('select *');
           sql.add('from CoresDENATRAN');
           sql.add('order by Nome');
           open;
      end;

      FiltraNotas;

      pNotas.Repaint;
end;

procedure TfCadSeriais.cNotaExit(Sender: TObject);
begin
     if trim(cNota.Text) <> '' then begin
        tRegistro.SQL.Clear;
        tRegistro.SQL.Add('select Nfe_Chave from Notas where Nota = :pNota');
        tRegistro.ParamByName('pNota').AsInteger := strtoint(cNota.Text);
        tRegistro.Open;
        Notas.FieldByName('Chave_NFe').Value := tRegistro.FieldByName('Nfe_Chave').Value;
     end;
end;

procedure TfCadSeriais.cPesquisaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
      if Key = VK_RETURN then begin
         bPesquisa.Click;
      end;
end;

procedure TfCadSeriais.FiltraNotas;
begin
      with Notas do begin
           sql.clear;
           sql.add('select Registro');
           sql.add('      ,Produto');
           sql.add('      ,Numero');
           sql.add('      ,Nota');
           sql.add('      ,Chave_NFE');
           sql.add('      ,Data');
           sql.add('      ,Saida_Entrada');
           sql.add('      ,Emissor');
           sql.add('from  ProdutosSeriaisNotas');
           sql.add('where Numero = :pNum');
           sql.add('order by Data, Saida_Entrada, Nota');
           ParamByName('pNum').AsString := trim(Seriais.FieldByName('Numero').AsString);
           open;
      end;
end;

procedure TfCadSeriais.bPesquisaClick(Sender: TObject);
begin
     Seriais.Cancel;
     Pesquisa(Seriais, 'ProdutosSeriais', 'Registro', 'Numero', cPesquisa.text)
end;

procedure TfCadSeriais.bSalvarNFClick(Sender: TObject);
begin
     if trim(cNota.Text) = '' then begin
        MessageDlg('Número da Nota Fiscal invalido!', mtError, [mbOK]);
        cNota.SetFocus;
        Abort;
     end;

     if Notas.State = dsInsert then begin
        tRegistro.sql.clear;
        tRegistro.sql.add('select isnull(max(Registro), 0)+1 as Reg from ProdutosSeriaisNotas');
        tRegistro.open;

        Notas.FieldByName('Registro').Value := tRegistro.fieldbyname('Reg').asinteger;
        Notas.FieldByName('Produto').Value  := Produtos.fieldbyname('Codigo').asinteger;
        Notas.FieldByName('Numero').Value   := Seriais.fieldbyname('Numero').asstring;

        Notas.post;
     end;
     pNotas.Enabled := false;
end;

procedure TfCadSeriais.ProdutosSeriaisBeforePost(DataSet: TDataSet);
begin
     LogDados(DataSet, DataSet.FieldByName('Numero').AsString, EstadoTabela(DataSet));
end;

procedure TfCadSeriais.ProdutosSeriaisBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Numero').AsString, 'Delete');
end;

procedure TfCadSeriais.SeriaisAfterScroll(DataSet: TDataSet);
begin
     FiltraNotas;
end;

end.
