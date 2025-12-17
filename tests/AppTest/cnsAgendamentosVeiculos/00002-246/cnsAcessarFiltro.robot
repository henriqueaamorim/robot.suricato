*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendamentosVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de veículo (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Agendamento de veículo (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Consultas | Agendamento
  Quando visualizar a tela: Agendamentos (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Agendamentos (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Consultas | Agendamento
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Agendamento

Quando visualizar a tela: Agendamentos (Consulta)
  resource_cnsAgendamentosVeiculos.Acessar Tela: Agendamentos

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Agendamentos (Filtro)
  resource_cnsAgendamentosVeiculos.Acessar Tela Agendamento de veículo - Filtro