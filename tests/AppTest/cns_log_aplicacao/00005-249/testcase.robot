*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cns_log_aplicacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.
*** Test Cases ***

Testcase: Acessar Tela Log de Aplicação
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Cadastro 
  Quando visualizar a tela: Log de Aplicação
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Log de Aplicação
  E selecionar uma opção no campo Aplicação "Diferente"
  E preencher o campo Aplicação "ok"
  E selecionar uma opção no campo Descrição "Diferente"
  E preencher o campo Descrição "ok"
  E selecionar uma opção no campo Log "Diferente"
  E selecionar uma opção no campo Log 1 "Sim"

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Cadastro 
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

Quando visualizar a tela: Log de Aplicação
  resource_cns_log_aplicacao.Acessar Tela Log de Aplicação (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Log de Aplicação  
   resource_cns_log_aplicacao.Acessar Tela Log de Aplicação (Filtro)

Então devo selecionar uma opção no campo Aplicação "${APLICAÇÃO}"
  resource_cns_log_aplicacao.Selecionar uma opção no campo Aplicação "${APLICAÇÃO}"

E preencher o campo Aplicação "${APLICAÇÃO}"
  resource_cns_log_aplicacao.Preencher o campo Aplicação "${APLICAÇÃO}"

E selecionar uma opção no campo Descrição "${DESCRIÇÃO}"
  resource_cns_log_aplicacao.Selecionar uma opção no campo Descrição "${DESCRIÇÃO}"

E preencher o campo Descrição "${DESCRIÇÃO}"
  resource_cns_log_aplicacao.Preencher o campo Descrição "${DESCRIÇÃO}"

E selecionar uma opção no campo Log "${LOG}"
  resource_cns_log_aplicacao.Selecionar uma opção no campo Log "${LOG}"

E selecionar uma opção no campo Log 1 "${LOG_1}"
  resource_cns_log_aplicacao.Selecionar uma opção no campo Log 1 "${LOG_1}"
