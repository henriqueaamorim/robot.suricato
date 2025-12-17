*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendVeicu.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de veículo (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Agendamento de veículo (Consulta)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 
  Então devo visualizar a tela: Agendamento de veículo (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Então devo visualizar a tela: Agendamento de veículo (Consulta)
  resource_cnsAgendVeicu.Acessar Tela: Agendamento de veículo
