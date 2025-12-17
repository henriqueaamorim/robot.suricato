*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot
Resource        ../../../../resource/app/resource_consmensagemacessocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Mensagem de Acesso (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Mensagem de Acesso (Filtro)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem 
  Quando clicar na Aba: Colaboradores
  E visualizar a tela: Mensagem de Acesso (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Mensagem de Acesso (Filtro)

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
