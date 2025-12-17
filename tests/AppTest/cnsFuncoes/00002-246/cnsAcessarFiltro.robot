*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFuncoes.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Função (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Função (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Função
  Quando ver a tela: Função (Consulta)
  E clicar no botão Pesquisar Registros
  Então devo ver a tela: Função (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Função
  resource_mnu.Clicar No Menu Dispositivo | Codin | Função

Quando ver a tela: Função (Consulta)
  resource_cnsFuncoes.Acessar Tela Consulta de Funções

E clicar no botão Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Função (Filtro)
  resource_cnsFuncoes.Acessar Tela Função (Filtro)