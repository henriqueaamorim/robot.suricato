*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAprovacaoAgendamentoFrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Aprovação de Agendamentos - Frota (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Aprovação de Agendamentos - Frota (Filtro)
  [Tags]  PRINT  POPULATED    246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  Quando visualizar a tela: Aprovação de Agendamentos - Frota (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Aprovação de Agendamentos - Frota (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

Quando visualizar a tela: Aprovação de Agendamentos - Frota (Consulta)
  resource_cnsAprovacaoAgendamentoFrota.Acessar Tela Aprovação de Agendamentos - Frota

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Aprovação de Agendamentos - Frota (Filtro)  
  resource_cnsAprovacaoAgendamentoFrota.Acessar Tela Aprovação de Agendamentos - Frota (Filtro)