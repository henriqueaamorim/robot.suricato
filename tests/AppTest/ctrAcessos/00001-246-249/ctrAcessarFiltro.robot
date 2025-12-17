*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrAcessos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar Tela: Comandos do Acesso On-Line

*** Test Cases ***
Testcase: Acessar Tela: Comandos do Acesso On-Line
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Acesso
  Então devo visualizar a tela: Comandos do Acesso On-Line

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Acesso
  resource_mnu.Clicar No Menu Controle | Comando | Acesso

Então devo visualizar a tela: Comandos do Acesso On-Line
  resource_ctrAcessos.Acessar Tela Comandos do Acesso On-Line
