*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_ctrEntradaVisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Entrada de Visitante
${APPNAME}     ctrentradavisitante
${OBJETIVO}    Acessar Tela: Entrada de Visitante


*** Test Cases ***
Testcase: Acessar Tela: Entrada de Visitante
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E na div: Cadastrar Visitantes - clicar no botão: Cadastrar Entrada
  Então devo visualizar a tela: Entrada de Visitante


*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E na div: Cadastrar Visitantes - clicar no botão: Cadastrar Entrada
  resource_btn.Clicar No Botão Cadastrar Entrada

Então devo visualizar a tela: Entrada de Visitante
  resource_ctrEntradaVisitante.Acessar Tela Entrada de Visitante
