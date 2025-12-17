*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmgrupousuario.robot
Resource        ../../../../resource/app/resource_cnsGrupoUsuar.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Grupo de Usuários (Consulta)
${SCREENNAME}  cnsGrupoUsuar
${APPNAME}     Grupo de Usuários

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Grupo de Usuários (Consulta)
  [Tags]   VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  Quando visualizar a tela: Grupo de Usuários (Consulta)
  Então devo verificar a label: Identificação
  E verificar a label: Nome do Grupo
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Grupo de Usuário

Quando visualizar a tela: Grupo de Usuários (Consulta)
  resource_cnsGrupoUsuar.Acessar Tela: Grupo de Usuários (Consulta)

Então devo verificar a label: Identificação
  resource_cnsGrupoUsuar.Verificar a label: Identificação

E verificar a label: Nome do Grupo
  resource_cnsGrupoUsuar.Verificar a label: Nome do Grupo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

