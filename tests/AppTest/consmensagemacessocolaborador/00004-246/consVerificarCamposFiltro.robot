*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot
Resource        ../../../../resource/app/resource_consmensagemacessocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os campos na Tela: Mensagem de Acesso (Filtro)
${SCREENNAME}  Mensagem de Acesso
${APPNAME}     consmensagemacessocolaborador

*** Test Cases ***
Testcase: Verificar todos os campos na Tela: Mensagem de Acesso (Filtro)
  [Tags]   VERIFY  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem 
  Quando clicar na Aba: Colaboradores
  E visualizar a tela: Mensagem de Acesso (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Mensagem de Acesso (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Matrícula
  E verificar o campo: Empresa
  E verificar o campo: Tipo de Colaborador	
  E verificar o campo: Data Inicial da Mensagem	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem 
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem

Quando clicar na Aba: Colaboradores  
  resource_consmensagemacessocolaborador.Clicar na Aba: Colaboradores

E visualizar a tela: Mensagem de Acesso (Consulta)
  resource_consmensagemacessocolaborador.Acessar Tela: Mensagem de Acesso (Consulta) 

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar registros

Então devo visualizar a tela: Mensagem de Acesso (Filtro)
  resource_consmensagemacessocolaborador.Acessar Tela: Mensagem de Acesso (Filtro) 

E verificar a label: Pesquisa
  resource_consmensagemacessocolaborador.Verificar a label Pesquisa

E verificar o campo: Matrícula
  resource_consmensagemacessocolaborador.Verificar o campo: Matrícula

E verificar o campo: Empresa
  resource_consmensagemacessocolaborador.Verificar o campo: Empresa

E verificar o campo: Tipo de Colaborador	
  resource_consmensagemacessocolaborador.Verificar o campo: Tipo de Colaborador

E verificar o campo: Data Inicial da Mensagem	
  resource_consmensagemacessocolaborador.Verificar o campo: Data Inicial da Mensagem

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}" 