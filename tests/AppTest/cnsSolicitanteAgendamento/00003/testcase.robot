*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsSolicitanteAgendamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Solicitações e Aprovações de Agendamentos de Visitantes - Filtro
${APPNAME}     cnsSolicitanteAgendamento
${OBJETIVO}    Verificar todos os campos na tela Solicitações e Aprovações de Agendamentos de Visitantes - Filtro.

*** Test Cases ***

Testcase: Verificar todos os campos na tela Solicitações e Aprovações de Agendamentos de Visitantes - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Solicitações e Aprovações de Agendamentos de Visitantes", e clicar em Pesquisar
  Então devo visualizar a tela: Solicitações e Aprovações de Agendamentos de Visitantes - Filtro
  E verificar o campo Nome do Solicitante
  E verificar o campo Matrícula Solicitante
  E verificar o campo Data da Solicitação
  E verificar o campo Status da Solicitação
  E verificar o campo Documento Visitante
  E verificar o campo Nome do Visitado
  E verificar o campo Matrícula do Visitado
  E verificar o campo Nome Aprovador 1
  E verificar o campo Matricula Aprovador 1
  E verificar o campo Nome Aprovador 2
  E verificar o campo Matricula Aprovador 2
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

Ao digitar a descrição: "Solicitações e Aprovações de Agendamentos de Visitantes", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Solicitações e Aprovações de Agendamentos de Visitantes

Então devo visualizar a tela: Solicitações e Aprovações de Agendamentos de Visitantes - Filtro
  resource_cnsSolicitanteAgendamento.Acessar Tela Solicitações e Aprovações de Agendamentos de Visitantes - Filtro

E verificar o campo Nome do Solicitante
  resource_cnsSolicitanteAgendamento.Verificar o campo Nome do Solicitante

E verificar o campo Matrícula Solicitante
  resource_cnsSolicitanteAgendamento.Verificar o campo Matrícula Solicitante

E verificar o campo Data da Solicitação
  resource_cnsSolicitanteAgendamento.Verificar o campo Data da Solicitação

E verificar o campo Status da Solicitação
  resource_cnsSolicitanteAgendamento.Verificar o campo Status da Solicitação

E verificar o campo Documento Visitante
  resource_cnsSolicitanteAgendamento.Verificar o campo Documento Visitante

E verificar o campo Nome do Visitado
  resource_cnsSolicitanteAgendamento.Verificar o campo Nome do Visitado

E verificar o campo Matrícula do Visitado
  resource_cnsSolicitanteAgendamento.Verificar o campo Matrícula do Visitado

E verificar o campo Nome Aprovador 1
  resource_cnsSolicitanteAgendamento.Verificar o campo Nome Aprovador 1

E verificar o campo Matricula Aprovador 1
  resource_cnsSolicitanteAgendamento.Verificar o campo Matricula Aprovador 1

E verificar o campo Nome Aprovador 2
  resource_cnsSolicitanteAgendamento.Verificar o campo Nome Aprovador 2

E verificar o campo Matricula Aprovador 2
  resource_cnsSolicitanteAgendamento.Verificar o campo Matricula Aprovador 2

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
