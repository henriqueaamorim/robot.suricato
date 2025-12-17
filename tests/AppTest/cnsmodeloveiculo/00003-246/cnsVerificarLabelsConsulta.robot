*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmodeloveiculo.robot
Resource        ../../../../resource/app/resource_cnsmodeloveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Modelos de Veículos (Consulta)
${SCREENNAME}  Modelos de Veículos
${APPNAME}     cnsmodeloveiculo

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Modelos de Veículos (Consulta)
  [Tags]  VERIFY   246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Modelos
  Quando visualizar a tela: Modelos de Veículos (Consulta)
  Então devo verificar a label: Cód Modelo Veículo
  E verificar a label: Marca
  E verificar a label: Apelido
  E verificar a label: Quantidade Passageiros
  E verificar a label: Custo KM/Rodado
  E verificar a label: Tipo de Veículo
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Modelos
  resource_mnu.Clicar No Menu Veículos | Cadastro | Modelos

Quando visualizar a tela: Modelos de Veículos (Consulta)
  resource_cnsmodeloveiculo.Acessar Tela Consulta Modelos de Veículos

Então devo verificar a label: Cód Modelo Veículo
  resource_cnsmodeloveiculo.Verificar a label Cód Modelo Veículo

E verificar a label: Marca
  resource_cnsmodeloveiculo.Verificar a label Marca

E verificar a label: Apelido
  resource_cnsmodeloveiculo.Verificar a label Apelido

E verificar a label: Quantidade Passageiros
  resource_cnsmodeloveiculo.Verificar a label Quantidade Passageiros

E verificar a label: Custo KM/Rodado
  resource_cnsmodeloveiculo.Verificar a label Custo KM/Rodado

E verificar a label: Tipo de Veículo
  resource_cnsmodeloveiculo.Verificar a label Tipo de Veículo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

