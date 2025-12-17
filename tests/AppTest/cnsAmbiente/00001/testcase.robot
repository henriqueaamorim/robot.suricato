*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAmbiente.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Ambiente
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  Então devo ver a tela: Consulta de Ambiente


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Ambiente
  resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

Então devo ver a tela: Consulta de Ambiente
  resource_cnsAmbiente.Acessar Tela Consulta de Ambiente
