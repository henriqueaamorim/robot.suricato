*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Crachá

# TAB
Clicar Na Aba Gerais
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abadefinicoescracha
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Gerais

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Pré-Cadastro
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abadefinicoescracha
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Pré-Cadastro

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Provisórios
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abadefinicoescracha
  ${ELEMENT}  Set Variable  id=cel3_txt
  ${TABNAME}  Set Variable  Provisórios

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
