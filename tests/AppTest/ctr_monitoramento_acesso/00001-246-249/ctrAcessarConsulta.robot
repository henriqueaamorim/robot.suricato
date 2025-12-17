*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_acesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Monitoramento Acesso - Grid (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Monitoramento Acesso - Grid (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  Então devo visualizar a tela: Monitoramento Acesso - Grid (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Acesso - Grid

Então devo visualizar a tela: Monitoramento Acesso - Grid (Consulta)
  resource_ctr_monitoramento_acesso.Acessar Tela Monitoramento Acesso - Grid
