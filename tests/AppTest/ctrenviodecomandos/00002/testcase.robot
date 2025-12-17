*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrenviodelotes.robot
Resource        ../../../../resource/app/resource_ctrenviodecomandos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}   Envio de Lote de Comandos
${APPNAME}      ctrenviodecomandos
${OBJETIVO}     Verificar todos os campos na tela Envio de Lote de Comandos.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Envio de Lote de Comandos
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Lote
  Ao visualizar a tela: Envio de Lote de Comandos
  E clicar no botão: Mostrar
  Então devo visualizar a tela: Envio de Lote de Comandos
  E verificar o campo Comandos
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Lote
  resource_mnu.Clicar No Menu Controle | Comando | Lote

Ao visualizar a tela: Envio de Lote de Comandos
  resource_ctrenviodelotes.Acessar Tela Envio de Lote de Comandos

E clicar no botão: Mostrar
  resource_btn.Clicar No Botão Mostrar

Então devo visualizar a tela: Envio de Lote de Comandos
  resource_ctrenviodecomandos.Acessar Tela Envio de Lote de Comandos

E verificar o campo Comandos
  resource_ctrenviodecomandos.Verificar o campo Comandos

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"