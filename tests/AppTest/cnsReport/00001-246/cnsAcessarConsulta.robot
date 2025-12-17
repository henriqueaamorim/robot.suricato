*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReport.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Modelo de Relatório para Processo Automático (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Modelo de Relatório para Processo Automático (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Layout de Relatório
  Então devo visualizar a tela: Modelo de Relatório para Processo Automático (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Relatório
  resource_mnu.Clicar No Menu Processo | Layout de Relatório

Então devo visualizar a tela: Modelo de Relatório para Processo Automático (Consulta)
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático
