unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniPageControl,
  uniGUIFrame, Vcl.Imaging.pngimage, uniImage, Vcl.Imaging.jpeg, uniImageList, uniTreeView, uniTreeMenu, uniMainMenu, Vcl.Menus, uniLabel, uniScrollBox, uniEdit, Funcoes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniScreenMask, 
  System.Generics.Collections, uniSweetAlert, uniButton, uniBitBtn, uniSpeedButton;

type
  TMainForm = class(TUniForm)
    ImgMenu: TUniNativeImageList;
    unipane: TUniContainerPanel;
    PagePrincipal: TUniPageControl;
    pInicio: TUniTabSheet;
    ScrollPrincipal: TUniScrollBox;
    pTitulo: TUniPanel;
    pUser: TUniPanel;
    lUser: TUniLabel;
    pFoto: TUniPanel;
    iFoto: TUniImage;
    lEmpresa: TUniLabel;
    UniPanel1: TUniPanel;
    iLogoEmpresa: TUniImage;
    tEmpresas: TFDQuery;
    UniScreenMask1: TUniScreenMask;
    Alerta: TUniSweetAlert;
    UniScreenMask2: TUniScreenMask;
    pAtalhos: TUniContainerPanel;
    pMenu: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    cPesquisa: TUniEdit;
    Menu: TUniTreeMenu;
    UniPanel3: TUniPanel;
    bFecharTodos: TUniButton;
    bMudarEmpresa: TUniButton;
    bMenu: TUniButton;
    TabMenu: TFDQuery;
    dstMenu: TDataSource;
    MenuPrincipal: TUniMenuItems;
    iLogoAtlas: TUniImage;
    iLogoCyber: TUniImage;
    UniButton1: TUniButton;
    lVersao: TUniLabel;
    procedure cPesquisaChange(Sender: TObject);
    procedure mnSairClick(Sender: TObject);
    procedure bFecharTodosClick(Sender: TObject);
    procedure bMenuClick(Sender: TObject);
    procedure bMudarEmpresaClick(Sender: TObject);
    procedure botao_Atalho(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure mnComexOrdemCompraClick(Sender: TObject);
  private
    { Private declarations }
    procedure CriaAba(nFrame: TuniFrame; dFrame: string; Fechar: Boolean);
    procedure CriaMenu(l_menu: TuniMenuItems);
    procedure MenuClick(Sender: TObject);
  public
    { Public declarations }
     mid:integer;
    end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars
 ,MainModule
 ,uniGUIApplication
 ,Login
 ,CadEmpresas
 ,CadUsuarios
 ,CadPaises
 ,CadMunicipios
 ,CadDestinatarios
 ,CadServicos
 ,CadAlugueis
 ,CadTiposDocumentos
 ,CadRamoAtividade
 ,CadNivelPlanoFinanceiro
 ,CadDREGrupos
 ,CadDRE
 ,CadCentroCusto
 ,CadBancos
 ,CadPlanoContas
 ,CadOrigemContas
 ,ConfigSis
 ,ConfigAtalhos
 ,CadModalidadesPagamento
 ,CadMoedas
 ,CadCotacao
 ,CadComissoes
 ,CadRecursos
 ,CadIncoterms
 ,CadModalidadesImportacao
 ,CadLocaisDesembaraco
 ,CadCondicaoCambial
 ,CadEstados
 ,CadTributos
 ,CadNCM
 ,CadProdutos
 ,CadSeriais
 ,CadDetalhes
 ,CadProdutosDetalhes
 ,CadProdutosLotes
 ,CadProdutosMateriaPrima
 ,CadPlanoContasECF
 ,CadHistoricoPadrao
 ,CadCFOP
 ,CadBeneficiosFiscais
 ,CadConsultaCST
 ,CadCodigosRFB
 ,CadTabelaPISCOFINS
 ,CadUnidadeMedida
 ,CadTipoProduto
 ,CadCores
 ,CadProdutosLinhas
 ,Financeiro
 ,CadTabelaComissoes
 ,CadLancamentoPadrao
 ,FinSolicitacaoNumerario
 ,CtbLancamentos
 ,Fiscal_BloquearPeriodo
 ,Contab_BloquearPeriodo
 ,CadOperacaoFiscal
 ,ComexProcessoImp
 ,LogisticaContainer
 ,DespRegistroDUIMP
 ,FatPedidoNF
 ,CadDREContabil
 ,CadNavios
 ,Embarques
 ,ConfigCampos
 ,Estoque_SaldoAbertura
 ,DUIMP
 ,ComexPO
 ,ComexPOImportar;(*uses p/gerador*)

function MainForm: TMainForm;
begin
    Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.cPesquisaChange(Sender: TObject);
var
   i:integer;
   a:boolean;
begin
     if trim(cPesquisa.Text) <> '' then begin
        a := false;
        for i := 0 to Pred(Menu.Items.Count) do begin
            if Copy(AnsiUpperCase(RemoveAcentos(Menu.Items[i].Text)), 1, Length(cPesquisa.Text)) = AnsiUpperCase(cPesquisa.Text) then begin
               Menu.Selected := Menu.Items[i];
               a := true;
               Break;
            end;
        end;
        if not a then begin
           for i := 0 to Pred(Menu.Items.Count) do begin
               if pos(AnsiUpperCase(RemoveAcentos(cPesquisa.Text)), AnsiUpperCase(RemoveAcentos(Menu.Items[i].Text))) > 0 then begin
                  Menu.Selected := Menu.Items[i];
                  Break;
               end;
           end;
        end;
     end;
end;

procedure TMainForm.CriaAba(nFrame: TuniFrame; dFrame: string; Fechar: Boolean);
var
    TabSheet: TUniTabSheet;
    FCurrentFrame: TUniframe;
    i: integer;
begin
      PagePrincipal.Visible := True;
      //Verificando se a tela já está aberta e redireciona a ela.
      for i := 0 to PagePrincipal.PageCount - 1 do begin
          with PagePrincipal do begin
               if Pages[i].Caption = dFrame  then begin
                  PagePrincipal.ActivePageIndex := i;
                  Exit;
               end;
          end;
      end;
      TabSheet             := TUniTabSheet.Create(Self);
      TabSheet.PageControl := PagePrincipal;
      TabSheet.Caption     := dFrame;
      TabSheet.Closable    := Fechar;
      FCurrentFrame := TUniframeClass(nFrame).Create(Self);
      with FCurrentFrame do begin
           Align  := alClient;
           Parent := TabSheet;
      end;
      Refresh;
      PagePrincipal.ActivePage := TabSheet;
end;

procedure TMainForm.mnSairClick(Sender: TObject);
begin
     Close;
end;

// Fecha todas as abas abertas.
procedure TMainForm.bFecharTodosClick(Sender: TObject);
var
   i:integer;
begin
     with PagePrincipal do begin
          if PageCount > 1 then begin
             for i := Pred(PageCount) downto 1 do begin
                 MainForm.PagePrincipal.Pages[i].Free;
             end;
             ActivePageIndex := 0;
             Refresh;
             Alerta.Text := 'Todas as abas foram fechadas!';
             Alerta.Execute;
          end;
     end;
end;

procedure TMainForm.bMenuClick(Sender: TObject);
begin
     Menu.Micro := not Menu.Micro;
     if Menu.Micro then
        pMenu.Width := bMenu.Width
     else
        pMenu.Width := 350;
end;

procedure TMainForm.bMudarEmpresaClick(Sender: TObject);
begin
     uniscreenMask1.DisplayMessage := 'Aguarde...Fechando todas as Abas';
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
     fDUIMP.ShowModal;
end;
{
procedure TMainForm.UniFormBeforeShow(Sender: TObject);
var
   bAtalho: TuniImage;
   Atalhos: TFDQuery;
   mPath  : string;
begin
     // Carrega os atalhos selecionados.
     lVersao.Caption := 'Versão '+VersaoEXE(Application.ExeName);
     mPath           := GetDLLPath+'files\';
     Atalhos         := TFDQuery.Create(nil);
     with Atalhos do begin
          Connection := UniMainModule.Conecta;
          sql.clear;
          sql.add('select * from Atalhos where Usuario = :pUsuario');
          parambyname('pUsuario').asstring := UniMainModule.mUsuarioAtivo;
          open;
          first;
          while not eof do begin
                bAtalho := TuniImage.Create(self);
                with bAtalho do begin
                     Parent           := MainForm.pAtalhos;
                     visible          := true;
                     width            := 45;
                     Caption          := fieldbyname('Titulo').asstring;
                     Name             := fieldbyname('Form').asstring;
                     ImageIndex       := 21;
                     align            := alLeft;
                     AlignWithMargins := true;
                     center           := true;
                     FitWidth         := true;
                     Enabled          := true;
                     stretch          := true;
                     Cursor           := crHandPoint;
                     tag              := fieldbyname('Id').asinteger;
                     hint             := fieldbyname('Titulo').asstring;
                     ShowHint         := true;
                     if fileexists(fieldbyname('Icone').asstring) then begin
                        Picture.LoadFromFile(fieldbyname('Icone').asstring);
                     end else begin
                        Picture.LoadFromFile(mpath+'images\icones\Atalho0b.png');
                     end;
                     OnClick := MainForm.Botao_Atalho;
                end;
                next;
          end;
     end;
     freeandnil(Atalhos);
end;
}
procedure TMainForm.UniFormBeforeShow(Sender: TObject);
var
   bAtalho: TuniImage;
   Atalhos: TFDQuery;
   mPath  : string;
begin
     // Carrega os atalhos selecionados.
     lVersao.Caption := 'Versão '+VersaoEXE(Application.ExeName);
     mPath           := GetDLLPath+'files\';
     Atalhos         := TFDQuery.Create(nil);
     with Atalhos do begin
          Connection := UniMainModule.Conecta;
          sql.clear;
          sql.add('select * from Atalhos where Usuario = :pUsuario');
          parambyname('pUsuario').asstring := UniMainModule.mUsuarioAtivo;
          open;
          first;
          while not eof do begin
                bAtalho := TuniImage.Create(self);
                with bAtalho do begin
                     Parent           := MainForm.pAtalhos;
                     visible          := true;
                     width            := 45;
                     Caption          := fieldbyname('Titulo').asstring;
                     Name             := fieldbyname('Form').asstring;
                     ImageIndex       := 21;
                     align            := alLeft;
                     AlignWithMargins := true;
                     center           := true;
                     FitWidth         := true;
                     Enabled          := true;
                     stretch          := true;
                     Cursor           := crHandPoint;
                     tag              := fieldbyname('Id').asinteger;
                     hint             := fieldbyname('Titulo').asstring;
                     ShowHint         := true;
                     if fileexists(fieldbyname('Icone').asstring) then begin
                        Picture.LoadFromFile(fieldbyname('Icone').asstring);
                     end else begin
                        Picture.LoadFromFile(mpath+'images\icones\Atalho0b.png');
                     end;
                     OnClick := MainForm.Botao_Atalho;
                end;
                next;
          end;
     end;
     freeandnil(Atalhos);
end;

procedure TMainForm.botao_Atalho(Sender: TObject);
var
   frameClass: TClass;
begin
     FrameClass := FindClass((Sender as TUniImage).Name);
     CriaAba(TuniFrame(FrameClass), (Sender as TUniImage).Caption, true);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
     CriaMenu(MenuPrincipal);
end;

procedure TMainForm.CriaMenu(l_menu: TuniMenuItems);
var
  MenuItemList: TDictionary<Integer, TUniMenuItem>;
  MenuItem: TUniMenuItem;
  ParentMenuItem: TUniMenuItem;
begin
     MenuItemList := TDictionary<Integer, TUniMenuItem>.Create;
     with Tabmenu do begin
          sql.clear;
          sql.add('select * from MenuPrincipal order by id, ParentID');
          open;
          first;
          try
             // Pega os itens da tabela.
             while not Eof do begin
                   // Criar o item do menu.
                   MenuItem         := TUniMenuItem.Create(Self);
                   MenuItem.Caption := FieldByName('Caption').AsString;
                   MenuItem.Tag     := FieldByName('ID').AsInteger;
                   MenuItem.Hint    := FieldByName('Form').AsString;
                   MenuItem.Name    := FieldByName('Nome').AsString;
                   // Associar um evento, se existir nome do frame informado.
                   MenuItem.ImageIndex := iif(FieldByName('Icone').isnull, -1, FieldByName('Icone').AsInteger);
                   if (not FieldByName('Form').isnull) and (fieldByName('Nome').AsString <> 'mnSair') then begin
                      MenuItem.OnClick := MenuClick;
                   end;
                   if fieldByName('Nome').asstring = 'mnSair' then begin
                      MenuItem.OnClick := mnSairClick; 
                   end;
                   // Encontrar o pai, se houver.
                   if not FieldByName('ParentID').IsNull then begin
                      ParentMenuItem := MenuItemList[FieldByName('ParentID').AsInteger];
                      if Assigned(ParentMenuItem) then
                         ParentMenuItem.Add(MenuItem);
                   end else begin
                      MenuPrincipal.Items.Add(MenuItem);
                   end;
                   // Adicionar ao dicionário.
                   MenuItemList.Add(FieldByName('ID').AsInteger, MenuItem);
                   Next;
             end;
          finally
             MenuItemList.Free;
          end;
     end;
end;

procedure TMainForm.MenuClick(Sender: TObject);
var
  FrameClass: TClass;
  Titulo: string;
begin
     // Localizar a classe registrada pelo nome.
     FrameClass := FindClass((Sender as TWebTreeMenuNode).AttachedMenuItem.Hint);
     with Tabmenu do begin
          sql.clear;
          sql.add('select * from MenuPrincipal where id = :pid');
          parambyname('pid').value := (Sender as TWebTreeMenuNode).AttachedMenuItem.tag;
          open;
          if FrameClass.InheritsFrom(TUniFrame) then begin
             CriaAba(TuniFrame(FrameClass), fieldbyname('Titulo').asstring, true);
          end;
     end;
end;
                                                              
procedure TMainForm.mnComexOrdemCompraClick(Sender: TObject);
begin
//     CriaAba(TFrame(TfComexPO),'Purchase Order (PO)', true);
end;

initialization
  RegisterAppFormClass(TMainForm);

  (* Devem ser registrados aqui todos os frames que serão chamados pelo menu principal *)
  RegisterClass(TfCadEmpresas); 
  RegisterClass(TfCadUsuarios); 
  RegisterClass(TfCadPaises); 
  RegisterClass(TfCadMunicipios);
  RegisterClass(TfCadDestinatarios);
  RegisterClass(TfCadServicos);
  RegisterClass(TfCadAlugueis);
  RegisterClass(TfCadTiposDocumentos);
  RegisterClass(TfCadRamoAtividade);
  RegisterClass(TfCadNivelClassificacao);
  RegisterClass(TfCadPlanoContas);
  RegisterClass(TfCadDREGrupos);
  RegisterClass(TfCadDRE);
  RegisterClass(TfCadCentroCusto);
  RegisterClass(TTelaLogin);
  RegisterClass(TfCadBancos);
  RegisterClass(TfCadOrigemContas);
  RegisterClass(TfConfigSis);
  RegisterClass(TfCadModalidadesPagamento);
  RegisterClass(TfCadMoedas);
  RegisterClass(TfCadCotacao);
  RegisterClass(TfCadComissoes);
  RegisterClass(TfCadRecursos);
  RegisterClass(TfCadIncoterms);
  RegisterClass(TfCadModalidadesImportacao);
  RegisterClass(TfCadLocaisDesembaraco);
  RegisterClass(TfCadCondicaoCambial);
  RegisterClass(TfCadEstados);
  RegisterClass(TfCadProdutos);
  RegisterClass(TfCadTributos);
  RegisterClass(TfCadNCM);
  RegisterClass(TfCadSeriais);
  RegisterClass(TfCadDetalhes);
  RegisterClass(TfCadProdutosDetalhes);
  RegisterClass(TfCadProdutosLotes);
  RegisterClass(TfCadProdutosMateriaPrima);
  RegisterClass(TfCadHistoricoPadrao);
  RegisterClass(TfCadCFOP);
  RegisterClass(TfCadBeneficiosFiscais);
  RegisterClass(TfCadConsultaCST);
  RegisterClass(TfCadCodigosRFB);
  RegisterClass(TfCadTabelaPISCOFINS);
  RegisterClass(TfCadUnidadeMedida);
  RegisterClass(TfCadTipoProduto);
  RegisterClass(TfCadCores);
  RegisterClass(TfCadProdutosLinhas);
  RegisterClass(TfCadDREContabil);
  RegisterClass(TfFinanceiro);
  RegisterClass(TfCadLancamentoPadrao);
  RegisterClass(TfFinSolicitacaoNumerario);
  RegisterClass(TfCtbLancamentos);
  RegisterClass(TfFiscal_BloquearPeriodo);
  RegisterClass(TfContab_BloquearPeriodo);
  RegisterClass(TfCadOperacaoFiscal);
  RegisterClass(TfComexProcessoImp);
  RegisterClass(TfConfigAtalhos);
  RegisterClass(TfDespRegistroDUIMP);
  RegisterClass(TfFatPedidoNF);
  RegisterClass(TfCadNavios);
  RegisterClass(TfEmbarques);
  RegisterClass(TfConfigCampos);
  RegisterClass(TfEstoque_SaldoAbertura);
  RegisterClass(TfComexPO);
  RegisterClass(TfComexPOImportar);
  (*RegisterClass p/gerador*)

  
end.



