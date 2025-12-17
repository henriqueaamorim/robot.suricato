*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsituacaoveiculo.robot
Resource        ../../../../resource/app/resource_cnssituacaoveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Situações para Veículos - Modo Busca (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Situações para Veículos - Modo Busca (Consulta)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Situações
  Então devo visualizar a tela: Situações para Veículos - Modo Busca (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Situações
  resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

Então devo visualizar a tela: Situações para Veículos - Modo Busca (Consulta)
  resource_cnssituacaoveiculo.Acessar Tela Consulta Situações para Veículos - Modo Busca
