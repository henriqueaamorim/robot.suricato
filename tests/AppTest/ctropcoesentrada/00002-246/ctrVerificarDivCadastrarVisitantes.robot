*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}    Verificar a DIV: Cadastrar Visitantes na Tela: Opções de Entrada de Visitante
${SCREENNAME}  Opções de Entrada de Visitante
${APPNAME}     ctropcoesentrada

*** Test Cases ***
Testcase: Verificar a DIV: Cadastrar Visitantes na Tela: Opções de Entrada de Visitante
  [Tags]    VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando visualizar a tela: Opções de Entrada de Visitante
  Então devo verificar a Div: Cadastrar Visitantes
  E verificar o paragrafo: Realizar entrada de visitantes
  E verificar o btn: Cadastrar Entrada
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

Então devo verificar a Div: Cadastrar Visitantes
  resource_ctropcoesentrada.Verificar a Div: Cadastrar Visitantes

E verificar o paragrafo: Realizar entrada de visitantes
  resource_ctropcoesentrada.Verificar o P: Realizar entrada de visitantes

E verificar o btn: Cadastrar Entrada
  resource_ctropcoesentrada.Verificar o BTN: Cadastrar Entrada

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"