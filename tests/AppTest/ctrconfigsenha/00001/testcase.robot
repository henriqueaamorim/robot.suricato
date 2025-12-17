*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrconfigsenha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Configuração de Senha
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Diretiva de Segurança
  Então devo visualizar a tela: Configuração de Senha

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Diretiva de Segurança
  resource_mnu.Clicar No Menu Configurações | Usuários | Diretiva de Segurança

Então devo visualizar a tela: Configuração de Senha
  resource_ctrconfigsenha.Acessar Tela Configuração de Senha
