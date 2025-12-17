*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricosituacaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricosituacaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Situações de Veículos (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Situações de Veículos (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Situação Veículo
  Quando visualizar a tela: Histórico de Situações de Veículos (Consulta)
  E clicar no botão: Pesquisar Regitros
  Então devo visualizar a tela: Histórico de Situações de Veículos (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Situação Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

Quando visualizar a tela: Histórico de Situações de Veículos (Consulta)
  resource_cnshistoricosituacaveiculo.Acessar Tela Consulta Histórico de Situações de Veículos

E clicar no botão: Pesquisar Regitros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Situações de Veículos (Filtro)  
  resource_cnshistoricosituacaveiculo.Acessar Tela: Histórico de Situações de Veículos (Filtro)