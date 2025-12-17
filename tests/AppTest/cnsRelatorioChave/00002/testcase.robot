*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsRelatorioChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Relatório de Chave - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Chave | Relatório de Cadastro de Chave
  Ao visualizar a tela: Relatório de Chave
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Relatório de Chave - Filtro

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Relatório de Cadastro de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Relatório de Cadastro de Chave

Ao visualizar a tela: Relatório de Chave
  resource_cnsRelatorioChave.Acessar Tela Relatório de Chave

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Relatório de Chave - Filtro
  resource_cnsRelatorioChave.Acessar Tela Relatório de Chave - Filtro
