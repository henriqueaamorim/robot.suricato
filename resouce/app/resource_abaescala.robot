*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

# TAB

Clicar Na Aba Cadastro
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaescala
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Cadastro

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Horários
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaescala
  ${ELEMENT}  Set Variable  xpath=//*[@id="cel2_txt"] | //*[@id="id_tabs_0_1"]
  ${TABNAME}  Set Variable  Horários

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
