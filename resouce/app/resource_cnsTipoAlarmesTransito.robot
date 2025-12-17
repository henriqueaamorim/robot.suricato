*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito

# SCREEN
Acessar Tela Consulta de Tipo Alarmes
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Tipo Alarme
  ELSE
      ${SCREENNAME}  Set Variable  Consulta de Tipo Alarmes
  END
  ${APPNAME}     Set Variable  cnsTipoAlarmesTransito
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Filtro de Tipo Alarmes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo Alarme
  ${APPNAME}     Set Variable  cnsTipoAlarmesTransito
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Tipo de Alarme "${TIP}"
  Input Text  xpath=//*[@name="tipoalartran"][@type="text"]  ${TIP}

Preencher o campo Descrição de Alarme "${DESCRICAO}"
  Input Text  xpath=//*[@name="desctipoalartran"][@type="text"]  ${DESCRICAO}   

Preencher o campo Procedimento "${PROC}" 
  Input Text  xpath=//*[@name="procsinaalar"][@type="text"]  ${PROC}

#VERIFY LABELS CONSULTA

Verificar a label Tipo de Alarme
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Alarme')]

	Element Should Contain  ${LABEL}  Tipo de Alarme 

Verificar a label Descrição do Alarme
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição do Alarme')]

	Element Should Contain  ${LABEL}   Descrição do Alarme

Verificar a label Procedimento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Procedimento')]

	Element Should Contain  ${LABEL}       Procedimento

#VERIFY CAMPOS FILTRO

Verificar o campo Tipo de Alarme	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Alarme')]
	${CAMPO}      Set Variable  xpath=//input[@name='tipoalartran']

  sleep  2s
	Element Should Contain             ${LABEL}   Tipo de Alarme	
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoalartran

Verificar o campo Descrição do Alarme	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição do Alarme')]
	${CAMPO}      Set Variable  xpath=//input[@name='desctipoalartran']

  sleep  2s
	Element Should Contain             ${LABEL}   Descrição do Alarme	
 	Element Attribute Value Should Be  ${CAMPO}   name   desctipoalartran

Verificar o campo Procedimento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Procedimento')]
	${CAMPO}      Set Variable  xpath=//input[@name='procsinaalar']

  sleep  2s
	Element Should Contain             ${LABEL}   Procedimento	
 	Element Attribute Value Should Be  ${CAMPO}   name   procsinaalar