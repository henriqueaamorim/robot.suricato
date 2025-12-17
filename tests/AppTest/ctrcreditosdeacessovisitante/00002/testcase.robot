*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessovisitante.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Créditos de Acesso 
${APPNAME}     ctrcreditosdeacessovisitante
${OBJETIVO}    Verificar todos os campos na tela Créditos de Acesso


*** Test Cases ***

Testcase: Verificar todos os campos na tela Créditos de Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  Então devo visualizar a tela: Créditos de Acesso
  E verificar o campo Código do Visitante 
  E verificar o campo Tipo do Documento           
  E verificar o campo Número do Documento        
  E verificar o campo Nome 
  E verificar o campo Data Inicial   
  E verificar o campo Data Final 
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

Então devo visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessovisitante.Acessar Tela Créditos de Acesso

E verificar o campo Código do Visitante 
  resource_ctrcreditosdeacessovisitante.E verificar o campo Código do Visitante 

E verificar o campo Tipo do Documento           
  resource_ctrcreditosdeacessovisitante.E verificar o campo Tipo do Documento 

E verificar o campo Número do Documento       
  resource_ctrcreditosdeacessovisitante.E verificar o campo Número do Documento 

E verificar o campo Nome 
  resource_ctrcreditosdeacessovisitante.E verificar o campo Nome 

E verificar o campo Data Inicial   
  resource_ctrcreditosdeacessovisitante.E verificar o campo Data Inicial

E verificar o campo Data Final 
  resource_ctrcreditosdeacessovisitante.E verificar o campo Data Final 

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"