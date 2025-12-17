*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo

# SCREEN
Acessar Tela Consulta de Cameras Grupos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Cameras Grupos
  ${APPNAME}     Set Variable  cnsCamerasGrupos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

#FIELD
Preencher o campo CodiGrupCame "${COD}"
  Input Text  xpath=//*[@name="gc_codigrupcame"][@type="text"]   ${COD}

Preencher o campo CodiServCFTV "${COD}"
  Input Text  xpath=//*[@name="sc_codiservcftv"][@type="text"]   ${COD}

Preencher o campo CodiCameGrup "${COD}"
  Input Text  xpath=//*[@name="codicamegrup"][@type="text"]   ${COD}