*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsTratamentoEventosTransito.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Relatório de Tratamento de Eventos de Trânsito - Filtro
${APPNAME}     cnsTratamentoEventosTransito
${OBJETIVO}    Verificar todos os campos na tela Relatório de Tratamento de Eventos de Trânsito - Filtro.


*** Test Cases ***

Testcase: Verificar todos os campos na tela Relatório de Tratamento de Eventos de Trânsito - Filtro
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  Ao digitar a descrição: "Tratamento de Eventos de Transito", e clicar em Pesquisar
  Então devo visualizar a tela: Relatório de Tratamento de Eventos de Trânsito - Filtro
  E verificar o campo Grupo de Câmeras
  E verificar o campo Data do Evento
  E verificar o campo Hora do Evento
  E verificar o campo Tipo
  E verificar o campo Status
  E verificar o campo Data do Tratamento
  E verificar o campo Hora do Tratamento
  E verificar o campo Usuário
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

Ao digitar a descrição: "Tratamento de Eventos de Transito", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Tratamento de Eventos de Transito

Então devo visualizar a tela: Relatório de Tratamento de Eventos de Trânsito - Filtro
  resource_cnsTratamentoEventosTransito.Acessar Tela Relatório de Tratamento de Eventos de Trânsito - Filtro

E verificar o campo Grupo de Câmeras
  resource_cnsTratamentoEventosTransito.Verificar o campo Grupo de Câmeras

E verificar o campo Data do Evento
  resource_cnsTratamentoEventosTransito.Verificar o campo Data do Evento

E verificar o campo Hora do Evento
  resource_cnsTratamentoEventosTransito.Verificar o campo Hora do Evento

E verificar o campo Tipo
  resource_cnsTratamentoEventosTransito.Verificar o campo Tipo

E verificar o campo Status
  resource_cnsTratamentoEventosTransito.Verificar o campo Status

E verificar o campo Data do Tratamento
  resource_cnsTratamentoEventosTransito.Verificar o campo Data do Tratamento

E verificar o campo Hora do Tratamento
  resource_cnsTratamentoEventosTransito.Verificar o campo Hora do Tratamento

E verificar o campo Usuário
  resource_cnsTratamentoEventosTransito.Verificar o campo Usuário

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
