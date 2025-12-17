*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEmergencia.robot
Resource        ../../../../resource/app/resource_ctrComandosEmergencia.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Comandos de Emergência
${APPNAME}     ctrComandosEmergencia
${OBJETIVO}    Verificar todos os campos na tela Comandos de Emergências.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Comandos de Emergências
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Emergência
  Ao visualizar a tela: Comandos de Emergências
  Então devo selecionar um item no campo Planta
  E clicar em OK
  Então devo visualizar a tela: Comandos de Emergência
  E verificar o campo Planta*
  E verificar o campo Codins
  E verificar a checkbox Desativar Emergência
  E verificar a checkbox Modo de Operação
  E verificar se existe o campo Teste

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

E verificar o campo Planta*
  resource_ctrComandosEmergencia.Verificar o campo Planta*

E verificar o campo Codins
  resource_ctrComandosEmergencia.Verificar o campo Codins

E verificar a checkbox Desativar Emergência
  resource_ctrComandosEmergencia.Verificar a checkbox Desativar Emergência

E verificar a checkbox Modo de Operação
  resource_ctrComandosEmergencia.Verificar a checkbox Modo de Operação

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"