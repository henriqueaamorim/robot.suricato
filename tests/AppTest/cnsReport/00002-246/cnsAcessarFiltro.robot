*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReport.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Modelo de Relatório para Processo Automático (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Modelo de Relatório para Processo Automático (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Processo | Layout de Relatório
  Quando eu visualizar a tela: Modelo de Relatório para Processo Automático (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Modelo de Relatório para Processo Automático (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Relatório
  resource_mnu.Clicar No Menu Processo | Layout de Relatório

Quando eu visualizar a tela: Modelo de Relatório para Processo Automático (Consulta)
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Modelo de Relatório para Processo Automático (Filtro)
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático - Filtro
