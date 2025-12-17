*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoCamera.robot
Resource        ../../../../resource/app/resource_cnsGrupoCamera.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Grupo De Cameras
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastros de Grupos
  Quando eu visualizar a tela: Cadastro de Grupos - Consulta
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Grupo De Cameras

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Cameras | Cadastros de Grupos
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastros de Grupos

Quando eu visualizar a tela: Cadastro de Grupos - Consulta
  resource_frmGrupoCamera.Acessar Tela Cadastro de Grupos - Consulta

E clicar no botão: Pesquisar
    resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Grupo De Cameras
  resource_cnsGrupoCamera.Acessar Tela Consulta de Grupo De Cameras
