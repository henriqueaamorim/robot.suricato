*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmodeloveiculo.robot
Resource        ../../../../resource/app/resource_cnsmodeloveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Modelos de Veículos (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Modelos de Veículos (Filtro)
  [Tags]  PRINT  POPULATED   246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Modelos
  Quando eu visualizar a tela: Modelos de Veículos (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Modelos de Veículos (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Modelos
  resource_mnu.Clicar No Menu Veículos | Cadastro | Modelos

Quando eu visualizar a tela: Modelos de Veículos (Consulta)
  resource_cnsmodeloveiculo.Acessar Tela Consulta Modelos de Veículos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Modelos de Veículos (Filtro)  
  resource_cnsmodeloveiculo.Acessar Tela Consulta Modelos de Veículos - Filtro

