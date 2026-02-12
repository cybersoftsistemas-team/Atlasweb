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
    cProduto: TUniNumberEdit;
    cDescricao: TUniMemo;
    gSeriais: TUniDBGrid;
    tSeriais: TFDQuery;
    dstSeriais: TDataSource;
    Alerta: TUniSweetAlert;
    cPesquisa: TUniEdit;
    bPesquisa: TUniSpeedButton;
    UniPanel2: TUniPanel;
    cQtdePerc: TUniFormattedNumberEdit;
    cQtde: TUniFormattedNumberEdit;
    cValor: TUniFormattedNumberEdit;
    procedure bPesquisaClick(Sender: TObject);
    procedure UniFormActivate(Sender: TObject);
    procedure gSeriaisSelectionChange(Sender: TObject);
    procedure bSalvarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure cPesquisaChange(Sender: TObject);
  private
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
    mProcesso: string;
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
     if cValor.value <= 0 then begin
        Alerta.Text := 'Valor inválido!';
        Alerta.Execute;
        abort;
     end;

     // Remove caracteres de controle da descrição do produto.
     mDescr := cDescricao.text;
     mDescr := stringreplace(mDescr, #13, '', [rfReplaceAll]);
     mDescr := stringreplace(mDescr, #12, '', [rfReplaceAll]);
     mDescr := stringreplace(mDescr, #10, '', [rfReplaceAll]);
     mDescr := stringreplace(mDescr, '<{'+Trim(cProduto.Text)+'}>', '', [rfReplaceAll]);
     cDescricao.Text := mDescr;
     if gSeriais.SelectedRows.Count > 0 then begin
        mDescr := mDescr + #13 + Trim(tSeriais.FieldByName('Tipo').AsString) + ': ';
        with tSeriais do begin
             first;
             while not eof do begin
                   mDescr := mDescr + trim(fieldbyname('Numero').AsString)+' ';
                   if trim(fieldbyname('Ano_Modelo').AsString) <> '' then begin
                      mDescr := mDescr + ' ANO/MODELO '+ FieldByName('Ano_Modelo').AsString+'/'+ FieldByName('Ano_Fabricacao').AsString;
                   end;
                   if Trim(FieldByName('Cor').AsString) <> '' then begin
                      mDescr := mDescr + ' COR: '+ FieldByName('Cor').AsString;
                   end;
                   if not eof then mDescr := mDescr + ', ';
                   next;
             end;
        end;
     end;
     fFatPedidoItensDUIMP.mDescricao := mDescr;
     close;
end;

procedure TfFatPedidoItensDUIMPItem.cPesquisaChange(Sender: TObject);
begin
     if trim(cPesquisa.Text) = '' then filtra;
     
end;

procedure TfFatPedidoItensDUIMPItem.bCancelarClick(Sender: TObject);
begin
    close;
end;

procedure TfFatPedidoItensDUIMPItem.bPesquisaClick(Sender: TObject);
begin
    filtra; 
end;

procedure TfFatPedidoItensDUIMPItem.gSeriaisSelectionChange(Sender: TObject);
begin
     cQtde.Value := gSeriais.SelectedRows.Count;
end;

procedure TfFatPedidoItensDUIMPItem.Filtra;
begin
     with tSeriais do begin
          sql.Clear;
          sql.Add('select *');
          sql.Add('from ProdutosSeriais');
          sql.Add('where Produto = :pProduto');
          sql.Add('and Processo = :pProcesso');
          if cPesquisa.Text <> '' then begin
             sql.Add('and Numero like '+quotedstr('%'+cPesquisa.Text+'%'));
          end   ;
          parambyname('pProduto').value  :=  cProduto.Value;
          parambyname('pProcesso').value :=  mProcesso;
          open;
     end;
end;

procedure TfFatPedidoItensDUIMPItem.UniFormActivate(Sender: TObject);
begin
     {
     with tSeriais do begin
          sql.clear;
          sql.add('select Tipo');
          sql.add('      ,Numero');
          sql.add('      ,Cor = (select Nome from Cores where Codigo = Cor)');
          sql.add('      ,Ano_Fabricacao');
          sql.add('      ,Ano_Modelo');
          sql.add('      ,Cor_DENATRAN');
          sql.add('from ProdutosSeriais');
//          sql.add('where Produto = :pProduto');
//          sql.add('and Processo = :pProcesso');
//          sql.add('and Disponivel = 1');
          sql.add('order by Processo');
//          parambyname('pProduto').value  :=  cProduto.Value;
//          parambyname('pProcesso').value :=  mProcesso;
          open;
     end;
     }
     Filtra;
     cQtdePerc.SetFocus;
end;

end.
