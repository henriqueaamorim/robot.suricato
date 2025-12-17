*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculo.robot
Resource        ../../../../resource/app/resource_cnsveiculos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Cadastro Veículos - Consulta
${APPNAME}     cnsveiculos
${OBJETIVO}    Verificar todos os campos na tela Cadastro Veículos - Consulta


*** Test Cases ***

Testcase: Verificar todos os campos na tela Cadastro Veículos - Consulta
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Cadastro
  Quando eu visualizar a tela: Cadastro Veículos - Inclusão
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Cadastro Veículos - Consulta
  E verificar a label Id Veículo
  E verificar a label Placa
  E verificar a label UF Placa
  E verificar a label Cor
  E verificar a label Marca
  E verificar a label Modelo
  E verificar se existe o campo Teste
  
*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo | Cadastro

Quando eu visualizar a tela: Cadastro Veículos - Inclusão
  resource_frmveiculo.Acessar Tela Cadastro Veículos - Inclusão

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Cadastro Veículos - Consulta
  resource_cnsveiculos.Acessar Tela Cadastro Veículos - Consulta

E verificar a label Id Veículo
  resource_cnsveiculos.Verificar a label Id Veículo

E verificar a label Placa
  resource_cnsveiculos.Verificar a label Placa

E verificar a label UF Placa
  resource_cnsveiculos.Verificar a label UF Placa

E verificar a label Cor
  resource_cnsveiculos.Verificar a label Cor

E verificar a label Marca
  resource_cnsveiculos.Verificar a label Marca

E verificar a label Modelo
  resource_cnsveiculos.Verificar a label Modelo

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
