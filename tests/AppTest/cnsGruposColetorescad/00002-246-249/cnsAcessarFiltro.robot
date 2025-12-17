*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGruposColetores.robot
Resource        ../../../../resource/app/resource_cnsGruposColetorescad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo de Codin (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Grupo de Codin (Filtro)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de Codin
  Quando visualizar a tela: Grupo de Codin (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Grupo de Codin (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de Codin

Quando visualizar a tela: Grupo de Codin (Consulta)
  resource_cnsGruposColetorescad.Acessar Tela Grupo de Codin

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Grupo de Codin (Filtro)
  resource_cnsGruposColetorescad.Acessar Tela Grupo de Codin (Filtro)