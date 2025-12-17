*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos

# SCREEN
Acessar Tela Entrada de Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Entrada de Visitante
  ${APPNAME}  Set Variable  ctrEntradaVisitanteComCapFoto
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "ifEntradaVisitantes"

  Sleep  5s
  # Nome da tela não aparece mais, data: 07/03
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.
