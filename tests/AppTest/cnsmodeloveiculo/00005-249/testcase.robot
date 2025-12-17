*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmodeloveiculo.robot
Resource        ../../../../resource/app/resource_cnsmodeloveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Modelos de Veículos
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Modelos
  Quando eu visualizar a tela: Modelos de Veículos (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Modelos de Veículos

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Modelos
  resource_mnu.Clicar No Menu Veículos | Cadastro | Modelos

Quando eu visualizar a tela: Modelos de Veículos (Atualização)
  resource_frmmodeloveiculo.Acessar Tela Modelos de Veículos (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Modelos de Veículos
  resource_cnsmodeloveiculo.Acessar Tela Consulta Modelos de Veículos
