*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricocrachaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Históricos de Crachá de Veículos
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  Quando eu visualizar a tela: Histórico de Crachás para Veículos (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Históricos de Crachá de Veículos

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Quando eu visualizar a tela: Histórico de Crachás para Veículos (Atualização)
  resource_frmhistoricocrachaveiculo.Acessar Tela Histórico de Crachás para Veículos (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Históricos de Crachá de Veículos
  resource_cnshistoricocrachaveiculo.Acessar Tela Históricos de Crachá de Veículos
