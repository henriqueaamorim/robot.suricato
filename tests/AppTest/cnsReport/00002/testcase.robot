*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReport.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Modelo de Relatório para Processo Automático
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Processo | Layout de Relatório
  Quando eu visualizar a tela: Modelo de Relatório para Processo Automático
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Modelo de Relatório para Processo Automático - Consulta

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Relatório
  resource_mnu.Clicar No Menu Processo | Layout de Relatório

Quando eu visualizar a tela: Modelo de Relatório para Processo Automático
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Modelo de Relatório para Processo Automático - Consulta
  resource_cnsReport.Acessar Tela Modelo de Relatório para Processo Automático - Consulta
