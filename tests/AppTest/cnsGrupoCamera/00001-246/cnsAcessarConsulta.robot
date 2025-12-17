*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoCamera.robot
Resource        ../../../../resource/app/resource_cnsGrupoCamera.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Grupo De Camera (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Grupo De Camera (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Trânsito | Câmera
  Então devo visualizar a tela: Grupo De Camera (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Trânsito | Câmera
  resource_mnu.Clicar No Menu Dispositivo | Trânsito | Câmera

Então devo visualizar a tela: Grupo De Camera (Consulta)
  resource_cnsGrupoCamera.Acessar Tela Consulta de Grupo De Cameras
