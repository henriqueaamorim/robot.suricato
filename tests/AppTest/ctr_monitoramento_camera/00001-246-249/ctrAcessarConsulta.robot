*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_camera.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Monitoramento de Acesso Cameras (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Monitoramento de Acesso Cameras (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  Então devo visualizar a tela: Monitoramento de Acesso Cameras (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras

Então devo visualizar a tela: Monitoramento de Acesso Cameras (Consulta)
  resource_ctr_monitoramento_camera.Acessar Tela Monitoramento de Acesso Cameras
