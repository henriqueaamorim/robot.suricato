*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAprovacaoAgendamentoFrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Aprovação de Agendamentos - Frota
${APPNAME}     cnsAprovacaoAgendamentoFrota
${OBJETIVO}    Verificar todos os campos na tela: Aprovação de Agendamentos - Frota (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Aprovação de Agendamentos - Frota (Filtro)
  [Tags]  VERIFY    246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  Quando visualizar a tela: Aprovação de Agendamentos - Frota (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Aprovação de Agendamentos - Frota (Filtro)
  E verificar o campo: Veículo	
  E verificar o campo: Data de partida do veículo	
  E verificar o campo: Horário de partida do veículo	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

Quando visualizar a tela: Aprovação de Agendamentos - Frota (Consulta)
  resource_cnsAprovacaoAgendamentoFrota.Acessar Tela Aprovação de Agendamentos - Frota

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Aprovação de Agendamentos - Frota (Filtro)  
  resource_cnsAprovacaoAgendamentoFrota.Acessar Tela Aprovação de Agendamentos - Frota (Filtro)

E verificar o campo: Veículo	
  resource_cnsAprovacaoAgendamentoFrota.Verificar o campo: Veículo

E verificar o campo: Data de partida do veículo	
  resource_cnsAprovacaoAgendamentoFrota.Verificar o campo: Horário de partida do veículo

E verificar o campo: Horário de partida do veículo	
  resource_cnsAprovacaoAgendamentoFrota.Verificar o campo: Horário de partida do veículo

E verificar se existe o campo Teste na tela   
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  	
  