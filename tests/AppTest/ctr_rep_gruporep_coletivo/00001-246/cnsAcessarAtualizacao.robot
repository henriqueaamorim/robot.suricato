*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_rep_gruporep_coletivo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Atualizar Grupo de REP Coletivo

*** Test Cases ***
Testcase: Acessar Tela: Atualizar Grupo de REP Coletivo
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo
  Então devo ver a tela: Atualizar Grupo de REP Coletivo


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo

Então devo ver a tela: Atualizar Grupo de REP Coletivo
  resource_ctr_rep_gruporep_coletivo.Acessar Tela Atualizar Grupo de REP Coletivo
