*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrAcessos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Comandos do Acesso On-Line
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Acesso
  Então devo visualizar a tela: Comandos do Acesso On-Line

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Acesso
  resource_mnu.Clicar No Menu Controle | Comando | Acesso

Então devo visualizar a tela: Comandos do Acesso On-Line
  resource_ctrAcessos.Acessar Tela Comandos do Acesso On-Line
