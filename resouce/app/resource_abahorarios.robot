*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala


# TAB

Clicar Na Aba Horário
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abahorarios
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Horário

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Jornada de Trabalho
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abahorarios
  ${ELEMENT}  Set Variable  xpath=//*[@id='cel2_txt'] | //*[@id='cel2']
  ${TABNAME}  Set Variable  Jornada de Trabalho

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Faixas Horárias para Controle de Acesso
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abahorarios
  ${ELEMENT}  Set Variable  id=cel3
  ${TABNAME}  Set Variable  Faixas Horárias para Controle de Acesso

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Faixa Horária Refeitório
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abahorarios
  ${ELEMENT}  Set Variable  xpath=//*[@id='cel4_txt'] | //*[@id='cel4']
  ${TABNAME}  Set Variable  Faixa Horária Refeitório

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
