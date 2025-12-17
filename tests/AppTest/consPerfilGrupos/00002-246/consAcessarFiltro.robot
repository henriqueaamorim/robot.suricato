*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consPerfilGrupos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo de Biometria por Grupo de Usuário (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Tipo de Biometria por Grupo de Usuário (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Tipo de Biometria por Grupo de Usuário
  Quando visualizar a tela: Tipo de Biometria por Grupo de Usuário (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Tipo de Biometria por Grupo de Usuário (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Tipo de Biometria por Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário

Quando visualizar a tela: Tipo de Biometria por Grupo de Usuário (Consulta)
  resource_consPerfilGrupos.Acessar Tela Tipo de Biometria por Grupo de Usuário

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Tipo de Biometria por Grupo de Usuário (Filtro)  
  resource_consPerfilGrupos.Acessar Tela Tipo de Biometria por Grupo de Usuário (Filtro)