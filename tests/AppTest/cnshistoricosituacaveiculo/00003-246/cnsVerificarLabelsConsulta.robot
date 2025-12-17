*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricosituacaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricosituacaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Histórico de Situações de Veículos (Consulta)
${SCREENNAME}  Histórico de Situações de Veículos
${APPNAME}     cnshistoricosituacaveiculo

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Situações de Veículos (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Situação Veículo
  Quando visualizar a tela: Histórico de Situações de Veículos (Consulta)
  Então devo verificar a label: Veículo
  E verificar a label: Data Início
  E verificar a label: Hora Início
  E verificar a label: Situação do Veículo
  E verificar a label: Data Final
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Situação Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

Quando visualizar a tela: Histórico de Situações de Veículos (Consulta)
  resource_cnshistoricosituacaveiculo.Acessar Tela Consulta Histórico de Situações de Veículos

Então devo verificar a label: Veículo
  resource_cnshistoricosituacaveiculo.Verificar a label Veículo

E verificar a label: Data Início
  resource_cnshistoricosituacaveiculo.Verificar a label Data Início

E verificar a label: Hora Início
  resource_cnshistoricosituacaveiculo.Verificar a label Hora Início

E verificar a label: Situação do Veículo
  resource_cnshistoricosituacaveiculo.Verificar a label Situação do Veículo

E verificar a label: Data Final
  resource_cnshistoricosituacaveiculo.Verificar a label Data Final

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	