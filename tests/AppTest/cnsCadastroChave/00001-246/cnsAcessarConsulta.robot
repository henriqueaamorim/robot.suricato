*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCadastroChave.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Chave (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Chave (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Chave | Chave
  Então devo visualizar a tela: Chave (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Chave | Chave
  resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

Então devo visualizar a tela: Chave (Consulta)
    resource_cnsCadastroChave.Acessar Tela Cadastro de Chave
