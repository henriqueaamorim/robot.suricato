*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracaoLGPD.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: LGPD - Configurações de Dados Sensíveis


*** Test Cases ***
Testcase: Acessar Tela: LGPD - Configurações de Dados Sensíveis
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | LGPD - Configurações de Dados Sensíveis
  Então devo visualizar a tela: LGPD - Configurações de Dados Sensíveis

*** Keywords ***
Dado que eu acesse o menu: Configuração | LGPD - Configurações de Dados Sensíveis
  resource_mnu.Clicar No Menu Configurações | LGPD - Configurações de Dados Sensíveis

Então devo visualizar a tela: LGPD - Configurações de Dados Sensíveis
  resource_ctrConfiguracaoLGPD.Acessar Tela LGPD - Configurações de Dados Sensíveis
