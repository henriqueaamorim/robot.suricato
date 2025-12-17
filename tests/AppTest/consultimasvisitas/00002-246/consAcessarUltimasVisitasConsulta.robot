*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_consultimasvisitas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Última Visita (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Última Visita (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Acesssar Visitas
  E visualizar a tela: Última Visita (Filtro)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Última Visita (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Acesssar Visitas
  resource_btn.Clicar No Botão Últimas Visitas

E visualizar a tela: Última Visita (Filtro)
  resource_consultimasvisitas.Acessar Tela Consulta de Últimas Visitas (Filtro)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Última Visita (Consulta)
  resource_consultimasvisitas.Acessar Tela Consulta de Últimas Visitas 