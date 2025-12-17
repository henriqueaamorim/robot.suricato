*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Hora Extra

# SCREEN
Acessar Tela Hora Extra
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Hora Extra
  ${APPNAME}  Set Variable  frm_tbhoraextra
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Hora Extra - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Hora Extra
  ${APPNAME}  Set Variable  frm_tbhoraextra
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Nome do Grupo "${GRUPO}"
  Input Text  xpath=//*[@name="nomegrup"][@type="text"]  ${GRUPO}

Preencher o campo Horário 1 "${HORARIO}"
  Input Text  xpath=//*[@name="hora1"][@type="text"]  ${HORARIO}

Preencher o campo Horário 2 "${HORARIO}"
  Input Text  xpath=//*[@name="hora2"][@type="text"]  ${HORARIO}



#VERIFY

Verificar a label Hora Extra - Grupo
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Sleep  2s
	Element Should Contain  ${LABEL}   Hora Extra - Grupo

Verificar o campo ID Cadastro
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}   ID Cadastro
 	Element Attribute Value Should Be  ${CAMPO}   name   idhoraextrgrup

Verificar o campo Nome do Grupo *
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
	
	Element Should Contain  ${LABEL}   Nome do Grupo *
 	Element Attribute Value Should Be  ${CAMPO}   name   nomegrup

Verificar o campo Horário 1 *
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Horário 1 *
 	Element Attribute Value Should Be  ${CAMPO}   name   hora1

Verificar o campo Horário 2 *
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}   Horário 2 *
 	Element Attribute Value Should Be  ${CAMPO}   name   hora2

Verificar a label Email
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Email

Verificar a label SMS
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   SMS

