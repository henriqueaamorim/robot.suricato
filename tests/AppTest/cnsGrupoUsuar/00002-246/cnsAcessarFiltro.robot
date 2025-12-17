*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmgrupousuario.robot
Resource        ../../../../resource/app/resource_cnsGrupoUsuar.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo de Usuários (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Grupo de Usuários (Filtro)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  Quando visualizar a tela: Grupo de Usuários (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Grupo de Usuários (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Grupo de Usuário

Quando visualizar a tela: Grupo de Usuários (Consulta)
  resource_cnsGrupoUsuar.Acessar Tela: Grupo de Usuários (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Grupo de Usuários (Filtro)  
  resource_cnsGrupoUsuar.Acessar Tela: Grupo de Usuários (Filtro)

