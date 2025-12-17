*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoAcessoImprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar Todos os Campos na Tela: Consulta de Histórico de Liberação de Nível
${SCREENNAME}  Consulta de Histórico de Liberação de Nível
${APPNAME}     cnsAutorizacaoAcessoImprensa

*** Test Cases ***
Testcase: Verificar Todos os Campos na Tela: Consulta de Histórico de Liberação de Nível
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Liberação de Nível
  Quando visualizar a tela: Consulta de Histórico de Liberação de Nível
  Então devo verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo do Colaborador	
  E verificar o campo: Nome
  E verificar o campo: Apelido
  E verificar o campo: Matrícula
  E verificar o campo: PIS
  E verificar o campo: CPF
  E verificar o campo: Ramal
  E verificar o campo: Chave Externa	
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Registro | Liberação de Nível
  resource_mnu.Clicar No Menu Registro | Liberação de Nível

Quando visualizar a tela: Consulta de Histórico de Liberação de Nível
  resource_cnsAutorizacaoAcessoImprensa.Acessar Tela: Consulta de Histórico de Liberação de Nível

Então devo verificar a label: Pesquisa
    resource_cnsAutorizacaoAcessoImprensa.Verificar a label Pesquisa na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: Empresa
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Empresa na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: Tipo do Colaborador	
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Tipo do Colaborador na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: Nome
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Nome na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: Apelido
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Apelido na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: Matrícula
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Matrícula na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: PIS
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: PIS na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: CPF
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: CPF na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: Ramal
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Ramal na tela: Consulta de Histórico de Liberação de Nível

E verificar o campo: Chave Externa	
    resource_cnsAutorizacaoAcessoImprensa.Verificar o campo: Chave Externa na tela: Consulta de Histórico de Liberação de Nível

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
