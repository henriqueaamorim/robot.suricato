*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcação

# SCREEN
Acessar Tela Reprocessamento de Marcação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reprocessamento de Marcação
  ${APPNAME}     Set Variable  consReprocessamentoMarcacao
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]


  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Reprocessamento de Marcação (Resultado)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reprocessamento de Marcação
  ${APPNAME}     Set Variable  consReprocessamentoMarcacao
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#VERIFY
Verificar o campo Endereço IP
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Endereço IP')]  
    ${CAMPO}  Set Variable  xpath=//input[@name='numeendecole']

  Element Should Contain  ${LABEL}  Endereço IP
  Element Attribute Value Should Be  ${CAMPO}  name  numeendecole

Verificar o campo Nome
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Nome')]  
  ${CAMPO}  Set Variable  xpath=//input[@name='nomepess']

  Element Should Contain  ${LABEL}  Nome
  Element Attribute Value Should Be  ${CAMPO}  name  nomepess

Verificar o campo Numero PIS
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Numero PIS')]  
  ${CAMPO}  Set Variable  xpath=//input[@name='numepis']

  Element Should Contain  ${LABEL}  Numero PIS
  Element Attribute Value Should Be  ${CAMPO}  name  numepis

Verificar o campo Matricula
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Matricula')]  
  ${CAMPO}  Set Variable  xpath=//input[@name='codimatr']

  Element Should Contain  ${LABEL}  Matricula
  Element Attribute Value Should Be  ${CAMPO}  name  codimatr

Verificar o campo Crachá
  ${LABEL}  Set Variable  xpath=//td[contains(text(),'Crachá')]  
  ${CAMPO}  Set Variable  xpath=//input[@name='icard']

  Element Should Contain  ${LABEL}  Crachá
  Element Attribute Value Should Be  ${CAMPO}  name  icard

Verificar o campo Data
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Data')]  
  ${CAMPO1}  Set Variable  xpath=//input[@name='dataaces_dia']
  ${CAMPO2}  Set Variable  xpath=//input[@name='dataaces_mes']
  ${CAMPO3}  Set Variable  xpath=//input[@name='dataaces_ano']
  ${CAMPO4}  Set Variable  xpath=//input[@name='dataaces_input_2_dia']
  ${CAMPO5}  Set Variable  xpath=//input[@name='dataaces_input_2_mes']
  ${CAMPO6}  Set Variable  xpath=//input[@name='dataaces_input_2_ano']


  Element Should Contain  ${LABEL}  Data
  Element Attribute Value Should Be  ${CAMPO1}  name  dataaces_dia
  Element Attribute Value Should Be  ${CAMPO2}  name  dataaces_mes
  Element Attribute Value Should Be  ${CAMPO3}  name  dataaces_ano
  Element Attribute Value Should Be  ${CAMPO4}  name  dataaces_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}  name  dataaces_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}  name  dataaces_input_2_ano

Verificar o campo Hora
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Hora')]  
  ${CAMPO1}  Set Variable  xpath=//input[@name='horaaces_hor']
  ${CAMPO2}  Set Variable  xpath=//input[@name='horaaces_min']
  ${CAMPO3}  Set Variable  xpath=//input[@name='horaaces_input_2_hor']
  ${CAMPO4}  Set Variable  xpath=//input[@name='horaaces_input_2_min']

  Element Should Contain  ${LABEL}  Hora
  Element Attribute Value Should Be  ${CAMPO1}  name  horaaces_hor
  Element Attribute Value Should Be  ${CAMPO2}  name  horaaces_min
  Element Attribute Value Should Be  ${CAMPO3}  name  horaaces_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}  name  horaaces_input_2_min


#FIELD
Preencher o campo Endereço IP "${ENDEREÇO_IP}"
	Input Text  xpath=//*[@name="numeendecole"][@type="text"]  ${ENDEREÇO_IP}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Preencher o campo Numero PIS "${NUMERO_PIS}"
	Input Text  xpath=//*[@name="numepis"][@type="text"]  ${NUMERO_PIS}

Preencher o campo Matricula "${MATRICULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRICULA}

Preencher o campo Crachá "${CRACHÁ}"
	Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHÁ}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataaces_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataaces_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataaces_ano"][@type="text"]  ${ANO}

Preencher o campo Data Final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataaces_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataaces_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataaces_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Hora Inicial "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaaces_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaaces_min"][@type="text"]  ${MIN}

Preencher o campo Hora Final "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaaces_input_2_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaaces_input_2_min"][@type="text"]  ${MIN}

