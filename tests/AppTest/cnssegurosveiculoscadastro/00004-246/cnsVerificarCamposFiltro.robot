*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmseguroveiculo.robot
Resource        ../../../../resource/app/resource_cnssegurosveiculoscadastro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Seguros de Veículos - Modo Busca (Filtro)
${SCREENNAME}  Seguros de Veículos - Modo Busca
${APPNAME}     cnssegurosveiculoscadastro


*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Seguros de Veículos - Modo Busca (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Cadastro
  Quando visualizar a tela: Seguros de Veículos - Modo Busca (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Seguros de Veículos - Modo Busca (Filtro)
  E verificar o campo: Veículo
  E verificar o campo: Número Apólice	
  E verificar o campo: Corretor	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

Quando visualizar a tela: Seguros de Veículos - Modo Busca (Consulta)
  resource_cnssegurosveiculoscadastro.Acessar Tela Consulta Seguros de Veículos - Modo Busca

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Seguros de Veículos - Modo Busca (Filtro)  
  resource_cnssegurosveiculoscadastro.Acessar Tela Seguros de Veículos - Modo Busca (Filtro)

E verificar o campo: Veículo
  resource_cnssegurosveiculoscadastro.Verificar o campo: Veículo

E verificar o campo: Número Apólice	
  resource_cnssegurosveiculoscadastro.Verificar o campo: Número Apólice

E verificar o campo: Corretor	
  resource_cnssegurosveiculoscadastro.Verificar o campo: Corretor

E verificar se existe o campo Teste na tela   
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  