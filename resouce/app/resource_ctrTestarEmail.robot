*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Email


# SCREEN
Acessar Tela Testar Email
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Testar Email
  ${APPNAME}     Set Variable  ctrTestarEmail
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${HANDLES}     Get Window Handles

  Switch Window  ${HANDLES}[1]
  Maximize Browser Window

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#VERIFY
Verificar o campo Destinatario
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input

  Element Should Contain  ${LABEL}  Destinatario
  Element Attribute Value Should Be  ${CAMPO}  name  destinatario

Verificar o campo Mensagem
  ${LABEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/textarea

  Element Should Contain  ${LABEL}  Mensagem
  Element Attribute Value Should Be  ${CAMPO}  name  mensagem


#FIELD
Preencher o campo Destinatario "${DEST}"
	Input Text  xpath=//*[@name="destinatario"][@type="text"]  ${DEST}
	
Preencher o campo Mensagem "${MSG}"
	Input Text  xpath=//*[@name="mensagem"]  ${MSG}
	