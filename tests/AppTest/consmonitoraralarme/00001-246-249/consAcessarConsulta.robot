*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consmonitoraralarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Monitorar Alarmes (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Monitorar Alarmes (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  Então devo visualizar a tela: Monitorar Alarmes (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Alarme - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Alarme - Grid

Então devo visualizar a tela: Monitorar Alarmes (Consulta)
  resource_consmonitoraralarme.Acessar Tela Monitorar Alarmes
