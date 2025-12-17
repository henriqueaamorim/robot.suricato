*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoChaves.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Movimentação de Chave (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Movimentação de Chave (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  Quando visualizar a tela: Movimentação de Chave (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Movimentação de Chave (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Movimentação de Chave
  resource_mnu.Clicar No Menu Registro | Chave | Movimentação de Chave

Quando visualizar a tela: Movimentação de Chave (Consulta)
  resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave

E clicar no botão: Pesquisar registros
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Movimentação de Chave (Filtro)  
    resource_cnsMovimentacaoChaves.Acessar Tela Movimentação de Chave (Filtro)