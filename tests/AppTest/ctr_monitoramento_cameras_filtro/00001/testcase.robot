*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_camera.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_cameras_filtro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar Tela Monitoramento de Acesso Cameras (Filtro).

*** Test Cases ***

Testcase: Acessar Tela Monitoramento de Acesso Cameras (Filtro)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  Então devo visualizar a tela: Monitoramento de Acesso Cameras
  E clicar no botão: Filtrar
  Então devo visualizar a tela: Monitoramento de Acesso Cameras (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras

Então devo visualizar a tela: Monitoramento de Acesso Cameras
  resource_ctr_monitoramento_camera.Acessar Tela Monitoramento de Acesso Cameras

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento de Acesso Cameras (Filtro)
  resource_ctr_monitoramento_cameras_filtro.Acessar Tela Monitoramento de Acesso Cameras (Filtro)