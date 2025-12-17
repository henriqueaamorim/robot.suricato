*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendVeicu.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de veículo (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Agendamento de veículo (Filtro)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 
  Quando visualizar a tela: Agendamento de veículo (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Agendamento de veículo (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Quando visualizar a tela: Agendamento de veículo (Consulta)
  resource_cnsAgendVeicu.Acessar Tela: Agendamento de veículo

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Agendamento de veículo (Filtro)  
  resource_cnsAgendVeicu.Acessar Tela Agendamento de veículo - Filtro