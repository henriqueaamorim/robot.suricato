*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReport.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Modelo de Relatório para Processo Automático
${APPNAME}     cnsReport
${OBJETIVO}    Verificar todos os campos na tela Modelo de Relatório para Processo Automático (Filtro)


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Modelo de Relatório para Processo Automático (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Layout de Relatório
  Quando visualizar a tela: Modelo de Relatório para Processo Automático (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo vizualizar a tela: Modelo de Relatório para Processo Automático (Filtro)
  E verificar o campo Nome
  E verificar o campo Título
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Relatório
  resource_mnu.Clicar No Menu Processo | Layout de Relatório

Quando visualizar a tela: Modelo de Relatório para Processo Automático (Consulta)
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo vizualizar a tela: Modelo de Relatório para Processo Automático (Filtro)  
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático - Filtro

E verificar o campo Nome
  resource_cnsReport.Verificar o campo Nome

E verificar o campo Título
  resource_cnsReport.Verificar o campo Título

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"