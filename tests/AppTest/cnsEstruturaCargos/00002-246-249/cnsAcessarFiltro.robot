*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstruturaCargos.robot
Resource        ../../../../resource/app/resource_frmcargos.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}   Acessar Tela Consulta de Grupo de Cargos (Filtro)


*** Test Cases ***
Testcase: Acessar Tela Consulta de Grupo de Cargos (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Grupo de Cargo
  Quando visualizar a tela: Grupo de Cargo (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Grupo de Cargos (Filtro)
 

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Cargo | Grupo de Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo | Grupo de Cargo

Quando visualizar a tela: Grupo de Cargo (Consulta)
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargo

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Grupo de Cargos (Filtro)
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargos (Filtro)

