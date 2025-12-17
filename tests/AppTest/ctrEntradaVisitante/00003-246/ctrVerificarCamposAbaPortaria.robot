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
${OBJETIVO}    Verificar todas os campos na tela: Entrada de Visitante (Aba: Portaria)


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Entrada de Visitante (Aba: Portaria)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E na div: Cadastrar Visitantes - clicar no botão: Cadastrar Entrada
  E visualizar a tela: Entrada de Visitante
  E clicar na Aba: Portaria
  Então devo verificar o campo: Portaria
  E verificar o campo: Data da Entrada
  E verificar o campo: Hora de Entrada
  E verificar a label: * Campos obrigatórios
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E na div: Cadastrar Visitantes - clicar no botão: Cadastrar Entrada
  resource_btn.Clicar No Botão Cadastrar Entrada

E visualizar a tela: Entrada de Visitante
  resource_ctrentradavisitante.Acessar Tela Entrada de Visitante

E clicar na Aba: Portaria
    resource_ctrentradavisitante.Clicar Na Aba: Portaria

Então devo verificar o campo: Portaria
  resource_ctrentradavisitante.Verificar o Campo: Portaria

E verificar o campo: Data da Entrada
  resource_ctrentradavisitante.Verificar o Campo: Data da Entrada

E verificar o campo: Hora de Entrada
  resource_ctrentradavisitante.Verificar o Campo: Hora da Entrada

E verificar a label: * Campos obrigatórios
    resource_ctrentradavisitante.Verificar a label: * Campos obrigatórios

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"