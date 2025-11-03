unit ConfigAtalhos;

interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, Data.DB, uniDBNavigator, uniPanel,
  FireDAC.Stan.Intf, uniComboBox, uniDBLookupComboBox, uniDBEdit, uniScrollBox, uniDBGrid, uniPageControl, uniSpeedButton, uniImage, Vcl.Dialogs, uniLabel, uniTreeView, Vcl.Imaging.jpeg,
  uniMainMenu, Vcl.ExtDlgs, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, Graphics, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniEdit, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMultiItem, uniDBComboBox, uniBasicGrid, uniButton, uniBitBtn, uniSweetAlert, unimToggle, unimDBToggle, uniCheckBox, uniDBCheckBox, uniMemo, uniTreeMenu;

type
  TfConfigAtalhos = class(TUniFrame)
    dsAtalhos: TDataSource;
    Atalhos: TFDQuery;
    Alerta: TUniSweetAlert;
    sFicha: TUniScrollBox;
    pFicha: TUniPanel;
    tMenu: TUniTreeView;
    UniPanel3: TUniPanel;
    bSelTudo: TUniSpeedButton;
    bDesTudo: TUniSpeedButton;
    bExpand: TUniSpeedButton;
    bRecolhe: TUniSpeedButton;
    bRecarga: TUniSpeedButton;
    bCriarAtalhos: TUniButton;
    bFechar: TUniSpeedButton;
    TabMenu: TFDQuery;
    dstMenu: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bSelTudoClick(Sender: TObject);
    procedure bDesTudoClick(Sender: TObject);
    procedure tMenuClick(Sender: TObject);
    procedure bExpandClick(Sender: TObject);
    procedure bRecolheClick(Sender: TObject);
    procedure AtalhosBeforePost(DataSet: TDataSet);
    procedure bCriarAtalhosClick(Sender: TObject);
  private
    { Private declarations }
    procedure SelNode(Node: TuniTreeNode; Sel:boolean);
    procedure PegaMenu(ItemMenu:TuniMenuItem; Nivel:integer; var node1:tuniTreeNode);
    procedure CarregaMenu;
    procedure SalvaAtalhos;
  public
    { Public declarations }
    Lista: TStringList;    
  end;

implementation

{$R *.dfm}

uses MainModule, Main, Funcoes;

procedure TfConfigAtalhos.bDesTudoClick(Sender: TObject);
var
    i:integer;
begin
     for i := 0 to pred(tMenu.Items.Count) do begin
         tMenu.Items[i].Checked := false;
     end;
end;

procedure TfConfigAtalhos.bRecolheClick(Sender: TObject);
begin
     tMenu.FullCollapse;
end;

procedure TfConfigAtalhos.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfConfigAtalhos.bExpandClick(Sender: TObject);
begin
     tMenu.FullExpand
end;

procedure TfConfigAtalhos.tMenuClick(Sender: TObject);
begin
     SelNode(tMenu.Selected, tMenu.Selected.Checked);
end;

procedure TfConfigAtalhos.SelNode(Node: TuniTreeNode; Sel:boolean);
var
   x: integer;
begin
     if Node.Count > 0 then begin
        for x := 0 to Node.Count - 1 do begin
            Node.Item[x].Checked := Sel;
            SelNode(Node.Item[x], Sel);
        end;
     end;
end;

procedure TfConfigAtalhos.bCriarAtalhosClick(Sender: TObject);
begin
      SalvaAtalhos;
      bFechar.Tag := 1;
end;

procedure TfConfigAtalhos.UniFrameCreate(Sender: TObject);
var
   i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      Lista        := TStringList.create;
      pFicha.Top   := 30;
      pFicha.Left  := (sFicha.Width - pFicha.Width) div 2;
      pFicha.Color := clNone;
      
      CarregaMenu;
      bExpandClick(self);

      // Seleciona as opções adicionadas anteriormente.
      with Atalhos do begin
           sql.clear;
           sql.add('select * from Atalhos where Usuario = :pUsuario');
           parambyname('pUsuario').asstring := UniMainModule.mUsuarioAtivo;
           open;
           first;
           while not eof do begin
                 tMenu.Items[fieldbyname('Ordem').asinteger].Checked := true;
                 next;
           end;
      end;
