*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Comando | Emergência

# SCREEN
Acessar Tela Comandos de Emergência
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Comandos de Emergência
  ${APPNAME}     Set Variable  ctrComandosEmergencia
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#VERIFY
Verificar o campo Planta*
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_data_txtcodplt"]/table/tbody/tr/td[1]/span[1]
  Element Should Contain  ${LABEL}  Planta *

Verificar o campo Codins
  ${LABEL}  Set Variable  xpath=//*[@id="hidden_field_data_txtcodrlg"]/table/tbody/tr/td[1]/span[1]
  Element Should Contain  ${LABEL}  Codins

Verificar a checkbox Desativar Emergência
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcemergencia"]/table/tbody/tr/td[1]
  Element Should Contain  ${LABEL}  Desativar Emergência

Verificar a checkbox Modo de Operação
  ${LABEL}  Set Variable  xpath=//*[@id="idAjaxRadio_slcemergencia"]/table/tbody/tr/td[2]
  Element Should Contain  ${LABEL}  Modo de Operação


#FIELD
Selecionar a opção Desativar Emergência
  Click Element  xpath=//*[@name="slcemergencia"][@value=15]

Selecionar a opção Modo de Operação
  Click Element  xpath=//*[@name="slcemergencia"][@value=24]