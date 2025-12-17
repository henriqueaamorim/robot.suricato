*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLocalPrestServi.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Local de Prestação de Serviços (Consulta)
${SCREENNAME}  Local de Prestação de Serviço
${APPNAME}     cnsLocalPrestServi

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Local de Prestação de Serviços (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Local de Prestação de Serviço
  Quando ver a tela: Local de Prestação de Serviço (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Nome
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Local de Prestação de Serviço
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro De Locais De Prestação De Serviços

Quando ver a tela: Local de Prestação de Serviço (Consulta)
  resource_cnsLocalPrestServi.Acessar Tela Consulta de Local de Prestação de Serviços

Então devo verificar a label: Código
    resource_cnsLocalPrestServi.Verificar a label Código

E verificar a label: Nome
    resource_cnsLocalPrestServi.Verificar a label Nome

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"