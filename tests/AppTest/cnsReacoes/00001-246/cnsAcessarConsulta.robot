*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar Tela: Reação de Alarme (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Reação de Alarme (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  Então devo ver a tela: Reação de Alarme (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Alarme

Então devo ver a tela: Reação de Alarme (Consulta)
  resource_cnsReacoes.Acessar Tela Consulta de Reações
