*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Histórico


# SCREEN
Acessar Tela Histórico Benefício
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico Benefício
  ${APPNAME}     Set Variable  frmhistoricobeneficio
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Data Final Benefício "${DATA}"
	Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}
