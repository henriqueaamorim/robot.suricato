*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmusuario.robot
Resource        ../../../../resource/app/resource_cnsusuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Usuário (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Usuário (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Usuário
  Então devo visualizar a tela: Acessar Tela: Usuário (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Usuário

Então devo visualizar a tela: Acessar Tela: Usuário (Consulta)
  resource_cnsusuario.Acessar Tela: Usuário (Consulta)


