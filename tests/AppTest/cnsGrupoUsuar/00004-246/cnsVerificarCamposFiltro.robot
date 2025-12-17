*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmgrupousuario.robot
Resource        ../../../../resource/app/resource_cnsGrupoUsuar.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Grupo de Usuários (Filtro)
${SCREENNAME}  cnsGrupoUsuar
${APPNAME}     Grupo de Usuários


*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Grupo de Usuários (Filtro)
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  Quando visualizar a tela: Grupo de Usuários (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Grupo de Usuários (Filtro)
  E verificar o campo: Identificação
  E verificar o campo: Nome do Grupo	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Grupo de Usuário
  resource_mnu.Clicar No Menu Configurações | Usuários | Grupo de Usuário

Quando visualizar a tela: Grupo de Usuários (Consulta)
  resource_cnsGrupoUsuar.Acessar Tela: Grupo de Usuários (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Grupo de Usuários (Filtro)  
  resource_cnsGrupoUsuar.Acessar Tela: Grupo de Usuários (Filtro)

E verificar o campo: Identificação
  resource_cnsGrupoUsuar.Verificar o campo: Identificação

E verificar o campo: Nome do Grupo	
  resource_cnsGrupoUsuar.Verificar o campo: Nome do Grupo

E verificar se existe o campo Teste na tela
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

