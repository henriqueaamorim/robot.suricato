*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrenviodelotes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Envio de Lote de Comandos


*** Test Cases ***
Testcase: Acessar Tela: Envio de Lote de Comandos
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Lote
  Então devo visualizar a tela: Envio de Lote de Comandos

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Lote
  resource_mnu.Clicar No Menu Controle | Comando | Lote

Então devo visualizar a tela: Envio de Lote de Comandos
  resource_ctrenviodelotes.Acessar Tela Envio de Lote de Comandos
