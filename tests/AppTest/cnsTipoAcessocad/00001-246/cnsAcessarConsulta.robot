*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTipoAcesso.robot
Resource        ../../../../resource/app/resource_cnsTipoAcessocad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo de Acesso (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Tipo de Acesso (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  Então devo visualizar a tela: Tipo de Acesso (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Tipo de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Tipo de Acesso

Então devo visualizar a tela: Tipo de Acesso (Consulta)
  resource_cnsTipoAcessocad.Acessar Tela Consulta de Tipo de Acesso
