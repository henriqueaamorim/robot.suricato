*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar Tela: Histórico de Cargo (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Cargo (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  Quando visualizar a tela: Histórico de Cargo (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Histórico de Cargo (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Cargo

Quando visualizar a tela: Histórico de Cargo (Consulta)
  resource_cnsHistoricoCargo.Acessar Tela Consulta de Histórico de Cargos

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Cargo (Filtro)
  resource_cnsHistoricoCargo.Acessar Tela Filtro de Histórico de Cargos