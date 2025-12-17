*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrmensagemcoletiva.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Mensagens Coletivas
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  Então devo visualizar a tela: Mensagens Coletivas

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Coletiva

Então devo visualizar a tela: Mensagens Coletivas
  resource_ctrmensagemcoletiva.Acessar Tela Mensagens Coletivas