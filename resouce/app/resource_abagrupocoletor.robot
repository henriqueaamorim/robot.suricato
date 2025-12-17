*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de Codin

# TAB
Clicar Na Aba Grupo
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abagrupocoletor
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Grupo

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Codins
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abagrupocoletor
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Codins

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Listas
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abagrupocoletor
  ${ELEMENT}  Set Variable  id=cel3_txt
  ${TABNAME}  Set Variable  Listas

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
