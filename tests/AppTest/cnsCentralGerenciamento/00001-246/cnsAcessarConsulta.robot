*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentralGerenciamento.robot

Test Setup       Acessar Suricato
Test Teardown    Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Gateway (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Gateway (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Gateway
  Então devo ver a tela: Gateway (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Gateway
  resource_mnu.Clicar No Menu Dispositivo | Gateway

Então devo ver a tela: Gateway (Consulta)
  resource_cnsCentralGerenciamento.Acessar Tela Consulta do Gateway
