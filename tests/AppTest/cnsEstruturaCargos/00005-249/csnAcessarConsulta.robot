*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsEstruturaCargos.robot
Resource        ../../../../resource/app/resource_frmcargos.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***
${OBJETIVO}  Acessar Tela Consulta de Grupo de Cargos


*** Test Cases ***
Testcase: Acessar Tela Consulta de Grupo de Cargos
  [Tags]  PRINT  POPULATED  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  Quando eu visualizar a tela Cadastro de Cargos (Atualização)
  E clicar no botão: Abrir Um Novo Registro
  E Visualizar a tela Cadastro de Cargos (Inclusão)
  E clicar no botão: Buscar Dados Externos do campo Grupo de Cargos*
  Então devo visualizar a tela Consulta de Grupo de Cargos

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo

Quando eu visualizar a tela Cadastro de Cargos (Atualização)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Atualização)

E clicar no botão: Abrir Um Novo Registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E Visualizar a tela Cadastro de Cargos (Inclusão)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Inclusão)

E clicar no botão: Buscar Dados Externos do campo Grupo de Cargos*
  resource_frmcargos.Clicar No Botão Buscar Dados Externos Do Campo Grupo de Cargos

Então devo visualizar a tela Consulta de Grupo de Cargos
  resource_cnsEstruturaCargos.Acessar Tela Consulta de Grupo de Cargo
