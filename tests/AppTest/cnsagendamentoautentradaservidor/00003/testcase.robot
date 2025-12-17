*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsentradaservidor.robot
Resource        ../../../../resource/app/resource_frmentradaservidor.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautentradaservidor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Agendamento Autorizado do Colaborador (Filtro)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Entrada
  Quando eu visualizar a tela: Consulta de Autorização de Entrada
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Autorização de Entrada (Inclusão)
  Ao clicar no botão: Agendamentos
  Então devo visualizar a tela: Consulta de Agendamento Autorizado Para Entrada do Colaborador
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Agendamento Autorizado do Colaborador (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Entrada
  resource_mnu.Clicar No Menu Entrada | Autorização | Entrada

Quando eu visualizar a tela: Consulta de Autorização de Entrada
  resource_cnsentradaservidor.Acessar Tela Consulta de Autorização de Entrada

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Autorização de Entrada (Inclusão)
  resource_frmentradaservidor.Acessar Tela Autorização de Entrada (Inclusão)

Ao clicar no botão: Agendamentos
  resource_btn.Clicar No Botão Agendamento

Então devo visualizar a tela: Consulta de Agendamento Autorizado Para Entrada do Colaborador
  resource_cnsagendamentoautentradaservidor.Acessar Tela Consulta de Agendamento Autorizado Para Entrada do Colaborador

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Agendamento Autorizado do Colaborador (Filtro)
  resource_cnsagendamentoautentradaservidor.Acessar Tela Consulta de Agendamento Autorizado do Colaborador (Filtro)