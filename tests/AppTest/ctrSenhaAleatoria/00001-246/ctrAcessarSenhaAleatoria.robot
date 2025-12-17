*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrSenhaAleatoria.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Cadastro de senha de acesso temporária.


*** Test Cases ***
Testcase: Acessar Tela: Cadastro de senha de acesso temporária.
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Cadastro de Senha de Acesso Temporária
  Então devo visualizar a tela: Cadastro de senha de acesso temporária.

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Cadastro de Senha de Acesso Temporária
  resource_mnu.Clicar No Menu Identificação | Colaborador | Cadastro de Senha de Acesso Temporária

Então devo visualizar a tela: Cadastro de senha de acesso temporária.
  resource_ctrSenhaAleatoria.Acessar Tela Solicitação de Senha Aleatória para Codins
