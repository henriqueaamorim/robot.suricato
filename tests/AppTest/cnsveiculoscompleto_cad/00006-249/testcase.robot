*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_cnsveiculoscompleto_cad.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Cadastro Veículos - Pesquisa
${APPNAME}     cnsveiculoscompleto_cad
${OBJETIVO}    Verificar todos os campos na tela Cadastro Veículos - Pesquisa.


*** Test Cases ***
Testcase: Verificar todos os campos na tela Cadastro Veículos - Pesquisa
  [Tags]  VERIFY   249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  Quando eu visualizar a tela: Cadastro Veículos - Inclusão
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Cadastro Veículos - Pesquisa
  E verificar a label Veículo
  E verificar a label Placa
  E verificar a label UF Placa
  E verificar a label Cor
  E verificar a label Marca
  E verificar a label Modelo
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Quando eu visualizar a tela: Cadastro Veículos - Inclusão
  resource_frmveiculocompleto_cad.Acessar Tela Cadastro Veículos - Inclusão

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Cadastro Veículos - Pesquisa
  resource_cnsveiculoscompleto_cad.Acessar Tela Cadastro Veículos - Pesquisa

E verificar a label Veículo
  resource_cnsveiculoscompleto_cad.Verificar a label Veículo

E verificar a label Placa
  resource_cnsveiculoscompleto_cad.Verificar a label Placa

E verificar a label UF Placa
  resource_cnsveiculoscompleto_cad.Verificar a label UF Placa

E verificar a label Cor
  resource_cnsveiculoscompleto_cad.Verificar a label Cor

E verificar a label Marca
  resource_cnsveiculoscompleto_cad.Verificar a label Marca

E verificar a label Modelo
  resource_cnsveiculoscompleto_cad.Verificar a label Modelo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
