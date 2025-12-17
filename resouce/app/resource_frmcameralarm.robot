*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | CFTV

# SCREEN
Acessar Tela Cameras X Alarmes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cameras X Alarmes
  ${APPNAME}     Set Variable  frmcameralarm
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${ABA}         Set Variable  id=cel4_txt

# Ao clicar diretamente na aba "Cameras Alarmes" ele retorna a aba anterior sendo necessário clicar 2 vezes, por isso o "Click Element"
  Sleep  3s
  Click Element  ${ABA}
  Mudar Frame Aplicação "nmsc_iframe_frmcameralarm_4"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Endereço "${ENDERECO}"
  Select From List By Label  xpath=//*[@name="endeentrcole1"]  ${ENDERECO}

Selecionar uma opção no campo Sinal de Alarme "${SINAL}"
  Select From List By Label  xpath=//*[@name="codisind1"]  ${SINAL}