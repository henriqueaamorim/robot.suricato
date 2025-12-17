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
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  Quando visualizar a tela: Histórico de Afastamento (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Histórico de Afastamento (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa	
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Data do Afastamento	
  E verificar o campo: Chave Externa	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

Quando visualizar a tela: Histórico de Afastamento (Consulta )
  resource_cnsHistoricoAfastamento.Acessar Tela Consulta Histórico de Afastamento

E clicar no botão: Pesquisar registro
  resource_btn.Clicar no botão Pesquisar Registros
  
Então devo visualizar a tela: Histórico de Afastamento (Filtro)
  resource_cnsHistoricoAfastamento.Acessar Tela Filtro Histórico de Afastamento

E verificar a label: Pesquisa
    resource_cnsHistoricoAfastamento.Verificar a label Pesquisa

E verificar o campo: Empresa	
    resource_cnsHistoricoAfastamento.Verificar o campo Empresa

E verificar o campo: Tipo do Colaborador	
    resource_cnsHistoricoAfastamento.Verificar o campo Tipo do Colaborador

E verificar o campo: Matrícula
    resource_cnsHistoricoAfastamento.Verificar o campo Matrícula

E verificar o campo: Nome
    resource_cnsHistoricoAfastamento.Verificar o campo Nome

E verificar o campo: Data do Afastamento	
    resource_cnsHistoricoAfastamento.Verificar o campo Data do Afastamento

E verificar o campo: Chave Externa
    resource_cnsHistoricoAfastamento.Verificar o campo Chave Externa

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"