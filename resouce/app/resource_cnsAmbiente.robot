*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Ambiente

# SCREEN
Acessar Tela Consulta de Ambiente
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Ambiente
      ${ELEMENT}  Set Variable    xpath=//td[@class="scGridHeaderFont"][4]
  ELSE
      ${SCREENNAME}  Set Variable  Consulta de Ambiente
      ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END
  ${APPNAME}  Set Variable  cnsAmbiente

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Ambiente (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Ambiente
  ${APPNAME}     Set Variable  cnsAmbiente
  ${ELEMENT}     Set Variable  xpath=(//td[@class='scFilterHeaderFont'])[4]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn


#VERIFY LABELS

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label Ambiente
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Ambiente')]
	Element Should Contain  ${LABEL}   Ambiente

Verificar a label Planta
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Planta')]
	Element Should Contain  ${LABEL}   Planta 

Verificar a label Código Ambiente Superior
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código Ambiente Superior')]
	Element Should Contain  ${LABEL}   Código Ambiente Superior

#VERIFY CAMPOS

Verificar o campo Ambiente
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Ambiente')]
	${CAMPO}      Set Variable  xpath=//input[@name='descambi']

	Element Should Contain             ${LABEL}   Ambiente
 	Element Attribute Value Should Be  ${CAMPO}   name   descambi

Verificar o campo Planta
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Planta')]
	${CAMPO}      Set Variable  xpath=///span[@class='select2-selection select2-selection--single']

	Element Should Contain             ${LABEL}   Planta

Verificar o campo Código Ambiente Superior	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código Ambiente Superior')]
	${CAMPO}      Set Variable  xpath=//input[@name='codiambipai']

	Element Should Contain             ${LABEL}   Código Ambiente Superior	
 	Element Attribute Value Should Be  ${CAMPO}   name   codiambipai

#FIELD

Preencher o campo Ambiente "${AMBIENTE}"
  Input Text  xpath=//*[@name="descambi"][@type="text"]   ${AMBIENTE}
