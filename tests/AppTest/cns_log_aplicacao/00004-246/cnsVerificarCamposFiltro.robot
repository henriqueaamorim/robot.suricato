*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_aplicacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Log de Aplicação (Filtro)
${SCREENNAME}  Log de Aplicação
${APPNAME}     cns_log_aplicacao

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Log de Aplicação (Filtro)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Cadastro 
  Quando visualizar a tela: Log de Aplicação (Consulta)
  E clicar no botão: Pesquisar Registros 
  Então devo visualizar a tela: Log de Aplicação (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Aplicação	
  E verificar o campo: Descrição
  E verificar o campo: Log
  E verificar se existe o campo Teste na tela  


*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Cadastro 
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

Quando visualizar a tela: Log de Aplicação (Consulta)
  resource_cns_log_aplicacao.Acessar Tela Log de Aplicação (Consulta)

E clicar no botão: Pesquisar Registros 
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Log de Aplicação (Filtro)
   resource_cns_log_aplicacao.Acessar Tela Log de Aplicação (Filtro)

E verificar a label: Pesquisa
  resource_cns_log_aplicacao.Verificar a label Pesquisa

E verificar o campo: Aplicação	
  resource_cns_log_aplicacao.Verificar o campo: Aplicação

E verificar o campo: Descrição
  resource_cns_log_aplicacao.Verificar o campo: Descrição

E verificar o campo: Log
  resource_cns_log_aplicacao.Verificar o campo: Log

E verificar se existe o campo Teste na tela     
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"

