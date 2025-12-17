*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot
Resource        ../../../../resource/app/resource_consmensagemacessovisitante.robot
Resource    ../../../../resource/app/resource_ctrEspelhoAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Verificar todas os campos na Tela: Mensagem de Acesso do Visitante (Filtro)
${SCREENNAME}   Mensagem de Acesso do Visitante (Filtro)
${APPNAME}    consmensagemacessovisitante

*** Test Cases ***
Testcase: Verificar todas os campos na Tela: Mensagem de Acesso do Visitante (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem 
  Quando clicar na Aba: Visitantes
  E visualizar a tela: Mensagem de Acesso do Visitante (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Mensagem de Acesso do Visitante (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Nome
  E verificar o campo: Data Inicial	
  E verificar o campo: Mensagem
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem 
   resource_mnu.Clicar No Menu Registro | Envio de Mensagem

Quando clicar na Aba: Visitantes  
   resource_consmensagemacessovisitante.Clicar Na Aba Visitante

E visualizar a tela: Mensagem de Acesso do Visitante (Consulta)
   resource_consmensagemacessovisitante.Acessar Tela: Mensagem de Acesso do Visitante (Consulta)

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Mensagem de Acesso do Visitante (Filtro)
  resource_consmensagemacessovisitante.Acessar Tela: Mensagem de Acesso do Visitante (Filtro)

E verificar a label: Pesquisa
  resource_consmensagemacessovisitante.Verificar a label: Pesquisa

E verificar o campo: Nome
  resource_consmensagemacessovisitante.Verificar o campo: Nome

E verificar o campo: Data Inicial	
  resource_consmensagemacessovisitante.Verificar o campo: Data Inicial

E verificar o campo: Mensagem  
  resource_consmensagemacessovisitante.Verificar o campo: Mensagem

E verificar se existe o campo Teste
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"