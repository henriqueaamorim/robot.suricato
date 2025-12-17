*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnshistoricolocalveiculo.robot
Resource        ../../../../resource/app/resource_frmhistoricolocalveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Histórico de Locais para Veículos (Consulta)
${SCREENNAME}  Histórico de Locais para Veículos
${APPNAME}     cnshistoricolocalveiculo


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Histórico de Locais para Veículos (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Local Veículo
  Quando visualizar a tela: Histórico de Locais para Veículos (Consulta)
  Então devo verificar a label: Veículo
  E verificar a label: Data Início
  E verificar a label: Hora Início
  E verificar a label: Local
  E verificar a label: Data Final
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Local Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo

Quando visualizar a tela: Histórico de Locais para Veículos (Consulta)
  resource_cnshistoricolocalveiculo.Acessar Tela Consulta Histórico de Locais para Veículos

Então devo verificar a label: Veículo
  resource_cnshistoricolocalveiculo.Verificar a label Veículo

E verificar a label: Data Início
  resource_cnshistoricolocalveiculo.Verificar a label Data Início

E verificar a label: Hora Início
  resource_cnshistoricolocalveiculo.Verificar a label Hora Início

E verificar a label: Local
  resource_cnshistoricolocalveiculo.Verificar a label Local

E verificar a label: Data Final
  resource_cnshistoricolocalveiculo.Verificar a label Data Final

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	