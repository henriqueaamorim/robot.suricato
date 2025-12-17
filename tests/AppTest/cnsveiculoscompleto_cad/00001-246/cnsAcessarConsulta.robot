*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_cnsveiculoscompleto_cad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Veículo (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Veículo (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Veículo
  Então devo visualizar a tela: Veículo (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Então devo visualizar a tela: Veículo (Consulta)
  resource_cnsveiculoscompleto_cad.Acessar Tela Cadastro Veículos 


