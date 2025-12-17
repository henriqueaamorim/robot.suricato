*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricocrachaveiculo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Históricos de Crachá de Veículos
${APPNAME}     cnshistoricocrachaveiculo
${OBJETIVO}    Verificar todos os campos na tela Históricos de Crachá de Veículos.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Históricos de Crachá de Veículos
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  Quando eu visualizar a tela: Histórico de Crachás para Veículos (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Históricos de Crachá de Veículos
  E verificar a label Veículo 
  E verificar a label Data/Hora Inicial
  E verificar a label Crachá
  E verificar a label Data/Hora Final
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Quando eu visualizar a tela: Histórico de Crachás para Veículos (Inclusão)
  resource_frmhistoricocrachaveiculo.Acessar Tela Histórico de Crachás para Veículos (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Históricos de Crachá de Veículos
  resource_cnshistoricocrachaveiculo.Acessar Tela Históricos de Crachá de Veículos

E verificar a label Veículo 
  resource_cnshistoricocrachaveiculo.Verificar a label Veículo 

E verificar a label Data/Hora Inicial
  resource_cnshistoricocrachaveiculo.Verificar a label Data/Hora Inicial

E verificar a label Crachá
  resource_cnshistoricocrachaveiculo.Verificar a label Crachá

E verificar a label Data/Hora Final
  resource_cnshistoricocrachaveiculo.Verificar a label Data/Hora Final

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
