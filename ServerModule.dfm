object UniServerModule: TUniServerModule
  OldCreateOrder = False
  OnCreate = UniGUIServerModuleCreate
  TempFolder = 'temp\'
  Title = 'Cybersoft Atlas WEB'
  BGColor = 4859136
  CharSet = 'ISO-8859-1'
  DefaultImageFormat = cfPNG
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    '\files\css\Cyber_Estilo01.css'
    '')
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
  Height = 778
  Width = 1098
end
