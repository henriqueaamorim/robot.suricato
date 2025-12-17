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
${OBJETIVO}    Verificar todas as labels na tela: Layout de Importação e Exportação (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Layout de Importação e Exportação (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Layout de Arquivo
  Quando visualizar a tela: Layout de Importação e Exportação (Consulta)
  Então devo verificar a label Código do Layout
  E verificar a label Nome do Layout
  E verificar a label Seção
  E verificar se existe o campo Teste
  
*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Arquivo
  resource_mnu.Clicar No Menu Processo | Layout de Arquivo

Quando visualizar a tela: Layout de Importação e Exportação (Consulta)
  resource_cnsLayoutImportacao.Acessar Tela Layout de Importação e Exportação - Consulta

Então devo verificar a label Código do Layout
  resource_cnsLayoutImportacao.Verificar a label Código do Layout

E verificar a label Nome do Layout
  resource_cnsLayoutImportacao.Verificar a label Nome do Layout

E verificar a label Seção
  resource_cnsLayoutImportacao.Verificar a label Seção

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
