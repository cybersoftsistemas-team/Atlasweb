unit FatPedidoVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox, uniGUIBaseClasses, uniGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniButton, uniBitBtn, uniSpeedButton, uniPanel, uniMemo, FatPedidoNF;

type
  TfFatPedidoVeiculo = class(TUniForm)
    Motoristas: TFDQuery;
    dsMotoristas: TDataSource;
    pBarraNav: TUniPanel;
    bCancelar: TUniSpeedButton;
    bGravar: TUniSpeedButton;
    UniPanel1: TUniPanel;
    UniPanel3: TUniPanel;
    cRebPlaca: TUniEdit;
    cRebEstado: TUniEdit;
    cRebANTT: TUniEdit;
    cRebLacre: TUniMemo;
    UniPanel2: TUniPanel;
    cVeiPlaca: TUniEdit;
    cVeiEstado: TUniEdit;
    cVeiANTT: TUniEdit;
    cVeiLacre: TUniMemo;
    UniPanel7: TUniPanel;
    cCPF: TUniEdit;
    cRG: TUniEdit;
    cMotorista: TUniComboBox;
    procedure UniFormCreate(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bGravarClick(Sender: TObject);
    procedure cMotoristaExit(Sender: TObject);
  private
    { Private declarations }
    FFramePedido: TfFatPedidoNF;
  public
    { Public declarations }
    property FramePedido: TfFatPedidoNF read FFramePedido write FFramePedido;
  end;

function fFatPedidoVeiculo: TfFatPedidoVeiculo;

implementation

{$R *.dfm}

uses
  uniGUIApplication, MainModule;

function fFatPedidoVeiculo: TfFatPedidoVeiculo;
begin
  Result := TfFatPedidoVeiculo(UniMainModule.GetFormInstance(TfFatPedidoVeiculo));
end;

procedure TfFatPedidoVeiculo.bCancelarClick(Sender: TObject);
begin
     close;
end;

procedure TfFatPedidoVeiculo.bFecharClick(Sender: TObject);
begin
     close;
end;

procedure TfFatPedidoVeiculo.bGravarClick(Sender: TObject);
begin
     if Assigned(FramePedido) then begin
        // Acessando a query dentro do UniFrame
        with FramePedido, Motoristas do begin
             PedidosNF.fieldbyname('Transporte_NomeMotorista').value := uppercase(cMotorista.Text);
             PedidosNF.fieldbyname('Transporte_RGMotorista').value   := cRG.Text;
             PedidosNF.fieldbyname('Transporte_cpfMotorista').value  := cCPF.Text;
             PedidosNF.fieldbyname('Transporte_Placa').value         := cVeiPlaca.Text;
             PedidosNF.fieldbyname('Transporte_PlacaUF').value       := cVeiEstado.Text;
             PedidosNF.fieldbyname('Transporte_CodigoANTT').value    := cVeiANTT.Text;
             PedidosNF.fieldbyname('Transporte_Lacre').value         := cVeiLacre.Text;
             PedidosNF.fieldbyname('Reboque_Placa').value            := cRebPlaca.Text;
             PedidosNF.fieldbyname('Reboque_UF').value               := cRebEstado.Text;
             PedidosNF.fieldbyname('Reboque_ANTT').value             := cRebANTT.Text;
             PedidosNF.fieldbyname('Reboque_Lacre').value            := cRebLacre.Text;
        end;
     end;
     close;
end;

procedure TfFatPedidoVeiculo.cMotoristaExit(Sender: TObject);
begin
      with Motoristas do begin
           if locate('Nome', cMotorista.Text, [locaseinsensitive]) then begin
              cRG.text        := fieldbyname('RG').AsString;
              cCPF.Text       := fieldbyname('CPF').AsString;
              cVeiPlaca.text  := fieldbyname('PlacaVei').AsString;
              cVeiEstado.text := fieldbyname('UFVei').AsString;
              cVeiANTT.text   := fieldbyname('ANTTVei').AsString;
              cVeiLacre.text  := fieldbyname('LacreVei').AsString;
              cRebPlaca.text  := fieldbyname('PlacaReb').AsString;
              cRebEstado.text := fieldbyname('UFReb').AsString;
              cRebANTT.text   := fieldbyname('ANTTReb').AsString;
              cRebLacre.text  := fieldbyname('LacreReb').AsString;
           end;
      end;
end;

procedure TfFatPedidoVeiculo.UniFormCreate(Sender: TObject);
begin
      with Motoristas do begin
           sql.clear;
           sql.add('select distinct');
           sql.add('       Nome     = isnull(Transporte_NomeMotorista, '''')');
           sql.add('      ,RG       = isnull(Transporte_RGMotorista, '''')');
           sql.add('      ,CPF      = isnull(Transporte_CPFMotorista, '''')');
           sql.add('      ,PlacaVei = isnull(Transporte_Placa, '''')');
           sql.add('      ,UFVei    = isnull(Transporte_PlacaUF, '''')');
           sql.add('      ,ANTTVei  = isnull(Transporte_CodigoANTT, '''')');
           sql.add('      ,LacreVei = isnull(cast(Transporte_Lacre as varchar(200)), '''')');
           sql.add('      ,PlacaReb = isnull(Reboque_Placa, '''')');
           sql.add('      ,UFReb    = isnull(Reboque_UF, '''')');
           sql.add('      ,ANTTReb  = isnull(Reboque_ANTT, '''')');
           sql.add('      ,LacreReb = isnull(cast(Reboque_Lacre as varchar(200)), '''')');
           sql.add('from NotasFiscais');
           sql.add('where isnull(Transporte_NomeMotorista, '''') <> '''' ');
           sql.add('union all');
           sql.add('select distinct');
           sql.add('       Nome     = isnull(Transporte_NomeMotorista, '''')');
           sql.add('      ,RG       = isnull(Transporte_RGMotorista, '''')');
           sql.add('      ,CPF      = isnull(Transporte_CPFMotorista, '''')');
           sql.add('      ,PlacaVei = isnull(Transporte_Placa, '''')');
           sql.add('      ,UFVei    = isnull(Transporte_PlacaUF, '''')');
           sql.add('      ,ANTTVei  = isnull(Transporte_CodigoANTT, '''')');
           sql.add('      ,LacreVei = isnull(cast(Transporte_Lacre as varchar(200)), '''')');
           sql.add('      ,PlacaReb = isnull(Reboque_Placa, '''')');
           sql.add('      ,UFReb    = isnull(Reboque_UF, '''')');
           sql.add('      ,ANTTReb  = isnull(Reboque_ANTT, '''')');
           sql.add('      ,LacreReb = isnull(cast(Reboque_Lacre as varchar(200)), '''')');
           sql.add('from PedidosNF');
           sql.add('where isnull(Transporte_NomeMotorista, '''') <> '''' ');
           //sql.SaveToFile('c:\temp\Dados_Veiculo.sql');
           open;
           first;
           cMotorista.Items.Clear;
           while not eof do begin
                 cMotorista.Items.add(fieldbyname('Nome').asstring);
                 next;
           end;
      end;
      cMotorista.SetFocus;
end;



end.
