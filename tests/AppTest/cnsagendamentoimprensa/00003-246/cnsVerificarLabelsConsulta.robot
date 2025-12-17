*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendamentoimprensa.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Consulta de Agendamento de Candidato
${SCREENNAME}  Consulta de Agendamento de Candidato
${APPNAME}     cnsagendamentoimprensa

*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Consulta de Agendamento de Candidato
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  Então devo verificar a label: Data
  E verificar a label: Nome
  E verificar a label: CPF
  E verificar a label: Carteira de Identidade
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato

Então devo verificar a label: Data
    resource_cnsagendamentoimprensa.Verificar a label: Data

E verificar a label: Nome
    resource_cnsagendamentoimprensa.Verificar a label: Nome

E verificar a label: CPF
    resource_cnsagendamentoimprensa.Verificar a label: CPF

E verificar a label: Carteira de Identidade
    resource_cnsagendamentoimprensa.Verificar a label: Carteira de Identidade

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
