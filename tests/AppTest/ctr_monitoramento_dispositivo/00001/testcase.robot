*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_dispositivo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Monitoramento de Dispositivos Grid
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  Então devo visualizar a tela: Monitoramento de Dispositivos Grid

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Então devo visualizar a tela: Monitoramento de Dispositivos Grid
  resource_ctr_monitoramento_dispositivo.Acessar Tela Monitoramento de Dispositivos Grid
