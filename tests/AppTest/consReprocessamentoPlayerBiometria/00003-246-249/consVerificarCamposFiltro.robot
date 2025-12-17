*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessamentoPlayerBiometria.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Envio individual de comandos
${APPNAME}     consReprocessamentoPlayerBiometria
${OBJETIVO}    Verificar todos os campos na tela: Envio individual de comandos (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Envio individual de comandos (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Envio Individual de Comandos Player
  Então devo visualizar a tela: Envio individual de comandos (Filtro)
  E verificar o campo Endereço IP
  E verificar o campo Crachá
  E verificar o campo Numero PIS
  E verificar o campo Nome
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Envio Individual de Comandos Player
  resource_mnu.Clicar No Menu Controle | Comando | Envio Individual de Comandos Player

Então devo visualizar a tela: Envio individual de comandos (Filtro)
  resource_consReprocessamentoPlayerBiometria.Acessar Tela Envio individual de comandos

E verificar o campo Endereço IP
  resource_consReprocessamentoPlayerBiometria.Verificar o campo Endereço IP

E verificar o campo Crachá
  resource_consReprocessamentoPlayerBiometria.Verificar o campo Crachá

E verificar o campo Numero PIS
  resource_consReprocessamentoPlayerBiometria.Verificar o campo Numero PIS

E verificar o campo Nome
  resource_consReprocessamentoPlayerBiometria.Verificar o campo Nome

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"