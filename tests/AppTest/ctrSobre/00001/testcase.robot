*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrSobre.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Suricato - Versão
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Ajuda | Sobre
  Então devo visualizar a tela: Suricato - Versão

*** Keywords ***
Dado que eu acesse o menu: Ajuda | Sobre
  resource_mnu.Clicar No Menu Ajuda | Sobre

Então devo visualizar a tela: Suricato - Versão
  resource_ctrSobre.Acessar Tela Suricato - Versão
