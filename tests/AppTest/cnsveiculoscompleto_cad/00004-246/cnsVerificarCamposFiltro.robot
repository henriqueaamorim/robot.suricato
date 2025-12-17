*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_cnsveiculoscompleto_cad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Veículo (Filtro)
${SCREENNAME}  cnsveiculoscompleto_cad
${APPNAME}     Veículo


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Veículo (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Veículo
  Quando visualizar a tela: Veículo (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Veículo (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Placa	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Quando visualizar a tela: Veículo (Consulta)
  resource_cnsveiculoscompleto_cad.Acessar Tela Cadastro Veículos 

E clicar no botão: Pesquisar Registros  
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Veículo (Filtro)
  resource_cnsveiculoscompleto_cad.Acessar Tela Cadastro Veículos - Filtro

E verificar a label: Pesquisa
  resource_cnsveiculoscompleto_cad.Verificar a label Pesquisa

E verificar o campo: Placa	
  resource_cnsveiculoscompleto_cad.Verificar o campo: Placa

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
