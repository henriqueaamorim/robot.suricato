*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrSelecionaGrupoCameras.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Monitoramento de Trânsito - Grupos de Câmeras


*** Test Cases ***
Testcase: Acessar Tela: Monitoramento de Trânsito - Grupos de Câmeras
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Câmeras de Trânsito
  Então devo visualizar a tela: Monitoramento de Trânsito - Grupos de Câmeras

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento de Câmeras de Trânsito
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Câmeras de Trânsito

Então devo visualizar a tela: Monitoramento de Trânsito - Grupos de Câmeras
  resource_ctrSelecionaGrupoCameras.Acessar Tela Monitoramento de Trânsito - Grupos de Câmeras
