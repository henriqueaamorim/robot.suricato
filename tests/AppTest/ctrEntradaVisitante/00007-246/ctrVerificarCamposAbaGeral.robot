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
${OBJETIVO}    Verificar todos os campos na tela: Entrada de Visitante (Aba: Geral)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Entrada de Visitante (Aba: Geral)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  E visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Cadastrar Entrada
  E visualizar a tela: Entrada de Visitante
  E clicar na Aba: Geral
  Então devo verificar o campo: Crachá *
  E verificar o campo: Permissão *
  E verificar o campo: Data da Validade *
  E verificar o campo: Hora de Validade *
  E verificar o campo: Observação
  E verificar o campo: Tipo de Visita *
  E verificar a label: * Campos obrigatórios 
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

E visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Cadastrar Entrada
  resource_btn.Clicar No Botão Cadastrar Entrada

E visualizar a tela: Entrada de Visitante
  resource_ctrentradavisitante.Acessar Tela Entrada de Visitante

E clicar na Aba: Geral
    resource_ctrentradavisitante.Clicar Na Aba: Geral

Então devo verificar o campo: Crachá *
    resource_ctrentradavisitante.Verificar o campo: Crachá

E verificar o campo: Permissão *
    resource_ctrentradavisitante.Verificar o campo: Permissão 

E verificar o campo: Data da Validade *
    resource_ctrentradavisitante.Verificar o campo: Data da Validade 

E verificar o campo: Hora de Validade *
    resource_ctrentradavisitante.Verificar o campo: Hora de Validade

E verificar o campo: Observação
    resource_ctrentradavisitante.Verificar o campo: Observação

E verificar o campo: Tipo de Visita *
    resource_ctrentradavisitante.Verificar o campo: Tipo de Visita

E verificar a label: * Campos obrigatórios 
    resource_ctrentradavisitante.Verificar a label: * Campos obrigatórios

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"