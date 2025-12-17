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

${SCREENNAME}  Consulta de Agendamento Autorizado Para Entrada do Colaborador
${APPNAME}     cnsagendamentoautentradaservidor
${OBJETIVO}    Verificar todos os campos na tela Consulta de Agendamento Autorizado Para Entrada do Colaborador

*** Test Cases ***

Testcase: Verificar todos os campos na tela Consulta de Agendamento Autorizado Para Entrada do Colaborador
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Entrada
  Quando eu visualizar a tela: Consulta de Autorização de Entrada
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Autorização de Entrada (Inclusão)
  Ao clicar no botão: Agendamentos
  Então devo visualizar a tela: Consulta de Agendamento Autorizado Para Entrada do Colaborador
  E verificar a label Data Prevista
  E verificar a label Hora Prevista
  E verificar a label Empresa
  E verificar a label Tipo do Servidor
  E verificar a label Matrícula
  E verificar a label Permissão
  E verificar a label Data de Validade
  E verificar a label Hora de Validade
  E verificar a label Observações
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

E verificar a label Data Prevista
  resource_cnsagendamentoautentradaservidor.Verificar a label Data Prevista

E verificar a label Hora Prevista
  resource_cnsagendamentoautentradaservidor.Verificar a label Hora Prevista

E verificar a label Empresa
  resource_cnsagendamentoautentradaservidor.Verificar a label Empresa

E verificar a label Tipo do Servidor
  resource_cnsagendamentoautentradaservidor.Verificar a label Tipo do Servidor

E verificar a label Matrícula
  resource_cnsagendamentoautentradaservidor.Verificar a label Matrícula

E verificar a label Permissão
  resource_cnsagendamentoautentradaservidor.Verificar a label Permissão

E verificar a label Data de Validade
  resource_cnsagendamentoautentradaservidor.Verificar a label Data de Validade

E verificar a label Hora de Validade
  resource_cnsagendamentoautentradaservidor.Verificar a label Hora de Validade

E verificar a label Observações
  resource_cnsagendamentoautentradaservidor.Verificar a label Observações

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
