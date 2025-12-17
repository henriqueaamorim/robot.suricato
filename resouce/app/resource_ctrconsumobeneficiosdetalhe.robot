*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Consumo

# SCREEN
Acessar Tela Consumo Referente à Atribuição - Detalhe
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consumo Referente à Atribuição - Detalhe
  ${APPNAME}     Set Variable  ctrconsumobeneficiosdetalhe
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.
