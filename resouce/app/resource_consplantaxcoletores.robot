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

Acessar Tela Codin
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Codin
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${APPNAME}     Set Variable  consplantaxcoletores

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_consplantaxcoletores_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Grupo "${GP}"
  Input Text  xpath=//*[@name="codigrupcole"][@type="text"]  ${GP}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="descgrupcole"][@type="text"]  ${DESC}