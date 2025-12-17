*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

# SCREEN
Acessar Tela Históricos de Crachá de Veículos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Históricos de Crachá de Veículos
  ${APPNAME}     Set Variable  cnshistoricocrachaveiculo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
	ELSE
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Históricos de Crachá de Veículos (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Históricos de Crachá de Veículos
  ${APPNAME}     Set Variable  cnshistoricocrachaveiculo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
	ELSE
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Veículo "${NUM}"
  Input Text   xpath=//*[@name="idveic"][@type="text"]   ${NUM}

Selecionar uma opção no campo Data Inicial "${DATAIN}"
  Select from list by label  xpath=//*[@name="datainic_cond"] ${DATAIN}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
  Input Text   xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
  Input Text   xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
  Input Text   xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Hora Inicial "${HORAIN}"
  Select from list by label  xpath=//*[@name="horainic_cond"]  ${HORAIN}

Preencher o campo Hora Inicial "${HORAIN}"
  Input Text   xpath=//*[@name="horainic_hor"][@type="text"]  ${HORAIN}
  Input Text   xpath=//*[@name="horainic_min"][@type="text"]  ${HORAIN}

Preencher o campo Crachá "${CRACHA}" 
  Input Text   xpath=//*[@name="icard"][@type="text"]  ${CRACHA}



#VERIFY

Verificar a label Veículo 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
  ELSE  
    ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Veículo 

Verificar a label Data/Hora Inicial
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
  ELSE  
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	END
  Element Should Contain  ${LABEL}   Data/Hora Inicial

Verificar a label Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
  ELSE  
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Crachá

Verificar a label Data/Hora Final
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora Final')]
  ELSE  
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	END
  Element Should Contain  ${LABEL}   Data/Hora Final

#VERIFY CAMPOS

Verificar o campo: Veículo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name  idveic

Verificar o campo: Data Inicial	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']
	Element Should Contain             ${LABEL}   Data Inicial	
 	Element Attribute Value Should Be  ${CAMPO1}   name  datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name  datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name  datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name  datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name  datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name  datainic_input_2_ano

Verificar o campo: Hora Inicial	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horainic_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horainic_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='horainic_input_2_hor']
  ${CAMPO4}      Set Variable  xpath=//input[@name='horainic_input_2_min']
	Element Should Contain             ${LABEL}   Hora Inicial	
 	Element Attribute Value Should Be  ${CAMPO1}   name  horainic_hor
  Element Attribute Value Should Be  ${CAMPO2}   name  horainic_min
  Element Attribute Value Should Be  ${CAMPO3}   name  horainic_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name  horainic_input_2_min

Verificar o campo: Crachá
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Crachá')]
	${CAMPO}      Set Variable  xpath=//input[@name='icard']
	Element Should Contain             ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name  icard      