*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSinaisAlarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Testcase: Acessar Tela Consulta de Sinal de Alarme (Consulta)

*** Test Cases ***
Testcase: Acessar Tela Consulta de Sinal de Alarme (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  Então devo ver a tela: Sinal de Alarme (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

Então devo ver a tela: Sinal de Alarme (Consulta)
  resource_cnsSinaisAlarme.Acessar Tela Consulta de Sinais de Alarme
