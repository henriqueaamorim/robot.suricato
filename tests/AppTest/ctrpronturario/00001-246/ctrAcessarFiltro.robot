*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrpronturario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar a tela: Prontuário do Veículo.

*** Test Cases ***
Testcase: Acessar Tela: Prontuário do Veículo
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Veículo | Prontuário de Veículo
  Então devo visualizar a tela: Prontuário do Veículo

*** Keywords ***
Dado que eu acesse o menu: Veículo | Prontuário de Veículo
  resource_mnu.Clicar No Menu Veículos | Prontuário de Veículos

Então devo visualizar a tela: Prontuário do Veículo
  resource_ctrpronturario.Acessar Tela Prontuário do Veículo
