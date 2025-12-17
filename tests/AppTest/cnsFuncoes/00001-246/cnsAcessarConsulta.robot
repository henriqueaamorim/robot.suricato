*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFuncoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Função (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Função (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Função
  Então devo ver a tela: Função (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Função
  resource_mnu.Clicar No Menu Dispositivo | Codin | Função

Então devo ver a tela: Função (Consulta)
  resource_cnsFuncoes.Acessar Tela Consulta de Funções
