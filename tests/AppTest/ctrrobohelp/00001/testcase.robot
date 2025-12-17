*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_ctrrobohelp.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar Tela Manual SURICATO.


*** Test Cases ***

Testcase: Acessar Tela Manual SURICATO
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Ajuda | Conteúdo da Ajuda
  Então o navegador deve abrir uma nova guia, e eu visualizar a tela: Manual SURICATO

*** Keywords ***
Dado que eu acesse o menu: Ajuda | Conteúdo da Ajuda
  resource_mnu.Clicar No Menu Ajuda | Conteúdo da Ajuda

Então o navegador deve abrir uma nova guia, e eu visualizar a tela: Manual SURICATO
  resource_ctrrobohelp.Acessar Tela Manual SURICATO


