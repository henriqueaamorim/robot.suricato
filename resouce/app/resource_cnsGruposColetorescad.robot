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
Acessar Tela Grupo de Codin
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Grupo de Codin
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Grupos de Codins
  END
  ${APPNAME}  Set Variable  cnsGruposColetorescad
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Grupo de Codin (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Codin
  ${APPNAME}  Set Variable  cnsGruposColetorescad
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'Grupo de Codin')]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  


#BUTTON
#resource_btn.

#FIELD
Preencher o campo Grupo "${GRUPO}"
  Input Text  xpath=//*[@name="codigrupcole"][@type="text"]   ${GRUPO}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descgrupcole"][@type="text"]   ${DESCRICAO}

#VERIFY LABELS

Verificar a label Grupo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Grupo')]
	Element Should Contain  ${LABEL}   Grupo

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Nome do Aplicativo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Aplicativo')]
	Element Should Contain  ${LABEL}   Nome do Aplicativo


#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[@class='scFilterBlockFont css_blk_0']

  sleep  2s
  Element Should Contain  ${LABEL}  Pesquisa

Verificar o campo Grupo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Grupo')]
	${CAMPO}      Set Variable  xpath=//input[@name='codigrupcole']

  sleep  2s
	Element Should Contain             ${LABEL}   Grupo
  Element Attribute Value Should Be  ${CAMPO}   name   codigrupcole

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descgrupcole']

  sleep  2s
	Element Should Contain             ${LABEL}    Descrição
  Element Attribute Value Should Be  ${CAMPO}   name   descgrupcole