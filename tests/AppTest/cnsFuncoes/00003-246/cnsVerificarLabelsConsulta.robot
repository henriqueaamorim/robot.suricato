*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFuncoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Função (Consulta)
${SCREENNAME}  Função
${APPNAME}     cnsFuncoes

*** Test Cases ***

Testcase: Verificar todas as labels na tela: Função (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Função
  Quando ver a tela: Função (Consulta)
  Então devo verificar a label: Código da Função
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Função
  resource_mnu.Clicar No Menu Dispositivo | Codin | Função

Quando ver a tela: Função (Consulta)
  resource_cnsFuncoes.Acessar Tela Consulta de Funções

Então devo verificar a label: Código da Função
    resource_cnsFuncoes.Verificar a label Descrição

E verificar a label: Descrição
    resource_cnsFuncoes.Verificar a label Descrição

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"