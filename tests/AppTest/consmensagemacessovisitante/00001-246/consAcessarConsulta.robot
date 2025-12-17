*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot
Resource        ../../../../resource/app/resource_consmensagemacessovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela:  Mensagem de Acesso do Visitante (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Mensagem de Acesso do Visitante (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem 
  Quando clicar na Aba: Visitantes
  Então devo visualizar a tela: Mensagem de Acesso do Visitante (Consulta)
 


*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem 
   resource_mnu.Clicar No Menu Registro | Envio de Mensagem

Quando clicar na Aba: Visitantes  
   resource_consmensagemacessovisitante.Clicar Na Aba Visitante

Então devo visualizar a tela: Mensagem de Acesso do Visitante (Consulta)
   resource_consmensagemacessovisitante.Acessar Tela: Mensagem de Acesso do Visitante (Consulta)




