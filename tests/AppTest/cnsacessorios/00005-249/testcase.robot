*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/app/resource_cnsacessorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Consulta de Acessórios
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  Quando eu visualizar a tela: Acessórios (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Acessórios

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Quando eu visualizar a tela: Acessórios (Atualização)
  resource_frmacessorios.Acessar Tela Acessórios (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Acessórios
  resource_cnsacessorios.Acessar Tela Consulta de Acessórios
