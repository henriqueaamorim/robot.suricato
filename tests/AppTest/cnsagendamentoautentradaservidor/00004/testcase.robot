*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsentradaservidor.robot
Resource        ../../../../resource/app/resource_frmentradaservidor.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautentradaservidor.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Consulta de Agendamento Autorizado do Colaborador (Filtro)
${APPNAME}     cnsagendamentoautentradaservidor
${OBJETIVO}    Verificar todos os campos na tela Consulta de Agendamento Autorizado do Colaborador (Filtro)

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Agendamento Autorizado do Colaborador (Filtro)
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Entrada
  Quando eu visualizar a tela: Consulta de Autorização de Entrada
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Autorização de Entrada (Inclusão)
  Ao clicar no botão: Agendamentos
  Então devo visualizar a tela: Consulta de Agendamento Autorizado Para Entrada do Colaborador
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Consulta de Agendamento Autorizado do Colaborador (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Data Prevista
  E verificar o campo Hora Prevista
  E verificar o campo Empresa
  E verificar o campo Tipo do Servidor
  E verificar o campo Matrícula
  E verificar se existe o campo Teste

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

E verificar a label Pesquisa
  resource_cnsagendamentoautentradaservidor.Verificar a label Pesquisa

E verificar o campo Data Prevista
  resource_cnsagendamentoautentradaservidor.Verificar o campo Data Prevista

E verificar o campo Hora Prevista
  resource_cnsagendamentoautentradaservidor.Verificar o campo Hora Prevista

E verificar o campo Empresa
  resource_cnsagendamentoautentradaservidor.Verificar o campo Empresa

E verificar o campo Tipo do Servidor
  resource_cnsagendamentoautentradaservidor.Verificar o campo Tipo do Servidor

E verificar o campo Matrícula
  resource_cnsagendamentoautentradaservidor.Verificar o campo Matrícula

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
