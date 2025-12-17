*** Settings ***
Library         SeleniumLibrary
Library         ../../superutil/Custom.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

# TAB

Clicar Na Aba Cadastro e Histórico Veículos
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaVeiculos
  ${ELEMENT}  Set Variable  id=cel1_txt
  ${TABNAME}  Set Variable  Cadastro e Histórico Veiculos

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}

Clicar Na Aba Responsáveis
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaVeiculos
  ${ELEMENT}  Set Variable  id=cel2_txt
  ${TABNAME}  Set Variable  Responsáveis

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}


Clicar Na Aba Histórico de Responsáveis
  ${OBJ}      Set Variable  TAB
  ${APPNAME}  Set Variable  abaVeiculos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}  Set Variable  id=cel3
  ELSE
    ${ELEMENT}  Set Variable  id=cel3_txt
  END
  ${TABNAME}  Set Variable  Histórico de Responsáveis

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${TABNAME}



  Highlight Element    ${ELEMENT}
  Click Element        ${ELEMENT}
