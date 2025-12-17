*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEspelhoAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Perfil de Acesso

*** Test Cases ***
Testcase: Acessar Tela: Perfil de Acesso
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Perfil de Acesso
  Então devo visualizar a tela: Perfil de Acesso

*** Keywords ***
Dado que eu acesse o menu: Registro | Perfil de Acesso
  resource_mnu.Clicar No Menu Registro | Perfil de Acesso

Então devo visualizar a tela: Perfil de Acesso
  resource_ctrEspelhoAcesso.Acessar Tela Perfil de Acesso
