object UniServerModule: TUniServerModule
  OldCreateOrder = False
  OnCreate = UniGUIServerModuleCreate
  TempFolder = 'temp\'
  Title = 'Cybersoft ERP Importa'
  BGColor = 4859136
  CharSet = 'ISO-8859-1'
  DefaultImageFormat = cfPNG
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    
      '              /*------------------------------------------------' +
      '----------[ AREA PRINCIPAL ]------------------------------------' +
      '------------------*/'
    '.x-form-textarea {min-height: 100%! Importante;}  '
    '                  '
    'video::-webkit-media-controls-timeline {display: none;}'
    'video::-webkit-media-controls-play-button {display: none;}'
    'video::-webkit-media-controls-volume-slider {display: none;}'
    'video::-webkit-media-controls-mute-button {display: none;}'
    'video::-webkit-media-controls-timeline {display: none;}'
    
      'video::-webkit-media-controls-current-time-display {display: non' +
      'e;}'
    ''
    'video '
    '{'
    ' object-fit: cover;'
    ' width: 100vw;'
    ' height: 100vh;'
    ' position: fixed;'
    ' top: 0;'
    ' left: 0;'
    '}'
    ''
    '/* TRANSPARENCIA DA TELA QUANDO DESABILITADA.*/'
    ''
    
      '.x-item-disabled .x-form-item-label, .x-item-disabled, .x-form-t' +
      'rigger, .x-panel, .x-item-disabled .x-form-item-label-text '
    '{'
    '  filter: alpha(opacity=100);'
    '  opacity: 1;'
    '  color: black;'
    '}'
    ''
    '.x-item-disabled .x-mask '
    '{'
    ' background: none;'
    ' opacity: 100%;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ TELA' +
      ' DE LOG IN ]----------------------------------------------------' +
      '--*/'
    '.CaixaLog '
    '{'
    ' border-style: solid;'
    ' border-width: 1px;'
    ' border-radius: 6px 30px;'
    ' border-color: white;'
    ' overflow: hidden;'
    ' transition: .5s ease;'
    
      ' box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2), 0 6px 40px 0 rgba(0' +
      ', 0, 0, 0.19);'
    ' opacity: .85;               '
    '}'
    '          '
    
      '/*--------------------------------------------------------[ FUND' +
      'O ABERTURA ]----------------------------------------------------' +
      '---*/'
    '.Fundo '
    '{'
    ' video: url("files/images/Earth.mp4");'
    ' background-size: cover;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ BARR' +
      'A DE TITULO ]---------------------------------------------------' +
      '---*/'
    '.Titulo '
    '{'
    ' text-shadow: black 0.1em 0.1em 0.2em;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ MENU' +
      ' ]--------------------------------------------------------------' +
      '---*/'
    '/* Aqui ira determina a COR DE Fundo do menu */'
    '.x-treelist-nav '
    '{                      '
    ' background-image:url("files/images/fundomenu_Peq.png");'
    ' background-size: auto auto;'
    ' background-position: 24px 0% !important;'
    ' padding: 0 0 0 0;'
    ' border: none;'
    ' overflow: auto !important;'
    
      ' scrollbar-width: thin;             /*estilo do scrool para o mo' +
      'zilla  */'
    
      ' scrollbar-color: #adb3b8 #516579;  /*estilo do scrool para o mo' +
      'zilla  */'
    '}'
    ''
    '.x-treelist-nav::-webkit-scrollbar '
    '{'
    ' width: 7px; '
    ' height:100px; '
    ' background:#516579;'
    '}'
    ''
    '.x-treelist-nav::-webkit-scrollbar-track '
    '{'
    ' background: rgba(0,0,0,0.1);'
    '}'
    ''
    '.x-treelist-nav::-webkit-scrollbar-thumb '
    '{'
    ' border-radius: 7px; '
    ' height: 7px; '
    ' background: #adb3b8;'
    '}'
    ''
    '.x-treelist-nav .x-treelist-item-text '
    '{'
    ' color: #FF8C00;'
    
      ' margin-left: 24px;    /* espa'#231'amento da esquerda para direita d' +
      'os Itens do menu */'
    
      ' margin-right: 0px;    /* espa'#231'amento da esquerda para direita d' +
      'os Grupos do menu */'
    ' font: 12px Arial !important;'
    ' height: 30px;'
    ' padding: 10px 10px; '
    ' text-shadow: 2px 2px #1C1C1C;           '
    '}'
    ''
    
      '.x-treelist-nav .x-treelist-item-icon:before, .x-treelist-nav .x' +
      '-treelist-item-tool:before, .x-treelist-nav .x-treelist-item-exp' +
      'ander '
    '{'
    ' line-height: 34px;   /* 44 '#233' o padrao */'
    '}'
    ''
    '/* Barra Principal */'
    '.BarraPrincipal '
    '{'
    ' /*background-color: #4f5e6b !important;*/'
    ' background-color: #4B4F58 !important;'
    '}'
    ''
    '.BarraEdicao'
    '{'
    ' background-image:url("files/images/fundomenu_Peq.png");'
    '}'
    ''
    
      '/*--------------------------------------------------------[ GRID' +
      'S ]-------------------------------------------------------------' +
      '---*/'
    '/* Linhas do grid */'
    '.x-grid-cell '
    '{'
    ' font: bold 12px calibri !important;'
    ' vertical-align: middle;'
    ' height: 20px;'
    '}'
    ''
    '.x-grid-cell-inner '
    '{'
    ' overflow: hidden;'
    ' white-space: nowrap;'
    ' /*height: 20px;*/'
    ' padding: 2px 4px 4px;'
    '}'
    '             '
    '.x-grid-item-selected '
    '{'
    ' color: #000;'
    ' /*background-color: #5ee0f7;*/'
    ' background-color: #1eacc1;'
    '}'
    ''
    '.x-column-header '
    '{'
    ' border-right: 1px solid #c2c2c2;'
    ' color: #eed60f;'
    ' font: bold 12px Calibri, helvetica, arial, verdana, sans-serif;'
    ' outline: 0;'
    ' background-color: #607d8b;'
    ' height: 24px;'
    '}'
    '.x-column-header-default-horizontal.x-header-noborder '
    '{'
    ' padding: 2px 2px 2px 2px;'
    ' height: 20px;'
    '}'
    ''
    '.x-panel-header-default '
    '{'
    ' font-size: 12px;'
    ' border: 1px solid #157fcc;'
    ' border-radius: 5px;'
    ' '
    '/* height: 20px;*/'
    '}'
    ''
    '.x-panel-header-default-horizontal.x-header-noborder '
    '{'
    ' padding: 2px 2px 2px 2px;'
    '}'
    ''
    '.x-column-header-inner '
    '{'
    ' padding: 2px 2px;'
    '}'
    ''
    '.x-border-box, .x-border-box * '
    '{'
    ' box-sizing:border-box;'
    ' -moz-box-sizing: border-box;'
    ' -ms-box-sizing: border-box;'
    ' -webkit-box-sizing: border-box;'
    '}'
    ''
    
      '.x-item-disabled .x-form-item-label, .x-item-disabled, .x-form-t' +
      'rigger, .x-panel, .x-item-disabled .x-form-item-label-text '
    '{'
    '  filter: alpha(opacity=100);'
    '  opacity: 1;'
    '  color: black;'
    '  border-radius: 5px;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ BOT'#213 +
      'ES ]------------------------------------------------------------' +
      '-*/'
    '.BotaoCor '
    '{'
    ' background:#1E90FF !important;'
    ' border: none;'
    ' border-color: none;'
    ' webkit-transition: background 0.5s ease-in-out;'
    '}'
    ''
    '.BotaoDegrade '
    '{'
    ' background-image:url("files/images/fundo8.jpg");        '
    
      ' box-shadow: 0 0 .1em #343434, 0 0 1.em #343434, 0 0 .1em #34343' +
      '4;'
    ' text-font: 10px calibri !important;'
    '}'
    '            '
    '.x-btn-default-small .x-btn-inner '
    '{'
    ' font: 12px Calibri, tahoma, arial, helvetica, sans-serif;'
    '}'
    ''
    '.x-btn-default-medium .x-btn-inner '
    '{'
    
      ' font: bold 12px Calibri, tahoma, arial, helvetica, sans-serif !' +
      'important;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ PAIN' +
      'EIS GERAIS ]----------------------------------------------------' +
      '-----*/'
    '.Painel '
    '{'
    ' border-width: 1px solid black;'
    ' border-radius: 5px;'
    ' background-color: #EEE9E9;'
    ' background-image: url("files/images/4832ff02.png");'
    ' background-repeat: repeat;'
    '}'
    ''
    '.x-panel-header-default-horizontal '
    '{'
    ' padding: 9px 15px 22px;'
    ' background-color: #216287;'
    '}        '
    
      '/*--------------------------------------------------------[ PAIN' +
      'EL SIMPLES ]----------------------------------------------------' +
      '-----*/'
    '.CaixaSimples '
    '{'
    ' border-radius:5px;'
    ' border: 1px solid silver;'
    ' text-font: bold 12px calibri !important;'
    '}'
    '        '
    '.CaixaCirculo '
    '{'
    ' border-radius: 50%;'
    ' overflow: hidden;'
    ' transition: 0.3s ease;'
    
      ' box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2), 0 6px 40px 0 rgba(0' +
      ', 0, 0, 0.19);        '
    '}   '
    ''
    
      '/*----------------------------------------------------------[ FI' +
      'CHA DE CRUD ]---------------------------------------------------' +
      '------*/'
    '.Ficha '
    '{'
    ' box-shadow: -1px -1px 14px black;'
    ' border-width: 1px solid black;'
    ' border-radius: 5px;'
    ' /*background-color: #EEE9E9; */'
    ' background-image:url("files/images/4832ff02.png");'
    ' background-repeat: repeat;'
    '}'
    ''
    '.FichaSSombra '
    '{'
    ' border-width: 1px solid black;'
    ' border-radius: 5px;'
    ' background-color: #EEE9E9;'
    ' background-image:url("files/images/4832ff02.png");'
    ' background-repeat: repeat;'
    '}'
    
      '/*--------------------------------------------------------[ PAST' +
      'A (PageControls) ]----------------------------------------------' +
      '-------*/'
    '.Pasta '
    '{'
    ' /*background-image:url("files/images/fundopasta1.png");'
    ' background-image:url("files/images/fundomenu_Peq.png");'
    ' background-image:url("files/images/fundopasta2.png");'
    ' background-color:#696969;'
    ' */ '
    ' background-color: #4f5e6b !important;'
    ' border-style: none;'
    '}'
    ''
    '.PastaInterna '
    '{'
    
      ' box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2), 0 6px 40px 0 rgba(0' +
      ', 0, 0, 0.19);'
    ' background-color: #4f5e6b !important;'
    ' border-style: none;'
    ' border-width: 3px;'
    ' border-color: #43666c63;'
    ' transition: .5s ease;'
    '}'
    '       '
    '.PastaPrincipal'
    '{'
    
      ' box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2), 0 6px 40px 0 rgba(0' +
      ', 0, 0, 0.19);'
    ' background-color: $00545429;'
    '}'
    '      '
    '.PastaItens '
    '{'
    ' border-style: solid;'
    ' border-width: 1px;'
    ' border-color: black;'
    
      ' box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.2), 0 6px 40px 0 rgba(0' +
      ', 0, 0, 0.19);'
    ' background-color: #006666;'
    ' font: bold 8px calibri !important;'
    ' }'
    ' '
    ' .BarraNavInterna '
    '{'
    
      '  box-shadow: 0px 0px 6px 0px rgba(0, 0, 0, 0.5), 0 6px 40px 0 r' +
      'gba(0, 0, 0, 0.19);'
    '  background-color: #444f57 !important;'
    '  border-style: outset;'
    '  border-width: 1px;'
    '}'
    ''
    '       '
    '.x-tab-inner-default '
    '{'
    ' font: bold 10px/16px helvetica, arial, verdana, sans-serif;'
    ' color: #fff;'
    ' max-width: 100%;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ CAMP' +
      'OS ]------------------------------------------------------------' +
      '--*/'
    '/* Caixa dos campos */'
    '.x-form-field '
    '{'
    ' border-radius: 3px;'
    ' /*font: bold 12px Calibri,courrier new !important;*/'
    ' font-color: black;'
    '}'
    ''
    '/* Texto dos campos */'
    '.x-form-text '
    '{'
    
      ' /*0border: 1px 1px 0px 1px groove inset rgba(204,225,229,0.17);' +
      '*/'
    ' min-height: 100%! Importante;'
    ' border-radius: 3px;'
    '}'
    '             '
    '/* Label dos campos */'
    
      '.x-item-disabled .x-form-item-label, .x-item-disabled .x-form-tr' +
      'igger, .x-item-disabled .x-form-item-label-text '
    '{'
    '  color: #000;'
    ' /*color: #1E90FF;*/ '
    ' /*text-transform: uppercase;*/'
    ' font: bold 11px Calibri !important;'
    '}'
    ''
    '.x-form-trigger-wrap-default {'
    '  border-width: 1px;'
    '  border-style: solid;'
    '  border-color: #c2c2c2 #dadada #dadada;'
    '  border-radius: 3px;'
    '}'
    '                        '
    '.x-form-item-label-default '
    '{'
    ' color: #000;'
    ' /*color: #1E90FF;*/ '
    ' font: bold 11px Calibri !important;'
    '}'
    ''
    '.x-form-text-default '
    '{'
    ' color: #000;'
    ' padding: 3px 6px 2px;'
    ' background: rgba(0, 0, 255, 0);'
    ' background-color: white;'
    '/* background-color: #621a7f21;*/'
    ' /*background-opacity: 50%;*/'
    ''
    
      ' font: bold 14px/12px tahoma, helvetica, arial, verdana, sans-se' +
      'rif;'
    
      ' font: bold 11px/16px courrier new, helvetica, arial, verdana, s' +
      'ans-serif;'
    ' min-height: 22px;'
    '}'
    ''
    '/*'
    '.x-form-text-default {'
    '    color: #000;'
    '    padding: 3px 6px 2px;'
    '    background: rgb(30 117 229 / 0%);'
    '    background-color: #5566732e;'
    
      '    font: bold 14px / 12px tahoma, helvetica, arial, verdana, sa' +
      'ns-serif;'
    '    min-height: 22px;'
    '}'
    '*/'
    '.x-panel-body-default {'
    '    background: none;'
    '    border-color: #c2c2c2;'
    '    color: white;'
    '    font-size: 14px;'
    '    font-weight: normal;'
    '    font-family: helvetica, arial, verdana, sans-serif;'
    '    border-width: 1px;'
    '    border-style: none;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ CAMP' +
      'OS DESTACADOS ]-------------------------------------------------' +
      '-----*/'
    '.CampoDestaque '
    '{'
    ' padding: 2px;'
    ' background: #621a7f21;'
    ' color: #000; '
    ' font: bold 16px Calibri !important;'
    ' border-radius: 3px;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ CAMP' +
      'OS DESATIVADO ]-------------------------------------------------' +
      '-----*/'
    '.CampoDesativado'
    '{'
    ' /*padding: 2px;*/'
    ' /*background: blue;*/'
    ' /*min-height: 22px;*/'
    ' color: #000;'
    ' border-radius: 3px;'
    ' background-color: none;'
    
      ' font: 11px/16px courrier new, helvetica, arial, verdana, sans-s' +
      'erif;'
    ' background-opacity: 50%;'
    '}'
    ''
    
      '/*---------------------------------------------------------[ CAM' +
      'POS SIMPLES ]---------------------------------------------------' +
      '------*/'
    '.CampoSimples '
    '{'
    ' padding: 2px;'
    ' border-radius: 3px;'
    ' font: 9px JetBrains Mono!important;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ CHEC' +
      'K BOX/RADIO GROUPS ]--------------------------------------------' +
      '-----------*/'
    '.x-form-cb-label '
    '{'
    ' font: bold 11px calibri !important;'
    ' color: #000;'
    ' border-radius: 3px;'
    '}'
    '                 '
    '/* Titulos dos Groups */'
    '.x-fieldset-header-text '
    '{'
    ' font: bold 11px calibri !important;'
    ' color: #1E90FF;'
    ' text-transform: uppercase;      '
    '}'
    '                        '
    '.x-form-table '
    '{'
    ' border: thick groove outset;            '
    ' border-radius: 3px;'
    '}'
    '              '
    '.x-fieldset-header-default > .x-fieldset-header-text '
    '{'
    ' font: bold 11px/16px helvetica, arial, verdana, sans-serif;'
    ' color: #EEB422;'
    ' padding: 3px 0;'
    '}'
    '              '
    '.x-fieldset-default {'
    '    border: thick groove outset;            '
    '    border-radius: 3px;'
    '}'
    ''
    '.x-form-cb-label-default {'
    '    margin-top: 6px;'
    
      '    font: normal 13px / 17px helvetica, arial, verdana, sans-ser' +
      'if;'
    '    color: #000;'
    '}'
    ''
    ''
    
      '/*--------------------------------------------------------[ COMB' +
      'OS ]------------------------------------------------------------' +
      '---*/'
    '.x-form-trigger-default '
    '{'
    
      ' background: linear-gradient(#ADD8E6, #4682B4) url(images/form/t' +
      'rigger.png) no-repeat;'
    ' color: #000;'
    ' font-size: 12px;'
    ' border-radius: 3px;'
    ' border-style: default;'
    ' border: default;'
    ' border-color: #000;'
    ' cursor: pointer;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ IMAG' +
      'ES BOT'#213'ES ]-----------------------------------------------------' +
      '----------*/'
    '.imgBotao {'
    '    border: 1px;'
    '    border-style: solid;'
    '    border-color: #2a6e9f;'
    '    border-radius: 10%;'
    '}'
    ''
    
      '/*--------------------------------------------------------[ LABE' +
      'LS ]------------------------------------------------------------' +
      '---*/'
    '.LabelDestaque {'
    '    border-radius: 3px;'
    '    padding-block: 4px;'
    '    padding: 6px;'
    
      '    font: bold 12px/12px Calibri, helvetica, arial, verdana, san' +
      's-serif;'
    '    color: black;'
    '    background: #621a7f21;'
    '    /*text-transform: uppercase;*/     '
    '}')
  ServerMessages.UnavailableErrMsg = 'Erro de Communica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">Ocorreu uma Exce'#231#227'o n' +
      'a aplica'#231#227'o:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reinicie a aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o inv'#225'ilda ou tempo da sess'#227'o expirado.'
  ServerMessages.TerminateMessage = 'Sess'#227'o Web terminada.'
  ExtLocale = 'pt_BR'
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 695
  Width = 1045
end
