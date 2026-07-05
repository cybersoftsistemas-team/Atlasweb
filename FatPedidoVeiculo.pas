unit FatPedidoVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniEdit, uniDBEdit, uniMultiItem, uniComboBox, 
  uniDBComboBox, uniGUIBaseClasses, uniGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniButton, uniBitBtn, uniSpeedButton, uniPanel, uniMemo, FatPedidoNF, uniLabel;

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
    procedure cMotoristaChange(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pedido_id: integer;
  end;

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
var
   ttmp: TFDQuery;
begin
     try
         ttmp := TFDQuery.create(nil);
         with ttmp do begin
              Connection := uniMainModule.Conecta;
              sql.clear;
              sql.add('delete from NotasTransporte where Pedido_id = :pID and isnull(Nota_id, 0) = 0');
              parambyname('pID').asinteger := Pedido_id;
              execute;
              sql.clear;
              sql.add('insert into NotasTransporte (');
              sql.add('                             Pedido_id');
              sql.add('                            ,Placa');
              sql.add('                            ,Placa_UF');
              sql.add('                            ,Motorista');
              sql.add('                            ,RG');
              sql.add('                            ,CPF');
              sql.add('                            ,ANTT');
              sql.add('                            ,Lacre');
              sql.add('                            ,Reboque_Placa');
              sql.add('                            ,Reboque_UF');
              sql.add('                            ,Reboque_ANTT');
              sql.add('                            ,Reboque_Lacre');
              sql.add('                            )');
              sql.add('                     values (');
              sql.add('                             :Pedido_id');
              sql.add('                            ,:Placa');
              sql.add('                            ,:Placa_UF');
              sql.add('                            ,:Motorista');
              sql.add('                            ,:RG');
              sql.add('                            ,:CPF');
              sql.add('                            ,:ANTT');
              sql.add('                            ,:Lacre');
              sql.add('                            ,:Reboque_Placa');
              sql.add('                            ,:Reboque_UF');
              sql.add('                            ,:Reboque_ANTT');
              sql.add('                            ,:Reboque_Lacre');
              sql.add('                            )');
              parambyname('Pedido_id').value     := Pedido_id;
              parambyname('Placa').value         := cVeiPlaca.Text;
              parambyname('Placa_UF').value      := cVeiEstado.Text;
              parambyname('Motorista').value     := uppercase(cMotorista.Text);
              parambyname('RG').value            := cRG.Text;
              parambyname('CPF').value           := cCPF.Text;
              parambyname('ANTT').value          := cVeiANTT.Text;
              parambyname('Lacre').value         := cVeiLacre.Text;
              parambyname('Reboque_Placa').value := cRebPlaca.Text;
              parambyname('Reboque_UF').value    := cRebEstado.Text;
              parambyname('Reboque_ANTT').value  := cRebANTT.Text;
              parambyname('Reboque_Lacre').value := cRebLacre.Text;
              //sql.SaveToFile('c:\temp\NotasTransporte.sql');
              execute;
         end;
     finally 
         ttmp.free;
     end;
          
     close;
end;

procedure TfFatPedidoVeiculo.cMotoristaChange(Sender: TObject);
begin
      with Motoristas do begin
           cRG.text        := fieldbyname('RG').AsString;
           cCPF.Text       := fieldbyname('CPF').AsString;
           cVeiPlaca.text  := fieldbyname('Placa').AsString;
           cVeiEstado.text := fieldbyname('Placa_UF').AsString;
           cVeiANTT.text   := fieldbyname('ANTT').AsString;
           cVeiLacre.text  := fieldbyname('Lacre').AsString;
           cRebPlaca.text  := fieldbyname('Reboque_Placa').AsString;
           cRebEstado.text := fieldbyname('Reboque_UF').AsString;
           cRebANTT.text   := fieldbyname('Reboque_ANTT').AsString;
           cRebLacre.text  := fieldbyname('Reboque_Lacre').AsString;
      end;
end;

procedure TfFatPedidoVeiculo.UniFormCreate(Sender: TObject);
begin
      with Motoristas do begin
           sql.clear;
           sql.add('with Motor as (select * ,row_number() over (partition by Motorista order by Nota_id) as Linha from NotasTransporte)');
           sql.add('select * from Motor where Linha = 1');
           open;
           first;
           cMotorista.Items.Clear;
           while not eof do begin
                 cMotorista.Items.add(fieldbyname('Motorista').asstring);
                 next;
           end;
      end;
      cMotorista.SetFocus;
end;

procedure TfFatPedidoVeiculo.UniFormShow(Sender: TObject);
var
   ttmp: TFDQuery;
begin
     try
        ttmp := TFDQuery.create(nil); 
        with ttmp do begin
             connection := UniMainModule.Conecta;
             sql.clear;
             sql.add('select Motorista from NotasTransporte where Pedido_id = :pID');
             parambyname('pID').asinteger := Pedido_id;
             open;
             cMotorista.text := fieldbyname('Motorista').AsString;
        end;
        cMotoristaChange(self);
     finally
        ttmp.free;
     end;
end;

end.
