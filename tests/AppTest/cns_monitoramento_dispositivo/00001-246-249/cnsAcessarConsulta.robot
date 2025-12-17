*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_monitoramento_dispositivo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}



*** Variables ***
${OBJETIVO}   Acessar Tela: Monitoramento de Dispositivos (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Monitoramento de Dispositivos (Consulta)
  [Tags]  PRINT  POPULATED  246  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Dispositivo Grid
  Então devo visualizar a tela: Monitoramento de Dispositivos (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Dispositivo Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Dispositivos Grid

Então devo visualizar a tela: Monitoramento de Dispositivos (Consulta)
  resource_cns_monitoramento_dispositivo.Acessar Tela: Monitoramento de Dispositivos (Consulta)
