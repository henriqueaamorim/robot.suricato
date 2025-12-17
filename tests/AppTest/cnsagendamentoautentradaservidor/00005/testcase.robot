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

Testcase: APreencher todos os campos da Tela Consulta de Agendamento Autorizado do Colaborador (Filtro)
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Entrada
  Quando eu visualizar a tela: Consulta de Autorização de Entrada
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Autorização de Entrada (Inclusão)
  Ao clicar no botão: Agendamentos
  Então devo visualizar a tela: Consulta de Agendamento Autorizado Para Entrada do Colaborador
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Agendamento Autorizado do Colaborador (Filtro)
  E selecionar o campo Data Prevista "Exatamente igual"
  E preencher o campo Data Prevista "25/02/2020"
  E selecionar o campo Hora Prevista "Exatamente igual"
  E preencher o campo Hora Prevista "02:00"
  E selecionar o campo Empresa "Alfandega"
  E selecionar o campo Tipo do Servidor "Socio"
  E selecionar o campo Matrícula "que contenha"
  E preencher o campo Matrícula "ok"

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
E selecionar o campo Data Prevista "${DATA_PREVISTA}"
  resource_cnsagendamentoautentradaservidor.Selecionar o campo Data Prevista "${DATA_PREVISTA}"

E preencher o campo Data Prevista "${DIA}/${MES}/${ANO}"
  resource_cnsagendamentoautentradaservidor.Preencher o campo Data Prevista "${DIA}/${MES}/${ANO}"

E selecionar o campo Hora Prevista "${HORA_PREVISTA}"
  resource_cnsagendamentoautentradaservidor.Selecionar o campo Hora Prevista "${HORA_PREVISTA}"

E preencher o campo Hora Prevista "${HORA}:${MIN}"
  resource_cnsagendamentoautentradaservidor.Preencher o campo Hora Prevista "${HORA}/${MIN}"

E selecionar o campo Empresa "${EMPRESA}"
  resource_cnsagendamentoautentradaservidor.Selecionar o campo Empresa "${EMPRESA}"

E selecionar o campo Tipo do Servidor "${TIPO_DO_SERVIDOR}"
  resource_cnsagendamentoautentradaservidor.Selecionar o campo Tipo do Servidor "${TIPO_DO_SERVIDOR}"

E selecionar o campo Matrícula "${MATRÍCULA}"
  resource_cnsagendamentoautentradaservidor.Selecionar o campo Matrícula "${MATRÍCULA}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_cnsagendamentoautentradaservidor.Preencher o campo Matrícula "${MATRÍCULA}"
