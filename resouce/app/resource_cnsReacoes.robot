*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Alarme

# SCREEN
Acessar Tela Consulta de Reações
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Reação de Alarme
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Reações
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END
  ${APPNAME}  Set Variable  cnsReacoes
  
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Filtro de Reações
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Reação de Alarme
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${APPNAME}  Set Variable  cnsReacoes
  
  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Reação "${REACT}"
  Select from list by label  xpath=//*[@name="tbtiporeaco_descreac_cond"]  ${REACT}

Preencher o campo Reação "${REACT}"
  Input Text  xpath=//*[@name="tbtiporeaco_descreac"][@type="text"]   ${REACT}

Selecionar uma opção no campo Lote "${LOTE}"
  Select from list by label  xpath=//*[@name="tblotecoman_desclote_cond"]  ${LOTE}

Preencher o campo Lote "${LOTE}"  
  Input Text  xpath=//*[@name="tblotecoman_desclote"][@type="text"]  ${LOTE}


#VERIFY LABELS CONSULTA

Verificar a label Código da Reação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código da Reação')]

	Element Should Contain  ${LABEL}   Código da Reação

Verificar a label Reação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Reação')]

	Element Should Contain  ${LABEL}   Reação

Verificar a label Código do Lote de Comando
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Lote de Comando')]

	Element Should Contain  ${LABEL}   Código do Lote de Comando

Verificar a label Lote
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Lote')]

	Element Should Contain  ${LABEL}   Lote


#VERIFY CAMPOS FILTRO

Verificar o campo Reação
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Reação')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbtiporeaco_descreac']

  sleep  2s
	Element Should Contain             ${LABEL}   Reação
 	Element Attribute Value Should Be  ${CAMPO}   name   tbtiporeaco_descreac

Verificar o campo Lote
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Lote')]
	${CAMPO}      Set Variable  xpath=//input[@name='tblotecoman_desclote']

  sleep  2s
	Element Should Contain             ${LABEL}   Lote
 	Element Attribute Value Should Be  ${CAMPO}   name   tblotecoman_desclote