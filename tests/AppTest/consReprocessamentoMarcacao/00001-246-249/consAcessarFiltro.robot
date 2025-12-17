*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessamentoMarcacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar Tela: Reprocessamento de Marcação

*** Test Cases ***
Testcase: Acessar Tela: Reprocessamento de Marcação
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  Então devo visualizar a tela: Reprocessamento de Marcação

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcação

Então devo visualizar a tela: Reprocessamento de Marcação
  resource_consReprocessamentoMarcacao.Acessar Tela Reprocessamento de Marcação
