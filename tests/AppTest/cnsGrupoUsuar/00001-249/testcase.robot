*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmgrupousuario.robot
Resource        ../../../../resource/app/resource_cnsGrupoUsuar.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela Consulta para Grupo de Usuários
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  Quando eu visualizar a tela: Cadastro de Grupo de Usuários (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta para Grupo de Usuários

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Grupo de Usuário

Quando eu visualizar a tela: Cadastro de Grupo de Usuários (Atualização)
  resource_frmgrupousuario.Acessar Tela Cadastro de Grupo de Usuários (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta para Grupo de Usuários
  resource_cnsGrupoUsuar.Acessar Tela Consulta para Grupo de Usuários
