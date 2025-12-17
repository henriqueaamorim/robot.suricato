*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | CFTV

# SCREEN
Acessar Tela Câmeras X Coletores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Câmeras X Coletores
  ${APPNAME}     Set Variable  cnscamercolet
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_cnscamercolet_3"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON





#FIELD
Selecionar uma opção no campo Planta * "${PLANTA_*}"
	Select From List By Label  xpath=//*[@name="codiplan"]  ${PLANTA_*}

Selecionar uma opção no campo Codin * "${CODIN_*}"
	Select From List By Label  xpath=//*[@name="codicole"]  ${CODIN_*}

