*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnshistoricolocalveiculo.robot
Resource        ../../../../resource/app/resource_frmhistoricolocalveiculo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Histórico de Locais para Veículos
${APPNAME}     cnshistoricolocalveiculo
${OBJETIVO}    Verificar todos os campos na tela Consulta Histórico de Locais para Veículos.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Histórico de Locais para Veículos
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Local Veículo
  Quando eu visualizar a tela: Histórico de Locais para Veículos (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Histórico de Locais para Veículos
  E verificar a label Veículo
  E verificar a label Data Início
  E verificar a label Hora Início
  E verificar a label Local
  E verificar a label Data Final
  E verificar se existe o campo Teste
  
*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Local Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo

Quando eu visualizar a tela: Histórico de Locais para Veículos (Inclusão)
  resource_frmhistoricolocalveiculo.Acessar Tela Histórico de Locais para Veículos (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Histórico de Locais para Veículos
  resource_cnshistoricolocalveiculo.Acessar Tela Consulta Histórico de Locais para Veículos

E verificar a label Veículo
  resource_cnshistoricolocalveiculo.Verificar a label Veículo

E verificar a label Data Início
  resource_cnshistoricolocalveiculo.Verificar a label Data Início

E verificar a label Hora Início
  resource_cnshistoricolocalveiculo.Verificar a label Hora Início

E verificar a label Local
  resource_cnshistoricolocalveiculo.Verificar a label Local

E verificar a label Data Final
  resource_cnshistoricolocalveiculo.Verificar a label Data Final

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
