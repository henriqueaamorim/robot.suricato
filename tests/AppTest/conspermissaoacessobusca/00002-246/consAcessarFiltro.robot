*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoAcesso.robot
Resource        ../../../../resource/app/resource_conspermissaoacessobusca.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo (FIltro)

*** Test Cases ***
Testcase: Acessar Tela: Grupo (FIltro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  Quando eu visualizar a tela: Grupo (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Grupo (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Acessos

Quando eu visualizar a tela: Grupo (Consulta)
   resource_conspermissaoacessobusca.Acessar Tela Consulta de Grupos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Grupo (Filtro)
  resource_conspermissaoacessobusca.Acessar Tela Consulta de Grupos
