*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_cnsveiculoscompleto_cad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Veículo (Filtro)


*** Test Cases ***
Testcase: Acessar Tela: Veículo (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Veículo
  Quando visualizar a tela: Veículo (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Veículo (Filtro)



*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Quando visualizar a tela: Veículo (Consulta)
  resource_cnsveiculoscompleto_cad.Acessar Tela Cadastro Veículos 

E clicar no botão: Pesquisar Registros  
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Veículo (Filtro)
  resource_cnsveiculoscompleto_cad.Acessar Tela Cadastro Veículos - Filtro

