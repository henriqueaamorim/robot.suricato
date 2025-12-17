*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_ctrEntradaVisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Entrada de Visitante
${APPNAME}  ctrentradavisitante
${OBJETIVO}   Verificar todas as Abas na tela: Entrada de Visitante


*** Test Cases ***
Testcase: Verificar todas as Abas na tela: Entrada de Visitante
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E na div: Cadastrar Visitantes - clicar no botão: Cadastrar Entrada
  Então devo visualizar a tela: Entrada de Visitante
  E verificar a Aba: Portaria
  E verificar a Aba: Visitado
  E verificar a Aba: Visitante
  E verificar a Aba: Veículo
  E verificar a Aba: Geral
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E na div: Cadastrar Visitantes - clicar no botão: Cadastrar Entrada
  resource_btn.Clicar No Botão Cadastrar Entrada

Então devo visualizar a tela: Entrada de Visitante
  resource_ctrentradavisitante.Acessar Tela Entrada de Visitante

E verificar a Aba: Portaria
    resource_ctrentradavisitante.Verificar a Aba: Portaria

E verificar a Aba: Visitado
    resource_ctrentradavisitante.Verificar a Aba: Visitado

E verificar a Aba: Visitante
    resource_ctrentradavisitante.Verificar a Aba: Visitante

E verificar a Aba: Veículo
    resource_ctrentradavisitante.Verificar a Aba: Veículo

E verificar a Aba: Geral
    resource_ctrentradavisitante.Verificar a Aba: Geral

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"