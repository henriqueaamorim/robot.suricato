*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamerasGrupos.robot
Resource        ../../../../resource/app/resource_cnsCamerasGrupos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Cameras Grupos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo
  Quando eu visualizar a tela: Cadastro de Cameras por Grupo - Consulta
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Cameras Grupos

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo

Quando eu visualizar a tela: Cadastro de Cameras por Grupo - Consulta
  resource_frmCamerasGrupos.Acessar Tela Cadastro de Cameras por Grupo - Consulta

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Cameras Grupos
  resource_cnsCamerasGrupos.Acessar Tela Consulta de Cameras Grupos
