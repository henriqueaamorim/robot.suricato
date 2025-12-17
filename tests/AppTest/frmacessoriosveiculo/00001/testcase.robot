*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculocompleto_cad.robot
Resource        ../../../../resource/app/resource_frmacessoriosveiculo.robot
Resource        ../../../../resource/app/resource_abacadastroveiculo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Acessórios (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  Quando eu visualizar a tela: Cadastro Veículos - Atualização
  E clicar na aba: Acessórios
  Então devo visualizar a tela: Acessórios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Veículo
  resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

Quando eu visualizar a tela: Cadastro Veículos - Atualização
  resource_frmveiculocompleto_cad.Acessar Tela Cadastro Veículos - Atualização

E clicar na aba: Acessórios
  resource_abacadastroveiculo.Clicar Na Aba Acessórios

Então devo visualizar a tela: Acessórios (Atualização)
  resource_frmacessoriosveiculo.Acessar Tela Acessórios (Atualização)
