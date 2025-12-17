*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_aplicacao.robot
Resource        ../../../../resource/app/resource_frm_log_aplicacao.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Log de Aplicação - Cadastro
${APPNAME}     frm_log_aplicacao
${OBJETIVO}    Verificar todos os campos na tela Log de Aplicação - Cadastro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Log de Aplicação - Cadastro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Log de Aplicação | Cadastro
  Ao visualizar a tela: Log de Aplicação
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Log de Aplicação - Cadastro
  E verificar a label Aplicação *
  E verificar o campo Descrição
  E verificar o campo Log
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configurações | Log de Aplicação | Cadastro
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

Ao visualizar a tela: Log de Aplicação
  resource_cns_log_aplicacao.Acessar Tela Log de Aplicação

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Log de Aplicação - Cadastro
  resource_frm_log_aplicacao.Acessar Tela Log de Aplicação - Cadastro

E verificar a label Aplicação *
  resource_frm_log_aplicacao.Verificar a label Aplicação *

E verificar o campo Descrição
  resource_frm_log_aplicacao.Verificar o campo Descrição

E verificar o campo Log
  resource_frm_log_aplicacao.Verificar o campo Log

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
