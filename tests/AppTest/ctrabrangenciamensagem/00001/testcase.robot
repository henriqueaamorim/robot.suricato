*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrmensagemcoletiva.robot
Resource        ../../../../resource/app/resource_ctrabrangenciamensagem.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Abrangência
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  Ao visualizar a tela: Mensagens Coletivas
  E clicar no botão: Seleção
  Então devo visualizar a tela: Abrangência

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem | Coletiva
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Coletiva

Ao visualizar a tela: Mensagens Coletivas
  resource_ctrmensagemcoletiva.Acessar Tela Mensagens Coletivas

E clicar no botão: Seleção
  resource_btn.Clicar No Botão Seleção

Então devo visualizar a tela: Abrangência
  resource_ctrabrangenciamensagem.Acessar Tela Abrangência
