*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricocrachaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricocrachaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Históricos de Crachá de Veículos (Filtro)
${SCREENNAME}  Históricos de Crachá de Veículos
${APPNAME}     cnshistoricocrachaveiculo

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Históricos de Crachá de Veículos (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Crachá Veículo
  Quando visualizar a tela: Históricos de Crachá de Veículos (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Históricos de Crachá de Veículos (Filtro)
  E verificar o campo: Veículo
  E verificar o campo: Data Inicial	
  E verificar o campo: Hora Inicial	
  E verificar o campo: Crachá
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Crachá Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

Quando visualizar a tela: Históricos de Crachá de Veículos (Consulta)
  resource_cnshistoricocrachaveiculo.Acessar Tela Históricos de Crachá de Veículos

E clicar no botão: Pesquisar registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Históricos de Crachá de Veículos (Filtro)
  resource_cnshistoricocrachaveiculo.Acessar Tela Históricos de Crachá de Veículos (Filtro)

E verificar o campo: Veículo
  resource_cnshistoricocrachaveiculo.Verificar o campo: Veículo

E verificar o campo: Data Inicial	
  resource_cnshistoricocrachaveiculo.Verificar o campo: Data Inicial

E verificar o campo: Hora Inicial	
  resource_cnshistoricocrachaveiculo.Verificar o campo: Hora Inicial

E verificar o campo: Crachá
  resource_cnshistoricocrachaveiculo.Verificar o campo: Crachá

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}" 