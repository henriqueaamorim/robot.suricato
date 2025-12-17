*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_rep_coleta_afd.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: AFD (Empresa)

*** Test Cases ***
Testcase: Acessar Tela: AFD (Empresa)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]  ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | AFD
  Quando visualizar a tela: AFD
  E setar a opção: Empresa
  Então devo visualizar a tela: AFD (Empresa)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | AFD
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD

Quando visualizar a tela: AFD
  resource_ctr_rep_coleta_afd.Acessar Tela AFD

E setar a opção: Empresa
  resource_ctr_rep_coleta_afd.Selecionar box Empresa

Então devo visualizar a tela: AFD (Empresa)
  resource_ctr_rep_coleta_afd.Acessar Tela AFD - Empresa
