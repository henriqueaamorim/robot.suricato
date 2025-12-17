*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstacionamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Consulta de Estacionamento 
${SCREENNAME}  Consulta de Estacionamento
${APPNAME}     cnsEstacionamento

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Consulta de Estacionamento 
  [Tags]   VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Estacionamento
  Quando ver a tela: Consulta de Estacionamento 
  Então devo verificar a label Código
  Então devo verificar a label Descrição
  Então devo verificar a label Vagas Fixas
  Então devo verificar a label Vagas Rotativas
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Estacionamento
  resource_mnu.Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos

Quando ver a tela: Consulta de Estacionamento 
  resource_cnsEstacionamento.Acessar Tela Consulta de Estacionamento

Então devo verificar a label Código
  resource_cnsEstacionamento.Verificar a label Código

Então devo verificar a label Descrição
  resource_cnsEstacionamento.Verificar a label Descrição

Então devo verificar a label Vagas Fixas
  resource_cnsEstacionamento.Verificar a label Vagas Fixas

Então devo verificar a label Vagas Rotativas
  resource_cnsEstacionamento.Verificar a label Vagas Rotativas

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
