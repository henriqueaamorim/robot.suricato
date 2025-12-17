*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_camera.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_cameras_filtro.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Monitoramento de Acesso Cameras (Filtro)
${APPNAME}     ctr_monitoramento_cameras_filtro
${OBJETIVO}    Verificar todos os campos na tela Monitoramento de Acesso Cameras (Filtro).

*** Test Cases ***

Testcase: Verificar todos os campos na tela Monitoramento de Acesso Cameras (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  Então devo visualizar a tela: Monitoramento de Acesso Cameras
  E clicar no botão: Filtrar
  Então devo visualizar a tela: Monitoramento de Acesso Cameras (Filtro)
  E verificar o campo CFTV
  E verificar o campo Câmera
  E verificar o campo Qualidade
  E verificar o campo Imagem
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras

Então devo visualizar a tela: Monitoramento de Acesso Cameras
  resource_ctr_monitoramento_camera.Acessar Tela Monitoramento de Acesso Cameras

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento de Acesso Cameras (Filtro)
  resource_ctr_monitoramento_cameras_filtro.Acessar Tela Monitoramento de Acesso Cameras (Filtro)

E verificar o campo CFTV
  resource_ctr_monitoramento_cameras_filtro.Verificar o campo CFTV

E verificar o campo Câmera
  resource_ctr_monitoramento_cameras_filtro.Verificar o campo Câmera

E verificar o campo Qualidade
  resource_ctr_monitoramento_cameras_filtro.Verificar o campo Qualidade

E verificar o campo Imagem
  resource_ctr_monitoramento_cameras_filtro.Verificar o campo Imagem

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"