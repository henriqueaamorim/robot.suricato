*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_aplicacao.robot
Resource        ../../../../resource/app/resource_frm_log_aplicacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar a tela: Log de Aplicação - Cadastro.

*** Test Cases ***

Testcase: Acessar Tela Log de Aplicação - Cadastro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Log de Aplicação | Cadastro
  Ao visualizar a tela: Log de Aplicação
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Log de Aplicação - Cadastro

*** Keywords ***
Dado que eu acesse o menu: Configurações | Log de Aplicação | Cadastro
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

Ao visualizar a tela: Log de Aplicação
  resource_cns_log_aplicacao.Acessar Tela Log de Aplicação

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Log de Aplicação - Cadastro
  resource_frm_log_aplicacao.Acessar Tela Log de Aplicação - Cadastro
