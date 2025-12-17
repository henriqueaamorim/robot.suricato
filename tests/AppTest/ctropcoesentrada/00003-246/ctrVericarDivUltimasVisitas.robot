*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}    Verificar a DIV: Últimas Visitas na Tela: Opções de Entrada de Visitante
${SCREENNAME}  Opções de Entrada de Visitante
${APPNAME}     ctropcoesentrada

*** Test Cases ***
Testcase: Verificar a DIV: Últimas Visitas na Tela: Opções de Entrada de Visitante
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando visualizar a tela: Opções de Entrada de Visitante
  Então devo verificar a Div: Últimas Visitas
  E verificar o paragrafo: Últimas visitas realizadas
  E verificar o btn: Acessar Visitas
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

Então devo verificar a Div: Últimas Visitas
  resource_ctropcoesentrada.Verificar a DIV: Últimas Visitas

E verificar o paragrafo: Últimas visitas realizadas
  resource_ctropcoesentrada.Verificar o P: Últimas visitas realizadas

E verificar o btn: Acessar Visitas
  resource_ctropcoesentrada.Verificar o BTN: Acessar Visitas

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"