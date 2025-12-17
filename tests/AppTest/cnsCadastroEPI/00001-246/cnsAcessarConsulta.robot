*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Cadastro de EPI (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Cadastro de EPI (Consulta)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI
  Então devo ver a tela: EPI (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

Então devo ver a tela: EPI (Consulta)
  resource_cnsCadastroEPI.Acessar Tela Cadastro de EPI
