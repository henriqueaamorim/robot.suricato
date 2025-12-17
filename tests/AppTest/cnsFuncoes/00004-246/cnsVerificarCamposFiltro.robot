*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFuncoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Função (Filtro)
${SCREENNAME}  Função
${APPNAME}     cnsFuncoes

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Função (Filtro)
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Função
  Quando ver a tela: Função (Consulta)
  E clicar no botão: Pesquisar Registros
  Quando ver a tela: Função (Filtro)
  Então devo verificar a label: Pesquisa
  E verificar o campo: Código da Função	
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Função
  resource_mnu.Clicar No Menu Dispositivo | Codin | Função

Quando ver a tela: Função (Consulta)
  resource_cnsFuncoes.Acessar Tela Consulta de Funções

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar No Botão Pesquisar Registros

Quando ver a tela: Função (Filtro)
  resource_cnsFuncoes.Acessar Tela Função (Filtro)

Então devo verificar a label: Pesquisa
    resource_cnsFuncoes.Verificar a label Pesquisa

E verificar o campo: Código da Função	
    resource_cnsFuncoes.Verificar o campo Código da Função

E verificar o campo: Descrição
    resource_cnsFuncoes.Verificar o campo Descrição

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"