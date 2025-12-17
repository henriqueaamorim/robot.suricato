*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_aplicacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as label na Tela: Log de Aplicação (Consulta)
${SCREENNAME}  Log de Aplicação
${APPNAME}     cns_log_aplicacao

*** Test Cases ***
Testcase: Verificar todas as label na Tela: Log de Aplicação (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Cadastro 
  Quando visualizar a tela: Log de Aplicação (Consulta)
  Então devo verificar a label: Código
  E verificar a label: Aplicação
  E verificar a label: Descrição
  E verificar a label: Log
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Cadastro 
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

Quando visualizar a tela: Log de Aplicação (Consulta)
  resource_cns_log_aplicacao.Acessar Tela Log de Aplicação (Consulta)

Então devo verificar a label: Código
  resource_cns_log_aplicacao.Verificar a label: Código

E verificar a label: Aplicação
  resource_cns_log_aplicacao.Verificar a label: Aplicação

E verificar a label: Descrição
  resource_cns_log_aplicacao.Verificar a label: Descrição

E verificar a label: Log
  resource_cns_log_aplicacao.Verificar a label: Log

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"