unit FatPedidoItensDUIMPItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniSpeedButton, uniPanel, uniDBEdit, uniMemo, uniDBMemo, uniGUIBaseClasses, uniEdit, uniBasicGrid, uniDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniLabel, uniSweetAlert;

type
  TfFatPedidoItensDUIMPItem = class(TUniForm)
    UniPanel3: TUniPanel;
    bSalvar: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    uniPanel1: TUniPanel;
    gSeriais: TUniDBGrid;
    tSeriais: TFDQuery;
    dstSeriais: TDataSource;
    Alerta: TUniSweetAlert;
    UniPanel2: TUniPanel;
    cQtdePerc: TUniFormattedNumberEdit;
    cQtde: TUniFormattedNumberEdit;
    cValor: TUniFormattedNumberEdit;
    gItens: TUniDBGrid;
    UniPanel4: TUniPanel;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    tSeriaisPed: TFDQuery;
    dstSeriaisPed: TDataSource;
    bAdicionar: TUniSpeedButton;
    bRemover: TUniSpeedButton;
    ttmp: TFDQuery;
    procedure bPesquisaClick(Sender: TObject);
    procedure UniFormActivate(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure bRemoverClick(Sender: TObject);
    procedure gItensRecordCount(Sender: TUniDBGrid; var RecCount: Integer);
  private
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
    mProcesso: string;
    mDescricao: widestring;
    mPedido
   ,mProduto: integer;
  end;

function fFatPedidoItensDUIMPItem: TfFatPedidoItensDUIMPItem;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, FatPedidoItensDUIMP, Funcoes;

function fFatPedidoItensDUIMPItem: TfFatPedidoItensDUIMPItem;
begin
    Result := TfFatPedidoItensDUIMPItem(UniMainModule.GetFormInstance(TfFatPedidoItensDUIMPItem));
end;

procedure TfFatPedidoItensDUIMPItem.bSalvarClick(Sender: TObject);
var
   mDescr: widestring;
begin
     if (cQtdePerc.value <= 0) and (cQtde.value <= 0) then begin
        Alerta.Text := 'Quantidade inválida!';
        Alerta.Execute;
        abort;
     end;
     
     // Remove caracteres de controle da descrição do produto e adiciona os numeros de Chassi/Serial selecionados.
     mDescr := mDescricao;
     mDescr := stringreplace(mDescr, #13, '', [rfReplaceAll]);
     mDescr := stringreplace(mDescr, #12, '', [rfReplaceAll]);
     mDescr := stringreplace(mDescr, #10, '', [rfReplaceAll]);
     mDescr := stringreplace(mDescr, '<{'+Trim(inttostr(mProduto))+'}>', '', [rfReplaceAll]);
     with tSeriaisPed do begin
          with ttmp do begin 
               sql.clear;
               sql.Add('delete from PedidosNFItens where Pedido = :pPedido and Codigo_Mercadoria = :pCodigo');
               parambyname('pPedido').Value := mPedido;
               parambyname('pCodigo').Value := mProduto;
               execute;
          end;
          if recordcount > 0 then begin
             mDescr := mDescr + #13 + Trim(fieldbyname('Tipo').AsString) + ': ';
             first;
             while not eof do begin
                   mDescr := mDescr + trim(fieldbyname('Numero').AsString)+' ';
                   if trim(fieldbyname('Ano_Modelo').AsString) <> '' then begin
                      mDescr := mDescr + ' ANO/MODELO '+ FieldByName('Ano_Modelo').AsString+'/'+ FieldByName('Ano_Fabricacao').AsString;
                   end;
                   if Trim(FieldByName('Cor').AsString) <> '' then begin
                      mDescr := mDescr + ' COR: '+ FieldByName('Cor').AsString;
                   end;
                   if not eof then mDescr := mDescr + ' | ';
                   next;
             end;
          end;
     end;
     fFatPedidoItensDUIMP.mDescricao       := mDescr;
     fFatPedidoItensDUIMP.SelSerial        := true;
     fFatPedidoItensDUIMP.mValorInformado  := cValor.Value;
     fFatPedidoItensDUIMP.mQtdeInformado   := cQtde.Value;
     close;
end;

procedure TfFatPedidoItensDUIMPItem.cPesquisaChange(Sender: TObject);
begin
     if trim(cPesquisa.Text) = '' then filtra;
end;

procedure TfFatPedidoItensDUIMPItem.bAdicionarClick(Sender: TObject);
var
  i: integer;
begin
     // Marca o serial como utilizado.
     with gSeriais do begin
          if SelectedRows.Count > 0 then begin
             for i := 0 to pred(SelectedRows.Count) do begin
                 DataSource.DataSet.GotoBookMark((SelectedRows.Items[i]));
                 tSeriais.Edit;
                          tSeriais.fieldbyname('Pedido').Value := mPedido;
                 tSeriais.Post;
             end;
             JSInterface.JSCall('getSelectionModel().deselectAll', []);
          end else begin
             Alerta.Text := 'Nenhum Serial/Chassi selecionado para adicionar!';
             Alerta.Execute;
          end;
     end;
     Filtra;
end;

procedure TfFatPedidoItensDUIMPItem.bCancelarClick(Sender: TObject);
begin
    fFatPedidoItensDUIMP.SelSerial := false;
    close;
end;

procedure TfFatPedidoItensDUIMPItem.bPesquisaClick(Sender: TObject);
begin
    Filtra; 
end;

procedure TfFatPedidoItensDUIMPItem.bRemoverClick(Sender: TObject);
var
  i: integer;
begin
      with gItens do begin
           if SelectedRows.Count > 0 then begin
              for i := 0 to pred(SelectedRows.Count) do begin
                  DataSource.DataSet.GotoBookMark((SelectedRows.Items[i]));
                  tSeriaisPed.Edit;
                              tSeriaisPed.fieldbyname('Pedido').Value := null;
                  tSeriaisPed.Post;
              end;
              JSInterface.JSCall('getSelectionModel().deselectAll', []);
           end;
      end;
      Filtra;
end;

procedure TfFatPedidoItensDUIMPItem.Filtra;
begin
     with tSeriais do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from ProdutosSeriais');
          sql.Add('where Produto = :pProduto');
          sql.Add('and Processo = :pProcesso');
          sql.Add('and isnull(Pedido, 0) = 0');
          sql.Add('and isnull(Disponivel, 0) = 1');
          if cPesquisa.Text <> '' then begin
             sql.Add('and Numero like '+quotedstr('%'+cPesquisa.Text+'%'));
          end   ;
          parambyname('pProduto').value  := mProduto;
          parambyname('pProcesso').value := mProcesso;
          //sql.savetofile('c:\temp\tSeriais.sql');
          open;
     end;
     with tSeriaisPed do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from ProdutosSeriais');
          sql.Add('where Produto = :pProduto');
          sql.Add('and isnull(Pedido, 0) = :pPedido');
          sql.Add('and Processo = :pProcesso');
          parambyname('pProduto').value  := mProduto;
          parambyname('pProcesso').value := mProcesso;
          parambyname('pPedido').value   := mPedido;
          open;
     end;
end;

procedure TfFatPedidoItensDUIMPItem.gItensRecordCount(Sender: TUniDBGrid; var RecCount: Integer);
begin
     cQtde.Value       := tSeriaisPed.recordcount;
     cQtdePerc.Enabled := tSeriaisPed.recordcount = 0;
     cQtde.Enabled     := tSeriaisPed.recordcount = 0;
end;

procedure TfFatPedidoItensDUIMPItem.UniFormActivate(Sender: TObject);
begin
     Filtra;
     cQtdePerc.SetFocus;
end;

end.
