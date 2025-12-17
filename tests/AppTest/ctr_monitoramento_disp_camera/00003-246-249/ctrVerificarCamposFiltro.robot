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
  E clicar no botão: Filtrar
  Então devo verificar o campo: Tipo Servidor CFTV	
  E verificar o campo: Servidor CFTV	
  E verificar o campo: Camera
  E verificar o campo: Endereco IP	
  E verificar o campo: Ativa
  E verificar o campo: Status
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Status de Cameras
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Status de Cameras

Quando visualizar a tela: Monitoramento Câmeras
  resource_ctr_monitoramento_disp_camera.Acessar Tela Monitoramento Câmeras

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtrar

Então devo verificar o campo: Tipo Servidor CFTV	
  resource_ctr_monitoramento_disp_camera.Verificar o campo: Tipo Servidor CFTV

E verificar o campo: Servidor CFTV	
  resource_ctr_monitoramento_disp_camera.Verificar o campo: Servidor CFTV

E verificar o campo: Camera
  resource_ctr_monitoramento_disp_camera.Verificar o campo: Camera

E verificar o campo: Endereco IP	
  resource_ctr_monitoramento_disp_camera.Verificar o campo: Endereco IP

E verificar o campo: Ativa
  resource_ctr_monitoramento_disp_camera.Verificar o campo: Ativa

E verificar o campo: Status
  resource_ctr_monitoramento_disp_camera.Verificar o campo: Status

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
