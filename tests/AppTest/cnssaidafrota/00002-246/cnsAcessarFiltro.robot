*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidafrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Entrega de Veículo (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Entrega de Veículo (Filtro)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  Quando visualizar a tela: Entrega de Veículo (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Entrega de Veículo (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Entrega
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

Quando visualizar a tela: Entrega de Veículo (Consulta)
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Entrega de Veículo (Filtro)  
  resource_cnssaidafrota.Acessar Tela Entrega de Veículo (Filtro)