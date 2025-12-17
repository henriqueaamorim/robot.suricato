*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstruturaCargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar Tela: Grupo de Cargo (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Grupo de Cargo (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Grupo de Cargo
  Então devo visualizar a tela: Grupo de Cargo (Consulta)

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Grupo de Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo | Grupo de Cargo

Então devo visualizar a tela: Grupo de Cargo (Consulta)
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargo
