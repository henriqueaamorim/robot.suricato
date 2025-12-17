*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Layout de Arquivo


# SCREEN
Acessar Tela Layout de Importação e Exportação - Seção - Consulta
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Layout de Importação e Exportação - Seção - Consulta
  ${APPNAME}     Set Variable  cnsSecaoLayout
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.
