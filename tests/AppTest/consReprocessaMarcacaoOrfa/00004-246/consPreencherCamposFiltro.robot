*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessaMarcacaoOrfa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Preencher todos os campos na tela: Reprocessamento de Marcações Orfãs REP (Filtro)

*** Test Cases ***
Testcase: Preencher todos os campos na tela: Reprocessamento de Marcações Orfãs REP (Filtro)
  [Tags]  REGISTER  POLYVALENT  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  Quando visualizar a tela: Reprocessamento de Marcações Orfãs REP (Filtro)
  Então devo preencher o campo Nome "Carlinhos"
  E preencher o campo Matrícula "123"
  E preencher o campo Crachá "12345"
  E preencher o campo PIS "123456"
  E preencher o campo Endereço IP "1234567412"
  E preencher o campo Indelével "01010"
  E preencher o campo Data Inicial 23/05/2024
  E preencher o campo Data Final 24/05/2024
  E preencher o campo Hora "12:00"
  

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP

Quando visualizar a tela: Reprocessamento de Marcações Orfãs REP (Filtro)
  resource_consReprocessaMarcacaoOrfa.Acessar Tela Reprocessamento de Marcações Orfãs REP

Então devo preencher o campo Nome "${NOME}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Nome "${NOME}"

E preencher o campo Matrícula "${MATRÍCULA}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Matrícula "${MATRÍCULA}"

E preencher o campo Crachá "${CRACHÁ}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Crachá "${CRACHÁ}"

E preencher o campo PIS "${PIS}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo PIS "${PIS}"

E preencher o campo Endereço IP "${ENDEREÇO_IP}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Endereço IP "${ENDEREÇO_IP}"

E preencher o campo Indelével "${INDELÉVEL}" 
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Indelével "${INDELÉVEL}"

E preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Data Inicial"${DIA}/${MES}/${ANO}"

E preencher o campo Data Final "${DIA}/${MES}/${ANO}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Data Final" ${DIA}/${MES}/${ANO}"

E preencher o campo Hora "${HORA}:${MIN}"
  resource_consReprocessaMarcacaoOrfa.Preencher o campo Hora "${HORA}:${MIN}"


