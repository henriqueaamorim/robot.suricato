*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricocrachaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Históricos de Crachá de Veículos (Consulta)
${SCREENNAME}  Históricos de Crachá de Veículos
${APPNAME}     cnshistoricocrachaveiculo

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Históricos de Crachá de Veículos (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Crachá Veículo
  Quando visualizar a tela: Históricos de Crachá de Veículos (Consulta)
  Então devo verificar a label: Veículo
  E verificar a label: Data/Hora Inicial
  E verificar a label: Crachá
  E verificar a label: Data/Hora Final
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Quando visualizar a tela: Históricos de Crachá de Veículos (Consulta)
  resource_cnshistoricocrachaveiculo.Acessar Tela Históricos de Crachá de Veículos

Então devo verificar a label: Veículo
  resource_cnshistoricocrachaveiculo.Verificar a label Veículo 

E verificar a label: Data/Hora Inicial
  resource_cnshistoricocrachaveiculo.Verificar a label Data/Hora Inicial

E verificar a label: Crachá
  resource_cnshistoricocrachaveiculo.Verificar a label Crachá

E verificar a label: Data/Hora Final
  resource_cnshistoricocrachaveiculo.Verificar a label Data/Hora Final

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"