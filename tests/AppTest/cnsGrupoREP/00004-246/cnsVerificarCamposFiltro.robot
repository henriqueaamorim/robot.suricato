*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGrupoREP.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Grupo de REP (Filtro)
${SCREENNAME}  Grupo de REP
${APPNAME}     cnsGrupoREP

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Grupo de REP (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Grupo de REP
  Quando ver a tela: Grupo de REP (Consulta)
  E clicar no botão: Pesquisar Registros 
  Então devo ver a tela: Grupo de REP (Filtro)
  E verificar o campo: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Grupo de REP
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP

Quando ver a tela: Grupo de REP (Consulta)
  resource_cnsGrupoREP.Acessar Tela Consulta de Grupo de REP

E clicar no botão: Pesquisar Registros 
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Grupo de REP (Filtro)  
    resource_cnsGrupoREP.Acessar Tela Grupo de REP (Filtro)

E verificar o campo: Nome
    resource_cnsGrupoREP.Verificar o campo Nome

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"