*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Modelos

# SCREEN
Acessar Tela Consulta Modelos de Veículos
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsmodeloveiculo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Modelos de Veículos
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Modelos de Veículos
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta Modelos de Veículos - Filtro
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsmodeloveiculo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Modelos de Veículos
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Modelos de Veículos
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

Selecionar uma opção no campo Marca "${MARC}"
  Select from list by label  xpath=//*[@name="idmarcveic"]  ${MARC}

Preencher o campo Cód Modelo Veículo "${COD}"
  Input Text  xpath=//*[@name="idmodeveic"][@type="text"]  ${COD}

Preencher o campo Perc. Real Indicado "${REALIND}"
  Input Text  xpath=//*[@name="percrealindi"][@type="text"]  ${REALIND}

Selecionar uma opção no campo Tipo de Veículo "${TIPOVEIC}"
  Select from list by label  xpath=//*[@name="tipoveic"]  ${TIPOVEIC}


#VERIFY

Verificar a label Cód Modelo Veículo
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Cód Modelo Veículo')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[2]/a/span
	END
	Element Should Contain  ${LABEL}   Cód Modelo Veículo

Verificar a label Marca
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Marca')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Marca

Verificar a label Apelido
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Apelido')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Apelido

Verificar a label Quantidade Passageiros
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Quantidade Passageiros')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Quantidade Passageiros

Verificar a label Custo KM/Rodado
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Custo KM/Rodado')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Custo KM/Rodado

Verificar a label Tipo de Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Veículo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Tipo de Veículo

#VERIFY CAMPOS

Verificar o campo: Marca
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Marca')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-SC_idmarcveic-container']
	Element Should Contain             ${LABEL}   Marca
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_idmarcveic-container   

Verificar o campo: Cód Modelo Veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Cód Modelo Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idmodeveic']
	Element Should Contain             ${LABEL}   Cód Modelo Veículo	
 	Element Attribute Value Should Be  ${CAMPO}   name   idmodeveic

Verificar o campo: Perc. Real Indicado	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Perc. Real Indicado')]
	${CAMPO}      Set Variable  xpath=//input[@name='percrealindi']
	Element Should Contain             ${LABEL}   Perc. Real Indicado	
 	Element Attribute Value Should Be  ${CAMPO}   name   percrealindi   

Verificar o campo: Tipo de Veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Veículo')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-SC_idmarcveic-container']
	Element Should Contain             ${LABEL}   Tipo de Veículo	
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_idmarcveic-container   	


