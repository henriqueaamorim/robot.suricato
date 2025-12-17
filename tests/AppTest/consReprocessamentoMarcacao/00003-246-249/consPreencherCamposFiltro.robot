*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessamentoMarcacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Preencher todos os campos na tela: Reprocessamento de Marcação.

*** Test Cases ***
Testcase: Preencher todos os campos na tela: Reprocessamento de Marcação
  [Tags]  REGISTER  POLYVALENT  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  Então devo visualizar a tela: Reprocessamento de Marcação
  E preencher o campo Endereço IP "12345678"
  E preencher o campo Nome "Luis"
  E preencher o campo Numero PIS "12345"
  E preencher o campo Matricula "717171"
  E preencher o campo Crachá "41414"
  E preencher o campo Data Inicial "12/03/2020"
  E preencher o campo Data Final "30/05/2022"
  E preencher o campo Hora Inicial "12:00"
  E preencher o campo Hora Final "13:00"

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcação

Então devo visualizar a tela: Reprocessamento de Marcação
  resource_consReprocessamentoMarcacao.Acessar Tela Reprocessamento de Marcação

E preencher o campo Endereço IP "${ENDEREÇO_IP}"
  resource_consReprocessamentoMarcacao.Preencher o campo Endereço IP "${ENDEREÇO_IP}"

E preencher o campo Nome "${NOME}"
  resource_consReprocessamentoMarcacao.Preencher o campo Nome "${NOME}"

E preencher o campo Numero PIS "${NUMERO_PIS}"
  resource_consReprocessamentoMarcacao.Preencher o campo Numero PIS "${NUMERO_PIS}"

E preencher o campo Matricula "${MATRICULA}"
  resource_consReprocessamentoMarcacao.Preencher o campo Matricula "${MATRICULA}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_consReprocessamentoMarcacao.Preencher o campo Crachá "${CRACHÁ}"

E preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
  resource_consReprocessamentoMarcacao.Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data Final "${DIA}/${MES}/${ANO}"
  resource_consReprocessamentoMarcacao.Preencher o campo Data Final "${DIA}/${MES}/${ANO}"

E preencher o campo Hora Inicial "${HORA}:${MIN}"
  resource_consReprocessamentoMarcacao.Preencher o campo Hora Inicial "${HORA}:${MIN}"

E preencher o campo Hora Final "${HORA}:${MIN}"
  resource_consReprocessamentoMarcacao.Preencher o campo Hora Final "${HORA}:${MIN}"
