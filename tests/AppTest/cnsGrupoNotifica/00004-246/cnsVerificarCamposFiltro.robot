*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoNotifica.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Notificações Alarme REP (Filtro)
${SCREENNAME}  Notificações
${APPNAME}     cnsGrupoNotifica

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Notificações Alarme REP (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  Quando ver a tela: Notificações Alarme REP (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Notificações Alarme REP (Filtro)
  E verificar o campo: Código
  E verificar o campo: Descrição
  E verificar o campo: E-mail	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Notificações
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Notificações

Quando ver a tela: Notificações Alarme REP (Consulta)
  resource_cnsGrupoNotifica.Acessar Tela Consulta Notificações Alarme REP

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo ver a tela: Notificações Alarme REP (Filtro)
    resource_cnsGrupoNotifica.Acessar Tela Filtro Notificações Alarme REP

E verificar o campo: Código
    resource_cnsGrupoNotifica.Verificar o campo Código

E verificar o campo: Descrição
    resource_cnsGrupoNotifica.Verificar o campo Descrição

E verificar o campo: E-mail	    
    resource_cnsGrupoNotifica.Verificar o campo E-mail

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"