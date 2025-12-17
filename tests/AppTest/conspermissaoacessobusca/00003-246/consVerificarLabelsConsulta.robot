*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoAcesso.robot
Resource        ../../../../resource/app/resource_conspermissaoacessobusca.robot
Resource        ../../../../resource/resource_utils.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Grupo (Consulta)
${SCREENNAME}  Grupo
${APPNAME}     conspermissaoacessobusca

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Grupo (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  Quando visualizar a tela: Grupo (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Descrição
  E verificar a label: Tipo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Grupo de Acessos
  resource_mnu.Clicar No Menu Dispositivo | Grupo de Acessos

Quando visualizar a tela: Grupo (Consulta)
  resource_conspermissaoacessobusca.Acessar Tela Consulta de Grupos

Então devo verificar a label: Código
  resource_conspermissaoacessobusca.Verificar a label Código

E verificar a label: Descrição
  resource_conspermissaoacessobusca.Verificar a label Descrição

E verificar a label: Tipo
  resource_conspermissaoacessobusca.Verificar a label Tipo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

