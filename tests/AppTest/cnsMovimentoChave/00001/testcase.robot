*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentoChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Movimentação de Chave - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Relatório de Movimentação de Chave
  Então devo visualizar a tela: Movimentação de Chave - Filtro

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Relatório de Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Relatório de Movimentação de Chave

Então devo visualizar a tela: Movimentação de Chave - Filtro
  resource_cnsMovimentoChave.Acessar Tela Movimentação de Chave - Filtro
