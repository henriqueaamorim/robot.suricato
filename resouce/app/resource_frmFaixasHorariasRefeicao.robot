*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala


# SCREEN
Acessar Tela Horário
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  frmFaixasHorariasRefeicao

    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.246"
    ${SCREENNAME}  Set Variable  Horário: 1
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  ELSE
    ${SCREENNAME}  Set Variable  Horários
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "nmsc_iframe_frmFaixasHorariasRefeicao_4"

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#FIELD
Preencher o campo Ínicio "${INICIO}"

  IF  '${SERVER}' == "172.16.14.246" or '${SERVER}' == "172.16.14.247"
    Input Text  xpath=//*[@name="fxinicrefe"][@type="text"]  ${INICIO}
  ELSE
    Input Text  xpath=//*[@name="fxinicrefe"][@type="text"]  ${INICIO}
  END

Preencher o campo Final "${FINAL}"
  IF  '${SERVER}' == "172.16.14.246" or '${SERVER}' == "172.16.14.247"
    Input Text  xpath=//*[@name="fxfinarefe"][@type="text"]  ${FINAL}
  ELSE
    Input Text  xpath=//*[@name="fxfinarefe"][@type="text"]  ${FINAL}
  END


#VERIFY

Verificar o campo Ínicio 

  ${LABEL_INICIO}  Set Variable  xpath=//*[@id="id_label_fxinicrefe"]
  ${CAMPO_INICIO}  Set Variable  xpath=//*[@id="id_sc_field_fxinicrefe"]
  

  Element Should Contain  ${LABEL_INICIO}   Início 
  Element Attribute Value Should Be  ${CAMPO_INICIO}  name  fxinicrefe


Verificar o campo Final 

  ${LABEL_FINAL}  Set Variable  xpath=//*[@id="id_label_fxfinarefe"]
  ${CAMPO_FINAL}  Set Variable  xpath=//*[@id="id_sc_field_fxfinarefe"]

  Element Should Contain  ${LABEL_FINAL}   Final 
  Element Attribute Value Should Be  ${CAMPO_FINAL}  name  fxfinarefe
