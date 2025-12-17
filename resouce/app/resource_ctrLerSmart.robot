*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crachá | Ler Smart Card

# SCREEN
Acessar Tela Ler Smart Card
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrLerSmart
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Ler Smart Card
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Ler Smart Card
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#VERIFY 

E verificar o campo Físico 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_fisico']
  ${CAMPO}  Set Variable  xpath=//input[@name='fisico']
  ELSE
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
	Element Should Contain  ${LABEL}  Físico
	Element Attribute Value Should Be  ${CAMPO}  name  fisico

E verificar o campo Lógico 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_logico']
  ${CAMPO}  Set Variable  xpath=//input[@name='logico']
  ELSE
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
	Element Should Contain  ${LABEL}  Lógico  
	Element Attribute Value Should Be  ${CAMPO}  name  logico  

E verificar o campo Dados
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dados']
  ELSE
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
  END 
	Element Should Contain  ${LABEL}  Dados 

	
#FIELD
Preencher o campo Fisico "${FISICO}"
	Input Text  xpath=//*[@name="fisico"][@type="text"]  ${FISICO}
	
Preencher o campo Logico "${LOGICO}"
	Input Text  xpath=//*[@name="logico"][@type="text"]  ${LOGICO}
	