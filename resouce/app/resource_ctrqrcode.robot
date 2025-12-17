*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***

*** Keywords ***

Printar Tela QRCode
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  QRCode
  ${APPNAME}     Set Variable  ctrqrcode
  ${ELEMENT}     Set Variable  xpath=//*[@id="plugin"]

  Switch Window  locator=NEW
  Maximize Browser Window

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  #  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
