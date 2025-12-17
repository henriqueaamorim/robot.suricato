*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSituacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Situação (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Situação (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  Quando ver a tela: Situação (Consulta)
  E clicar no botão Pesquisar Registro
  Então devo ver a tela: Situação (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Situação Trabalhista
  resource_mnu.Clicar No Menu Estrutura | Situação Trabalhista

Quando ver a tela: Situação (Consulta)
  resource_cnsSituacoes.Acessar Tela Consulta de Situações

E clicar no botão Pesquisar Registro
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Situação (Filtro)
  resource_cnsSituacoes.Acessar Tela Consulta de Situações (Filtro)
