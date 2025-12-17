*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPesquisaTorres.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído


*** Test Cases ***

Testcase: Acessar Tela Consulta de Cadastro de Torres
  [Tags]  PRINT  POPULATED  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Elevador
  Então devo ver a tela: Consulta de Cadastro de Torres


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Elevador
  resource_mnu.Clicar No Menu Estrutura | Elevador

Então devo ver a tela: Consulta de Cadastro de Torres
  resource_consPesquisaTorres.Acessar Tela Consulta de Cadastro de Torres
