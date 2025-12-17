*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_camera.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Monitoramento de Acesso Cameras
${APPNAME}     ctr_monitoramento_camera
${OBJETIVO}    Verificar todas as labels na tela: Monitoramento de Acesso Cameras (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Monitoramento de Acesso Cameras (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  Então devo visualizar a tela: Monitoramento de Acesso Cameras (Consulta)
  E verificar a label: CFTV (Bloco)
  E verificar a label: Câmera (Bloco)
  E verificar a label: Qualidade (Bloco)
  E verificar a label: Imagem (Bloco)
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Acesso Câmeras
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras

Então devo visualizar a tela: Monitoramento de Acesso Cameras (Consulta)
  resource_ctr_monitoramento_camera.Acessar Tela Monitoramento de Acesso Cameras

E verificar a label: CFTV (Bloco)
  resource_ctr_monitoramento_camera.Verificar a label CFTV (Bloco)

E verificar a label: Câmera (Bloco)
  resource_ctr_monitoramento_camera.Verificar a label Câmera (Bloco)

E verificar a label: Qualidade (Bloco)
  resource_ctr_monitoramento_camera.Verificar a label Qualidade (Bloco)

E verificar a label: Imagem (Bloco)
  resource_ctr_monitoramento_camera.Verificar a label Imagem (Bloco)

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"