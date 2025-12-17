*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstacionamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Consulta de Estacionamento
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos
  Então devo ver a tela: Consulta de Estacionamento


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos
  resource_mnu.Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos

Então devo ver a tela: Consulta de Estacionamento
  resource_cnsEstacionamento.Acessar Tela Consulta de Estacionamento
