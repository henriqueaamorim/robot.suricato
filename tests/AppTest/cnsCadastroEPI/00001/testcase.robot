*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro de EPI
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI
  Então devo ver a tela: Cadastro de EPI


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

Então devo ver a tela: Cadastro de EPI
  resource_cnsCadastroEPI.Acessar Tela Cadastro de EPI
