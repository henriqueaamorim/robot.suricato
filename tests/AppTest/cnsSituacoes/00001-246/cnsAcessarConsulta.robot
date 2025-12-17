*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSituacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Situação (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Situação (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  Então devo ver a tela: Situação (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  resource_mnu.Clicar No Menu Estrutura | Situação Trabalhista

Então devo ver a tela: Situação (Consulta)
  resource_cnsSituacoes.Acessar Tela Consulta de Situações
