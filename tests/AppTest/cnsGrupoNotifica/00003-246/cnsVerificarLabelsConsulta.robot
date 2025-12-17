*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoNotifica.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Notificações Alarme REP (Consulta)
${SCREENNAME}  Notificações
${APPNAME}     cnsGrupoNotifica

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Notificações Alarme REP (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  Quando ver a tela: Notificações Alarme REP (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar a label: E-mail
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Notificações

Quando ver a tela: Notificações Alarme REP (Consulta)
  resource_cnsGrupoNotifica.Acessar Tela Consulta Notificações Alarme REP

Então devo verificar a label: Código
    resource_cnsGrupoNotifica.Verificar a label Código

E verificar a label: Descrição
    resource_cnsGrupoNotifica.Verificar a label Descrição

E verificar a label: E-mail
    resource_cnsGrupoNotifica.Verificar a label E-mail

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"