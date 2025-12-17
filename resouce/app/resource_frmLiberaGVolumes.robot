*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes


# SCREEN
Acessar Tela Liberação de Guarda-Volumes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Liberação de Guarda-Volumes
  ${APPNAME}     Set Variable  frmLiberaGVolumes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Data Liberação "${DATA}"
	Input Text  xpath=//*[@name="datareti"][@type="text"]  ${DATA}

Preencher o campo Hora Liberação "${HORA}"
	Input Text  xpath=//*[@name="horareti"][@type="text"]  ${HORA}

Preencher o campo Observação "${OBS}"
	Input Text  xpath=//*[@name="obseguarvolu"]  ${OBS}
