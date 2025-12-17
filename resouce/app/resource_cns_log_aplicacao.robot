*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Cadastro

# SCREEN
Acessar Tela Log de Aplicação (Consulta)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Aplicação
  ${APPNAME}  Set Variable  cns_log_aplicacao
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Log de Aplicação (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Aplicação
  ${APPNAME}  Set Variable  cns_log_aplicacao
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.



#FIELD
Selecionar uma opção no campo Aplicação "${APLICAÇÃO}"
	Select From List By Label  xpath=//*[@name="nomeapli_cond"]  ${APLICAÇÃO}

Preencher o campo Aplicação "${APLICAÇÃO}"
	Input Text  xpath=//*[@name="nomeapli"][@type="text"]  ${APLICAÇÃO}

Selecionar uma opção no campo Descrição "${DESCRIÇÃO}"
	Select From List By Label  xpath=//*[@name="descapli_cond"]  ${DESCRIÇÃO}

Preencher o campo Descrição "${DESCRIÇÃO}"
	Input Text  xpath=//*[@name="descapli"][@type="text"]  ${DESCRIÇÃO}

Selecionar uma opção no campo Log "${LOG}"
	Select From List By Label  xpath=//*[@name="fazlog_cond"]  ${LOG}

Selecionar uma opção no campo Log 1 "${LOG_1}"
	Select From List By Label  xpath=//*[@name="fazlog"]  ${LOG_1}

# VERIFY LABELS

Verificar a label: Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label: Aplicação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Aplicação')]
	Element Should Contain  ${LABEL}   Aplicação

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label: Log
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Log')]
	Element Should Contain  ${LABEL}   Log

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Aplicação
	${LABEL}      Set Variable  xpath=//td[@id='SC_nomeapli_label']
	${CAMPO}      Set Variable  xpath=//input[@name='nomeapli']
	Element Should Contain             ${LABEL}   Aplicação
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeapli

Verificar o campo: Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descapli']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descapli

Verificar o campo: Log
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Log')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Log
 	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single      

