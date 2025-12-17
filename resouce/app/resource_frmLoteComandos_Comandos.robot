*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Lote de Comando

# SCREEN
Acessar Tela Cadastro de Comandos (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Comandos (Inclusão)
  ${APPNAME}     Set Variable  frmLoteComandos_Comandos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_frmLoteComandos_Comandos_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Comandos (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Comandos (Atualização)
  ${APPNAME}     Set Variable  frmLoteComandos_Comandos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_frmLoteComandos_Comandos_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
  Select from list by label  xpath=//*[@name="codiplan1"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
  Select from list by label  xpath=//*[@name="codicole1"]  ${CODIN}

Selecionar uma opção Comando "${COMANDO}"
  Select from list by label  xpath=//*[@name="codicoma1"]  ${COMANDO}

Preencher o campo Parâmetro "${PARAMETRO}"  
  Input Text  xpath=//*[@name="paracoma1"][@type="text"]  ${PARAMETRO}