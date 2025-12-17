*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMovimentacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Cadastro de Movimentações
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Movimentação
  Então devo visualizar a tela: Cadastro de Movimentações

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Movimentação
  resource_mnu.Clicar No Menu Entrada | Material | Movimentação

Então devo visualizar a tela: Cadastro de Movimentações
  resource_ctrMovimentacao.Acessar Tela Cadastro de Movimentações
