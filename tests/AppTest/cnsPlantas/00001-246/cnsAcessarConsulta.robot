*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsPlantas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Planta (Consulta)
*** Test Cases ***

Testcase: Acessar Tela: Planta (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Planta
  Então devo ver a tela: Planta (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Planta
  resource_mnu.Clicar No Menu Estrutura | Planta

Então devo ver a tela: Planta (Consulta)
  resource_cnsPlantas.Acessar Tela Consulta de Plantas
