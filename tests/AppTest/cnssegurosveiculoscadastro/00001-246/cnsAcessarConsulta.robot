*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmseguroveiculo.robot
Resource        ../../../../resource/app/resource_cnssegurosveiculoscadastro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Seguros de Veículos - Modo Busca (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Seguros de Veículos - Modo Busca (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Cadastro
  Então devo visualizar a tela: Seguros de Veículos - Modo Busca (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

Então devo visualizar a tela: Seguros de Veículos - Modo Busca (Consulta)
  resource_cnssegurosveiculoscadastro.Acessar Tela Consulta Seguros de Veículos - Modo Busca
