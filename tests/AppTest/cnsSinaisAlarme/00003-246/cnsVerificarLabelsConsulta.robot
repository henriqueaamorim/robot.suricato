*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSinaisAlarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Sinais de Alarme (Consulta)
${SCREENNAME}  Sinal de Alarme
${APPNAME}     cnsSinaisAlarme

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Sinal de Alarme (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  Quando ver a tela: Sinal de Alarme (Consulta)
  Então devo verificar a label: Sinal de Alarme
  E verifcar a label: Descrição
  E verifcar a label: Cor para Sinal Não Tratado
  E verifcar a label: Cor para Sinal Reconhecido
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

Quando ver a tela: Sinal de Alarme (Consulta)
  resource_cnsSinaisAlarme.Acessar Tela Consulta de Sinais de Alarme

Então devo verificar a label: Sinal de Alarme
    resource_cnsSinaisAlarme.Verificar a label Sinal de Alarme

E verifcar a label: Descrição
    resource_cnsSinaisAlarme.Verificar a label Descrição

E verifcar a label: Cor para Sinal Não Tratado
    resource_cnsSinaisAlarme.Verificar a label Cor para Sinal Não Tratado

E verifcar a label: Cor para Sinal Reconhecido
    resource_cnsSinaisAlarme.Verificar a label Cor para Sinal Reconhecido

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"