*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoNotifica.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Notificações Alarme REP (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Notificações Alarme REP (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  Então devo ver a tela: Notificações Alarme REP (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Notificações

Então devo ver a tela: Notificações Alarme REP (Consulta)
  resource_cnsGrupoNotifica.Acessar Tela Consulta Notificações Alarme REP
