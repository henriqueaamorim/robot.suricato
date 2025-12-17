*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendamentosVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Agendamento de veículo (Filtro)
${SCREENNAME}  Agendamento de veículo
${APPNAME}     cnsAgendamentosVeiculos

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Agendamento de veículo (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Consultas | Agendamento
  Quando visualizar a tela: Agendamentos (Consulta)
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Agendamentos (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Veículo
  E verificar o campo: Data de Saída	
  E verificar o campo: Hora de Saída	
  E verificar o campo: Data de Retirada	
  E verificar o campo: Hora de Retirada	
  E verificar o campo: Agendamento de Utilização do Veículo	
  E verificar o campo: Cód. Colaborador Solicitante	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Consultas | Agendamento
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Agendamento

Quando visualizar a tela: Agendamentos (Consulta)
  resource_cnsAgendamentosVeiculos.Acessar Tela: Agendamentos

E clicar no botão: Pesquisar Registro
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Agendamentos (Filtro)
  resource_cnsAgendamentosVeiculos.Acessar Tela Agendamento de veículo - Filtro

E verificar a label: Pesquisa
  resource_cnsAgendamentosVeiculos.Verificar a label Pesquisa 

E verificar o campo: Veículo
  resource_cnsAgendamentosVeiculos.Verificar o campo: Veículo	

E verificar o campo: Data de Saída	
  resource_cnsAgendamentosVeiculos.Verificar o campo Data de Saída

E verificar o campo: Hora de Saída	
  resource_cnsAgendamentosVeiculos.Verificar o campo Hora de Saída

E verificar o campo: Data de Retirada	
  resource_cnsAgendamentosVeiculos.Verificar o campo Data de Retirada

E verificar o campo: Hora de Retirada	
  resource_cnsAgendamentosVeiculos.Verificar o campo Hora de Retirada

E verificar o campo: Agendamento de Utilização do Veículo	
  resource_cnsAgendamentosVeiculos.Verificar o campo Agendamento de Utilização do Veículo

E verificar o campo: Cód. Colaborador Solicitante	
  resource_cnsAgendamentosVeiculos.Verificar o campo Cód. Colaborador Solicitante

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"