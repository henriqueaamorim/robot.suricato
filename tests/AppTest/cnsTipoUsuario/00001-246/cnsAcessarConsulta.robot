*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoUsuario.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar tela: Tipo de Usuário (Consulta)

*** Test Cases ***
Testcase: Acessar tela: Tipo de Usuário (Consulta)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  Então devo ver a tela: Tipo de Usuário (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Tipo de Usuário
  resource_mnu.Clicar No Menu Identificação | Colaborador | Tipo de Usuário

Então devo ver a tela: Tipo de Usuário (Consulta)
  resource_cnsTipoUsuario.Acessar Tela: Tipo de Usuário (Consulta)
