*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot
Resource        ../../../../resource/app/resource_consmensagemacessocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Mensagem de Acesso (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Mensagem de Acesso (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem 
  Quando clicar na Aba: Colaboradores
  Então devo visualizar a tela: Mensagem de Acesso (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem 
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem

Quando clicar na Aba: Colaboradores  
  resource_consmensagemacessocolaborador.Clicar na Aba: Colaboradores

Então devo visualizar a tela: Mensagem de Acesso (Consulta)
  resource_consmensagemacessocolaborador.Acessar Tela: Mensagem de Acesso (Consulta) 


