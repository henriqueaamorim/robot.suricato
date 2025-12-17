*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrenviodelotes.robot
Resource        ../../../../resource/app/resource_ctrenviodecomandos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Envio de Lote de Comandos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Lote
  Ao visualizar a tela: Envio de Lote de Comandos
  E clicar no botão: Mostrar
  Então devo visualizar a tela: Envio de Lote de Comandos

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Lote
  resource_mnu.Clicar No Menu Controle | Comando | Lote

Ao visualizar a tela: Envio de Lote de Comandos
  resource_ctrenviodelotes.Acessar Tela Envio de Lote de Comandos

E clicar no botão: Mostrar
  resource_btn.Clicar No Botão Mostrar

Então devo visualizar a tela: Envio de Lote de Comandos
  resource_ctrenviodecomandos.Acessar Tela Envio de Lote de Comandos
