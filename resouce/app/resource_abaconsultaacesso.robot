*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Consulta de Acesso

# SCREEN
Clicar na aba Empregrado/Terceiro/Parceiro
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaconsultaacesso
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Empregrado/Terceiro/Parceiro

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar na aba Visitantes
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaconsultaacesso
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Visitantes

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar na aba Grupo de Visitantes
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaconsultaacesso
  ${ELEMENT}  Set Variable  id=cel3_txt
  ${TABNAME}  Set Variable  Grupo de Visitantes

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


#BUTTON
#resource_btn.
