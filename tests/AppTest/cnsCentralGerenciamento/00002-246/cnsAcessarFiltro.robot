*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentralGerenciamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Gateway (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Gateway (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Gateway
  Quando ver a tela: Gateway (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo ver a tela: Gateway (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Gateway
  resource_mnu.Clicar No Menu Dispositivo | Gateway

Quando ver a tela: Gateway (Consulta)
  resource_cnsCentralGerenciamento.Acessar Tela Consulta do Gateway

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar no Botão Pesquisar Registros

Então devo ver a tela: Gateway (Filtro)
    resource_cnsCentralGerenciamento.Acessar Tela Consulta do Gateway (Filtro)

