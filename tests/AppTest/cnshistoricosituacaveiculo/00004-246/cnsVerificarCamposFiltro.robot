*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmhistoricosituacaveiculo.robot
Resource        ../../../../resource/app/resource_cnshistoricosituacaveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Histórico de Situações de Veículos (Filtro)
${SCREENNAME}  Histórico de Situações de Veículos
${APPNAME}     cnshistoricosituacaveiculo

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Histórico de Situações de Veículos (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Situação Veículo
  Quando visualizar a tela: Histórico de Situações de Veículos (Consulta)
  E clicar no botão: Pesquisar Regitros
  Então devo visualizar a tela: Histórico de Situações de Veículos (Filtro)
  E verificar o campo: Veículo	
  E verificar o campo: Data Início	
  E verificar o campo: Hora Início	
  E verificar o campo: Situação do Veículo	
  E verificar o campo: Data Final	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Situação Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

Quando visualizar a tela: Histórico de Situações de Veículos (Consulta)
  resource_cnshistoricosituacaveiculo.Acessar Tela Consulta Histórico de Situações de Veículos

E clicar no botão: Pesquisar Regitros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Situações de Veículos (Filtro)  
  resource_cnshistoricosituacaveiculo.Acessar Tela: Histórico de Situações de Veículos (Filtro)

E verificar o campo: Veículo	
  resource_cnshistoricosituacaveiculo.Verificar o campo: Veículo

E verificar o campo: Data Início	
  resource_cnshistoricosituacaveiculo.Verificar o campo: Data Início

E verificar o campo: Hora Início	
  resource_cnshistoricosituacaveiculo.Verificar o campo: Hora Início

E verificar o campo: Situação do Veículo	
  resource_cnshistoricosituacaveiculo.Verificar o campo: Situação do Veículo

E verificar o campo: Data Final	
  resource_cnshistoricosituacaveiculo.Verificar o campo: Data Final

E verificar se existe o campo Teste na tela   
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	