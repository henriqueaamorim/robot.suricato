*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLocalPrestServi.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Local de Prestação de Serviços (Filtro)
${SCREENNAME}  Local de Prestação de Serviço
${APPNAME}     cnsLocalPrestServi

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Local de Prestação de Serviços (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Local de Prestação de Serviço
  Quando ver a tela: Local de Prestação de Serviço (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Local de Prestação de Serviço (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Nome
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Local de Prestação de Serviço
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro De Locais De Prestação De Serviços

Quando ver a tela: Local de Prestação de Serviço (Consulta)
  resource_cnsLocalPrestServi.Acessar Tela Consulta de Local de Prestação de Serviços

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Local de Prestação de Serviço (Filtro)  
    resource_cnsLocalPrestServi.Acessar Tela Filtro de Local de Prestação de Serviços

E verificar a label: Pesquisa
    resource_cnsLocalPrestServi.Verificar a label Pesquisa

E verificar o campo: Nome
    resource_cnsLocalPrestServi.Verificar o campo Nome

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"