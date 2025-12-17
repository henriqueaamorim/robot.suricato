*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_consretornoagendagrupovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Agendamento de Grupo de Visitante
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Agendamento
  Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  resource_ctropcoesentradagrupo.Acessar Tela Opções de Entrada de Grupo de Visitantes

E clicar no botão: Agendamento
  resource_btn.Clicar No Botão Agendamento

Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante
  resource_consretornoagendagrupovisitante.Acessar Tela Consulta de Agendamento de Grupo de Visitante
