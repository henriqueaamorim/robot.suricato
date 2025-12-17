*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoCamera.robot
Resource        ../../../../resource/app/resource_cnsGrupoCamera.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar Todos os Campos na Tela: Grupo De Camera (Filtro)
${SCREENNAME}  Câmera
${APPNAME}     cnsGrupoCamera

*** Test Cases ***

Testcase: Verificar Todos os Campos na Tela: Grupo De Camera (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Trânsito | Câmera
  Quando visualizar a tela: Grupo De Camera (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Grupo De Camera (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Código
  E verificar o campo: Descrição
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Trânsito | Câmera
  resource_mnu.Clicar No Menu Dispositivo | Trânsito | Câmera

Quando visualizar a tela: Grupo De Camera (Consulta)
  resource_cnsGrupoCamera.Acessar Tela Consulta de Grupo De Cameras

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Grupo De Camera (Filtro)
  resource_cnsGrupoCamera.Acessar Tela Grupo de Camera (Filtro)

E verificar a label: Pesquisa
    resource_cnsGrupoCamera.Verificar a label Pesquisa

E verificar o campo: Código
    resource_cnsGrupoCamera.Verificar o campo Código

E verificar o campo: Descrição
    resource_cnsGrupoCamera.Verificar o campo Descrição

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"