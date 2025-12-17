*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consAndares.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Cadastro de Andares
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  Então devo ver a tela: Consulta de Cadastro de Andares


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Andares
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

Então devo ver a tela: Consulta de Cadastro de Andares
  resource_consAndares.Acessar Tela Consulta de Cadastro de Andares
