*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEscolherFaixaPorCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Gravação de Crachá Por Faixa

*** Test Cases ***
Testcase: Acessar Tela: Gravação de Crachá Por Faixa
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Gravação por Faixa
  Então devo visualizar a tela: Gravação de Crachá Por Faixa

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Gravação por Faixa
  resource_mnu.Clicar No Menu Registro | Crachá | Gravação por Faixa

Então devo visualizar a tela: Gravação de Crachá Por Faixa
  resource_ctrEscolherFaixaPorCracha.Acessar Tela Gravação de Crachá Por Faixa
