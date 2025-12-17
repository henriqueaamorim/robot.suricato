*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendVeicu.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Agendamento de veículo (Filtro)
${SCREENNAME}  Agendamento de veículo
${APPNAME}     cnsAgendVeicu

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Agendamento de veículo (Filtro)
  [Tags]  VERIFY  246  247 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 
  Quando visualizar a tela: Agendamento de veículo (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Agendamento de veículo (Filtro)
  E verificar o campo: Id veículo	
  E verificar o campo: Data saída	
  E verificar o campo: Hora saída	
  E verificar o campo: Motivo saída	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

Quando visualizar a tela: Agendamento de veículo (Consulta)
  resource_cnsAgendVeicu.Acessar Tela: Agendamento de veículo

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Agendamento de veículo (Filtro)  
  resource_cnsAgendVeicu.Acessar Tela Agendamento de veículo - Filtro

E verificar o campo: Id veículo	
  resource_cnsAgendVeicu.Verificar o campo: Id veículo

E verificar o campo: Data saída	
  resource_cnsAgendVeicu.Verificar o campo: Data saída

E verificar o campo: Hora saída	
  resource_cnsAgendVeicu.Verificar o campo: Hora saída

E verificar o campo: Motivo saída	
  resource_cnsAgendVeicu.Verificar o campo: Motivo saída

E verificar se existe o campo Teste na tela    
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	SS