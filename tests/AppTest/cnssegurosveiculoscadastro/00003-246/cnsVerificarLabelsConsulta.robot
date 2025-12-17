*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmseguroveiculo.robot
Resource        ../../../../resource/app/resource_cnssegurosveiculoscadastro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Seguros de Veículos - Modo Busca (Consulta)
${SCREENNAME}  Seguros de Veículos - Modo Busca
${APPNAME}     cnssegurosveiculoscadastro


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Seguros de Veículos - Modo Busca (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Cadastro
  Quando visualizar a tela: Seguros de Veículos - Modo Busca (Consulta)
  Então devo verificar a label: Veículo
  E verificar a label: Corretor
  E verificar a label: Número Apólice
  E verificar a label: Data Início
  E verificar a label: Data Validade
  E verificar a label: Valor Segurado
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

Quando visualizar a tela: Seguros de Veículos - Modo Busca (Consulta)
  resource_cnssegurosveiculoscadastro.Acessar Tela Consulta Seguros de Veículos - Modo Busca

Então devo verificar a label: Veículo
  resource_cnssegurosveiculoscadastro.Verificar a label Veículo 

E verificar a label: Corretor
  resource_cnssegurosveiculoscadastro.Verificar a label Corretor

E verificar a label: Número Apólice
  resource_cnssegurosveiculoscadastro.Verificar a label Número Apólice

E verificar a label: Data Início
  resource_cnssegurosveiculoscadastro.Verificar a label Data Início

E verificar a label: Data Validade
  resource_cnssegurosveiculoscadastro.Verificar a label Data Validade

E verificar a label: Valor Segurado  
  resource_cnssegurosveiculoscadastro.Verificar a label Valor Segurado

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	  

