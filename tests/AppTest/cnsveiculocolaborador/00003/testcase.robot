*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conscolaboradores.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../../resource/app/resource_cnsveiculocolaborador.robot

Test Setup      Acessar Suricato 
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Inclusão de Veículo de Terceiro
  [Tags]  PRINT  POPULATED  246
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Cadastro de Terceiro
  Então devo visualizar a tela: Consulta de Terceiro
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Terceiro
  E clicar no botão: Veículos
  Então devo visualizar a tela: Consulta de Veiculos por Colaborador


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Terceiro | Cadastro de Terceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

Então devo visualizar a tela: Consulta de Terceiro
  resource_conscolaboradores.Acessar Tela Consulta de Terceiro

E clicar no botão: Editar o Registro "${NUM}"
    resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Terceiro
    resource_frmcolaborador.Acessar Tela Cadastro de Terceiro - Inclusão

E clicar no botão: Veículos
  resource_btn.Clicar No Botão Veículos

Então devo visualizar a tela: Consulta de Veiculos por Colaborador
  resource_cnsveiculocolaborador.Acessar Tela Consulta de Veiculos por Colaborador