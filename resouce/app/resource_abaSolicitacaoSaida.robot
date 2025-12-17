*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Solicitação de Saída

# TAB

Clicar Na Aba Solicitação
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaSolicitacaoSaida
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Solicitação

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Materiais
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaSolicitacaoSaida
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Materiais

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
