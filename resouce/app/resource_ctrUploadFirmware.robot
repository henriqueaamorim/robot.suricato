*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Upload de Firmware

# SCREEN
Acessar Tela Upload de Firmware
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Upload de Firmware
  ${APPNAME}  Set Variable  ctrUploadFirmware
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Gateway
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//span[contains(text(),'Gateway')] | //span[@id='id_label_conex']
    ${CAMPO}   Set Variable  xpath=//span[@id='select2-id_sc_field_conex-container']
  Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_conex-container
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/select
	Element Attribute Value Should Be  ${CAMPO}   name  conex 
  END
	Element Should Contain  ${LABEL}   Gateway
 	

Verificar o campo Firmware
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=//span[contains(text(),'Firmware')] | //span[@id='id_label_docfw']
    ${DIV}   Set Variable  xpath=//div[@id='id_sc_dragdrop_docfw']
  Element Attribute Value Should Be  ${DIV}   id   id_sc_dragdrop_docfw   
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td
	  ${DIV}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td/input
	Element Attribute Value Should Be  ${DIV}   name   docfw
  END
	Element Should Contain  ${LABEL}   Firmware
 	

#FIELD
Selecionar uma opção no campo Gateway "${GATEWAY}"
	Select From List By Label  xpath=//*[@name="conex"]  ${GATEWAY}
