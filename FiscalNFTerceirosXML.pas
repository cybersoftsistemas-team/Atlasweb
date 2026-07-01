unit FiscalNFTerceirosXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniComboBox, uniDBComboBox, 
  uniDBLookupComboBox, uniGUIBaseClasses, uniDateTimePicker, uniCheckBox, uniRadioGroup, uniSpeedButton, uniPanel, uniEdit, uniGroupBox, uniButton, uniBitBtn, uniMultiItem, uniDBCheckBox, uniListBox, uniFileUpload;

type
  TfFiscalNFTerceirosXML = class(TUniForm)
    UniPanel3: TUniPanel;
    bSair: TUniSpeedButton;
    UniContainerPanel4: TUniContainerPanel;
    cDataEnt: TUniDateTimePicker;
    cOper: TUniDBLookupComboBox;
    cRamo: TUniDBLookupComboBox;
    cTipoProd: TUniDBLookupComboBox;
    cCusto: TUniDBLookupComboBox;
    cProcImp: TUniDBLookupComboBox;
    cProcExp: TUniDBLookupComboBox;
    cDUIMP: TUniEdit;
    cDUE: TUniEdit;
    cEmb: TUniDBLookupComboBox;
    cOrig: TUniDBLookupComboBox;
    cFinal: TUniDBLookupComboBox;
    cEscala: TUniCheckBox;
    UniGroupBox1: TUniGroupBox;
    cImoAliq: TUniFormattedNumberEdit;
    cImoBC: TUniFormattedNumberEdit;
    cImoValor: TUniFormattedNumberEdit;
    bImportar: TUniSpeedButton;
    cSubst: TUniCheckBox;
    cPreco: TUniGroupBox;
    cLucro: TUniFormattedNumberEdit;
    cComissao: TUniFormattedNumberEdit;
    cCustoFin: TUniFormattedNumberEdit;
    cUso: TUniComboBox;
    cCustoFixo: TUniFormattedNumberEdit;
    cMargem: TUniFormattedNumberEdit;
    gPerfil: TUniGroupBox;
    cIsento: TUniCheckBox;
    cSimples_Nacional: TUniCheckBox;
    cZona_Franca: TUniCheckBox;
    cMEI: TUniCheckBox;
    cInscricaoST: TUniCheckBox;
    cMicro: TUniCheckBox;
    Arquivos: TUniFileUpload;
    procedure bSairClick(Sender: TObject);
    procedure bImportarClick(Sender: TObject);
    procedure ArquivosCompleted(Sender: TObject; AStream: TFileStream);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fFiscalNFTerceirosXML: TfFiscalNFTerceirosXML;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ImportaNFe, FiscalNFTerceiros, ServerModule;

function fFiscalNFTerceirosXML: TfFiscalNFTerceirosXML;
begin
    Result := TfFiscalNFTerceirosXML(UniMainModule.GetFormInstance(TfFiscalNFTerceirosXML));
end;

procedure TfFiscalNFTerceirosXML.ArquivosCompleted(Sender: TObject; AStream: TFileStream);
var
  Importador: TImportadorNFe;
begin
     Importador := TImportadorNFe.Create(UniMainModule.Conecta);
     try
        if Importador.ImportarXML(1, 20, AStream.FileName) then begin
           ShowMessage('NF-e importada com sucesso!')
        end
     else
        ShowMessage('Falha ao importar NF-e.');
     finally
        Importador.Free;
     end;
end;

procedure TfFiscalNFTerceirosXML.bImportarClick(Sender: TObject);
begin
     Arquivos.Execute;
end;

procedure TfFiscalNFTerceirosXML.bSairClick(Sender: TObject);
begin
     close;
end;

end.
