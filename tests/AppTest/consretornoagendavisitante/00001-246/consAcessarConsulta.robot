*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_consretornoagendavisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Agendamento de Visitante (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Agendamento de Visitante (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Cadastrar Agendamento
  Então devo visualizar a tela: Agendamento de Visitante (Consulta)



*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Cadastrar Agendamento
  resource_btn.Clicar No Botão Agendamento

Então devo visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consretornoagendavisitante.Acessar Tela Consulta de Agendamento de Visitantes
