*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Consulta de Programações

# TAB

Clicar Na Aba Programação
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaprogramacoes
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Programação

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Horário
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaprogramacoes
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Horário

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Escala
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaprogramacoes
  ${ELEMENT}  Set Variable  id=cel3_txt
  ${TABNAME}  Set Variable  Escala

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Ponte
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaprogramacoes
  ${ELEMENT}  Set Variable  id=cel4_txt
  ${TABNAME}  Set Variable  Ponte

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Permissão
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaprogramacoes
  ${ELEMENT}  Set Variable  id=cel5_txt
  ${TABNAME}  Set Variable  Permissão

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
