*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

# SCREEN
Acessar Tela Consulta de Sinais de Alarme
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Sinal de Alarme
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Sinais de Alarme
  END
  ${APPNAME}  Set Variable  cnsSinaisAlarme
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Sinais de Alarme (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Sinal de Alarme (Filtro)
  ${APPNAME}  Set Variable  cnsSinaisAlarme
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Descrição "${DESC}"
  Select from list by label  xpath=//*[@name="descsinaalar_cond"]  ${DESC}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="descsinaalar"][@type="text"]  ${DESC}   


#VERIFY LABELS CONSULTA

Verificar a label Sinal de Alarme
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Sinal de Alarme')]

	Element Should Contain  ${LABEL}   Sinal de Alarme 

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]

	Element Should Contain  ${LABEL}   Descrição 

Verificar a label Cor para Sinal Não Tratado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Cor para Sinal Não Tratado')]

	Element Should Contain  ${LABEL}   Cor para Sinal Não Tratado

Verificar a label Cor para Sinal Reconhecido
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Cor para Sinal Reconhecido')]

	Element Should Contain  ${LABEL}   Cor para Sinal Reconhecido


#VERIFY CAMPOS FILTRO

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

  sleep  2s
  Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descsinaalar']

  sleep  2s
  Element Should Contain             ${LABEL}   Descrição
  Element Attribute Value Should Be  ${CAMPO}   name   descsinaalar


