*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCentroCusto.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Centro de Custo (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Centro de Custo (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  Quando visualizar a tela: Histórico de Centro de Custo (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de Centro de Custo (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

Quando visualizar a tela: Histórico de Centro de Custo (Consulta)
  resource_cnsHistoricoCentroCusto.Acessar Tela Consulta de Histórico de Centro de Custo

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Centro de Custo (Filtro)
    resource_cnsHistoricoCentroCusto.Acessar Tela Filtro de Histórico de Centro de Custo