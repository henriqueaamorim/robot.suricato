*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrWSG.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consultar Ticket no WebService Guardian
${APPNAME}     ctrWSG
${OBJETIVO}    Verificar todos os campos na tela: Consultar Ticket no WebService Guardian

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Consultar Ticket no WebService Guardian
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Consultar Ticket WSG
  Então devo visualizar a tela: Consultar Ticket no WebService Guardian
  E verificar o campo: Código
  E verificar o campo: Ticket
  E verificar o campo: Placa
  E verificar o campo: Crachá
  E verificar a label: Estado
  E verificar a label: Status
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Consultar Ticket WSG
  resource_mnu.Clicar No Menu Entrada | Visitante | Consultar Ticket WSG

Então devo visualizar a tela: Consultar Ticket no WebService Guardian
  resource_ctrWSG.Acessar Tela Consultar Ticket no WebService Guardian

E verificar o campo: Código
  resource_ctrWSG.Verificar o campo: Código

E verificar o campo: Ticket
  resource_ctrWSG.Verificar o campo: Ticket

E verificar o campo: Placa
  resource_ctrWSG.Verificar o campo: Placa

E verificar o campo: Crachá
  resource_ctrWSG.Verificar o campo: Crachá

E verificar a label: Estado
  resource_ctrWSG.Verificar a label: Estado

E verificar a label: Status
  resource_ctrWSG.Verificar a label: Status

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
