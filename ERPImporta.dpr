{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
   library
{$else}
   program
{$endif}

ERPImporta;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  CadEmpresas in 'CadEmpresas.pas' {fCadEmpresas: TUniFrame},
  CadUsuarios in 'CadUsuarios.pas' {fCadUsuarios: TUniFrame},
  Funcoes in 'Funcoes.pas',
  CadPaises in 'CadPaises.pas' {fCadPaises: TUniFrame},
  CadMunicipios in 'CadMunicipios.pas' {fCadMunicipios: TUniFrame},
  CadDestinatarios in 'CadDestinatarios.pas' {fCadDestinatarios: TUniFrame},
  CadServicos in 'CadServicos.pas' {fCadServicos: TUniFrame},
  CadAlugueis in 'CadAlugueis.pas' {fCadAlugueis: TUniFrame},
  CadTiposDocumentos in 'CadTiposDocumentos.pas' {fCadTiposDocumentos: TUniFrame},
  CadRamoAtividade in 'CadRamoAtividade.pas' {fCadRamoAtividade: TUniFrame},
  CadNivelPlanoFinanceiro in 'CadNivelPlanoFinanceiro.pas' {fCadNivelClassificacao: TUniFrame},
  CadPlanoContas in 'CadPlanoContas.pas' {fCadPlanoContas: TUniFrame},
  CadDREGrupos in 'CadDREGrupos.pas' {fCadDREGrupos: TUniFrame},
  CadDRE in 'CadDRE.pas' {fCadDRE: TUniFrame},
  CadCentroCusto in 'CadCentroCusto.pas' {fCadCentroCusto: TUniFrame},
  Login in 'Login.pas' {TelaLogin: TUniLoginForm},
  CadBancos in 'CadBancos.pas' {fCadBancos: TUniFrame},
  NFe_Util_2G_TLB in 'C:\Users\Eder\Documents\Embarcadero\Studio\20.0\Imports\NFe_Util_2G_TLB.pas',
  CadOrigemContas in 'CadOrigemContas.pas' {fCadOrigemContas: TUniFrame},
  ConfigSis in 'ConfigSis.pas' {fConfigSis: TUniFrame},
  CadModalidadesPagamento in 'CadModalidadesPagamento.pas' {fCadModalidadesPagamento: TUniFrame},
  CadMoedas in 'CadMoedas.pas' {fCadMoedas: TUniFrame},
  CadCotacao in 'CadCotacao.pas' {fCadCotacao: TUniFrame},
  CadComissoes in 'CadComissoes.pas' {fCadComissoes: TUniFrame},
  CadRecursos in 'CadRecursos.pas' {fCadRecursos: TUniFrame},
  CadIncoterms in 'CadIncoterms.pas' {fCadIncoterms: TUniFrame},
  CadModalidadesImportacao in 'CadModalidadesImportacao.pas' {fCadModalidadesImportacao: TUniFrame},
  CadLocaisDesembaraco in 'CadLocaisDesembaraco.pas' {fCadLocaisDesembaraco: TUniFrame},
  CadCondicaoCambial in 'CadCondicaoCambial.pas' {fCadCondicaoCambial: TUniFrame},
  CadEstados in 'CadEstados.pas' {fCadEstados: TUniFrame},
  CadProdutos in 'CadProdutos.pas' {fCadProdutos: TUniFrame},
  CadTributos in 'CadTributos.pas' {fCadTributos: TUniFrame},
  CadNCM in 'CadNCM.pas' {fCadNCM: TUniFrame},
  CadSeriais in 'CadSeriais.pas' {fCadSeriais: TUniFrame},
  CadDetalhes in 'CadDetalhes.pas' {fCadDetalhes: TUniFrame},
  CadProdutosDetalhes in 'CadProdutosDetalhes.pas' {fCadProdutosDetalhes: TUniFrame},
  CadProdutosLotes in 'CadProdutosLotes.pas' {fCadProdutosLotes: TUniFrame},
  CadProdutosMateriaPrima in 'CadProdutosMateriaPrima.pas' {fCadProdutosMateriaPrima: TUniFrame},
  CadHistoricoPadrao in 'CadHistoricoPadrao.pas' {fCadHistoricoPadrao: TUniFrame},
  CadCFOP in 'CadCFOP.pas' {fCadCFOP: TUniFrame},
  CadBeneficiosFiscais in 'CadBeneficiosFiscais.pas' {fCadBeneficiosFiscais: TUniFrame},
  CadConsultaCST in 'CadConsultaCST.pas' {fCadConsultaCST: TUniFrame},
  CadCodigosRFB in 'CadCodigosRFB.pas' {fCadCodigosRFB: TUniFrame},
  CadTabelaPISCOFINS in 'CadTabelaPISCOFINS.pas' {fCadTabelaPISCOFINS: TUniFrame},
  CadUnidadeMedida in 'CadUnidadeMedida.pas' {fCadUnidadeMedida: TUniFrame},
  CadTipoProduto in 'CadTipoProduto.pas' {fCadTipoProduto: TUniFrame},
  CadCores in 'CadCores.pas' {fCadCores: TUniFrame},
  CadProdutosLinhas in 'CadProdutosLinhas.pas' {fCadProdutosLinhas: TUniFrame},
  CadDREContabil in 'CadDREContabil.pas' {fCadDREContabil: TUniFrame},
  Financeiro in 'Financeiro.pas' {fFinanceiro: TUniFrame},
  CadLancamentoPadrao in 'CadLancamentoPadrao.pas' {fCadLancamentoPadrao: TUniFrame},
  FinSolicitacaoNumerario in 'FinSolicitacaoNumerario.pas' {fFinSolicitacaoNumerario: TUniFrame},
  Vcl.Consts in 'Vcl.Consts.pas',
  MInhasClasses in 'MInhasClasses.pas',
  CtbLancamentos in 'CtbLancamentos.pas' {fCtbLancamentos: TUniFrame},
  Fiscal_BloquearPeriodo in 'Fiscal_BloquearPeriodo.pas' {fFiscal_BloquearPeriodo: TUniFrame},
  Contab_BloquearPeriodo in 'Contab_BloquearPeriodo.pas' {fContab_BloquearPeriodo: TUniFrame},
  CadOperacaoFiscal in 'CadOperacaoFiscal.pas' {fCadOperacaoFiscal: TUniFrame},
  ComexProcessoImp in 'ComexProcessoImp.pas' {fComexProcessoImp: TUniFrame},
  ConfigAtalhos in 'ConfigAtalhos.pas' {fConfigAtalhos: TUniFrame},
  DespRegistroDI in 'DespRegistroDI.pas' {fDespRegistroDI: TUniFrame},
  FatPedidoNF in 'FatPedidoNF.pas' {fFatPedidoNF: TUniFrame},
  CadNavios in 'CadNavios.pas' {fCadNavios: TUniFrame},
  Embarques in 'Embarques.pas' {fEmbarques: TUniFrame},
  EmbarquesLaudosBL in 'EmbarquesLaudosBL.pas' {LaudosBL: TUniForm},
  ConfigCampos in 'ConfigCampos.pas' {fConfigCampos: TUniFrame},
  CadOperacaoFiscalFormula in 'CadOperacaoFiscalFormula.pas' {fCadOperacaoFiscalFormula: TUniForm},
  FatPedidoItensDUIMP in 'FatPedidoItensDUIMP.pas' {fFatPedidoItensDUIMP: TUniForm},
  FatPedidoNFItem in 'FatPedidoNFItem.pas' {fFatPedidoNFItem: TUniForm};

(*uses p/gerador*)

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}



end.



