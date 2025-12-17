*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Impressão de Relatório (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Impressão de Relatório (Consulta)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatório | Consulta Impressa
  Então devo visualizar a tela: Impressão de Relatório (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Relatório | Consulta Impressa
  resource_mnu.Clicar No Menu Relatório | Consulta Impressa

Então devo visualizar a tela: Impressão de Relatório (Consulta)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório
