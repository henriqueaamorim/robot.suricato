*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consElevadores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Cadastro de Elevadores
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Elevadores
  Então devo ver a tela: Consulta de Cadastro de Elevadores


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Elevadores
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores

Então devo ver a tela: Consulta de Cadastro de Elevadores
  resource_consElevadores.Acessar Tela Consulta de Cadastro de Elevadores
