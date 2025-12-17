*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Consultar Ticket WSG

# SCREEN
Acessar Tela Consultar Ticket no WebService Guardian
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrWSG 
  ${SCREENNAME}  Set Variable  Consultar Ticket no WebService Guardian
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#VERIFY

Verificar o campo: Código
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Código')]
	${CAMPO}  Set Variable  xpath=//input[@name='codigo']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
    END
	Element Should Contain  ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   codigo

Verificar o campo: Ticket
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Ticket')]
	${CAMPO}  Set Variable  xpath=//input[@name='sequencial']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Ticket
 	Element Attribute Value Should Be  ${CAMPO}   name   sequencial

Verificar o campo: Placa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Placa')]
	${CAMPO}  Set Variable  xpath=//input[@name='placa']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Placa
 	Element Attribute Value Should Be  ${CAMPO}   name   placa

Verificar o campo: Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Crachá')]
	${CAMPO}  Set Variable  xpath=//input[@name='tag']
	ELSE
	${LABEL}     
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	END
	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   tag

Verificar a label: Estado
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Estado')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	END
	Element Should Contain  ${LABEL}   Estado

Verificar a label: Status
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}  Set Variable  xpath=//span[contains(text(),'Status')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	END
	Element Should Contain  ${LABEL}   Status


#FIELD
Preencher o campo Código "${CODIGO}"
	Input Text  xpath=//*[@name="codigo"][@type="text"]  ${CODIGO}

Preencher o campo Ticket "${TICKET}"
	Input Text  xpath=//*[@name="sequencial"][@type="text"]  ${TICKET}
	
Preencher o campo Placa "${PLACA}"
	Input Text  xpath=//*[@name="placa"][@type="text"]  ${PLACA}
	
Preencher o campo Crachá "${CRACHA}"
	Input Text  xpath=//*[@name="tag"][@type="text"]  ${CRACHA}
	