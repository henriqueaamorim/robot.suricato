*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLogSuri.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela Log de Eventos do Suriplayer - Resultado
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configurações | Log de Aplicação | Log Eventos Suriplayer
  Ao visualizar a tela: Log de Eventos do Suriplayer
  Então devo selecionar um item no campo "Planta"
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Log de Eventos do Suriplayer - Resultado

*** Keywords ***
Dado que eu acesse o menu: Configurações | Log de Aplicação | Log Eventos Suriplayer
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer

Ao visualizar a tela: Log de Eventos do Suriplayer
  resource_cnsLogSuri.Acessar Tela Log de Eventos do Suriplayer

Então devo selecionar um item no campo "Planta"
  resource_cnsLogSuri.Selecionar Planta

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Log de Eventos do Suriplayer - Resultado
  resource_cnsLogSuri.Acessar Tela Log de Eventos do Suriplayer - Resultado
