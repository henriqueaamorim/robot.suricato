*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsituacaoveiculo.robot
Resource        ../../../../resource/app/resource_cnssituacaoveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta Situações para Veículos - Modo Busca
${APPNAME}     cnssituacaoveiculo
${OBJETIVO}    Verificar todos os campos na tela Consulta Situações para Veículos - Modo Busca.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta Situações para Veículos - Modo Busca
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Situações
  Quando eu visualizar a tela: Situações para Veículos (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Situações para Veículos - Modo Busca
  E verificar a label Situação do Veículo
  E verificar a label Descrição
  E verificar a label Bloqueia Movimentação
  E verificar a label Tipo
  E verificar se existe o campo Teste
  
*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Situações
  resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

Quando eu visualizar a tela: Situações para Veículos (Inclusão)
  resource_frmsituacaoveiculo.Acessar Tela Situações para Veículos (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Situações para Veículos - Modo Busca
  resource_cnssituacaoveiculo.Acessar Tela Consulta Situações para Veículos - Modo Busca

E verificar a label Situação do Veículo
  resource_cnssituacaoveiculo.Verificar a label Situação do Veículo

E verificar a label Descrição
  resource_cnssituacaoveiculo.Verificar a label Descrição

E verificar a label Bloqueia Movimentação
  resource_cnssituacaoveiculo.Verificar a label Bloqueia Movimentação

E verificar a label Tipo
  resource_cnssituacaoveiculo.Verificar a label Tipo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
