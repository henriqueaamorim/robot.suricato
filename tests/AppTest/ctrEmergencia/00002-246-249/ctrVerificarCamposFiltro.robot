*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEmergencia.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}   Comandos de Emergências
${APPNAME}      ctrEmergencia
${OBJETIVO}     Verificar todos os campos na tela: Comandos de Emergências

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Comandos de Emergências
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Emergência
  Então devo visualizar a tela: Comandos de Emergências
  E verificar o campo Planta*
  E verificar o campo Codin
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Emergência
  resource_mnu.Clicar No Menu Controle | Comando | Emergência

Então devo visualizar a tela: Comandos de Emergências
  resource_ctrEmergencia.Acessar Tela Comandos de Emergências

E verificar o campo Planta*
  resource_ctrEmergencia.Verificar o campo Planta*

E verificar o campo Codin
  resource_ctrEmergencia.Verificar o campo Codin

E verificar se existe o campo Teste
	resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"