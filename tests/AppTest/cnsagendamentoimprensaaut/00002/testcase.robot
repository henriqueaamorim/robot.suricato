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
  E preencher o campo Data do Agendamento inicio "10/02/2020"
  E preencher o campo Data do Agendamento final "10/02/2021"
  E preencher o campo Hora do Agendamento inicial "05:30"
  E preencher o campo Hora do Agendamento final "10:30"
  E preencher o campo Nome "ok"

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualiza a tela: Autorização de Acesso da Candidato
  resource_ctrautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso da Candidato

E clicar no botão: Agenda
  resource_btn.Clicar No Botão Agenda

Então devo ver a tela: Consulta de Agendamento de Candidato
  resource_cnsagendamentoimprensaaut.Acessar Tela Consulta de Agendamento de Candidato

E preencher o campo Data do Agendamento inicio "${DIA}/${MES}/${ANO}"
  resource_cnsagendamentoimprensaaut.Preencher o campo Data do Agendamento inicio "${DIA}/${MES}/${ANO}"

E preencher o campo Data do Agendamento final "${DIA}/${MES}/${ANO}"
  resource_cnsagendamentoimprensaaut.Preencher o campo Data do Agendamento final "${DIA}/${MES}/${ANO}"

E preencher o campo Hora do Agendamento inicial "${HORA}:${MIN}"
  resource_cnsagendamentoimprensaaut.Preencher o campo Hora do Agendamento inicial "${HORA}/${MIN}"

E preencher o campo Hora do Agendamento final "${HORA}:${MIN}"
  resource_cnsagendamentoimprensaaut.Preencher o campo Hora do Agendamento final "${HORA}/${MIN}"

E preencher o campo Nome "${NOME}"
  resource_cnsagendamentoimprensaaut.Preencher o campo Nome "${NOME}"
