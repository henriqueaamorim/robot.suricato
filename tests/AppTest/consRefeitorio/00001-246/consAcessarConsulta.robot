*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consRefeitorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Refeitório (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Refeitório (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Refeitório
  Então devo ver a tela: Refeitório (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Refeitório
  resource_mnu.Clicar No Menu Estrutura | Empresa | Refeitório

Então devo ver a tela: Refeitório (Consulta)
  resource_consRefeitorio.Acessar Tela Refeitório
