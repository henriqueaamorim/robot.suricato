*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricocrachaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Históricos de Crachá de Veículos (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Históricos de Crachá de Veículos (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Crachá Veículo
  Quando visualizar a tela: Históricos de Crachá de Veículos (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Históricos de Crachá de Veículos (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Quando visualizar a tela: Históricos de Crachá de Veículos (Consulta)
  resource_cnshistoricocrachaveiculo.Acessar Tela Históricos de Crachá de Veículos
