*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_cnsveiculocolaborador.robot
Resource        ../../../resource/app/resource_frmcolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Verificar se o filtro de abrangencia de empresa foi retirado da aplicação cnsveiculocolaborador

*** Test Cases ***

Testcase: Acessar Tela Consulta de Veiculos por Colaborador E Verificar O Erro De Filtro Por Empresa
  [Tags]  PRINT  ISSUES  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Quando eu visualizar a tela: Cadastro de Empregado
  E clicar no botão: Veículos
  Então devo visualizar a tela: Consulta de Veiculos por Colaborador
  


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Quando eu visualizar a tela: Cadastro de Empregado
  resource_frmcolaborador.Acessar Tela Cadastro de Empregado

E clicar no botão: Veículos
  resource_btn.Clicar No Botão Veículos

Então devo visualizar a tela: Consulta de Veiculos por Colaborador
  resource_cnsveiculocolaborador.Acessar Tela Consulta de Veiculos por Colaborador
