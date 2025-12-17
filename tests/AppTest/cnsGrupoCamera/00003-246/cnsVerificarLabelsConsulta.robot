*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoCamera.robot
Resource        ../../../../resource/app/resource_cnsGrupoCamera.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar Todas as Labels na Tela: Grupo De Camera (Consulta)
${SCREENNAME}  Câmera
${APPNAME}     cnsGrupoCamera

*** Test Cases ***
Testcase: Verificar Todas as Labels na Tela: Grupo De Camera (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Trânsito | Câmera
  Quando visualizar a tela: Grupo De Camera (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Trânsito | Câmera
  resource_mnu.Clicar No Menu Dispositivo | Trânsito | Câmera

Quando visualizar a tela: Grupo De Camera (Consulta)
  resource_cnsGrupoCamera.Acessar Tela Consulta de Grupo De Cameras

Então devo verificar a label: Código
    resource_cnsGrupoCamera.Verificar a label Código

E verificar a label: Descrição
  resource_cnsGrupoCamera.Verificar a label Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"