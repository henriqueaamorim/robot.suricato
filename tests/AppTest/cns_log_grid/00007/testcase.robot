*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cns_log_grid.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Log de Aplicação - Consulta Impressa
${APPNAME}     cns_log_grid
${OBJETIVO}    Verificar todos os campos na tela Log de Aplicação - Consulta Impressa.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Log de Aplicação - Consulta Impressa
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Log de Aplicação - Cadastro", e clicar em Pesquisar
  Então devo visualizar a tela: Log de Aplicação - Consulta Impressa
  E verificar o campo Data
  E verificar o campo Usuário
  E verificar o campo Evento
  E verificar o campo IP
  E verificar o campo Aplicação
  E verificar o campo Campo
  E verificar o campo Valor
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

Ao digitar a descrição: "Log de Aplicação - Cadastro", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Log de Aplicação - Cadastro

Então devo visualizar a tela: Log de Aplicação - Consulta Impressa
  resource_cns_log_grid.Acessar Tela Log de Aplicação - Consulta Impressa

E verificar o campo Data
  resource_cns_log_grid.Verificar o campo Data

E verificar o campo Usuário
  resource_cns_log_grid.Verificar o campo Usuário

E verificar o campo Evento
  resource_cns_log_grid.Verificar o campo Evento

E verificar o campo IP
  resource_cns_log_grid.Verificar o campo IP

E verificar o campo Aplicação
  resource_cns_log_grid.Verificar o campo Aplicação

E verificar o campo Campo
  resource_cns_log_grid.Verificar o campo Campo

E verificar o campo Valor
  resource_cns_log_grid.Verificar o campo Valor

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"