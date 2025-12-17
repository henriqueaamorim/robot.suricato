*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conssaidavisitantes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela Consulta: Saída de Visitante (Filtro)

*** Test Cases ***
Testcase: Acessar Tela Consulta: Saída de Visitante (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  Quando visualizar a tela: Saída de Visitante (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Saída de Visitante (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Saída de Visitante

Quando visualizar a tela: Saída de Visitante (Consulta)
  resource_conssaidavisitantes.Acessar Tela Consulta de Saída de Visitantes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Saída de Visitante (Filtro)
  resource_conssaidavisitantes.Acessar Tela Consulta de Saída de Visitantes (Filtro)