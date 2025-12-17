*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsituacaoveiculo.robot
Resource        ../../../../resource/app/resource_cnssituacaoveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Situações para Veículos - Modo Busca (Consulta)
${SCREENNAME}  Situações para Veículos - Modo Busca
${APPNAME}     cnssituacaoveiculo

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Situações para Veículos - Modo Busca (Consulta)
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Situações
  Quando visualizar a tela: Situações para Veículos - Modo Busca (Consulta)
  Então devo verificar a label: Situação do Veículo
  E verificar a label: Descrição
  E verificar a label: Bloqueia Movimentação
  E verificar a label: Tipo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Situações
  resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

Quando visualizar a tela: Situações para Veículos - Modo Busca (Consulta)
  resource_cnssituacaoveiculo.Acessar Tela Consulta Situações para Veículos - Modo Busca

Então devo verificar a label: Situação do Veículo
  resource_cnssituacaoveiculo.Verificar a label Situação do Veículo

E verificar a label: Descrição
  resource_cnssituacaoveiculo.Verificar a label Descrição

E verificar a label: Bloqueia Movimentação
  resource_cnssituacaoveiculo.Verificar a label Bloqueia Movimentação

E verificar a label: Tipo
  resource_cnssituacaoveiculo.Verificar a label Tipo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"