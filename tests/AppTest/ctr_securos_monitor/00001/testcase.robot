*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_securos_monitor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela LOG SecurOS
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | LOG SecurOS
  Então devo visualizar a tela: LOG SecurOS

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | LOG SecurOS
  resource_mnu.Clicar No Menu Controle | Monitoramento | LOG SecurOS

Então devo visualizar a tela: LOG SecurOS
  resource_ctr_securos_monitor.Acessar Tela LOG SecurOS
