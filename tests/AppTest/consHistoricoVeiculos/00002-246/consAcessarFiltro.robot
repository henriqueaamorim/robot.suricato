*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_consHistoricoVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}    Acessar Tela: Veículo de Colaborador (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Veículo de Colaborador (Filtro)
  [Tags]  PRINT  POPULATED  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador
  Quando eu visualizar a tela: Veículo de Colaborador (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Veículo de Colaborador (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Quando eu visualizar a tela: Veículo de Colaborador (Consulta)
  resource_consHistoricoVeiculos.Acessar Tela Consulta de Histórico por Veiculos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Veículo de Colaborador (Filtro)
  resource_consHistoricoVeiculos.Acessar Tela Consulta de Histórico por Veiculos
