unit Traducao;

interface

uses
  Windows, consts;

Type
  TTraducao = Class
  public
    procedure SetResourceString(xOldResourceString: PResStringRec; xValueChanged: PChar);
    procedure ChangeValues;
  End;

Implementation

{Método utilizado para podermos fazer a conversão em tempo de execução das mensagens do Delphi}

procedure TTraducao.SetResourceString(xOldResourceString: PResStringRec; xValueChanged: PChar);
var
  POldProtect: DWORD;
begin
     VirtualProtect(xOldResourceString, SizeOf(xOldResourceString^),
                    PAGE_EXECUTE_READWRITE, @POldProtect);
                    xOldResourceString^.Identifier := Integer(xValueChanged);
                    VirtualProtect(xOldResourceString, SizeOf(xOldResourceString^), POldProtect,
                    @POldProtect);

end;

{Método utilizado para podemos efetuar a mudança das mensagens}
procedure TTraducao.ChangeValues;
begin
  SetResourceString(@SMsgDlgYes, 'Sim');
  SetResourceString(@SMsgDlgWarning,'Atenção');
  SetResourceString(@SMsgDlgError, 'Erro');
  SetResourceString(@SMsgDlgInformation,'Information');
  SetResourceString(@SMsgDlgConfirm , 'Confirma');
  SetResourceString(@SMsgDlgYes , '&Sim');
  SetResourceString(@SMsgDlgNo , '&Não');
  SetResourceString(@SMsgDlgOK , 'OK');
  SetResourceString(@SMsgDlgCancel , 'Cancelar');
  SetResourceString(@SMsgDlgHelp , '&Ajuda');
  SetResourceString(@SMsgDlgHelpHelp , 'Ajuda');
  SetResourceString(@SMsgDlgAbort , '&Abortar');
  SetResourceString(@SMsgDlgRetry , '&Repetir');
  SetResourceString(@SMsgDlgIgnore , '&Ignorar');
  SetResourceString(@SMsgDlgAll , '&Tudo');
  SetResourceString(@SMsgDlgNoToAll , 'N&ao para Tudo');
  SetResourceString(@SMsgDlgYesToAll , 'Sim para &Tudo');
  SetResourceString(@SMsgDlgClose , '&Fechar');
end;


end.
