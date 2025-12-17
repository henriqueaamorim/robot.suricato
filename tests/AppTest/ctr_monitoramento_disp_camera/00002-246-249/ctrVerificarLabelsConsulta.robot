*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_disp_camera.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Monitoramento Câmeras
${SCREENNAME}  Monitoramento Câmeras
${APPNAME}     ctr_monitoramento_disp_camera

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Monitoramento Câmeras
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Status de Cameras
  Quando visualizar a tela: Monitoramento Câmeras
  E clicar no botão: Iniciar
  Então devo verificar a label: Tipo Servidor CFTV	
  E verificar a label: Nome Servidor CFTV	
  E verificar a label: Endereço IP	
  E verificar a label: Câmera	
  E verificar a label: Ativa	
  E verificar a label: Status
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Status de Cameras
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Status de Cameras

Quando visualizar a tela: Monitoramento Câmeras
  resource_ctr_monitoramento_disp_camera.Acessar Tela Monitoramento Câmeras

E clicar no botão: Iniciar
  resource_btn.Clicar No Botão Iniciar

Então devo verificar a label: Tipo Servidor CFTV	
  resource_ctr_monitoramento_disp_camera.Verificar a label: Tipo Servidor CFTV

E verificar a label: Nome Servidor CFTV	
  resource_ctr_monitoramento_disp_camera.Verificar a label: Nome Servidor CFTV

E verificar a label: Endereço IP	
  resource_ctr_monitoramento_disp_camera.Verificar a label: Endereço IP

E verificar a label: Câmera	
  resource_ctr_monitoramento_disp_camera.Verificar a label: Câmera

E verificar a label: Ativa	
  resource_ctr_monitoramento_disp_camera.Verificar a label: Ativa

E verificar a label: Status
  resource_ctr_monitoramento_disp_camera.Verificar a label: Status

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
