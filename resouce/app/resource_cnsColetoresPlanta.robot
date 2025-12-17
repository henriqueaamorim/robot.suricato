*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Clicar No Menu Dispositivo | Alarme | Reação de Acesso


# SCREEN
Acessar Tela Consulta de Codins (Busca Externa)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Codin
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Codins
  END
  ${APPNAME}     Set Variable  cnsColetoresPlanta
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#FIELD
Preencher o campo Descrição do Codin "${DESCRIÇÃO_DO_CODIN}"
	Input Text  xpath=//*[@name="desccole"][@type="text"]  ${DESCRIÇÃO_DO_CODIN}

