*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Lote de Crachá

# SCREEN
Acessar Tela Lote de Cracha PDF
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Lote de Cracha PDF
  ${APPNAME}     Set Variable  ctrLoteCrachaPdf
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  10s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Tipo do Colaborador "${TIPO}"
  IF  "${TIPO}" == "Empregado"
    Click Element  xpath=//*[@name="edtipocola"][@value="1"]
  ELSE IF  "${TIPO}" == "Terceiro"
    Click Element  xpath=//*[@name="edtipocola"][@value="2"]
  ELSE
    Click Element  xpath=//*[@name="edtipocola"][@value="3"]
  END

Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="edcolaboradores"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=//*[@id="id_label_edcolaboradores"]
  Sleep  5s