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
Acessar Tela Consulta de Lotes de Comandos
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Lote de Comando
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Lotes de Comandos
  END
  ${APPNAME}  Set Variable  cnsLotesComandos
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Filtro de Lotes de Comandos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Lote de Comando
  ${APPNAME}  Set Variable  cnsLotesComandos
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  


#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Lote "${COD}"
  Input Text  xpath=//*[@name="codiloteaces"][@type="text"]   ${COD}

Preencher o campo Descrição "${DESC} "
  Input Text  xpath=//*[@name="desclote"][@type="text"]  ${DESC}  

#VERIFY LABELS CONSULTA

Verificar a label Código do Lote
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Lote')]

	Element Should Contain  ${LABEL}   Código do Lote

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]

	Element Should Contain  ${LABEL}   Descrição


#VERIFY CAMPOS FILTRO

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

#Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código do Lote	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Código do Lote')]
  ${CAMPO}   Set Variable  xpath=//input[@name='codiloteaces']
  
  sleep  3s
	Element Should Contain  ${LABEL}    Código do Lote	
  Element Attribute Value Should Be  ${CAMPO}   name   codiloteaces

Verificar o campo Descrição	
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Descrição')]
  ${CAMPO}   Set Variable  xpath=//input[@name='desclote']

  sleep  2s
	Element Should Contain  ${LABEL}   Descrição	
  Element Attribute Value Should Be  ${CAMPO}   name   desclote  
