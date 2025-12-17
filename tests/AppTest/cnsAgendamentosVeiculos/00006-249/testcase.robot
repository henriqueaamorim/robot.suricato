*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendamentosVeiculos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Agendamento de veículo
${SCREENNAME}  Agendamentos
${APPNAME}     cnsAgendamentosVeiculos

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Agendamento de veículo
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Consultas | Agendamento
  Então devo visualizar a tela: Agendamentos
  E verificar a label Veículo
  E verificar a label Data de Saída
  E verificar a label Hora de Saída
  E verificar a label Data de Retirada
  E verificar a label Hora de Retirada
  E verificar a label Agendamento de Utilização do Veículo
  E verificar a label Cód. Colaborador Solicitante
  E verificar a label Cód Colaborador para Liberação
  E verificar a label Motivo de Uso
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Consultas | Agendamento
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Agendamento

Então devo visualizar a tela: Agendamentos
  resource_cnsAgendamentosVeiculos.Acessar Tela Agendamentos

E verificar a label Veículo
  resource_cnsAgendamentosVeiculos.Verificar a label Veículo

E verificar a label Data de Saída
  resource_cnsAgendamentosVeiculos.Verificar a label Data de Saída

E verificar a label Hora de Saída
  resource_cnsAgendamentosVeiculos.Verificar a label Hora de Saída

E verificar a label Data de Retirada
  resource_cnsAgendamentosVeiculos.Verificar a label Data de Retirada

E verificar a label Hora de Retirada
  resource_cnsAgendamentosVeiculos.Verificar a label Hora de Retirada

E verificar a label Agendamento de Utilização do Veículo
  resource_cnsAgendamentosVeiculos.Verificar a label Agendamento de Utilização do Veículo

E verificar a label Cód. Colaborador Solicitante
  resource_cnsAgendamentosVeiculos.Verificar a label Cód. Colaborador Solicitante

E verificar a label Cód Colaborador para Liberação
  resource_cnsAgendamentosVeiculos.Verificar a label Cód Colaborador para Liberação

E verificar a label Motivo de Uso
  resource_cnsAgendamentosVeiculos.Verificar a label Motivo de Uso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
