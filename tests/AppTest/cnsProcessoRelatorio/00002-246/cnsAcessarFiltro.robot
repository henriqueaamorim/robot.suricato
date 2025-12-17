*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocessorelatorio.robot
Resource        ../../../../resource/app/resource_cnsProcessoRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Processo de Relatório (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Processo de Relatório (Filto)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Relatório
  Quando eu visualizar a tela: Processo de Relatório (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Processo de Relatório (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Processo | Relatório
  resource_mnu.Clicar No Menu Processo | Relatório

Quando eu visualizar a tela: Processo de Relatório (Consulta)
  resource_cnsProcessoRelatorio.Acessar Tela Processo de Relatório 

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Processo de Relatório (Filtro)
  resource_cnsProcessoRelatorio.Acessar Tela Processo de Relatório (Filtro)
