*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoNotifica.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Notificações Alarme REP (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Notificações Alarme REP (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  Quando ver a tela: Notificações Alarme REP (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Notificações Alarme REP (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Notificações

Quando ver a tela: Notificações Alarme REP (Consulta)
  resource_cnsGrupoNotifica.Acessar Tela Consulta Notificações Alarme REP

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Notificações Alarme REP (Filtro)
    resource_cnsGrupoNotifica.Acessar Tela Filtro Notificações Alarme REP