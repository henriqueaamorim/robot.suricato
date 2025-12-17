*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmodeloveiculo.robot
Resource        ../../../../resource/app/resource_cnsmodeloveiculo.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta Modelos de Veículos
${APPNAME}     cnsmodeloveiculo
${OBJETIVO}    Verificar todos os campos na tela Consulta Modelos de Veículos.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta Modelos de Veículos
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Modelos
  Quando eu visualizar a tela: Modelos de Veículos (Inclusão)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Modelos de Veículos
  E verificar a label Cód Modelo Veículo
  E verificar a label Marca
  E verificar a label Apelido
  E verificar a label Quantidade Passageiros
  E verificar a label Custo KM/Rodado
  E verificar a label Tipo de Veículo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Modelos
  resource_mnu.Clicar No Menu Veículos | Cadastro | Modelos

Quando eu visualizar a tela: Modelos de Veículos (Inclusão)
  resource_frmmodeloveiculo.Acessar Tela Modelos de Veículos (Inclusão)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Modelos de Veículos
  resource_cnsmodeloveiculo.Acessar Tela Consulta Modelos de Veículos

E verificar a label Cód Modelo Veículo
  resource_cnsmodeloveiculo.Verificar a label Cód Modelo Veículo

E verificar a label Marca
  resource_cnsmodeloveiculo.Verificar a label Marca

E verificar a label Apelido
  resource_cnsmodeloveiculo.Verificar a label Apelido

E verificar a label Quantidade Passageiros
  resource_cnsmodeloveiculo.Verificar a label Quantidade Passageiros

E verificar a label Custo KM/Rodado
  resource_cnsmodeloveiculo.Verificar a label Custo KM/Rodado

E verificar a label Tipo de Veículo
  resource_cnsmodeloveiculo.Verificar a label Tipo de Veículo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
