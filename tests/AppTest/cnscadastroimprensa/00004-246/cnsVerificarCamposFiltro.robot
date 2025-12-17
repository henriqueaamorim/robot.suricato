*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnscadastroimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na tela: Consulta de Cadastro de Candidato (Filtro)
${SCREENNAME}  Consulta de Cadastro de Candidato
${APPNAME}     cnscadastroimprensa

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Consulta de Cadastro de Candidato (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
    Dado que eu acesse o menu: Identificação | Candidato | Candidato
    Quando visualizar a tela: Consulta de Cadastro de Candidato
    E clicar no botão: Pesquisar registro
    Então devo visualizar a tela: Consulta de Cadastro de Candidato (Filtro)
    E verificar a label: Pesquisa
    E verificar o campo: Nome	
    E verificar o campo: Carteira de Identidade	
    E verificar o campo: Número do CPF	
    E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Candidato
    resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

Quando visualizar a tela: Consulta de Cadastro de Candidato
    resource_cnscadastroimprensa.Acessar Tela: Consulta de Cadastro de Candidato

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Cadastro de Candidato (Filtro)    
    resource_cnscadastroimprensa.Acessar Tela: Consulta de Cadastro de Candidato (Filtro)

E verificar a label: Pesquisa
    resource_cnscadastroimprensa.Verificar a label Pesquisa

E verificar o campo: Nome	
    resource_cnscadastroimprensa.Verificar o campo Nome

E verificar o campo: Carteira de Identidade	
    resource_cnscadastroimprensa.Verificar o campo: Carteira de Identidade

E verificar o campo: Número do CPF	
    resource_cnscadastroimprensa.Verificar o campo: Número do CPF

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"



