*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmseguroveiculo.robot
Resource        ../../../../resource/app/resource_cnscorretor_cap.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Consulta Corretor (Busca Externa) Tela através da tela Seguros de Veículos - Atualização
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Cadastro
  Ao visualizar a tela: Seguros de Veículos - Atualização
  Então devo clicar no botão: Abrir um novo registro
  E clicar no botão: Buscar Dados Externos para Corretor
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Corretor (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

Ao visualizar a tela: Seguros de Veículos - Atualização
  resource_frmseguroveiculo.Acessar Tela Seguros de Veículos - Atualização

Então devo clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E clicar no botão: Buscar Dados Externos para Corretor
  resource_frmseguroveiculo.Clicar No Botão Buscar Dados Externos Para Corretor

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Corretor (Busca Externa)
  resource_cnscorretor_cap.Acessar Tela Consulta Corretor (Busca Externa)
