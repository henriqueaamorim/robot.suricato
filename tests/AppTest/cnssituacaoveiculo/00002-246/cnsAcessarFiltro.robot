*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsituacaoveiculo.robot
Resource        ../../../../resource/app/resource_cnssituacaoveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Situações para Veículos - Modo Busca (FIltro)

*** Test Cases ***
Testcase: Acessar Tela: Situações para Veículos - Modo Busca (FIltro)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Situações
  Quando visualizar a tela: Situações para Veículos - Modo Busca (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Situações para Veículos - Modo Busca (FIltro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Situações
  resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

Quando visualizar a tela: Situações para Veículos - Modo Busca (Consulta)
  resource_cnssituacaoveiculo.Acessar Tela Consulta Situações para Veículos - Modo Busca

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Situações para Veículos - Modo Busca (FIltro)  
  resource_cnssituacaoveiculo.Acessar Tela Situações para Veículos - Modo Busca (Filtro)