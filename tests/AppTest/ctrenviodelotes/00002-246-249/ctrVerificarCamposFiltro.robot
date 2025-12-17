*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrenviodelotes.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Envio de Lote de Comandos
${APPNAME}     ctrenviodelotes
${OBJETIVO}    Verificar todos os campos na tela: Envio de Lote de Comandos


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Envio de Lote de Comandos
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Lote
  Quando visualizar a tela: Envio de Lote de Comandos
  Então devo verificar o botão: Mostrar
  E verificar o campo Código do Lote
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Lote
  resource_mnu.Clicar No Menu Controle | Comando | Lote

Quando visualizar a tela: Envio de Lote de Comandos
  resource_ctrenviodelotes.Acessar Tela Envio de Lote de Comandos

Então devo verificar o botão: Mostrar
  resource_ctrenviodelotes.Verificar o BTN Mostrar  

E verificar o campo Código do Lote
  resource_ctrenviodelotes.Verificar o campo Código do Lote

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"