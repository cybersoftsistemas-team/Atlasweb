unit FiscalNFTerceirosItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniCheckBox, uniDBCheckBox, 
  uniDateTimePicker, uniDBDateTimePicker, uniButton, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniEdit, uniPanel, uniGUIBaseClasses;

type
  TfFiscalNFTerceirosItens = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel3: TUniPanel;
    UniPanel11: TUniPanel;
    UniDBFormattedNumberEdit40: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit38: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit39: TUniDBFormattedNumberEdit;
    cTotalFrete: TUniFormattedNumberEdit;
    cTotalSeguro: TUniFormattedNumberEdit;
    cTotalDespesa: TUniFormattedNumberEdit;
    UniPanel12: TUniPanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    cTotalCBS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit41: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit42: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit43: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    cTotalIBS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit44: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit45: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit46: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit47: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit48: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit49: TUniDBFormattedNumberEdit;
    cTotalIS: TUniFormattedNumberEdit;
    UniPanel13: TUniPanel;
    cQtde: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit18: TUniDBFormattedNumberEdit;
    cProduto: TUniDBLookupComboBox;
    cCFOP: TUniDBLookupComboBox;
    cProcesso: TUniDBLookupComboBox;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    cValor_Produtos: TUniFormattedNumberEdit;
    cValor_Unitario: TUniDBFormattedNumberEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBFormattedNumberEdit20: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit21: TUniDBFormattedNumberEdit;
    bLoteDet: TUniButton;
    bSerCha: TUniButton;
    UniDBEdit6: TUniDBEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniPanel2: TUniPanel;
    cEstoqueMinimo: TUniFormattedNumberEdit;
    cDisponivel: TUniFormattedNumberEdit;
    cInventario: TUniFormattedNumberEdit;
    cEstoqueLote: TUniFormattedNumberEdit;
    cEstoqueNavio: TUniFormattedNumberEdit;
    UniPanel5: TUniPanel;
    cValor_BCICMSOp: TUniDBFormattedNumberEdit;
    cValor_ICMS: TUniDBFormattedNumberEdit;
    cTotalICMSOp: TUniFormattedNumberEdit;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    cCSTICMS: TUniDBLookupComboBox;
    cAliquota_ICMSOp: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    cTotalICMSMono: TUniFormattedNumberEdit;
    cTotalICMSMonoRet: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit15: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit14: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    cValor_ICMSST: TUniDBFormattedNumberEdit;
    cTotalICMSSTAnt: TUniFormattedNumberEdit;
    cValor_ICMSSTAnt: TUniDBFormattedNumberEdit;
    cValor_BCICMSSTAnt: TUniDBFormattedNumberEdit;
    cAliquota_ICMSSTAnt: TUniDBFormattedNumberEdit;
    cTotalICMSST: TUniFormattedNumberEdit;
    cValor_BCICMSST: TUniDBFormattedNumberEdit;
    cAliquota_ICMSST: TUniDBFormattedNumberEdit;
    cAliquota_MVA: TUniDBFormattedNumberEdit;
    cValor_BCMVA: TUniDBFormattedNumberEdit;
    cValor_MVA: TUniDBFormattedNumberEdit;
    cTotalMVA: TUniFormattedNumberEdit;
    cAliquota_ICMSDif: TUniDBFormattedNumberEdit;
    cTotalICMSDif: TUniFormattedNumberEdit;
    cValor_ICMSDif: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit22: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit23: TUniDBFormattedNumberEdit;
    cICMSAnt: TUniDBCheckBox;
    cValor_OutrasICMS: TUniDBFormattedNumberEdit;
    cValor_IsentasICMS: TUniDBFormattedNumberEdit;
    cTotalOutrasICMS: TUniFormattedNumberEdit;
    cTotalIsentasICMS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit10: TUniDBFormattedNumberEdit;
    cTotalICMSPresumido: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit31: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit32: TUniDBFormattedNumberEdit;
    cValor_ICMSDesonerado: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit37: TUniDBFormattedNumberEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniPanel6: TUniPanel;
    cValor_BCPIS: TUniDBFormattedNumberEdit;
    cTotalPIS: TUniFormattedNumberEdit;
    cValor_PIS: TUniDBFormattedNumberEdit;
    cAliquota_PIS: TUniDBFormattedNumberEdit;
    cCSTPIS: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit;
    cTotalPISST: TUniFormattedNumberEdit;
    UniPanel7: TUniPanel;
    cCSTIPI: TUniDBLookupComboBox;
    cAliquota_IPI: TUniDBFormattedNumberEdit;
    cValor_BCIPI: TUniDBFormattedNumberEdit;
    cValor_IPI: TUniDBFormattedNumberEdit;
    cValor_OutrasIPI: TUniDBFormattedNumberEdit;
    cTotalIPI: TUniFormattedNumberEdit;
    cTotalOutrasIPI: TUniFormattedNumberEdit;
    cValor_IsentasIPI: TUniDBFormattedNumberEdit;
    cTotalIsentasIPI: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit33: TUniDBFormattedNumberEdit;
    UniFormattedNumberEdit2: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit34: TUniDBFormattedNumberEdit;
    UniPanel8: TUniPanel;
    cTotalII: TUniFormattedNumberEdit;
    cValor_II: TUniDBFormattedNumberEdit;
    cAliquota_II: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit24: TUniDBFormattedNumberEdit;
    UniPanel9: TUniPanel;
    UniDBFormattedNumberEdit25: TUniDBFormattedNumberEdit;
    cTotalCOFINS: TUniFormattedNumberEdit;
    UniDBFormattedNumberEdit26: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit27: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit;
    cTotalCOFINSST: TUniFormattedNumberEdit;
    UniContainerPanel2: TUniContainerPanel;
  private
    { Private declarations }
    mOper: string;
    mPed
   ,mItem: integer;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pPed, pItem: integer; pOper: string); reintroduce;
  end;

implementation

{$R *.dfm}

constructor TfFiscalNFTerceirosItens.Create(AOwner: TComponent; pPed, pItem: integer; pOper: string);
begin
    inherited Create(AOwner);
    mPed  := pPed;
    mItem := pItem;
    mOper := pOper;
end;


end.
