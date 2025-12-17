*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Lote de Comando

# TAB
Clicar Na Aba Lotes
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaLoteComando
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Lotes

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Comandos
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaLoteComando
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Comandos

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
