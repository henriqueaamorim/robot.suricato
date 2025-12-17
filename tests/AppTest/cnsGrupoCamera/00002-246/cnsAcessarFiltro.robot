*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoCamera.robot
Resource        ../../../../resource/app/resource_cnsGrupoCamera.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar tela: Grupo De Camera (Filtro)

*** Test Cases ***
Testcase: Acessar tela: Grupo De Camera (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Trânsito | Câmera
  Quando visualizar a tela: Grupo De Camera (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Grupo De Camera (Filtro)
 


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Trânsito | Câmera
  resource_mnu.Clicar No Menu Dispositivo | Trânsito | Câmera

Quando visualizar a tela: Grupo De Camera (Consulta)
  resource_cnsGrupoCamera.Acessar Tela Consulta de Grupo De Cameras

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Grupo De Camera (Filtro)
  resource_cnsGrupoCamera.Acessar Tela Grupo de Camera (Filtro)

