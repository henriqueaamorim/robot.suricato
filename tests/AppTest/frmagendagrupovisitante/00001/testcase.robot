*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendagrupovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento de Grupo
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento de Grupo

Então devo visualizar a tela: Agendamento de Grupo de Visitantes (Inclusão)
  resource_frmagendagrupovisitante.Acessar Tela Agendamento de Grupo de Visitantes (Inclusão)
