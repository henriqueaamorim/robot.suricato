*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessoservidor.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${SCREENNAME}  Créditos de Acesso 
${APPNAME}     ctrcreditosdeacessoservidor
${OBJETIVO}    Verificar todos os campos na tela Créditos de Acesso


*** Test Cases ***

Testcase: Verificar todos os campos na tela Créditos de Acesso
  [Tags]  VERIFY
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  Então devo visualizar a tela: Créditos de Acesso
  E verificar o campo Código do Colaborador       
  E verificar o campo Empresa     
  E verificar o campo Tipo de Colaborador   
  E verificar o campo Matrícula     
  E verificar o campo Nome       
  E verificar o campo Data Inicial                     
  E verificar o campo Data Final   
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Então devo visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessoservidor.Acessar Tela Créditos de Acesso

E verificar o campo Código do Colaborador       
  resource_ctrcreditosdeacessoservidor.E verificar o campo Código do Colaborador

E verificar o campo Empresa     
  resource_ctrcreditosdeacessoservidor.E verificar o campo Empresa

E verificar o campo Tipo de Colaborador   
  resource_ctrcreditosdeacessoservidor.E verificar o campo Tipo de Colaborador   

E verificar o campo Matrícula     
  resource_ctrcreditosdeacessoservidor.E verificar o campo Matrícula     

E verificar o campo Nome       
  resource_ctrcreditosdeacessoservidor.E verificar o campo Nome       

E verificar o campo Data Inicial                   
  resource_ctrcreditosdeacessoservidor.E verificar o campo Data Inicial

E verificar o campo Data Final   
  resource_ctrcreditosdeacessoservidor.E verificar o campo Data Final

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"  