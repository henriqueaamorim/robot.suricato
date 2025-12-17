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
Acessar Tela Cadastro de Listas (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Listas (Atualização)
  ${APPNAME}     Set Variable  frmlistacoletoresgrupo
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmlistacoletoresgrupo_3"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Cadastro de Listas (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Listas (Inclusão)
  ${APPNAME}     Set Variable  frmlistacoletoresgrupo
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_frmlistacoletoresgrupo_3"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Tipo "${TIPO}"
  Select from list by label  xpath=//*[@name="tipolistcole1"]  ${TIPO}
  

Preencher o campo Inclusão "${INCLUSAO}"
  Input Text  xpath=//*[@name="arqulistincl1"][@type="text"]  ${INCLUSAO}