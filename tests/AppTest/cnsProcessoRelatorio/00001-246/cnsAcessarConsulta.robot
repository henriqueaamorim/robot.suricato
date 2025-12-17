*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocessorelatorio.robot
Resource        ../../../../resource/app/resource_cnsProcessoRelatorio.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Relatório (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Processo de Relatório (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Relatório
  Então devo visualizar a tela: Processo de Relatório (Consulta)
 

*** Keywords ***
Dado que eu acesse o menu: Processo | Relatório
  resource_mnu.Clicar No Menu Processo | Relatório

Então devo visualizar a tela: Processo de Relatório (Consulta)
  resource_cnsProcessoRelatorio.Acessar Tela Processo de Relatório 

