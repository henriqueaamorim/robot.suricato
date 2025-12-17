*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsveiculosmarca_cad.robot
Resource        ../../../../resource/app/resource_frmmarcaveiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.
*** Test Cases ***

Testcase: Acessar Tela Marcas de Veículos - Pesquisa
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Marcas
  Quando eu visualizar a tela: Marcas de Veículos (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Marcas de Veículos - Pesquisa

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Marcas
  resource_mnu.Clicar No Menu Veículos | Cadastro | Marcas

Quando eu visualizar a tela: Marcas de Veículos (Atualização)
  resource_frmmarcaveiculos.Acessar Tela Marcas de Veículos (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Marcas de Veículos - Pesquisa
  resource_cnsveiculosmarca_cad.Acessar Tela Marcas de Veículos - Pesquisa
