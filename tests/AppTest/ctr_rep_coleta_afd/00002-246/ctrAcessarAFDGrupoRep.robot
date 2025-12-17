*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_rep_coleta_afd.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: AFD (Grupo de Rep)

*** Test Cases ***
Testcase: Acessar Tela: AFD (Grupo de Rep)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | AFD
  Quando visualizar a tela: AFD
  E setar a opção: Grupo de Rep
  Então devo visualizar a tela: AFD (Grupo de Rep)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | AFD
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD

Quando visualizar a tela: AFD
  resource_ctr_rep_coleta_afd.Acessar Tela AFD

E setar a opção: Grupo de Rep
  resource_ctr_rep_coleta_afd.Selecionar box Grupo de Rep

Então devo visualizar a tela: AFD (Grupo de Rep)
  resource_ctr_rep_coleta_afd.Acessar Tela AFD - Grupo de Rep
