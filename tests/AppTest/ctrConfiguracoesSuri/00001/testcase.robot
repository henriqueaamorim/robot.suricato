*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesSuri.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Configurações Gerais Do Sistema
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  Então devo visualizar a tela: Configurações Gerais Do Sistema

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema

Então devo visualizar a tela: Configurações Gerais Do Sistema
  resource_ctrConfiguracoesSuri.Acessar Tela Configurações Gerais Do Sistema
