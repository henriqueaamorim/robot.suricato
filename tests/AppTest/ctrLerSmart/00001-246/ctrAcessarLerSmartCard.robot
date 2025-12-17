*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrLerSmart.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Ler Smart Card


*** Test Cases ***
Testcase: Acessar Tela: Ler Smart Card
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Ler Smart Card
  Então devo visualizar a tela: Ler Smart Card

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Ler Smart Card
  resource_mnu.Clicar No Menu Registro | Crachá | Ler Smart Card

Então devo visualizar a tela: Ler Smart Card
  resource_ctrLerSmart.Acessar Tela Ler Smart Card
