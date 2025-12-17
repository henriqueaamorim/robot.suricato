*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmpessoasnaograta.robot
Resource        ../../../../resource/app/resource_conspessoasnaograta.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Pessoa não Grata (Filtro)
${SCREENNAME}  Pessoa não Grata 
${APPNAME}     conspessoasnaograta

*** Test Cases ***

Testcase: Verificar todos os campos na tela: Pessoa não Grata (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Pessoa Não Grata
  Quando visualizar a tela: Pessoa não Grata (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Pessoa não Grata (Filtro)
  E verificar o campo: Tipo do Documento	
  E verificar o campo: Número do Documento	 
  E verificar o campo: Nome 
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Pessoa Não Grata
  resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata

Quando visualizar a tela: Pessoa não Grata (Consulta)
  resource_conspessoasnaograta.Acessar Tela: Pessoa não Grata (Consulta)

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Pessoa não Grata (Filtro)  
    resource_conspessoasnaograta.Acessar Tela: Pessoa não Grata (Filtro)

E verificar o campo: Tipo do Documento	
    resource_conspessoasnaograta.Verificar o campo: Tipo do Documento

E verificar o campo: Número do Documento	 
    resource_conspessoasnaograta.Verificar o campo: Número do Documento

E verificar o campo: Nome 
    resource_conspessoasnaograta.Verificar o campo: Nome

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"