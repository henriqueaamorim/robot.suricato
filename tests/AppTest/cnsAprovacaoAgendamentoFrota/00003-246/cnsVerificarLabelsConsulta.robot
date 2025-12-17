*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAprovacaoAgendamentoFrota.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Aprovação de Agendamentos - Frota
${APPNAME}     cnsAprovacaoAgendamentoFrota
${OBJETIVO}    Verificar todas as labels na tela: Aprovação de Agendamentos - Frota (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Aprovação de Agendamentos - Frota (Consulta)
  [Tags]  VERIFY  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  Quando visualizar a tela: Aprovação de Agendamentos - Frota (Consulta)
  Então devo verificar a label: Previsão de Saída
  E verificar a label: Previsão de Retorno
  E verificar a label: Veículo
  E verificar a label: Solicitante
  E verificar a label: Destino
  E verificar a label: Motivo do Uso
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

Quando visualizar a tela: Aprovação de Agendamentos - Frota (Consulta)
  resource_cnsAprovacaoAgendamentoFrota.Acessar Tela Aprovação de Agendamentos - Frota

Então devo verificar a label: Previsão de Saída
  resource_cnsAprovacaoAgendamentoFrota.Verificar a label Previsão de Saída

E verificar a label: Previsão de Retorno
  resource_cnsAprovacaoAgendamentoFrota.Verificar a label Previsão de Retorno

E verificar a label: Veículo
  resource_cnsAprovacaoAgendamentoFrota.Verificar a label Veículo

E verificar a label: Solicitante
  resource_cnsAprovacaoAgendamentoFrota.Verificar a label Solicitante

E verificar a label: Destino
  resource_cnsAprovacaoAgendamentoFrota.Verificar a label Destino

E verificar a label: Motivo do Uso
  resource_cnsAprovacaoAgendamentoFrota.Verificar a label Motivo do Uso

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
