*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

# SCREEN
Acessar Tela Cadastro de Chave
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsCadastroChave
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Chave
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Cadastro de Chave
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Chave (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsCadastroChave
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Chave
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Cadastro de Chave
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME} ')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  
  

#BUTTON
#resource_btn.


#FIELD
Preencher o campo Número da Chave "${NUM}"
  Input Text  xpath=//*[@name="codichav"][@type="text"]  ${NUM}

Preencher o campo Descrição da Chave "${DESC}"
  Input Text  xpath=//*[@name="descchav"][@type="text"]  ${DESC}

Selecionar uma opção no campo Planta "${PLANTA}"
  Select From List By Label  xpath=//*[@name="codiplan"]  ${PLANTA}

#VERIFY LABELS

Verificar a label: Número da Chave
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Número da Chave')]
	Element Should Contain  ${LABEL}   Número da Chave

Verificar a label: Descrição da Chave
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição da Chave')]
	Element Should Contain  ${LABEL}   Descrição da Chave

Verificar a label: Planta
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Planta')]
	Element Should Contain  ${LABEL}   Planta

#VERIFY CAMPOS

Verificar o campo: Número da Chave	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número da Chave')]
	${CAMPO}      Set Variable  xpath=//input[@name='codichav']
	Element Should Contain             ${LABEL}   Número da Chave	
 	Element Attribute Value Should Be  ${CAMPO}   name   codichav

Verificar o campo: Descrição da Chave	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição da Chave')]
	${CAMPO}      Set Variable  xpath=//input[@name='descchav']
	Element Should Contain             ${LABEL}   Descrição da Chave	 
 	Element Attribute Value Should Be  ${CAMPO}   name   descchav

Verificar o campo: Planta
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Planta')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Planta
   