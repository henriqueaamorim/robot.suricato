*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

# SCREEN
Acessar Tela Consulta Benefícios
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsbeneficioscad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Benefícios
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta Benefícios
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Benefícios (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsbeneficioscad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Benefícios (Filtro)
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta Benefícios
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
Preencher o campo Código do Benefício "${COD}"
  Input Text   xpath=//*[@name="codibene"][@type="text"]  ${COD}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text   xpath=//*[@name="descbene"][@type="text"]  ${DESCRICAO}

#VERIFY LABELS

Verificar a label: Código do Benefício
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Benefício')]
	Element Should Contain  ${LABEL}  Código do Benefício 

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label: Máximo de Entregas sem Retirada
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Máximo de Entregas sem Retirada')]
	Element Should Contain  ${LABEL}   Máximo de Entregas sem Retirada

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Código do Benefício	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código do Benefício')]
	${CAMPO}      Set Variable  xpath=//input[@name='codibene']
	Element Should Contain             ${LABEL}   Código do Benefício	
 	Element Attribute Value Should Be  ${CAMPO}   name   codibene

Verificar o campo: Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descbene']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descbene 