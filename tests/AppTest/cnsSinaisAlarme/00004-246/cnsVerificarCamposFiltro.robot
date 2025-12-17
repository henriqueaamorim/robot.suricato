*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSinaisAlarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Sinal de Alarme (Filtro)
${SCREENNAME}  Sinal de Alarme
${APPNAME}     cnsSinaisAlarme

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Sinal de Alarme (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  Quando ver a tela: Sinal de Alarme (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Sinal de Alarme (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Sinal de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

Quando ver a tela: Sinal de Alarme (Consulta)
  resource_cnsSinaisAlarme.Acessar Tela Consulta de Sinais de Alarme

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Sinal de Alarme (Filtro)
    resource_cnsSinaisAlarme.Acessar Tela Sinais de Alarme (Filtro) 

E verificar a label: Pesquisa
    resource_cnsSinaisAlarme.Verificar a label Pesquisa

E verificar o campo: Descrição
    resource_cnsSinaisAlarme.Verificar o campo Descrição

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"