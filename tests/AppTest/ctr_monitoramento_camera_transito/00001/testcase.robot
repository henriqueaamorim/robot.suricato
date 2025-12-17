*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrSelecionaGrupoCameras.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_camera_transito.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Monitoramento de Trânsito - Grupos de Câmeras
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Câmeras de Trânsito
  Ao visualizar a tela: Monitoramento de Trânsito - Grupos de Câmeras
  E clicar no grupo desejado
  Então devo visualizar a tela: Monitoramento de Trânsito - Grupo de Câmeras

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Câmeras de Trânsito
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Câmeras de Trânsito

Ao visualizar a tela: Monitoramento de Trânsito - Grupos de Câmeras
  resource_ctrSelecionaGrupoCameras.Acessar Tela Monitoramento de Trânsito - Grupos de Câmeras

E clicar no grupo desejado
  resource_ctrSelecionaGrupoCameras.Clicar no Grupo de Monitoramento

Então devo visualizar a tela: Monitoramento de Trânsito - Grupo de Câmeras
  resource_ctr_monitoramento_camera_transito.Acessar Tela Monitoramento de Trânsito - Grupo de Câmeras
