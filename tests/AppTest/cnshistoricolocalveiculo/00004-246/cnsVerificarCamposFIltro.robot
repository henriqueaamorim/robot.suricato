*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnshistoricolocalveiculo.robot
Resource        ../../../../resource/app/resource_frmhistoricolocalveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Verificar todos os campos na Tela: Histórico de Locais para Veículos (Filtro)


*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Histórico de Locais para Veículos (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Local Veículo
  Quando visualizar a tela: Histórico de Locais para Veículos (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Histórico de Locais para Veículos (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Veículo
  E verificar o campo: Data Início	
  E verificar o campo: Hora Início	
  E verificar o campo: Data Final	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Históricos | Local Veículo
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo

Quando visualizar a tela: Histórico de Locais para Veículos (Consulta)
  resource_cnshistoricolocalveiculo.Acessar Tela Consulta Histórico de Locais para Veículos

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Locais para Veículos (Filtro)  
   resource_cnshistoricolocalveiculo.Acessar Tela Histórico de Locais para Veículos (Filtro)

E verificar a label: Pesquisa
  resource_cnshistoricolocalveiculo.Verificar a label Pesquisa

E verificar o campo: Veículo
  resource_cnshistoricolocalveiculo.Verificar o campo: Veículo

E verificar o campo: Data Início	
  resource_cnshistoricolocalveiculo.Verificar o campo: Data Início

E verificar o campo: Hora Início	
  resource_cnshistoricolocalveiculo.Verificar o campo: Hora Início

E verificar o campo: Data Final	
  resource_cnshistoricolocalveiculo.Verificar o campo: Data Final

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  