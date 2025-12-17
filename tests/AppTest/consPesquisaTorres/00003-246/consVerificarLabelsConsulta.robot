*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPesquisaTorres.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Torre (Consulta)
${SCREENNAME}  Torre (Filtro)
${APPNAME}     consPesquisaTorres

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Torre (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Elevador
  Quando ver a tela: Torre (Consulta)
  Então devo verificar a label: Descrição
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Elevador
  resource_mnu.Clicar No Menu Estrutura | Elevador

Quando ver a tela: Torre (Consulta)
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres

Então devo verificar a label: Descrição  
    resource_consPesquisaTorres.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"