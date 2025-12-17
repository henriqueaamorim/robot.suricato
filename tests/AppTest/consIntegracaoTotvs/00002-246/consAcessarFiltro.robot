*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consIntegracaoTotvs.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Integração TOTVS (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Integração TOTVS (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Integração TOTVS
  Então devo visualizar a tela: Integração TOTVS (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Integração TOTVS
  resource_mnu.Clicar No Menu Estrutura | Integração TOTVS

Então devo visualizar a tela: Integração TOTVS (Filtro)
  resource_consIntegracaoTotvs.Acessar Tela Filtro Integração TOTVS
