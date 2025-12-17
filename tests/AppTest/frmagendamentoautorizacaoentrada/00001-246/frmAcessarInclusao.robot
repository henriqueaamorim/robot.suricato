*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautorizacaoentrada.robot
Resource        ../../../../resource/app/resource_frmagendamentoautorizacaoentrada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Agendamento de Autorização de Entrada (Inclusão)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  Quando eu visualzar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Agendamento de Autorização de Entrada (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

Quando eu visualzar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Agendamento de Autorização de Entrada (Inclusão)
  resource_frmagendamentoautorizacaoentrada.Acessar Tela Agendamento de Autorização de Entrada (Inclusão)
