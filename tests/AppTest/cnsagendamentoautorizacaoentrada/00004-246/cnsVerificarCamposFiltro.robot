*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsagendamentoautorizacaoentrada.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Consulta de Agendamento da Autorização do Colaborador (Filtro)
${APPNAME}     cnsagendamentoautorizacaoentrada
${OBJETIVO}    Verificar todos os campos na tela: Agendamento da Autorização do Colaborador (Filtro)

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Agendamento da Autorização do Colaborador (Filtro)
  [Tags]  VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Autorização | Agendamento
  Quando visualizar a tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Agendamento da Autorização do Colaborador (Filtro)
  E verificar a label Pesquisa
  E verificar o campo Data da Autorização
  E verificar o campo Hora da Autorização
  E verificar o campo Empresa
  E verificar o campo Tipo do Colaborador
  E verificar o campo Matrícula
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Entrada | Autorização | Agendamento 
  resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

Quando visualizar a tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Agendamento da Autorização do Colaborador (Filtro)
  resource_cnsagendamentoautorizacaoentrada.Acessar Tela: Agendamento da Autorização do Colaborador (Filtro)

E verificar a label Pesquisa
  resource_cnsagendamentoautorizacaoentrada.Verificar a label Pesquisa

E verificar o campo Data da Autorização
  resource_cnsagendamentoautorizacaoentrada.Verificar o campo Data da Autorização

E verificar o campo Hora da Autorização
  resource_cnsagendamentoautorizacaoentrada.Verificar o campo Hora da Autorização

E verificar o campo Empresa
  resource_cnsagendamentoautorizacaoentrada.Verificar o campo Empresa

E verificar o campo Tipo do Colaborador
  resource_cnsagendamentoautorizacaoentrada.Verificar o campo Tipo do Colaborador

E verificar o campo Matrícula
  resource_cnsagendamentoautorizacaoentrada.Verificar o campo Matrícula

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
