*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

# TAB
Clicar Na Aba Benefícios
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  ababeneficios
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Benefícios

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Codin de Benefício
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  ababeneficios
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Codin de Benefício

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
