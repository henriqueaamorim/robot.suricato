*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/app/resource_blanksettings.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar a tela: Configurações do sistema

*** Test Cases ***
Testcase: Acessar Tela Configurações do sistema
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configuração | Sistema
  Então devo visualizar a tela de Configurações de sistema

*** Keywords ***
Dado que eu acesse o menu: Configuração | Sistema
  resource_mnu.Clicar No Menu Configuração | Sistema

Então devo visualizar a tela de Configurações de sistema
  resource_blanksettings.Acessar Tela Configurações do sistema

