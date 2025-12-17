*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocessorelatorio.robot
Resource        ../../../../resource/app/resource_cnsProcessoRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todas os campos na Tela: Processo de Relatório (Filtro)
${SCREENNAME}   Processo de Relatório
${APPNAME}      cnsProcessoRelatorio

*** Test Cases ***
Testcase: Verificar todas os campos na Tela: Processo de Relatório (Filtro)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Relatório
  Quando eu visualizar a tela: Processo de Relatório (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Processo de Relatório (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Processo | Relatório
  resource_mnu.Clicar No Menu Processo | Relatório

Quando eu visualizar a tela: Processo de Relatório (Consulta)
  resource_cnsProcessoRelatorio.Acessar Tela Processo de Relatório 

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Processo de Relatório (Filtro)
  resource_cnsProcessoRelatorio.Acessar Tela Processo de Relatório (Filtro)

E verificar a label: Pesquisa
  resource_cnsProcessoRelatorio.Verificar a label: Pesquisa

E verificar o campo: Código
  resource_cnsProcessoRelatorio.Verificar o campo: Código

E verificar o campo: Descrição
  resource_cnsProcessoRelatorio.Verificar o campo: Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"