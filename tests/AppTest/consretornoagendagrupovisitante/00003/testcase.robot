*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_consretornoagendagrupovisitante.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Agendamento de Grupo de Visitante
${APPNAME}     consretornoagendagrupovisitante
${OBJETIVO}    Verificar todos os campos na tela Consulta de Agendamento de Grupo de Visitante

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Agendamento de Grupo de Visitante
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Agendamento
  Então devo visualizar a tela: Consulta de Agendamento de Grupo de Visitante
  E verificar a label Grupo Visitante
  E verificar a label Nome Grupo Visitante
  E verificar a label Data/Hora Prevista
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

E verificar a label Grupo Visitante
  resource_consretornoagendagrupovisitante.Verificar a label Grupo Visitante

E verificar a label Nome Grupo Visitante
  resource_consretornoagendagrupovisitante.Verificar a label Nome Grupo Visitante

E verificar a label Data/Hora Prevista
  resource_consretornoagendagrupovisitante.Verificar a label Data/Hora Prevista

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
