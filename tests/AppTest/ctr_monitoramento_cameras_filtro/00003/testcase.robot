*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_camera.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_cameras_filtro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}    Preencher todos os campos na tela Monitoramento de Acesso Cameras (Filtro).

*** Test Cases ***

Testcase: Preencher todos os campos na tela Monitoramento de Acesso Cameras (Filtro)
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  Então devo visualizar a tela: Monitoramento de Acesso Cameras
  E clicar no botão: Filtrar
  Então devo visualizar a tela: Monitoramento de Acesso Cameras (Filtro)
  E selecionar uma opção no campo CFTV "Teste"
  E selecionar uma opção no campo Câmera "Nova Descrição"
  E selecionar uma opção no campo Qualidade "90"
  E selecionar uma opção no campo Imagem "Colorido"

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras

Então devo visualizar a tela: Monitoramento de Acesso Cameras
  resource_ctr_monitoramento_camera.Acessar Tela Monitoramento de Acesso Cameras

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento de Acesso Cameras (Filtro)
  resource_ctr_monitoramento_cameras_filtro.Acessar Tela Monitoramento de Acesso Cameras (Filtro)
  
E selecionar uma opção no campo CFTV "${CFTV}"
  resource_ctr_monitoramento_cameras_filtro.Selecionar uma opção no campo CFTV "${CFTV}"

E selecionar uma opção no campo Câmera "${CÂMERA}"
  resource_ctr_monitoramento_cameras_filtro.Selecionar uma opção no campo Câmera "${CÂMERA}"

E selecionar uma opção no campo Qualidade "${QUALIDADE}"
  resource_ctr_monitoramento_cameras_filtro.Selecionar uma opção no campo Qualidade "${QUALIDADE}"

E selecionar uma opção no campo Imagem "${IMAGEM}"
  resource_ctr_monitoramento_cameras_filtro.Selecionar uma opção no campo Imagem "${IMAGEM}"
