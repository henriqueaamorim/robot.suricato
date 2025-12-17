*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI

# SCREEN
Acessar Tela Cadastro de Termo de Compromisso para Entrega de EPI
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Termo de Compromisso para Entrega de EPI
  ELSE
      ${SCREENNAME}  Set Variable  Cadastro de Termo de Compromisso para Entrega de EPI
  END
  ${APPNAME}  Set Variable  cnsEPITermoCompromisso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Termo de Compromisso para Entrega de EPI (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Termo de Compromisso para Entrega de EPI
  ${APPNAME}     Set Variable  cnsEPITermoCompromisso
  ${ELEMENT}     Set Variable  xpath=(//td[@class='scFilterHeaderFont'])[4]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Cód. "${COD}"
  Input Text  xpath=//*[@name="coditerm"][@type="text"]   ${COD}

Preencher o campo Título "${TITULO}"
  Input Text  xpath=//*[@name="tituterm"][@type="text"]   ${TITULO}

Selecionar uma opção no campo Status "${STATUS}"
  Select From List By Label  xpath=//*[@name="statterm"]  ${STATUS}


# VERIFY LABELS 

Verificar a label Cód
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Cód.')]
	Element Should Contain  ${LABEL}   Cód.

Verificar a label Título
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Título')]
	Element Should Contain  ${LABEL}   Título

Verificar a label Status
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Status')]
	Element Should Contain  ${LABEL}   Status


# VERIFY CAMPOS

Verificar o campo Cód
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Cód.')]
	${CAMPO}      Set Variable  xpath=//input[@name='coditerm']

	Element Should Contain             ${LABEL}   Cód.
 	Element Attribute Value Should Be  ${CAMPO}   name   coditerm

Verificar o campo Título
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Título')]
	${CAMPO}      Set Variable  xpath=//input[@name='tituterm']

	Element Should Contain             ${LABEL}   Título
 	Element Attribute Value Should Be  ${CAMPO}   name   tituterm

Verificar o campo Status
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Status')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-SC_statterm-container']

	Element Should Contain             ${LABEL}   Status
  Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_statterm-container
 	  
