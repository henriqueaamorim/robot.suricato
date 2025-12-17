*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrFiltroMultiEmpresa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Preencher todos os campos na tela: Filtro de Abrangência 


*** Test Cases ***
Testcase: Preencher todos os campos na tela: Filtro de Abrangência 
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configuração | Usuários | Filtro de Abrangência
  Ao visualizar a tela: Filtro de Abrangência
  E selecionar uma opção no campo Grupo "DEVOPS"
  E selecionar uma opção no campo Filtro "Tipo de Colaborador"
  Então devo visualizar a tela Filtro de Abrangência - Empresa

*** Keywords ***
Dado que eu acesse o menu: Configuração | Usuários | Filtro de Abrangência
  resource_mnu.Clicar No Menu Configurações | Filtro de Abrangência

Ao visualizar a tela: Filtro de Abrangência
  resource_ctrFiltroMultiEmpresa.Acessar Tela Filtro de Abrangência

E selecionar uma opção no campo Grupo "${GRUPO}"
  resource_ctrFiltroMultiEmpresa.Selecionar uma opção no campo Grupo "${GRUPO}"

E selecionar uma opção no campo Filtro "${FILTRO}"
  resource_ctrFiltroMultiEmpresa.Selecionar uma opção no campo Filtro "${FILTRO}"

Então devo visualizar a tela Filtro de Abrangência - Empresa
  resource_ctrFiltroMultiEmpresa.Acessar Tela Filtro de Abrangência - Empresa
