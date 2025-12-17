*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abaVeiculos.robot
Resource        ../../../../resource/app/resource_frmveiculocolaboradores.robot
Resource        ../../../../resource/app/resource_cons_histoVeic.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Histórico de Colaboradores por Veículo - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  E clicar na aba: Histórico de Responsáveis
  Então devo visualizar a tela: Histórico de Colaboradores por Veículo
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de Colaboradores por Veículo - Filtro

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo de Colaborador - Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

Quando eu visualizar a tela: Veículo de Colaborador - Cadastro
  resource_frmveiculocolaboradores.Acessar Tela Veículo de Colaborador - Cadastro

E clicar na aba: Histórico de Responsáveis
  resource_abaVeiculos.Clicar Na Aba Histórico de Responsáveis

Então devo visualizar a tela: Histórico de Colaboradores por Veículo
  resource_cons_histoVeic.Acessar Tela Histórico de Colaboradores por Veículo

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Colaboradores por Veículo - Filtro
  resource_cons_histoVeic.Acessar Tela Histórico de Colaboradores por Veículo - Filtro