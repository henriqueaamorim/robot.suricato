*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSinaisAlarme.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Sinal de Alarme (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Sinal de Alarme (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  Quando ver a tela: Sinal de Alarme (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Sinal de Alarme (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

Quando ver a tela: Sinal de Alarme (Consulta)
  resource_cnsSinaisAlarme.Acessar Tela Consulta de Sinais de Alarme

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Sinal de Alarme (Filtro)
    resource_cnsSinaisAlarme.Acessar Tela Sinais de Alarme (Filtro)