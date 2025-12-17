*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoREP.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Grupo de REP (Consulta)
${SCREENNAME}  Grupo de REP
${APPNAME}     cnsGrupoREP

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Grupo de REP (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Grupo de REP
  Quando ver a tela: Grupo de REP (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Grupo de REP
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP

Quando ver a tela: Grupo de REP (Consulta)
  resource_cnsGrupoREP.Acessar Tela Consulta de Grupo de REP

Então devo verificar a label: Código
     resource_cnsGrupoREP.Verificar a label Código

E verificar a label: Nome
     resource_cnsGrupoREP.Verificar a label Nome

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"