*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculo.robot
Resource        ../../../../resource/app/resource_cnsveiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro Veículos - Consulta
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Veículo | Cadastro
  Quando eu visualizar a tela: Cadastro Veículos - Atualização
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Cadastro Veículos - Consulta

*** Keywords ***
Dado que eu acesse o menu: Entrada | Veículo | Cadastro
  resource_mnu.Clicar No Menu Entrada | Veículo | Cadastro

Quando eu visualizar a tela: Cadastro Veículos - Atualização
  resource_frmveiculo.Acessar Tela Cadastro Veículos - Atualização

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Cadastro Veículos - Consulta
  resource_cnsveiculos.Acessar Tela Cadastro Veículos - Consulta
