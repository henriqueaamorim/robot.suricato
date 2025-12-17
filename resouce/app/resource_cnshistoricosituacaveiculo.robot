*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

# SCREEN
Acessar Tela Consulta Histórico de Situações de Veículos
  ${OBJ}         Set Variable  SCN
  
  ${APPNAME}     Set Variable  cnshistoricosituacaveiculo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${SCREENNAME}  Set Variable  Histórico de Situações de Veículos
  		${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
	ELSE	
		${SCREENNAME}  Set Variable  Consulta Histórico de Situações de Veículos
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    END 
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Histórico de Situações de Veículos (Filtro)
  ${OBJ}         Set Variable  SCN
  
  ${APPNAME}     Set Variable  cnshistoricosituacaveiculo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${SCREENNAME}  Set Variable  Histórico de Situações de Veículos
  		${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
	ELSE	
		${SCREENNAME}  Set Variable  Consulta Histórico de Situações de Veículos
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    END 
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Veículo "${NUM}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${NUM}

Selecionar uma opção no campo Data Início "${DATAIN}"
  Select from list by label  xpath=//*[@name="datainic_cond"]  ${DATAIN}

Preencher o campo Data Início "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Hora Início "${HORIN}"
  Select from list by label  xpath=//*[@name="horainic_cond"]  ${HORIN}

Preencher o campo Hora Início "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="horainic_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horainic_min"][@type="text"]  ${MIN}

Selecionar uma opção no campo Situação do Veículo "${SIT}"
  Select from list by label  xpath=//*[@name="situveic"]  ${SIT}

Selecionar uma opção no campo Data Final "${DATAFIM}"
  Select from list by label  xpath=//*[@name="datafina_cond"]  ${DATAFIM}

Preencher o campo Data Final "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datafina_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datafina_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datafina_ano"][@type="text"]  ${ANO}




#VERIFY

Verificar a label Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Veículo

Verificar a label Data Início
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Início')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data Início

Verificar a label Hora Início
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Início')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora Início

Verificar a label Situação do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Situação do Veículo')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Situação do Veículo

Verificar a label Data Final
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Final')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data Final

#VERIFY CAMPOS

Verificar o campo: Veículo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name  idveic

Verificar o campo: Data Início	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Início')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
	${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
	${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
	${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
	${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
	${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']
	Element Should Contain             ${LABEL}   Data Início	
 	Element Attribute Value Should Be  ${CAMPO1}   name  datainic_dia
	Element Attribute Value Should Be  ${CAMPO2}   name  datainic_mes
	Element Attribute Value Should Be  ${CAMPO3}   name  datainic_ano
	Element Attribute Value Should Be  ${CAMPO4}   name  datainic_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name  datainic_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name  datainic_input_2_ano


Verificar o campo: Hora Início	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora Início')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horainic_hor']
	${CAMPO2}      Set Variable  xpath=//input[@name='horainic_min']
	${CAMPO3}      Set Variable  xpath=//input[@name='horainic_input_2_hor']
	${CAMPO4}      Set Variable  xpath=//input[@name='horainic_input_2_min']
	Element Should Contain             ${LABEL}   Hora Início	
 	Element Attribute Value Should Be  ${CAMPO1}   name  horainic_hor
	Element Attribute Value Should Be  ${CAMPO2}   name  horainic_min
	Element Attribute Value Should Be  ${CAMPO3}   name  horainic_input_2_hor
	Element Attribute Value Should Be  ${CAMPO4}   name  horainic_input_2_min	

Verificar o campo: Situação do Veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Situação do Veículo')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-SC_situveic-container']
	Element Should Contain             ${LABEL}   Situação do Veículo	
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_situveic-container  

Verificar o campo: Data Final	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Final')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datafina_dia']
	${CAMPO2}      Set Variable  xpath=//input[@name='datafina_mes']
	${CAMPO3}      Set Variable  xpath=//input[@name='datafina_ano']
	${CAMPO4}      Set Variable  xpath=//input[@name='datafina_input_2_dia']
	${CAMPO5}      Set Variable  xpath=//input[@name='datafina_input_2_mes']
	${CAMPO6}      Set Variable  xpath=//input[@name='datafina_input_2_ano']
	Element Should Contain             ${LABEL}   Data Final	
 	Element Attribute Value Should Be  ${CAMPO1}   name  datafina_dia
	Element Attribute Value Should Be  ${CAMPO2}   name  datafina_mes
	Element Attribute Value Should Be  ${CAMPO3}   name  datafina_ano
	Element Attribute Value Should Be  ${CAMPO4}   name  datafina_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name  datafina_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name  datafina_input_2_ano

