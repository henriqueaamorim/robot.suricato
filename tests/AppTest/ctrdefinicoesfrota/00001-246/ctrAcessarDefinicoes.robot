*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrdefinicoesfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Definições de Frota


*** Test Cases ***
Testcase: Acessar Tela: Definições de Frota
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Definições
  Então devo visualizar a tela: Definições de Frota

*** Keywords ***
Dado que eu acesse o menu: Veículos | Definições
  resource_mnu.Clicar No Menu Veículos | Definições

Então devo visualizar a tela: Definições de Frota
  resource_ctrdefinicoesfrota.Acessar Tela Definições de Frota
