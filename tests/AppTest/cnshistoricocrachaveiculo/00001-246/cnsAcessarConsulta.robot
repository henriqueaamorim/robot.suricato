*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricocrachaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Históricos de Crachá de Veículos (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Históricos de Crachá de Veículos (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Crachá Veículo
  Então devo visualizar a tela: Históricos de Crachá de Veículos (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Então devo visualizar a tela: Históricos de Crachá de Veículos (Consulta)
  resource_cnshistoricocrachaveiculo.Acessar Tela Históricos de Crachá de Veículos
