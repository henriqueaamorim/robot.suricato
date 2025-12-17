*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Cadastro de EPI (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Cadastro de EPI (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI
  Quando ver a tela: EPI (Consulta)
  E clicar no botão: Pesquisar 
  Então devo ver a tela: EPI (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI | EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

Quando ver a tela: EPI (Consulta)
  resource_cnsCadastroEPI.Acessar Tela Cadastro de EPI

E clicar no botão: Pesquisar 
  resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: EPI (Filtro)
    resource_cnsCadastroEPI.Acessar Tela Cadastro de EPI (Filtro)