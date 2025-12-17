*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer

# SCREEN
Acessar Tela Log de Eventos do Suriplayer
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Eventos do Suriplayer
  ${APPNAME}  Set Variable  cnsLogSuri
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Log de Eventos do Suriplayer - Resultado
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Eventos do Suriplayer
  ${APPNAME}  Set Variable  cnsLogSuri
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON

Selecionar Planta
  Select from List by Label  name=codiplan  AUG


#VERIFY

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Planta
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//td[contains(text(),'Planta')]
		${CAMPO}   Set Variable  xpath=//span[@id='select2-SC_codiplan-container']
	Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_codiplan-container	
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	Element Attribute Value Should Be  ${CAMPO}   name   codiplan
	END
	Element Should Contain  ${LABEL}   Planta
 	

Verificar o campo Equipamento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//td[contains(text(),'Equipamento')]
		${CAMPO}   Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple']
	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--multiple
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	Element Attribute Value Should Be  ${CAMPO}   name   codicole[]
	END
	Element Should Contain  ${LABEL}   Equipamento
 	

Verificar o campo Endereço IP
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//td[contains(text(),'Endereço IP')]
		${CAMPO}   Set Variable  xpath=//input[@name='numeendecole_autocomp']
	
		Element Should Contain  ${LABEL}   Endereço IP
 		Element Attribute Value Should Be  ${CAMPO}   name   numeendecole_autocomp
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
		Element Should Contain  ${LABEL}   Endereço IP
 		Element Attribute Value Should Be  ${CAMPO}   name   numeendecole
	END


Verificar o campo Data/Hora Inicial
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Data/Hora Inicial')]
		${CAMPO}    Set Variable  xpath=//select[@name='datainic_cond']
	Element Should Contain  ${LABEL}   Data/Hora Inicial
	Element Attribute Value Should Be  ${CAMPO}    name   datainic_cond

	ELSE
		${LABEL}     Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[1]
		${CAMPO1}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[1]/td/input[1]
		${CAMPO2}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[1]/td/input[2]
		${CAMPO3}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[1]/td/input[3]
		${CAMPO4}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[1]/td/input[4]
		${CAMPO5}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[1]/td/input[5]
		${CAMPO6}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[1]/td/input[6]
		${CAMPO7}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[2]/td/input[1]
		${CAMPO8}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[2]/td/input[2]
		${CAMPO9}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[2]/td/input[3]
		${CAMPO10}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[2]/td/input[4]
		${CAMPO11}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[2]/td/input[5]
		${CAMPO12}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[3]/td/table/tbody/tr/td/table/tbody/tr/td[3]/table/tbody/tr[2]/td/input[6]
	
	Element Should Contain  ${LABEL}   Data/Hora Inicial
 	Element Attribute Value Should Be  ${CAMPO1}    name   datainic_dia
	Element Attribute Value Should Be  ${CAMPO2}    name   datainic_mes
	Element Attribute Value Should Be  ${CAMPO3}    name   datainic_ano
	Element Attribute Value Should Be  ${CAMPO4}    name   datainic_hor
	Element Attribute Value Should Be  ${CAMPO5}    name   datainic_min
	Element Attribute Value Should Be  ${CAMPO6}    name   datainic_seg
	Element Attribute Value Should Be  ${CAMPO7}    name   datainic_input_2_dia
	Element Attribute Value Should Be  ${CAMPO8}    name   datainic_input_2_mes
	Element Attribute Value Should Be  ${CAMPO9}    name   datainic_input_2_ano
	Element Attribute Value Should Be  ${CAMPO10}   name   datainic_input_2_hor
	Element Attribute Value Should Be  ${CAMPO11}   name   datainic_input_2_min
	Element Attribute Value Should Be  ${CAMPO12}   name   datainic_input_2_seg
    END

#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="codiplan"]  ${PLANTA}

Selecionar uma opção no campo Equipamento "${EQUIPAMENTO}"
	Select From List By Label  xpath=//*[@name="codicole[]"]  ${EQUIPAMENTO}

Preencher o campo Endereço IP "${ENDEREÇO_IP}"
	Input Text  xpath=//*[@name="numeendecole"][@type="text"]  ${ENDEREÇO_IP}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_hor"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_min"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_seg"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_input_2_dia"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_input_2_mes"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_input_2_ano"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_input_2_hor"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_input_2_min"][@type="text"]  ${DATA/HORA_INICIAL}

Preencher o campo Data/Hora Inicial "${DATA/HORA_INICIAL}"
	Input Text  xpath=//*[@name="datainic_input_2_seg"][@type="text"]  ${DATA/HORA_INICIAL}

