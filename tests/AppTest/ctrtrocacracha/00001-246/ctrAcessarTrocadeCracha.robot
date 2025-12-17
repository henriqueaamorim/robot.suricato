*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrtrocacracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Troca de Crachá

*** Test Cases ***
Testcase: Acessar Tela: Troca de Crachá
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Troca de Crachá
  Então devo visualizar a tela: Troca de Crachá

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Troca de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Troca de Crachá

Então devo visualizar a tela: Troca de Crachá
  resource_ctrtrocacracha.Acessar Tela Troca de Crachá
