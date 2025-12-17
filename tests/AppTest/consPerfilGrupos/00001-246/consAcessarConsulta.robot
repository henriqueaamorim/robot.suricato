*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPerfilGrupos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo de Biometria por Grupo de Usuário (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Tipo de Biometria por Grupo de Usuário (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Tipo de Biometria por Grupo de Usuário
  Então devo visualizar a tela: Tipo de Biometria por Grupo de Usuário (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Tipo de Biometria por Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário

Então devo visualizar a tela: Tipo de Biometria por Grupo de Usuário (Consulta)
  resource_consPerfilGrupos.Acessar Tela Tipo de Biometria por Grupo de Usuário
