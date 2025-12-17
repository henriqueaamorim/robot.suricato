*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conspermissaoacessobusca.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Grupo (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  Então devo visualizar a tela: Grupo (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Acessos

Então devo visualizar a tela: Grupo (Consulta)
  resource_conspermissaoacessobusca.Acessar Tela Consulta de Grupos
