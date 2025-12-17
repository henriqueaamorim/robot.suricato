*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Refeitório

# SCREEN
Acessar Tela Refeitório
  ${OBJ}         Set Variable    SCN
  ${SCREENNAME}  Set Variable    Refeitório
  ${APPNAME}     Set Variable    consRefeitorio
  ${ELEMENT}     Set Variable    xpath=(//td[@class='scGridHeaderFont'])[4]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Refeitório (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Refeitório
  ${APPNAME}     Set Variable  consRefeitorio
  ${ELEMENT}     Set Variable  xpath=(//td[@class='scFilterHeaderFont'])[4]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#VERIFY LABELS

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código


Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}    Descrição

Verificar a label Total
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Total')]
	Element Should Contain  ${LABEL}   Total

Verificar a label Em Uso
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Em Uso')]
	Element Should Contain  ${LABEL}   Em Uso

Verificar a label VIP
	${LABEL}   Set Variable  xpath=//div[contains(text(),'VIP')]
	Element Should Contain  ${LABEL}   VIP


#VERIFY CAMPOS

Verificar o campo Código
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
	${CAMPO}      Set Variable  xpath=//input[@name='codirefe']

	Element Should Contain             ${LABEL}   Código
 	Element Attribute Value Should Be  ${CAMPO}   name   codirefe

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descrefe']

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descrefe


#FIELD
Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="codirefe"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="descrefe"][@type="text"]  ${DESC}