*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

# TAB

Clicar Na Aba Cadastro
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abacadastroveiculo
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Cadastro

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Licenciamento
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abacadastroveiculo
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Licenciamento

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Acessórios
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abacadastroveiculo
  ${ELEMENT}  Set Variable  id=cel3_txt
  ${TABNAME}  Set Variable  Acessórios

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
