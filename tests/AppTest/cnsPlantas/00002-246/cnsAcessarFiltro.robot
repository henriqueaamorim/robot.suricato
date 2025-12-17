*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsPlantas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Planta (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Planta (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Estrutura | Planta
  Quando ver a tela: Planta (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Planta (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Planta
  resource_mnu.Clicar No Menu Estrutura | Planta

Quando ver a tela: Planta (Consulta)
  resource_cnsPlantas.Acessar Tela Consulta de Plantas

E clicar no botão Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Planta (Filtro)
  resource_cnsPlantas.Acessar Tela Planta (Filtro)