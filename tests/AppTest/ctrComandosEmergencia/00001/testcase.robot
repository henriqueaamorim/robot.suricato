*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEmergencia.robot
Resource        ../../../../resource/app/resource_ctrComandosEmergencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Comandos de Emergências
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Emergência
  Ao visualizar a tela: Comandos de Emergências
  Então devo selecionar um item no campo Planta
  E clicar em OK
  Então devo visualizar a tela: Comandos de Emergência

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Emergência
  resource_mnu.Clicar No Menu Controle | Comando | Emergência

Ao visualizar a tela: Comandos de Emergências
  resource_ctrEmergencia.Acessar Tela Comandos de Emergências

Então devo selecionar um item no campo Planta
  resource_ctrEmergencia.Selecionar Planta

E clicar em OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Comandos de Emergência
  resource_ctrComandosEmergencia.Acessar Tela Comandos de Emergência
