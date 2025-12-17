*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

# SCREEN
Acessar Tela Grupo de Email - EPI
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Email - EPI
  ${APPNAME}  Set Variable  cnsGrupoEmailEPI
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Grupo de Email - EPI (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Email - EPI
  ${APPNAME}     Set Variable  cnsGrupoEmailEPI
  ${ELEMENT}     Set Variable  xpath=(//td[@class='scFilterHeaderFont'])[4]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.


#VERIFY LABELS

Verificar a label Grupo de Envio de E-mail
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Grupo de Envio de E-mail')]
	Element Should Contain  ${LABEL}   Grupo de Envio de E-mail

Verificar a label Email dos colaboradores
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Email dos colaboradores')]
	Element Should Contain  ${LABEL}   Email dos colaboradores

Verificar a label Período Para envio dos Email
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Período Para envio dos Email')]
	Element Should Contain  ${LABEL}   Período Para envio dos Email

Verificar a label Status (Ativo?)
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Status (Ativo?)')]
	Element Should Contain  ${LABEL}   Status (Ativo?)

#VERIFY CAMPOS

Verificar o campo Grupo de Envio de E-mail	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Grupo de Envio de E-mail')]
	${CAMPO}      Set Variable  xpath=//input[@name='codigrupemai']

	Element Should Contain             ${LABEL}   Grupo de Envio de E-mail	
 	Element Attribute Value Should Be  ${CAMPO}   name   codigrupemai

Verificar o campo Email dos colaboradores	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Email dos colaboradores')]
	${CAMPO}      Set Variable  xpath=//input[@name='emailcolab']

	Element Should Contain             ${LABEL}   Email dos colaboradores	
 	Element Attribute Value Should Be  ${CAMPO}   name   emailcolab

Verificar o campo Período Para envio dos Email	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Período Para envio dos Email')]
	${CAMPO}      Set Variable  xpath=//input[@name='emaienvi']

	Element Should Contain             ${LABEL}   Período Para envio dos Email	
 	Element Attribute Value Should Be  ${CAMPO}   name   emaienvi


