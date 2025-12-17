*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Acessar Tela: Chave (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Chave (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Chave
  Quando visualizar a tela: Chave (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Chave (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Chave
  resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

Quando visualizar a tela: Chave (Consulta)
    resource_cnsCadastroChave.Acessar Tela Cadastro de Chave

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Chave (Filtro)    
    resource_cnsCadastroChave.Acessar Tela Chave (Filtro)