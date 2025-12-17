*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmacessorios.robot
Resource        ../../../../resource/app/resource_cnsacessorios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Acessório (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Acessório (Filtro)
  [Tags]  PRINT  POPULATED  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Cadastro | Acessórios
  Quando visualizar a tela: Acessório (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Acessório (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Cadastro | Acessórios
  resource_mnu.Clicar No Menu Veículos | Cadastro | Acessórios

Quando visualizar a tela: Acessório (Consulta)
  resource_cnsacessorios.Acessar Tela Consulta de Acessórios

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Acessório (Filtro)  
  resource_cnsacessorios.Acessar Tela Consulta de Acessórios - Filtro
