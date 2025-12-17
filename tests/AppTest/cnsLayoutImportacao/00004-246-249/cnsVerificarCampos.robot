*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLayoutImportacao.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Layout de Importação e Exportação - Consulta
${APPNAME}     cnsLayoutImportacao
${OBJETIVO}    Verificar todos os campos na tela: Layout de Importação e Exportação (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Layout de Importação e Exportação (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Layout de Arquivo
  Quando visualizar a tela: Layout de Importação e Exportação (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Layout de Importação e Exportação (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Nome do Layout	
  E verificar se existe o campo Teste
  
*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Arquivo
  resource_mnu.Clicar No Menu Processo | Layout de Arquivo

Quando visualizar a tela: Layout de Importação e Exportação (Consulta)
  resource_cnsLayoutImportacao.Acessar Tela Layout de Importação e Exportação - Consulta

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Layout de Importação e Exportação (Filtro)  
  resource_cnsLayoutImportacao.Acessar Tela Layout de Importação e Exportação (Filtro)

E verificar a label: Pesquisa
  resource_cnsLayoutImportacao.Verificar a label: Pesquisa

E verificar o campo: Nome do Layout	
  resource_cnsLayoutImportacao.Verificar o campo: Nome do Layout

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
