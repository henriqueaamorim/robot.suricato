*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***

*** Keywords ***

Printar Tela Termo de Consentimento
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Termo de Consentimento
  ${APPNAME}     Set Variable  ctrTermoConsentimentoPdf
  ${ELEMENT}     Set Variable  id=phpfpdf_print

  Switch Window  locator=NEW
  Maximize Browser Window

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  #  Pronunciar Audio  ${LANGUAGE}  ${OBJ}  ${SCREENNAME}
