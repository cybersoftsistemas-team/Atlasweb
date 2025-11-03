unit CadUsuarios;

interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, Data.DB, uniDBNavigator, uniPanel,
  FireDAC.Stan.Intf, uniComboBox, uniDBLookupComboBox, uniDBEdit, uniScrollBox, uniDBGrid, uniPageControl, uniSpeedButton, uniImage, Vcl.Dialogs, uniLabel, uniTreeView, Vcl.Imaging.jpeg,
  uniMainMenu, Vcl.ExtDlgs, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, Graphics, FireDAC.DatS, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniEdit, FireDAC.Phys.Intf, FireDAC.DApt.Intf, uniMultiItem, uniDBComboBox, uniBasicGrid, uniButton, uniBitBtn, uniSweetAlert, unimToggle, unimDBToggle, uniCheckBox, uniDBCheckBox;

type
  TfCadUsuarios = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    dsUsuarios: TDataSource;
    UniPanel1: TUniPanel;
    Pasta: TUniPageControl;
    aLista: TUniTabSheet;
    aFicha: TUniTabSheet;
    sFicha: TUniScrollBox;
    OpenPictureDialog1: TOpenPictureDialog;
    pFicha: TUniPanel;
    cNome: TUniDBEdit;
    cCargo: TUniDBEdit;
    cDepart: TUniDBEdit;
    cPswrd: TUniDBEdit;
    cMatricula: TUniDBEdit;
    cNivel: TUniDBLookupComboBox;
    bFoto: TUniSpeedButton;
    UniLabel1: TUniLabel;
    dsPermissoes: TDataSource;
    iFoto: TUniImage;
    tMenu: TUniTreeView;
    UniLabel3: TUniLabel;
    bSelTudo: TUniSpeedButton;
    bDesTudo: TUniSpeedButton;
    Navega: TUniDBNavigator;
    bAdicionar: TUniSpeedButton;
    bEditar: TUniSpeedButton;
    bExcluir: TUniSpeedButton;
    bCancelar: TUniSpeedButton;
    bSalvar: TUniSpeedButton;
    bFechar: TUniSpeedButton;
    bExpand: TUniSpeedButton;
    bRecolhe: TUniSpeedButton;
    dsNiveis: TDataSource;
    bRecarga: TUniSpeedButton;
    UniPanel2: TUniPanel;
    bPesquisa: TUniSpeedButton;
    cPesquisa: TUniEdit;
    Usuarios: TFDQuery;
    Permissoes: TFDQuery;
    Niveis: TFDQuery;
    Alerta: TUniSweetAlert;
    UniDBCheckBox1: TUniDBCheckBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure bAdicionarClick(Sender: TObject);
    procedure LigaBotoes(Estado:boolean);
    procedure bSalvarClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bFotoClick(Sender: TObject);
    procedure iFotoMouseEnter(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bSelTudoClick(Sender: TObject);
    procedure bDesTudoClick(Sender: TObject);
    procedure tMenuClick(Sender: TObject);
    procedure bExpandClick(Sender: TObject);
    procedure bRecolheClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure UsuariosBeforePost(DataSet: TDataSet);
    procedure UsuariosBeforeDelete(DataSet: TDataSet);
    procedure bPesquisaClick(Sender: TObject);
    procedure cMatriculaChangeValue(Sender: TObject);
  private
    { Private declarations }
    procedure SelNode(Node: TuniTreeNode; Sel:boolean);
    procedure PegaMenu(ItemMenu:TuniMenuItem; Nivel:integer; var node1:tuniTreeNode);
    procedure CarregaMenu;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, Funcoes;

procedure TfCadUsuarios.bCancelarClick(Sender: TObject);
begin
      Usuarios.Cancel;
      LigaBotoes(true);
end;

procedure TfCadUsuarios.bDesTudoClick(Sender: TObject);
var
    i:integer;
begin
     for i := 0 to pred(tMenu.Items.Count) do begin
         tMenu.Items[i].Checked := false;
     end;
end;

procedure TfCadUsuarios.bEditarClick(Sender: TObject);
begin
      LigaBotoes(false);
      Usuarios.Edit;
      cMatricula.SetFocus;
end;

procedure TfCadUsuarios.bExcluirClick(Sender: TObject);
begin
     with Usuarios do begin
          MessageDlg('Deseja realmente excluir este usuário?'+#13+#13+FieldByName('Nome').AsString, mtConfirmation,mbYesNo,
                      procedure(Comp:TComponent; ARes: Integer)
                      begin
                            if Ares = mrYes then begin
                               Permissoes.SQL.Clear;
                               Permissoes.SQL.Add('delete from UsuariosPermissoes where Matricula = :pMat');
                               Permissoes.ParamByName('pMat').AsString := FieldByName('Matricula').AsString;
                               Permissoes.Execute;
                               Permissoes.SQL.Clear;
                               Permissoes.SQL.Add('select * from UsuariosPermissoes where Matricula = :pMat');
                               Permissoes.ParamByName('pMat').AsString := FieldByName('Matricula').AsString;
                               Permissoes.Open;

                               Delete;
                               Alerta.Text := 'Registro excluído do banco de dados!';
                               Alerta.Execute;
                            end;
                      end);
     end;
end;

procedure TfCadUsuarios.bRecolheClick(Sender: TObject);
begin
     tMenu.FullCollapse;
end;

procedure TfCadUsuarios.bFecharClick(Sender: TObject);
begin
     MainForm.PagePrincipal.Pages[MainForm.PagePrincipal.ActivePageIndex].Free;
end;

procedure TfCadUsuarios.bFotoClick(Sender: TObject);
begin
     with Usuarios do begin
          if OpenPictureDialog1.Execute then begin
             FieldByName('Foto').AsString := OpenPictureDialog1.FileName;
             if fileexists(FieldByName('Foto').AsString) then
                iFoto.Picture.LoadFromFile(FieldByName('Foto').AsString);
          end;
     end;
end;

procedure TfCadUsuarios.bPesquisaClick(Sender: TObject);
begin
     Pesquisa(Usuarios, 'Usuarios', 'Matricula', 'Nome', cPesquisa.text);
end;

procedure TfCadUsuarios.bExpandClick(Sender: TObject);
begin
     tMenu.FullExpand
end;

procedure TfCadUsuarios.bSalvarClick(Sender: TObject);
var
   i:integer;
begin
     with Usuarios do begin
          if trim(cMatricula.Text) = '' then begin
             messagedlg('O número da "Matrícula" do usuário é campo obrigatório!', mtError, [mbok]);
             cMatricula.SetFocus;
             Abort;
          end;
          if trim(cNome.Text) = '' then begin
             messagedlg('O "Nome" do usuário é campo obrigatório!', mtError, [mbok]);
             cNome.SetFocus;
             Abort;
          end;
          if trim(cNivel.Text) = '' then begin
             messagedlg('O "Nível" do usuário é campo obrigatório!', mtError, [mbok]);
             cNivel.SetFocus;
             Abort;
          end;
          if (State = dsInsert) and ( Existe(Usuarios, 'Matricula', FieldByName('Matricula').AsString) ) then begin
             MessageDlg('Já existe um usúario cadastrado com esse número de matrícula !'+#13+#13, mtError, [mbOK]);
             cMatricula.SetFocus;
             Abort;
          end;

          try
              Post;
               Alerta.Text := 'Registro salvo no banco de dados!';
               Alerta.Execute;
          except
              MessageDlgN('Falha desconhecida, não pode salvar o registro corrente!', mtError, []);
          end;

          // Salva as permissões de usuário na tabela de permissões.
          try
              with Permissoes do begin
                   // Apaga as permissões existentes.
                   SQL.Clear;
                   SQL.Add('DELETE FROM UsuariosPermissoes WHERE Matricula = :pMat');
                   ParamByName('pMat').AsString := Usuarios.FieldByName('Matricula').AsString;
                   Execute;
                   SQL.Clear;
                   SQL.Add('SELECT * FROM UsuariosPermissoes WHERE Matricula = :pMat');
                   ParamByName('pMat').AsString := Usuarios.FieldByName('Matricula').AsString;
                   Open;

                   for i := 0 to tMenu.Items.Count-1 do begin
                       Append;
                             FieldByName('Matricula').Value := Usuarios.FieldByName('Matricula').Value;
                             FieldByName('Indice').Value    := i;
                             FieldByName('Permitido').Value := tMenu.Items[i].Checked;
                             FieldByName('Descricao').Value := tMenu.Items[i].Text;
                       Post;
                   end;
              end;
          except on E: Exception do
              Showmessage('Falha desconhecida, não pode salvar as permissões do usuário!'+E.Message);
          end;

          LigaBotoes(true);
     end;
end;

procedure TfCadUsuarios.iFotoMouseEnter(Sender: TObject);
begin
     with Usuarios do begin
          iFoto.Hint := FieldByName('Foto').AsString;
     end;
end;

procedure TfCadUsuarios.LigaBotoes(Estado:boolean);
begin
     Navega.Enabled        := Estado;
     bEditar.Enabled       := Estado;
     bExcluir.Enabled      := Estado;
     bAdicionar.Enabled    := Estado;
     bCancelar.Enabled     := not Estado;
     bSalvar.Enabled       := not Estado;
     pFicha.Enabled        := not Estado;
     Pasta.ActivePageIndex := 1;
end;

procedure TfCadUsuarios.tMenuClick(Sender: TObject);
begin
     SelNode(tMenu.Selected, tMenu.Selected.Checked);
end;

procedure TfCadUsuarios.SelNode(Node: TuniTreeNode; Sel:boolean);
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

procedure TfCadUsuarios.UniFrameCreate(Sender: TObject);
var
   i:integer;
begin
      // Alinhando todas as ficha de dados ao centro do form.
      for i := 0 to ComponentCount -1 do begin
          if Components[i] is TUniPanel then begin
             TuniPanel(Components[i]).Top   := 30;
             TuniPanel(Components[i]).Left  := (Pasta.Width - TuniPanel(Components[i]).Width) div 2;
             TuniPanel(Components[i]).Color := clNone;
          end;
      end;

      LigaBotoes(true);
      Pasta.ActivePageIndex := 0;

      Usuarios.Close;
      Usuarios.SQL.Clear;
      Usuarios.SQL.Add('select * from Usuarios order by Nome');
      Usuarios.Open;

      Niveis.SQL.Clear;
      Niveis.SQL.Add('select * from UsuariosNivel order by Descricao');
      Niveis.Open;

      Permissoes.SQL.Clear;
      Permissoes.SQL.Add('select * from UsuariosPermissoes');
      Permissoes.SQL.Add('order by Matricula, Indice');
      Permissoes.Open;
end;

procedure TfCadUsuarios.UniFrameDestroy(Sender: TObject);
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

procedure TfCadUsuarios.UsuariosBeforePost(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString, EstadoTabela(DataSet));
end;

procedure TfCadUsuarios.UsuariosBeforeDelete(DataSet: TDataSet);
begin
       LogDados(DataSet, DataSet.FieldByName('Nome').AsString,'Delete');
end;

procedure TfCadUsuarios.bSelTudoClick(Sender: TObject);
var
    i:integer;
begin
      for i := 0 to pred(tMenu.Items.Count) do begin
          tMenu.Items[i].Checked := true;
      end;
end;

procedure TfCadUsuarios.bAdicionarClick(Sender: TObject);
begin
      LigaBotoes(false);
      Usuarios.Append;
      cMatricula.SetFocus;
end;

procedure TfCadUsuarios.CarregaMenu;
var
   i:integer;
   Node:TuniTreeNode;
begin
    tMenu.Items.Clear;
    for i := 0 to MainForm.MenuPrincipal.Items.Count -2 do begin
        PegaMenu(MainForm.MenuPrincipal.Items[i], 0, node);
    end;
end;

procedure TfCadUsuarios.cMatriculaChangeValue(Sender: TObject);
//var
//   i:integer;
begin
     with Usuarios do begin
          if (Trim(FieldByName('Foto').AsString) <> '') and fileexists(FieldByName('Foto').AsString) then begin
             iFoto.Picture.LoadFromFile(FieldByName('Foto').AsString);
          end else begin
             iFoto.Picture := nil;
          end;

          if (Usuarios.State <> dsEdit) and (Usuarios.State <> dsinsert) then begin
             Permissoes.SQL.Clear;
             Permissoes.SQL.Add('select * from UsuariosPermissoes where Matricula = :pUsu');
             Permissoes.SQL.Add('order by Matricula, Indice');
             permissoes.ParamByName('pUsu').AsString := Usuarios.FieldByName('Matricula').AsString;
             Permissoes.Open;
             Permissoes.First;

             CarregaMenu;

             while not Permissoes.eof do begin
                   if Permissoes.FieldByName('Indice').asinteger <= Pred(tMenu.Items.Count) then begin
                      tMenu.Items[Permissoes.FieldByName('Indice').asinteger].Checked := Permissoes.FieldByName('Permitido').asboolean;
                   end;
                   Permissoes.next;
             end;
          end;
     end;
end;

//Para carregar todos os itens de menu em um treeview:
procedure TfCadUsuarios.PegaMenu(ItemMenu:TuniMenuItem; Nivel:integer; var node1:tuniTreeNode);
var
    i:integer;
    node2:Tunitreenode;
    s_str:string;
begin
      if Nivel = 0  then begin
         s_str := ItemMenu.Caption;
         Delete(s_str, Pos('&', ItemMenu.Caption), 1);
         node1 := tMenu.Items.Add(nil, s_str);
      end;
      for i := 0 to ItemMenu.Count-1 do begin
          if (ItemMenu.Items[i].Caption <> '-') then Begin
             s_str := ItemMenu.Items[i].Caption;
             Delete(s_str, Pos('&', ItemMenu.Items[i].Caption), 1);
             node2 := tMenu.Items.AddChild(node1,s_str);
          end;
          if ItemMenu.Items[I].Count > 0 then
             PegaMenu(ItemMenu.Items[i], Succ(Nivel), node2);
      end;
end;


end.




