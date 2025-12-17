*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

# SCREEN
Acessar Tela Consulta de Reações de Acesso
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Reação de Acesso
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Reações de Acesso
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END
  ${APPNAME}  Set Variable  cnsReacoesAcesso

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Filtro de Reações de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reação de Acesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${APPNAME}  Set Variable  cnsReacoesAcesso

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
  Select from list by label  xpath=//*[@name="codiplan_cond"]  ${PLANTA}

Preencher o campo Planta "${PLANTA}"
  Input Text  xpath=//*[@name="codiplan"][@type="text"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
  Select from list by label  xpath=//*[@name="codicole_cond"]  ${CODIN} 

Preencher o campo Codin "${CODIN}"
  Input Text  xpath=//*[@name="codicole"][@type="text"]  ${CODIN} 

Preencher o campo Codin "${TIPOA}"
  Input Text  xpath=//*[@name="tbreacoacess_tipoaces"][@type="text"]  ${TIPOA}   


#VERIRY LABELS CONSULTA

Verificar a label Planta
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Planta')]

	Element Should Contain  ${LABEL}   Planta

Verificar a label Codin
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Codin')]

	Element Should Contain  ${LABEL}  Codin

Verificar a label Descrição do Codin
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição do Codin')]

	Element Should Contain  ${LABEL}   Descrição do Codin


Verificar a label Tipo do Acesso
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Acesso')]

	Element Should Contain  ${LABEL}   Tipo do Acesso

Verificar a label Código da Reação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código da Reação')]

	Element Should Contain  ${LABEL}   Código da Reação


#VERIFY CAMPOS FILTRO

Verificar o campo Planta
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Planta')]
	${CAMPO}      Set Variable  xpath=//input[@name='codiplan']

  sleep  2s
	Element Should Contain             ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan  

Verificar o campo Codin
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Codin')]
	${CAMPO}      Set Variable  xpath=//input[@name='codicole']

  sleep  2s
	Element Should Contain             ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   codicole

Verificar o campo Tipo do Acesso	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Acesso')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbreacoacess_tipoaces']

  sleep  2s
	Element Should Contain             ${LABEL}   Tipo do Acesso	
 	Element Attribute Value Should Be  ${CAMPO}   name   tbreacoacess_tipoaces    


