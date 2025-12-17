*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendVeicu.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Agendamento de veículo (Consulta)
${SCREENNAME}  Agendamento de veículo
${APPNAME}     cnsAgendVeicu

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Agendamento de veículo (Consulta)
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 
  Quando visualizar a tela: Agendamento de veículo (Consulta)
  Então devo verificar a label: Id veículo
  E verificar a label: Data saída
  E verificar a label: Hora saída
  E verificar a label: Motivo saída 
  E verificar a label: Data retirada
  E verificar a label: Hora retirada
  E verificar a label: Destino
  E verificar se existe o campo Teste na tela



*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Quando visualizar a tela: Agendamento de veículo (Consulta)
  resource_cnsAgendVeicu.Acessar Tela: Agendamento de veículo

Então devo verificar a label: Id veículo
  resource_cnsAgendVeicu.Verificar a label: Id veículo

E verificar a label: Data saída
  resource_cnsAgendVeicu.Verificar a label: Data saída

E verificar a label: Hora saída
  resource_cnsAgendVeicu.Verificar a label: Hora saída

E verificar a label: Motivo saída 
  resource_cnsAgendVeicu.Verificar a label: Motivo saída

E verificar a label: Data retirada
  resource_cnsAgendVeicu.Verificar a label: Data retirada

E verificar a label: Hora retirada
  resource_cnsAgendVeicu.Verificar a label: Hora retirada

E verificar a label: Destino
  resource_cnsAgendVeicu.Verificar a label: Destino

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  