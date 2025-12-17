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

${SCREENNAME}  Log de Aplicação - Consulta Impressa - Cadastro
${APPNAME}     cns_log_grid
${OBJETIVO}    Verificar todos os campos na tela Log de Aplicação - Consulta Impressa - Cadastro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Log de Aplicação - Consulta Impressa - Cadastro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Log de Aplicação - Cadastro", e clicar em Pesquisar
  E novamente clicar no botão Pesquisar
  Então devo visualizar a tela: Log de Aplicação - Consulta Impressa - Cadastro
  E verificar a label Data
  E verificar a label Hora
  E verificar a label Aplicação 
  E verificar a label Opção Menu
  E verificar a label Usuário
  E verificar a primeira label Evento
  E verificar a label IP
  E verificar a label Campo
  E verificar a label Valor
  E verificar a label Seq.
  E verificar a segunda label Evento
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

E novamente clicar no botão Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Log de Aplicação - Consulta Impressa - Cadastro
  resource_cns_log_grid.Acessar Tela Log de Aplicação - Consulta Impressa - Cadastro

E verificar a label Data
  resource_cns_log_grid.Verificar a label Data

E verificar a label Hora
  resource_cns_log_grid.Verificar a label Hora

E verificar a label Aplicação 
  resource_cns_log_grid.Verificar a label Aplicação 

E verificar a label Opção Menu
  resource_cns_log_grid.Verificar a label Opção Menu

E verificar a label Usuário
  resource_cns_log_grid.Verificar a label Usuário

E verificar a primeira label Evento
  resource_cns_log_grid.Verificar a primeira label Evento

E verificar a label IP
  resource_cns_log_grid.Verificar a label IP

E verificar a label Campo
  resource_cns_log_grid.Verificar a label Campo

E verificar a label Valor
  resource_cns_log_grid.Verificar a label Valor

E verificar a label Seq.
  resource_cns_log_grid.Verificar a label Seq.

E verificar a segunda label Evento
  resource_cns_log_grid.Verificar a segunda label Evento

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"