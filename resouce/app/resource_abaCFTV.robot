*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | CFTV

# TAB

Clicar Na Aba Servidor CFTV
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaCFTV
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Servidor CFTV

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Camera CFTV
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaCFTV
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Camera CFTV

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Cameras X Codin
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaCFTV
  ${ELEMENT}  Set Variable  id=cel3_txt
  ${TABNAME}  Set Variable  Cameras X Codin

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Cameras Alarmes
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaCFTV
  ${ELEMENT}  Set Variable  id=cel4_txt
  ${TABNAME}  Set Variable  Cameras Alarmes

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
