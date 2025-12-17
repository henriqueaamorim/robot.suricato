*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmseguroveiculo.robot
Resource        ../../../../resource/app/resource_cnssegurosveiculoscadastro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela Consulta Seguros de Veículos - Modo Busca
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Cadastro
  Quando eu visualizar a tela: Seguros de Veículos - Atualização
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Seguros de Veículos - Modo Busca

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

Quando eu visualizar a tela: Seguros de Veículos - Atualização
  resource_frmseguroveiculo.Acessar Tela Seguros de Veículos - Atualização

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Seguros de Veículos - Modo Busca
  resource_cnssegurosveiculoscadastro.Acessar Tela Consulta Seguros de Veículos - Modo Busca
