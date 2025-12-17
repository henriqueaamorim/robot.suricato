*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_cnsveiculoscompleto_cad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Veículo (Consulta)
${SCREENNAME}  Veículo
${APPNAME}     cnsveiculoscompleto_cad


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Veículo (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Veículo
  Quando visualizar a tela: Veículo (Consulta)
  Então devo verificar a label: Veículo
  E verificar a label: Placa
  E verificar a label: UF Placa
  E verificar a label: Cor
  E verificar a label: Marca
  E verificar a label: Modelo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Quando visualizar a tela: Veículo (Consulta)
  resource_cnsveiculoscompleto_cad.Acessar Tela Cadastro Veículos 

Então devo verificar a label: Veículo
  resource_cnsveiculoscompleto_cad.Verificar a label Veículo

E verificar a label: Placa
  resource_cnsveiculoscompleto_cad.Verificar a label Placa

E verificar a label: UF Placa
  resource_cnsveiculoscompleto_cad.Verificar a label UF Placa

E verificar a label: Cor
  resource_cnsveiculoscompleto_cad.Verificar a label Cor

E verificar a label: Marca
  resource_cnsveiculoscompleto_cad.Verificar a label Marca

E verificar a label: Modelo
  resource_cnsveiculoscompleto_cad.Verificar a label Modelo

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

