*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consRefeitorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Refeitório
  [Tags]  PRINT  POPULATED  246  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Refeitório
  Então devo ver a tela: Refeitório


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Refeitório
  resource_mnu.Clicar No Menu Estrutura | Empresa | Refeitório

Então devo ver a tela: Refeitório
  resource_consRefeitorio.Acessar Tela Refeitório
