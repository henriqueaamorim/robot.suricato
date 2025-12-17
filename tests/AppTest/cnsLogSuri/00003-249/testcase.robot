*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLogSuri.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Log de Eventos do Suriplayer

*** Test Cases ***

Testcase: Preencher todos os campos da tela Log de Eventos do Suriplayer
  [Tags]  REGISTER  POLYVALENT   249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Log de Aplicação | Log Eventos Suriplayer
  Então devo visualizar a tela: Log de Eventos do Suriplayer
  E selecionar uma opção no campo Planta "AUG"
  E selecionar uma opção no campo Equipamento "1 -REP-AUG"
  E preencher o campo Endereço IP "ok"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"
  E preencher o campo Data/Hora Inicial "00"

*** Keywords ***
Dado que eu acesse o menu: Configurações | Log de Aplicação | Log Eventos Suriplayer
  resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer

Então devo visualizar a tela: Log de Eventos do Suriplayer
  resource_cnsLogSuri.Acessar Tela Log de Eventos do Suriplayer

E selecionar uma opção no campo Planta "${PLANTA}"
  resource_cnsLogSuri.Selecionar uma opção no campo Planta "${PLANTA}"

E selecionar uma opção no campo Equipamento "${EQUIPAMENTO}"
  resource_cnsLogSuri.Selecionar uma opção no campo Equipamento "${EQUIPAMENTO}"

E preencher o campo Endereço IP "${ENDEREÇO_IP}"
  resource_cnsLogSuri.Preencher o campo Endereço IP "${ENDEREÇO_IP}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"

E preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
  resource_cnsLogSuri.Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
