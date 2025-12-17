*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmseguroveiculo.robot
Resource        ../../../../resource/app/resource_cnssegurosveiculoscadastro.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta Seguros de Veículos - Modo Busca
${APPNAME}     cnssegurosveiculoscadastro
${OBJETIVO}    Verificar todos os campos na tela Consulta Seguros de Veículos - Modo Busca.


*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta Seguros de Veículos - Modo Busca
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Cadastro
  Quando eu visualizar a tela: Seguros de Veículos - Inclusão
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Seguros de Veículos - Modo Busca
  E verificar a label Veículo 
  E verificar a label Corretor
  E verificar a label Número Apólice
  E verificar a label Data Início
  E verificar a label Data Validade
  E verificar a label Valor Segurado
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

Quando eu visualizar a tela: Seguros de Veículos - Inclusão
  resource_frmseguroveiculo.Acessar Tela Seguros de Veículos - Inclusão

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Seguros de Veículos - Modo Busca
  resource_cnssegurosveiculoscadastro.Acessar Tela Consulta Seguros de Veículos - Modo Busca

E verificar a label Veículo 
  resource_cnssegurosveiculoscadastro.Verificar a label Veículo 

E verificar a label Corretor
  resource_cnssegurosveiculoscadastro.Verificar a label Corretor

E verificar a label Número Apólice
  resource_cnssegurosveiculoscadastro.Verificar a label Número Apólice

E verificar a label Data Início
  resource_cnssegurosveiculoscadastro.Verificar a label Data Início

E verificar a label Data Validade
  resource_cnssegurosveiculoscadastro.Verificar a label Data Validade

E verificar a label Valor Segurado
  resource_cnssegurosveiculoscadastro.Verificar a label Valor Segurado

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
