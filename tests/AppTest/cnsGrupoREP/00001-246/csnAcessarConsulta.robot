*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoREP.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Funções
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP
  Então devo ver a tela: Consulta de Grupo de REP


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP

Então devo ver a tela: Consulta de Grupo de REP
  resource_cnsGrupoREP.Acessar Tela Consulta de Grupo de REP
