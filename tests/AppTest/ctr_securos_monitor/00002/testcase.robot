*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_securos_monitor.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
 
${SCREENNAME}  LOG SecurOS
${APPNAME}     ctr_securos_monitor
${OBJETIVO}    Verificar todos os campos na tela LOG SecurOS.


*** Test Cases ***

Testcase: Verificar todos os campos na tela LOG SecurOS
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | LOG SecurOS
  Então devo visualizar a tela: LOG SecurOS
  E verificar o campo Data/Hora
  E verificar o campo Tipo
  E verificar o campo ID
  E verificar o campo Nome
  E verificar o campo Ação
  E verificar o campo Mensagem
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | LOG SecurOS
  resource_mnu.Clicar No Menu Controle | Monitoramento | LOG SecurOS

Então devo visualizar a tela: LOG SecurOS
  resource_ctr_securos_monitor.Acessar Tela LOG SecurOS

E verificar o campo Data/Hora
  resource_ctr_securos_monitor.Verificar o campo Data/Hora

E verificar o campo Tipo
  resource_ctr_securos_monitor.Verificar o campo Tipo

E verificar o campo ID
  resource_ctr_securos_monitor.Verificar o campo ID

E verificar o campo Nome
  resource_ctr_securos_monitor.Verificar o campo Nome

E verificar o campo Ação
  resource_ctr_securos_monitor.Verificar o campo Ação

E verificar o campo Mensagem
  resource_ctr_securos_monitor.Verificar o campo Mensagem

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"