*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocessorelatorio.robot
Resource        ../../../../resource/app/resource_cnsProcessoRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Relatório

*** Test Cases ***
Testcase: Acessar Tela: Processo de Relatório
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Relatório
  Quando eu visualizar a tela: Processo de Relatório (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Processo de Relatório

*** Keywords ***
Dado que eu acesse o menu: Processo | Relatório
  resource_mnu.Clicar No Menu Processo | Relatório

Quando eu visualizar a tela: Processo de Relatório (Inclusão)
  resource_frmprocessorelatorio.Acessar Tela Processo de Relatório (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Processo de Relatório
  resource_cnsProcessoRelatorio.Acessar Tela Processo de Relatório
