*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautorizacaoentrada.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Agendamento da Autorização de Entrada do Colaborador
${APPNAME}     cnsagendamentoautorizacaoentrada
${OBJETIVO}    Verificar todas as labels na tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  Quando visualizar a tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)
  Então devo verificar a label: Data da Autorização
  E verificar a label: Hora da Autorização
  E verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Grupo de Acesso
  E verificar a label: Data da Validade
  E verificar a label: Hora da Validade
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Agendamento 
  resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

Quando visualizar a tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)

Então devo verificar a label: Data da Autorização
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Data da Autorização

E verificar a label: Hora da Autorização
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Hora da Autorização

E verificar a label: Empresa
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Empresa

E verificar a label: Tipo do Colaborador
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Tipo do Colaborador

E verificar a label: Matrícula
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Matrícula

E verificar a label: Grupo de Acesso
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Grupo de Acesso

E verificar a label: Data da Validade
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Data da Validade

E verificar a label: Hora da Validade
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Hora da Validade

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
