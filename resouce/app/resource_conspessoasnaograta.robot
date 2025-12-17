*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata

# SCREEN
Acessar Tela: Pessoa não Grata (Consulta)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  conspessoasnaograta
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Pessoa não Grata
  ${ELEMENT}     Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Pessoas não Gratas
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Pessoa não Grata (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  conspessoasnaograta
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Pessoa não Grata
  ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Pessoas não Gratas
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  

#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Tipo do Documento "${TIPDOC}"
  Select from list by label  xpath=//*[@name="tbpessoangrata_tipodocu"]  ${TIPDOC}

Preencher o campo Número do Documento "${NUM}"
  Input Text  xpath=//*[@name="tbpessoangrata_numedocu"][@type="text"]  ${NUM}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="tbpessoa_nomepess"][@type="text"]  ${NOME}

#VERIFY LABELS

Verificar a label: Tipo do Documento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Documento')]
	Element Should Contain  ${LABEL}   Tipo do Documento

Verificar a label: Número do Documento
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número do Documento')]
	Element Should Contain  ${LABEL}   Número do Documento

Verificar a label: Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome

#VERIFY CAMPOS

Verificar o campo: Tipo do Documento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Documento')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo do Documento	 
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Número do Documento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número do Documento')]
	${CAMPO}      Set Variable  xpath=//input[@name='numedocu']
	Element Should Contain             ${LABEL}   Número do Documento	
 	Element Attribute Value Should Be  ${CAMPO}   name   numedocu

Verificar o campo: Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess


