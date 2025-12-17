*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLogSuri.robot
Resource        ../../../../resource/resource_utils.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${SCREENNAME}  Log de Eventos do Suriplayer
${APPNAME}     cnsLogSuri
${OBJETIVO}    Verificar todos os campos na tela: Log de Eventos do Suriplayer

*** Test Cases ***
Testcase: Verificar todos os campos na tela: Log de Eventos do Suriplayer
  [Tags]  VERIFY    246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Log Eventos Suriplayer
  Quando visualizar a tela: Log de Eventos do Suriplayer
  Então devo verificar a label: Pesquisa
  E verificar o campo: Planta
  E verificar o campo: Equipamento
  E verificar o campo: Endereço IP
  E verificar o campo: Data/Hora Inicial
  E verificar se existe o campo Teste

*** Keywords ***
Dado que eu acesse o menu: Configuração | Aplicação | Log de Aplicação | Log Eventos Suriplayer
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer

Quando visualizar a tela: Log de Eventos do Suriplayer
  resource_cnsLogSuri.Acessar Tela Log de Eventos do Suriplayer

Então devo verificar a label: Pesquisa  
  resource_cnsLogSuri.Verificar a label Pesquisa

E verificar o campo: Planta
  resource_cnsLogSuri.Verificar o campo Planta

E verificar o campo: Equipamento
  resource_cnsLogSuri.Verificar o campo Equipamento

E verificar o campo: Endereço IP
  resource_cnsLogSuri.Verificar o campo Endereço IP

E verificar o campo: Data/Hora Inicial
  resource_cnsLogSuri.Verificar o campo Data/Hora Inicial

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
