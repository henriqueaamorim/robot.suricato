*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrFiltroMultiEmpresa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Filtro de Abrangência


*** Test Cases ***
Testcase: Acessar Tela: Filtro de Abrangência
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Usuários | Filtro de Abrangência
  Então devo visualizar a tela: Filtro de Abrangência

*** Keywords ***
Dado que eu acesse o menu: Configuração | Usuários | Filtro de Abrangência
  resource_mnu.Clicar No Menu Configurações | Filtro de Abrangência

Então devo visualizar a tela: Filtro de Abrangência
  resource_ctrFiltroMultiEmpresa.Acessar Tela Filtro de Abrangência
