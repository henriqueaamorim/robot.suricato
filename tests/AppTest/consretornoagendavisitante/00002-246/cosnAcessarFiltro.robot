*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_consretornoagendavisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de Visitante (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Agendamento de Visitante (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Cadastrar Agendamento
  E visualizar a tela: Agendamento de Visitante (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Agendamento de Visitante (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Cadastrar Agendamento
  resource_btn.Clicar No Botão Agendamento

E visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consretornoagendavisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Agendamento de Visitante (Filtro)
  resource_consretornoagendavisitante.Acessar Tela Consulta de Agendamento de Visitantes (Filtro)