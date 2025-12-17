*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentrodeCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar tela Consulta de Centro de Custo
  [Tags]  PRINT  POPULATED  249  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  Então devo visualizar a tela: Consulta Centro de Custo

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Centro de Custo

Então devo visualizar a tela: Consulta Centro de Custo
  resource_cnsCentrodeCusto.Acessar Tela Consulta de Centro de Custo
