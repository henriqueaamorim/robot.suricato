*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_consretornoagendagrupovisitante.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Agendamento de Grupo de Visitante (Filtro)
${APPNAME}     consretornoagendagrupovisitante
${OBJETIVO}    Verificar todos os campos na tela Consulta de Agendamento de Grupo de Visitante (Filtro)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Agendamento de Grupo de Visitante (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Agendamento
  Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Data Agendamento
  E verificar o campo Hora Agendamento
  E verificar o campo Matricula Visitado
  E verificar o campo Grupo Visitante
  E verificar o campo Empresa
  E verificar o campo Tipo de Pessoa
  E verificar o campo Nome Grupo Visitante
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  resource_ctropcoesentradagrupo.Acessar Tela Opções de Entrada de Grupo de Visitantes

E clicar no botão: Agendamento
  resource_btn.Clicar No Botão Agendamento

Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante
  resource_consretornoagendagrupovisitante.Acessar Tela Consulta de Agendamento de Grupo de Visitante

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante (Filtro)
  resource_consretornoagendagrupovisitante.Acessar Tela Consulta de Agendamento de Grupo de Visitante (Filtro)

E verificar a label Pesquisa
  resource_consretornoagendagrupovisitante.Verificar a label Pesquisa

E verificar o campo Data Agendamento
  resource_consretornoagendagrupovisitante.Verificar o campo Data Agendamento

E verificar o campo Hora Agendamento
  resource_consretornoagendagrupovisitante.Verificar o campo Hora Agendamento

E verificar o campo Matricula Visitado
  resource_consretornoagendagrupovisitante.Verificar o campo Matricula Visitado

E verificar o campo Grupo Visitante
  resource_consretornoagendagrupovisitante.Verificar o campo Grupo Visitante

E verificar o campo Empresa
  resource_consretornoagendagrupovisitante.Verificar o campo Empresa

E verificar o campo Tipo de Pessoa
  resource_consretornoagendagrupovisitante.Verificar o campo Tipo de Pessoa

E verificar o campo Nome Grupo Visitante
  resource_consretornoagendagrupovisitante.Verificar o campo Nome Grupo Visitante

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
