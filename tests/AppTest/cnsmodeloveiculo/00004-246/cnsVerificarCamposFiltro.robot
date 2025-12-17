*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmodeloveiculo.robot
Resource        ../../../../resource/app/resource_cnsmodeloveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Modelos de Veículos (Filtro)
${SCREENNAME}  Modelos de Veículos
${APPNAME}     cnsmodeloveiculo

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Modelos de Veículos (Filtro)
  [Tags]   VERIFY   246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Modelos
  Quando eu visualizar a tela: Modelos de Veículos (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Modelos de Veículos (Filtro)
  E verificar o campo: Marca	
  E verificar o campo: Cód Modelo Veículo	
  E verificar o campo: Perc. Real Indicado	
  E verificar o campo: Tipo de Veículo	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Modelos
  resource_mnu.Clicar No Menu Veículos | Cadastro | Modelos

Quando eu visualizar a tela: Modelos de Veículos (Consulta)
  resource_cnsmodeloveiculo.Acessar Tela Consulta Modelos de Veículos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Modelos de Veículos (Filtro)  
  resource_cnsmodeloveiculo.Acessar Tela Consulta Modelos de Veículos - Filtro

E verificar o campo: Marca	
   resource_cnsmodeloveiculo.Verificar o campo: Marca

E verificar o campo: Cód Modelo Veículo	
   resource_cnsmodeloveiculo.Verificar o campo: Cód Modelo Veículo

E verificar o campo: Perc. Real Indicado	
   resource_cnsmodeloveiculo.Verificar o campo: Perc. Real Indicado

E verificar o campo: Tipo de Veículo	
   resource_cnsmodeloveiculo.Verificar o campo: Tipo de Veículo

E verificar se existe o campo Teste na tela 
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
