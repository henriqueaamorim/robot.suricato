*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnshistoricolocalveiculo.robot
Resource        ../../../../resource/app/resource_frmhistoricolocalveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Locais para Veículos (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Histórico de Locais para Veículos (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Local Veículo
  Então devo visualizar a tela: Histórico de Locais para Veículos (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Local Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo

Então devo visualizar a tela: Histórico de Locais para Veículos (Consulta)
  resource_cnshistoricolocalveiculo.Acessar Tela Consulta Histórico de Locais para Veículos
