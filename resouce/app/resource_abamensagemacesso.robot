*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Individual

# TAB

Clicar Na Aba Empregado/Terceiro/Parceiro
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abamensagemacesso
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Empregado/Terceiro/Parceiro

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Visitante
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abamensagemacesso
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Visitante

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