end;

procedure TfConfigAtalhos.UniFrameDestroy(Sender: TObject);
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

procedure TfConfigAtalhos.AtalhosBeforePost(DataSet: TDataSet);
begin
      LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfConfigAtalhos.bSelTudoClick(Sender: TObject);
var
    i:integer;
begin
      for i := 0 to pred(tMenu.Items.Count) do begin
          tMenu.Items[i].Checked := true;
      end;
end;

procedure TfConfigAtalhos.CarregaMenu;
var
   i:integer;
   Node:TuniTreeNode;
begin
    tMenu.Items.Clear;
    for i := 0 to pred(MainForm.MenuPrincipal.Items.Count) do begin
        PegaMenu(MainForm.MenuPrincipal.Items[i], 0, node);
    end;
end;

//Para carregar todos os itens de menu em um treeview:
procedure TfConfigAtalhos.PegaMenu(ItemMenu:TuniMenuItem; Nivel:integer; var node1:tuniTreeNode);
var
    i:integer;
    node2:Tunitreenode;
    s_str, Nome:string;
begin
      if Nivel = 0  then begin
         s_str := ItemMenu.Caption;
         Delete(s_str, Pos('&', ItemMenu.Caption), 1);
         node1 := tMenu.Items.Add(nil, s_str);
         Lista.Add(inttostr(ItemMenu.Tag));
      end;
      for i := 0 to pred(ItemMenu.Count) do begin
          if ItemMenu.Items[i].Caption <> '-' then Begin
             s_str := ItemMenu.Items[i].Caption;
             Delete(s_str, Pos('&', ItemMenu.Items[i].Caption), 1);
             node2 := tMenu.Items.AddChild(node1,s_str);
             Lista.Add(inttostr(ItemMenu.Items[i].Tag));
          end;
          if ItemMenu.Items[i].Count > 0 then begin
             PegaMenu(ItemMenu.Items[i], Succ(Nivel), node2);
          end;
      end;
end;

Procedure TfConfigAtalhos.SalvaAtalhos;
var 
  i
 ,wlcont
 ,qtde: integer; 
  script: widestring;
begin
      with Atalhos do begin
           try 
               script := '';
               qtde   := MainForm.pAtalhos.Width div 56;    // Quantidade de icones que caberão na barrao de atalhos.
               wlcont := 1;
               for i := 0 to pred(tMenu.Items.Count) do begin
                   if wlcont <= qtde then begin
                      if tMenu.Items[i].Checked then begin
                         with TabMenu do begin
                              sql.clear;
                              sql.add('select * from MenuPrincipal where id = '+Lista[i]);                           
                              open;
                         end;
                         if TabMenu.RecordCount > 0 then begin
                            script := concat(script,
                                             '(',
                                             quotedstr(UniMainModule.mUsuarioAtivo),
                                             ',', Lista[i],
                                             ',', inttostr(tMenu.Items[i].Id),
                                             ',', quotedstr(tMenu.Items[i].Text),
                                             ',',
                                             quotedstr('\erp_importa\files\'+TabMenu.fieldbyname('Form').asstring+'.png'),
                                             ',',
                                             quotedstr(TabMenu.fieldbyname('Form').asstring),
                                             ',',
                                             quotedstr(TabMenu.fieldbyname('Titulo').asstring),
                                             '),'
                                             );
                            inc(wlcont);
                         end;
                      end;
                   end;
               end;
               script := copy(script, 1, length(script)-1);
               sql.clear;
               sql.add('delete from Atalhos where Usuario = :pUsuario');
               parambyname('pUsuario').asstring := UniMainModule.mUsuarioAtivo;
               execute;
               sql.clear;
               sql.add('insert into Atalhos (Usuario, id, Ordem, Nome, Icone, Form, Titulo) values '+script);
               //sql.SaveToFile('c:\temp\Atalhos_Script.sql');
               execute;
           
               Alerta.Text := 'Atalhos criados com sucesso,é necessário reiniciar a aplicação!';
           except 
               Alerta.AlertType := atError;
               Alerta.Text := 'Erro, não pode criar os Atalhos !';
           end;
      end;
      Alerta.Execute;
end;


end.
