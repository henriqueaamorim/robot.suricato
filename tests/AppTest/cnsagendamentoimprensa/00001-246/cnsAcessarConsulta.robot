*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendamentoimprensa.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Consulta de Agendamento de Candidato

*** Test Cases ***
Testcase: Acessar Tela: Consulta de Agendamento de Candidato
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  Quando eu visualizar a tela: Consulta de Agendamento de Candidato

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Agendamento
  resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

Quando eu visualizar a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensa.Acessar Tela: Consulta de Agendamento de Candidato

