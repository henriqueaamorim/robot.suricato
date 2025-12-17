*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPesquisaTorres.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campo na Tela: Torre (Filtro)
${SCREENNAME}  Torre (Consulta)
${APPNAME}     consPesquisaTorres

*** Test Cases ***
Testcase: Verificar todos os campo na Tela: Torre (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Elevador
  Quando devo ver a tela: Torre (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Torre (Filtro)
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Elevador
  resource_mnu.Clicar No Menu Estrutura | Elevador

Quando devo ver a tela: Torre (Consulta)
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Torre (Filtro)
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres (Filtro)

E verificar o campo: Descrição
    resource_consPesquisaTorres.Verificar o campo Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"