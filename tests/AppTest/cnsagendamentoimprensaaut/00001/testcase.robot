*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsagendamentoimprensaaut.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Agendamento de Candidato
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualiza a tela: Autorização de Acesso da Candidato
  E clicar no botão: Agenda
  Então devo ver a tela: Consulta de Agendamento de Candidato


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualiza a tela: Autorização de Acesso da Candidato
  resource_ctrautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso da Candidato

E clicar no botão: Agenda
  resource_btn.Clicar No Botão Agenda

Então devo ver a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensaaut.Acessar Tela Consulta de Agendamento de Candidato
