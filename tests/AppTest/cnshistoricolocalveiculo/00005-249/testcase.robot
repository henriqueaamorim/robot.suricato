*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnshistoricolocalveiculo.robot
Resource        ../../../../resource/app/resource_frmhistoricolocalveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela: Consulta Histórico de Locais para Veículos
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Local Veículo
  Quando eu visualizar a tela: Histórico de Locais para Veículos (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Histórico de Locais para Veículos

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Local Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo

Quando eu visualizar a tela: Histórico de Locais para Veículos (Atualização)
  resource_frmhistoricolocalveiculo.Acessar Tela Histórico de Locais para Veículos (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Histórico de Locais para Veículos
  resource_cnshistoricolocalveiculo.Acessar Tela Consulta Histórico de Locais para Veículos
