*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsContratos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar Tela Consulta de Contratos (Filtro)

*** Test Cases ***

Testcase: Acessar Tela Consulta de Contratos (Filtro)
  [Tags]  PRINT  POPULATED  246  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  Então devo ver a tela: Consulta de Contratos
  E clicar no botão: Pesquisar
  Então devo ver a tela: Consulta de Contratos (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

Então devo ver a tela: Consulta de Contratos
  resource_cnsContratos.Acessar Tela Consulta de Contratos

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Consulta de Contratos (Filtro)
  resource_cnsContratos.Acessar Tela Consulta de Contratos (Filtro)