*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendamentosVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de veículo (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Agendamento de veículo (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Consultas | Agendamento
  Então devo visualizar a tela: Agendamentos (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Consultas | Agendamento
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Agendamento

Então devo visualizar a tela: Agendamentos (Consulta)
  resource_cnsAgendamentosVeiculos.Acessar Tela: Agendamentos
