*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLogSuri.robot
Resource        ../../../../resource/app/resource_cnsLogSuriDetalhe.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Detalhe do Evento Suriplayer

*** Test Cases ***

Testcase: Preencher todos os campos da tela Detalhe do Evento Suriplayer
  [Tags]  REGISTER  POLYVALENT
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Configurações | Log de Aplicação | Log Eventos Suriplayer
  Ao visualizar a tela: Log de Eventos do Suriplayer
  Então devo selecionar um item no campo "Planta"
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Log de Eventos do Suriplayer - Resultado
  Ao clicar no botão: Detalhe do Evento
  Então devo visualizar a tela: Detalhe do Evento Suriplayer

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

Ao clicar no botão: Detalhe do Evento
  resource_btn.Clicar No Botão Detalhe do Evento

Então devo visualizar a tela: Detalhe do Evento Suriplayer
  resource_cnsLogSuriDetalhe.Acessar Tela Detalhe do Evento Suriplayer
