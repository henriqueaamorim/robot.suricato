*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP

# SCREEN
Acessar Tela Reprocessamento de Marcações Orfãs REP
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reprocessamento de Marcações Orfãs REP
  ${APPNAME}  Set Variable  consReprocessaMarcacaoOrfa
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Reprocessamento de Marcações Orfãs REP (Resultado)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reprocessamento de Marcações Orfãs REP
  ${APPNAME}  Set Variable  consReprocessaMarcacaoOrfa
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#VERIFY
Verificar o campo Nome
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Nome')]
  ${CAMPO}  Set Variable  xpath=//input[@name='nomepess']

  Element Should Contain  ${LABEL}  Nome
  Element Attribute Value Should Be  ${CAMPO}  name  nomepess

Verificar o campo Matricula
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Matricula')]
  ${CAMPO}  Set Variable  xpath=//input[@name='codimatr']

  Element Should Contain  ${LABEL}  Matricula
  Element Attribute Value Should Be  ${CAMPO}  name  codimatr

Verificar o campo Crachá
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Crachá')]
  ${CAMPO}  Set Variable  xpath=//input[@name='icard']

  Element Should Contain  ${LABEL}  Crachá
  Element Attribute Value Should Be  ${CAMPO}  name  icard

Verificar o campo PIS
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'PIS')]
  ${CAMPO}  Set Variable  xpath=//input[@name='pis']

  Element Should Contain  ${LABEL}  PIS
  Element Attribute Value Should Be  ${CAMPO}  name  pis

Verificar o campo Endereço IP
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Endereço IP')]
  ${CAMPO}  Set Variable  xpath=//input[@name='numeendecole']

  Element Should Contain  ${LABEL}  Endereço IP
  Element Attribute Value Should Be  ${CAMPO}  name  numeendecole

Verificar o campo Indelével
#(246)(249)
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Indelével')]
  ${CAMPO}  Set Variable  xpath=//input[@name='nrocodinrep']

  Element Should Contain  ${LABEL}  Indelével
  Element Attribute Value Should Be  ${CAMPO}  name  nrocodinrep

Verificar o campo Data
#(246)(249)
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Data')]
  ${CAMPO1}  Set Variable  xpath=//input[@name='datamarc_dia']
  ${CAMPO2}  Set Variable  xpath=//input[@name='datamarc_mes']
  ${CAMPO3}  Set Variable  xpath=//input[@name='datamarc_ano']
  ${CAMPO4}  Set Variable  xpath=//input[@name='datamarc_input_2_dia']
  ${CAMPO5}  Set Variable  xpath=//input[@name='datamarc_input_2_mes']
  ${CAMPO6}  Set Variable  xpath=//input[@name='datamarc_input_2_ano']

  Element Should Contain  ${LABEL}  Data
  Element Attribute Value Should Be  ${CAMPO1}  name  datamarc_dia
  Element Attribute Value Should Be  ${CAMPO2}  name  datamarc_mes
  Element Attribute Value Should Be  ${CAMPO3}  name  datamarc_ano
  Element Attribute Value Should Be  ${CAMPO4}  name  datamarc_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}  name  datamarc_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}  name  datamarc_input_2_ano

Verificar o campo Hora
#(246)(249)
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Hora')]
  ${CAMPO1}  Set Variable  xpath=//input[@name='horamarc_hor']
  ${CAMPO2}  Set Variable  xpath=//input[@name='horamarc_min']
  ${CAMPO3}  Set Variable  xpath=//input[@name='horamarc_input_2_hor']
  ${CAMPO4}  Set Variable  xpath=//input[@name='horamarc_input_2_min']

  Element Should Contain  ${LABEL}  Hora
  Element Attribute Value Should Be  ${CAMPO1}  name  horamarc_hor
  Element Attribute Value Should Be  ${CAMPO2}  name  horamarc_min
  Element Attribute Value Should Be  ${CAMPO3}  name  horamarc_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}  name  horamarc_input_2_min




#FIELD
Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRÍCULA}

Preencher o campo Crachá "${CRACHÁ}"
	Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHÁ}

Preencher o campo PIS "${PIS}"
	Input Text  xpath=//*[@name="pis"][@type="text"]  ${PIS}

Preencher o campo Endereço IP "${ENDEREÇO_IP}"
	Input Text  xpath=//*[@name="numeendecole"][@type="text"]  ${ENDEREÇO_IP}

Preencher o campo Indelével "${INDELÉVEL}"
	Input Text  xpath=//*[@name="nrocodinrep"][@type="text"]  ${INDELÉVEL}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datamarc_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datamarc_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datamarc_ano"][@type="text"]  ${ANO}

Preencher o campo Data Final "${DIA}/${MES}/${ANO}"  
  Input Text  xpath=//*[@name="datamarc_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datamarc_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datamarc_input_2_ano"][@type="text"]  ${ANO}


Preencher o campo Hora Inicial "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horamarc_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horamarc_min"][@type="text"]  ${MIN}

Preencher o campo Hora Final "${HORA}:${MIN}"  
  Input Text  xpath=//*[@name="horamarc_input_2_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horamarc_input_2_min"][@type="text"]  ${MIN}




