*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLogSuri.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Log de Eventos do Suriplayer

*** Test Cases ***
Testcase: Acessar Tela: Log de Eventos do Suriplayer
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Log Eventos Suriplayer
  Então devo visualizar a tela: Log de Eventos do Suriplayer

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Log Eventos Suriplayer
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer

Então devo visualizar a tela: Log de Eventos do Suriplayer
  resource_cnsLogSuri.Acessar Tela Log de Eventos do Suriplayer
