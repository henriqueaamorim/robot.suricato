*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricosituacaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricosituacaveiculo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Histórico de Situações de Veículos
${APPNAME}     cnshistoricosituacaveiculo
${OBJETIVO}    Verificar todos os campos na tela Histórico de Situações de Veículos.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Histórico de Situações de Veículos
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Situação Veículo
  Quando eu visualizar a tela: Histórico de Situações de Veículos (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Histórico de Situações de Veículos
  E verificar a label Veículo
  E verificar a label Data Início
  E verificar a label Hora Início
  E verificar a label Situação do Veículo
  E verificar a label Data Final
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Situação Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

Quando eu visualizar a tela: Histórico de Situações de Veículos (Inclusão)
  resource_frmhistoricosituacaveiculo.Acessar Tela Histórico de Situações de Veículos (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Histórico de Situações de Veículos
  resource_cnshistoricosituacaveiculo.Acessar Tela Consulta Histórico de Situações de Veículos

E verificar a label Veículo
  resource_cnshistoricosituacaveiculo.Verificar a label Veículo

E verificar a label Data Início
  resource_cnshistoricosituacaveiculo.Verificar a label Data Início

E verificar a label Hora Início
  resource_cnshistoricosituacaveiculo.Verificar a label Hora Início

E verificar a label Situação do Veículo
  resource_cnshistoricosituacaveiculo.Verificar a label Situação do Veículo

E verificar a label Data Final
  resource_cnshistoricosituacaveiculo.Verificar a label Data Final

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
