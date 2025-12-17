*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsituacaoveiculo.robot
Resource        ../../../../resource/app/resource_cnssituacaoveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Situações para Veículos - Modo Busca
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Situações
  Quando eu visualizar a tela: Situações para Veículos (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Situações para Veículos - Modo Busca

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Situações
  resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

Quando eu visualizar a tela: Situações para Veículos (Atualização)
  resource_frmsituacaoveiculo.Acessar Tela Situações para Veículos (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Situações para Veículos - Modo Busca
  resource_cnssituacaoveiculo.Acessar Tela Consulta Situações para Veículos - Modo Busca
