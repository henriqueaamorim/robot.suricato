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
${OBJETIVO}    Verificar todos os campos na tela: Entrada de Visitante (Aba: Veículo)


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Entrada de Visitante (Aba: Veículo)
  [Tags]   VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  E visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Cadastrar Entrada
  E visualizar a tela: Entrada de Visitante
  E clicar na Aba: Veículo
  Então devo verificar a label: Veículo
  E verificar o campo: Placa do Veículo
  E verificar o campo: Cor do Veículo
  E verificar o campo: Marca do Veículo
  E verificar o campo: Modelo do Veículo
  E verificar o campo: Tipo de Veículo
  E verificar o campo: Combustível
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

E clicar na Aba: Veículo
    resource_ctrentradavisitante.Clicar Na Aba: Veículo

Então devo verificar a label: Veículo
    resource_ctrentradavisitante.Verificar a Label: Veículo

E verificar o campo: Placa do Veículo
    resource_ctrentradavisitante.Verificar o campo: Placa do Veículo

E verificar o campo: Cor do Veículo
    resource_ctrentradavisitante.Verificar o campo: Cor do Veículo

E verificar o campo: Marca do Veículo
    resource_ctrentradavisitante.Verificar o campo: Marca do Veículo

E verificar o campo: Modelo do Veículo
    resource_ctrentradavisitante.Verificar o campo: Modelo do Veículo

E verificar o campo: Tipo de Veículo
    resource_ctrentradavisitante.Verificar o campo: Tipo de Veículo

E verificar o campo: Combustível
    resource_ctrentradavisitante.Verificar o campo: Combustível

E verificar a label: * Campos obrigatórios 
    resource_ctrentradavisitante.Verificar a label: * Campos obrigatórios

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"