*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEnvioMensagem.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: ENVIO DE MENSAGEM

*** Test Cases ***
Testcase: Acessar Tela: ENVIO DE MENSAGEM
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem
  Então devo visualizar a tela: ENVIO DE MENSAGEM

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem

Então devo visualizar a tela: ENVIO DE MENSAGEM
  resource_ctrEnvioMensagem.Acessar Tela: Envio de Mensagem
