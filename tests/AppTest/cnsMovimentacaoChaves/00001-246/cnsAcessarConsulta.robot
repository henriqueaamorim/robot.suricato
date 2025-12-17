*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoChaves.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Movimentação de Chave (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Movimentação de Chave (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  Então devo visualizar a tela: Movimentação de Chave (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

Então devo visualizar a tela: Movimentação de Chave (Consulta)
  resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave
