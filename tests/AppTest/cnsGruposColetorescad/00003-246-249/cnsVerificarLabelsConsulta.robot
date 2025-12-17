*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGruposColetores.robot
Resource        ../../../../resource/app/resource_cnsGruposColetorescad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todas as labels na tela: Grupo de Codin (Consulta)
${SCREENNAME}  Grupo de Codin
${APPNAME}     cnsGruposColetorescad

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Grupo de Codin (Consulta)
  [Tags]  VERIFY   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de Codin
  Quando visualizar a tela: Grupo de Codin (Consulta)
  Então devo verificar a label: Grupo
  E verificar a label: Descrição
  E verificar a label: Nome do Aplicativo
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de Codin
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de Codin

Quando visualizar a tela: Grupo de Codin (Consulta)
  resource_cnsGruposColetorescad.Acessar Tela Grupo de Codin

Então devo verificar a label: Grupo
    resource_cnsGruposColetorescad.Verificar a label Grupo

E verificar a label: Descrição
    resource_cnsGruposColetorescad.Verificar a label Descrição

E verificar a label: Nome do Aplicativo
    resource_cnsGruposColetorescad.Verificar a label Nome do Aplicativo

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"