*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_dispositivo.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_dispositivo_filtro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Monitoramento de Dispositivos Grid - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  Ao visualizar a tela: Monitoramento de Dispositivos Grid
  E clicar no botão: Filtrar
  Então devo visualizar a tela: Monitoramento de Dispositivos Grid - Filtro

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Dispositivos Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Ao visualizar a tela: Monitoramento de Dispositivos Grid
  resource_ctr_monitoramento_dispositivo.Acessar Tela Monitoramento de Dispositivos Grid

E clicar no botão: Filtrar
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento de Dispositivos Grid - Filtro
  resource_ctr_monitoramento_dispositivo_filtro.Acessar Tela Monitoramento de Dispositivos Grid - Filtro
