*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Câmeras de Trânsito

# SCREEN
Acessar Tela Monitoramento de Trânsito - Grupo de Câmeras
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento de Trânsito - Grupo de Câmeras
  ${APPNAME}     Set Variable  ctr_monitoramento_camera_transito
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.
