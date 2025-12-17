*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricosituacaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricosituacaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Situações de Veículos (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Situações de Veículos (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Situação Veículo
  Então devo visualizar a tela: Histórico de Situações de Veículos (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Situação Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

Então devo visualizar a tela: Histórico de Situações de Veículos (Consulta)
  resource_cnshistoricosituacaveiculo.Acessar Tela Consulta Histórico de Situações de Veículos
