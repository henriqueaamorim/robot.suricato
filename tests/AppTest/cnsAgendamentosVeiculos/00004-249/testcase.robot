*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAgendamentosVeiculos.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Agendamento
${APPNAME}     cnsAgendamentosVeiculos
${OBJETIVO}    Verificar todos os campos na tela Agendamento - Filtro.

*** Test Cases ***
Testcase: Verificar todos os campos na tela Agendamento - Filtro
  [Tags]  VERIFY  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Consultas | Agendamento
  Então devo visualizar a tela: Agendamentos
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Agendamento - Filtro
  E verificar o campo Veículo
  E verificar o campo Data de Saída
  E verificar o campo Hora de Saída
  E verificar o campo Data de Retirada
  E verificar o campo Hora de Retirada
  E verificar o campo Agendamento de Utilização do Veículo
  E verificar o campo Cód. Colaborador Solicitante
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Consultas | Agendamento
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Agendamento

Então devo visualizar a tela: Agendamentos
  resource_cnsAgendamentosVeiculos.Acessar Tela Agendamentos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Agendamento - Filtro
  resource_cnsAgendamentosVeiculos.Acessar Tela Agendamento - Filtro

E verificar o campo Veículo
  resource_cnsAgendamentosVeiculos.Verificar o campo Veículo

E verificar o campo Data de Saída
  resource_cnsAgendamentosVeiculos.Verificar o campo Data de Saída

E verificar o campo Hora de Saída
  resource_cnsAgendamentosVeiculos.Verificar o campo Hora de Saída

E verificar o campo Data de Retirada
  resource_cnsAgendamentosVeiculos.Verificar o campo Data de Retirada

E verificar o campo Hora de Retirada
  resource_cnsAgendamentosVeiculos.Verificar o campo Hora de Retirada

E verificar o campo Agendamento de Utilização do Veículo
  resource_cnsAgendamentosVeiculos.Verificar o campo Agendamento de Utilização do Veículo

E verificar o campo Cód. Colaborador Solicitante
  resource_cnsAgendamentosVeiculos.Verificar o campo Cód. Colaborador Solicitante

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
