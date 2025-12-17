*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_consHistoricoVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Histórico por Veiculos
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Histórico por Veiculos

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  resource_frmveiculocolaboradores.Acessar Tela Veículo de Colaborador - Cadastro

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Histórico por Veiculos
  resource_consHistoricoVeiculos.Acessar Tela Consulta de Histórico por Veiculos
