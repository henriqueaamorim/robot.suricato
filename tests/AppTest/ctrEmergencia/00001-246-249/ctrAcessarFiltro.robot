*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEmergencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Comandos de Emergências

*** Test Cases ***
Testcase: Acessar Tela: Comandos de Emergências
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Emergência
  Então devo visualizar a tela: Comandos de Emergências

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Emergência
  resource_mnu.Clicar No Menu Controle | Comando | Emergência

Então devo visualizar a tela: Comandos de Emergências
  resource_ctrEmergencia.Acessar Tela Comandos de Emergências
