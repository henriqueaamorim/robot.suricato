*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrFiltroMultiEmpresa.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Filtro de Abrangência
${APPNAME}     ctrFiltroMultiEmpresa
${OBJETIVO}    Verificar todos os campos na tela: Filtro de Abrangência


*** Test Cases ***
Testcase: Verificar todos os campos na tela: Filtro de Abrangência
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Usuários | Filtro de Abrangência
  Então devo visualizar a tela: Filtro de Abrangência
  E verificar o campo Grupo
  E verificar o campo Filtro
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configuração | Usuários | Filtro de Abrangência
  resource_mnu.Clicar No Menu Configurações | Filtro de Abrangência

Então devo visualizar a tela: Filtro de Abrangência
  resource_ctrFiltroMultiEmpresa.Acessar Tela Filtro de Abrangência

E verificar o campo Grupo
  resource_ctrFiltroMultiEmpresa.Verificar o campo Grupo

E verificar o campo Filtro
  resource_ctrFiltroMultiEmpresa.Verificar o campo Filtro

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"