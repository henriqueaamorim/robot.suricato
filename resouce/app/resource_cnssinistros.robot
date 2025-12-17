*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

# SCREEN
Acessar Tela Consulta de Sinistros
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnssinistros
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Sinistro
	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Sinistros
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
	
  Mudar Frame Aplicação "mnu_iframe"	
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela de Sinistros (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnssinistros
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Sinistro
	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Sinistros
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
Preencher o campo Placa do Veículo "${PLACA}"
  Input Text  xpath=//*[@name="placveic"][@type="text"]  ${PLACA}

Selecionar uma opção no campo Data do Sinistro "${SINISTRO}"
  Select from list by label  xpath=//*[@name="datasini_cond"]  ${SINISTRO}

Preencher o campo Data do Sinistro "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datasini_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datasini_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datasini_ano"][@type="text"]  ${ANO}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="descsinaalar"][@type="text"]  ${DESC}

Preencher o campo Nome do Condutor "${PLACA}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${PLACA}    

#VERIFY

Verificar a label Placa do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Placa do Veículo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Placa do Veículo

Verificar a label Data/Hora do Sinistro
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora do Sinistro')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora do Sinistro

Verificar a label Situação do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Situação do Veículo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Situação do Veículo

Verificar a label Código do Condutor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Condutor')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Código do Condutor

Verificar a label Nome do Condutor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Condutor')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Nome do Condutor

Verificar a label Descrição
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b
	END
	Element Should Contain  ${LABEL}   Descrição

#VERIFY CAMPOS

Verificar o campo: Placa do Veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Placa do Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='placveic']
	Element Should Contain             ${LABEL}   Placa do Veículo	
 	Element Attribute Value Should Be  ${CAMPO}   name  placveic

Verificar o campo: Data do Sinistro	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data do Sinistro')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datasini_dia']
	${CAMPO2}      Set Variable  xpath=//input[@name='datasini_mes']
	${CAMPO3}      Set Variable  xpath=//input[@name='datasini_ano']
	${CAMPO4}      Set Variable  xpath=//input[@name='datasini_input_2_dia']
	${CAMPO5}      Set Variable  xpath=//input[@name='datasini_input_2_mes']
	${CAMPO6}      Set Variable  xpath=//input[@name='datasini_input_2_ano']
	Element Should Contain             ${LABEL}   Data do Sinistro	
 	Element Attribute Value Should Be  ${CAMPO1}   name  datasini_dia
	Element Attribute Value Should Be  ${CAMPO2}   name  datasini_mes
	Element Attribute Value Should Be  ${CAMPO3}   name  datasini_ano
	Element Attribute Value Should Be  ${CAMPO4}   name  datasini_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name  datasini_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name  datasini_input_2_ano

Verificar o campo: Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descsinaalar']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name  descsinaalar

Verificar o campo: Nome do Condutor	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Condutor')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome do Condutor	
 	Element Attribute Value Should Be  ${CAMPO}   name  nomepess

