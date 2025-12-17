*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmpessoasnaograta.robot
Resource        ../../../../resource/app/resource_conspessoasnaograta.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Pessoa não Grata (Consulta)
${SCREENNAME}  Pessoa não Grata 
${APPNAME}     conspessoasnaograta

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Pessoa não Grata (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Pessoa Não Grata
  Quando visualizar a tela: Pessoa não Grata (Consulta)
  Então devo verificar a label: Tipo do Documento
  E verificar a label: Número do Documento
  E verificar a label: Nome
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Pessoa Não Grata
  resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata

Quando visualizar a tela: Pessoa não Grata (Consulta)
  resource_conspessoasnaograta.Acessar Tela: Pessoa não Grata (Consulta)

Então devo verificar a label: Tipo do Documento
    resource_conspessoasnaograta.Verificar a label: Tipo do Documento

E verificar a label: Número do Documento
    resource_conspessoasnaograta.Verificar a label: Número do Documento

E verificar a label: Nome
    resource_conspessoasnaograta.Verificar a label: Nome

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"