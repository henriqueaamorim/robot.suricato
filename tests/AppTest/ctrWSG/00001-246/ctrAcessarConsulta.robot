*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrWSG.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Consultar Ticket no WebService Guardian

*** Test Cases ***
Testcase: Acessar Tela: Consultar Ticket no WebService Guardian
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Consultar Ticket WSG
  Então devo visualizar a tela: Consultar Ticket no WebService Guardian

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Consultar Ticket WSG
  resource_mnu.Clicar No Menu Entrada | Visitante | Consultar Ticket WSG

Então devo visualizar a tela: Consultar Ticket no WebService Guardian
  resource_ctrWSG.Acessar Tela Consultar Ticket no WebService Guardian
