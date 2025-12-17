*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de Codin


# SCREEN
Acessar Tela Codin (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Codin
  ${APPNAME}     Set Variable  frmplantaxcoletor
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_consplantaxcoletores_2"
  Mudar Frame Aplicação "nmsc_iframe_liga_B_consplantaxcoletores"

  Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
  Select from list by label  xpath=//*[@name="codiplan"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
  Select from list by label  xpath=//*[@name="codicole"]  ${CODIN}
  #Necessário voltar ao frame anterior para clicar no botão de Incluir o Registro
  Unselect Frame
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_consplantaxcoletores_2"