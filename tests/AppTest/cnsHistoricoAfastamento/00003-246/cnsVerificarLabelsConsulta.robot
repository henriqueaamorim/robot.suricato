*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoAfastamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Histórico de Afastamento (Consulta)
${SCREENNAME}  Afastamento
${APPNAME}     cnsHistoricoAfastamento

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Histórico de Afastamento (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  Quando visualizar a tela: Histórico de Afastamento (Consulta)
  Então devo verificar a label: Chave Externa
  E verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Data do Afastamento
  E verificar a label: Hora do Afastamento
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

Quando visualizar a tela: Histórico de Afastamento (Consulta )
  resource_cnsHistoricoAfastamento.Acessar Tela Consulta Histórico de Afastamento

Então devo verificar a label: Chave Externa
    resource_cnsHistoricoAfastamento.Verificar a label Chave Externa

E verificar a label: Empresa
    resource_cnsHistoricoAfastamento.Verificar a label Empresa

E verificar a label: Tipo do Colaborador
    resource_cnsHistoricoAfastamento.Verificar a label Tipo do Colaborador

E verificar a label: Matrícula
    resource_cnsHistoricoAfastamento.Verificar a label Matrícula

E verificar a label: Nome
    resource_cnsHistoricoAfastamento.Verificar a label Nome

E verificar a label: Data do Afastamento
    resource_cnsHistoricoAfastamento.Verificar a label Data do Afastamento

E verificar a label: Hora do Afastamento
    resource_cnsHistoricoAfastamento.Verificar a label Hora do Afastamento

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"