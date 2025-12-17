*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentrada.robot
Resource        ../../../../resource/app/resource_consretornoagendavisitante.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Agendamento de Visitantes (Filtro)
${APPNAME}     consretornoagendavisitante
${OBJETIVO}    Verificar todos os campos na tela: Agendamento de Visitante (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Agendamento de Visitante (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  Quando eu visualizar a tela: Opções de Entrada de Visitante
  E clicar no botão: Cadastrar Agendamento
  E visualizar a tela: Agendamento de Visitante (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Agendamento de Visitantes (Filtro)
  E verificar o campo Data Prevista
  E verificar o campo Hora Prevista
  E verificar o campo Empresa do Visitado
  E verificar o campo Matricula do Visitado
  E verificar o campo Código do Colaborador Visitado
  E verificar o campo Tipo de Documento
  E verificar o campo Número do Documento
  E verificar o campo Nome do Visitante
  E verificar o campo Ramal
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

Quando eu visualizar a tela: Opções de Entrada de Visitante
  resource_ctropcoesentrada.Acessar Tela Opções de Entrada de Visitante

E clicar no botão: Cadastrar Agendamento
  resource_btn.Clicar No Botão Agendamento

E visualizar a tela: Agendamento de Visitante (Consulta)
  resource_consretornoagendavisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Agendamento de Visitantes (Filtro)
  resource_consretornoagendavisitante.Acessar Tela Consulta de Agendamento de Visitantes (Filtro)

E verificar o campo Data Prevista
  resource_consretornoagendavisitante.Verificar o campo Data Prevista

E verificar o campo Hora Prevista
  resource_consretornoagendavisitante.Verificar o campo Hora Prevista

E verificar o campo Empresa do Visitado
  resource_consretornoagendavisitante.Verificar o campo Empresa do Visitado

E verificar o campo Matricula do Visitado
  resource_consretornoagendavisitante.Verificar o campo Matricula do Visitado

E verificar o campo Código do Colaborador Visitado
  resource_consretornoagendavisitante.Verificar o campo Código do Colaborador Visitado

E verificar o campo Tipo de Documento
  resource_consretornoagendavisitante.Verificar o campo Tipo de Documento

E verificar o campo Número do Documento
  resource_consretornoagendavisitante.Verificar o campo Número do Documento

E verificar o campo Nome do Visitante
  resource_consretornoagendavisitante.Verificar o campo Nome do Visitante

E verificar o campo Ramal
  resource_consretornoagendavisitante.Verificar o campo Ramal

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
