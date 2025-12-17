*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautorizacaoentrada.robot
Resource        ../../../../resource/app/resource_frmagendamentoautorizacaoentrada.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Agendamento de Autorização de Entrada (Inclusão)
${APPNAME}     frmagendamentoautorizacaoentrada
${OBJETIVO}    Verificar todos os campos na tela Agendamento de Autorização de Entrada (Inclusão)


*** Test Cases ***

Testcase: Verificar todos os campos na tela Agendamento de Autorização de Entrada (Inclusão)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  Quando eu visualzar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Agendamento de Autorização de Entrada (Inclusão)
  E verificar o campo Data da Autorização
  E verificar o campo Hora da Autorização *
  E verificar a label Colaborador
  E verificar o campo Código do Colaborador *
  E verificar a label Empresa
  E verificar a label Tipo do Colaborador
  E verificar a label Matrícula
  E verificar a label Nome
  E verificar o campo Grupo de Acesso
  E verificar o campo Data da Validade
  E verificar o campo Hora da Validade
  E verificar o campo Observações
  E verificar a label Autorizador
  E verificar o campo Código do Autorizador
  E verificar a label Empresa do Autorizador
  E verificar a label Tipo do Autorizador
  E verificar a label Matrícula do Autorizador
  E verificar a label Nome do Autorizador
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

Quando eu visualzar a tela: Consulta de Agendamento da Autorização de Entrada do Colaborador
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Agendamento de Autorização de Entrada (Inclusão)
  resource_frmagendamentoautorizacaoentrada.Acessar Tela Agendamento de Autorização de Entrada (Inclusão)

E verificar o campo Data da Autorização
  resource_frmagendamentoautorizacaoentrada.Verificar o campo Data da Autorização

E verificar o campo Hora da Autorização *
  resource_frmagendamentoautorizacaoentrada.Verificar o campo Hora da Autorização *

E verificar a label Colaborador
  resource_frmagendamentoautorizacaoentrada.Verificar a label Colaborador

E verificar o campo Código do Colaborador *
  resource_frmagendamentoautorizacaoentrada.Verificar o campo Código do Colaborador *

E verificar a label Empresa
  resource_frmagendamentoautorizacaoentrada.Verificar a label Empresa

E verificar a label Tipo do Colaborador
  resource_frmagendamentoautorizacaoentrada.Verificar a label Tipo do Colaborador

E verificar a label Matrícula
  resource_frmagendamentoautorizacaoentrada.Verificar a label Matrícula

E verificar a label Nome
  resource_frmagendamentoautorizacaoentrada.Verificar a label Nome

E verificar o campo Grupo de Acesso
  resource_frmagendamentoautorizacaoentrada.Verificar o campo Grupo de Acesso

E verificar o campo Data da Validade
  resource_frmagendamentoautorizacaoentrada.Verificar o campo Data da Validade

E verificar o campo Hora da Validade
  resource_frmagendamentoautorizacaoentrada.Verificar o campo Hora da Validade

E verificar o campo Observações
  resource_frmagendamentoautorizacaoentrada.Verificar o campo Observações

E verificar a label Autorizador
  resource_frmagendamentoautorizacaoentrada.Verificar a label Autorizador

E verificar o campo Código do Autorizador
  resource_frmagendamentoautorizacaoentrada.Verificar o campo Código do Autorizador

E verificar a label Empresa do Autorizador
  resource_frmagendamentoautorizacaoentrada.Verificar a label Empresa do Autorizador

E verificar a label Tipo do Autorizador
  resource_frmagendamentoautorizacaoentrada.Verificar a label Tipo do Autorizador

E verificar a label Matrícula do Autorizador
  resource_frmagendamentoautorizacaoentrada.Verificar a label Matrícula do Autorizador

E verificar a label Nome do Autorizador
  resource_frmagendamentoautorizacaoentrada.Verificar a label Nome do Autorizador

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
