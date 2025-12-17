*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSituacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Situações
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  Então devo ver a tela: Consulta de Situações


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  resource_mnu.Clicar No Menu Estrutura | Situação Trabalhista

Então devo ver a tela: Consulta de Situações
  resource_cnsSituacoes.Acessar Tela Consulta de Situações
