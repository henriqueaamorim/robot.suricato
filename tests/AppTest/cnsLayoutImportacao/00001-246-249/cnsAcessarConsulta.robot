*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLayoutImportacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Layout de Importação e Exportação (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Layout de Importação e Exportação (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Layout de Arquivo
  Então devo visualizar a tela: Layout de Importação e Exportação (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Arquivo
  resource_mnu.Clicar No Menu Processo | Layout de Arquivo

Então devo visualizar a tela: Layout de Importação e Exportação (Consulta)
  resource_cnsLayoutImportacao.Acessar Tela Layout de Importação e Exportação - Consulta
