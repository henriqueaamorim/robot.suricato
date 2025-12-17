*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessamentoPlayerBiometria.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Preencher todos os campos na tela: Envio individual de comandos (Filtro)

*** Test Cases ***
Testcase: Preencher todos os campos na tela: Envio individual de comandos (Filtro)
  [Tags]  REGISTER  POLYVALENT  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Envio Individual de Comandos Player
  Então devo visualizar a tela: Envio individual de comandos (Filtro)
  E preencher o campo Endereço IP "4141414141"
  E preencher o campo Crachá "123"
  E preencher o campo Numero PIS "123"
  E preencher o campo Nome "Astolfo"

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Envio Individual de Comandos Player
  resource_mnu.Clicar No Menu Controle | Comando | Envio Individual de Comandos Player

Então devo visualizar a tela: Envio individual de comandos (Filtro)
  resource_consReprocessamentoPlayerBiometria.Acessar Tela Envio individual de comandos

E preencher o campo Endereço IP "${ENDEREÇO_IP}"
  resource_consReprocessamentoPlayerBiometria.Preencher o campo Endereço IP "${ENDEREÇO_IP}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_consReprocessamentoPlayerBiometria.Preencher o campo Crachá "${CRACHÁ}"

E preencher o campo Numero PIS "${NUMERO_PIS}"
  resource_consReprocessamentoPlayerBiometria.Preencher o campo Numero PIS "${NUMERO_PIS}"

E preencher o campo Nome "${NOME}"
  resource_consReprocessamentoPlayerBiometria.Preencher o campo Nome "${NOME}"
