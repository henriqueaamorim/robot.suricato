*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Ativação de Usuário

# SCREEN
Acessar Tela Ativação de Usuário
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Ativação de Usuário
  ${APPNAME}  Set Variable  cnsDesbloqueioLogin
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Ativação de Usuário - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Ativação de Usuário
  ${APPNAME}  Set Variable  cnsDesbloqueioLogin
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#VERIFY LABELS

Verificar a label: Usuário
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Usuário')]
	Element Should Contain  ${LABEL}  Usuário

Verificar a label: Login
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Login')]
	Element Should Contain  ${LABEL}  Login

Verificar a label: Bloqueado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Bloqueado')]
	Element Should Contain  ${LABEL}      Bloqueado

#VERIFY CAMPOS

Verificar o campo Usuário 
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Usuário')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomeusua']
	Element Should Contain  ${LABEL}   Usuário 
  Element Attribute Value Should Be  ${CAMPO}   name   nomeusua

Verificar o campo Login
  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Login')]
	${CAMPO}      Set Variable  xpath=//input[@name='logiusua']
	Element Should Contain  ${LABEL}   Login 
  Element Attribute Value Should Be  ${CAMPO}   name   logiusua

#FIELD
Preencher o campo Usuário "${USUÝRIO}"
	Input Text  xpath=//*[@name="nomeusua"][@type="text"]  ${USUÝRIO}

Preencher o campo Login "${LOGIN}"
	Input Text  xpath=//*[@name="logiusua"][@type="text"]  ${LOGIN}
