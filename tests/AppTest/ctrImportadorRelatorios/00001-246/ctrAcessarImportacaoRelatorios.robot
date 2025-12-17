*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrImportadorRelatorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Importação de Relatórios

*** Test Cases ***
Testcase: Acessar Tela: Importação de Relatórios
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Importar
  Então devo visualizar a tela: Importação de Relatórios

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Importar
  resource_mnu.Clicar No Menu Relatório | Importar

Então devo visualizar a tela: Importação de Relatórios
  resource_ctrImportadorRelatorios.Acessar Tela Importação de Relatórios
