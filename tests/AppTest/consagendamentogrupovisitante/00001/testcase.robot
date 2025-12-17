*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendagrupovisitante.robot
Resource        ../../../../resource/app/resource_consagendamentogrupovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Agendamento de Grupo de Visitantes
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  Quando eu visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitantes

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento de Grupo

Quando eu visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  resource_frmagendagrupovisitante.Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitantes
  resource_consagendamentogrupovisitante.Acessar Tela Consulta de Agendamento de Grupo de Visitantes
