*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Filial

# SCREEN
Acessar Tela Consulta de Filial
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Filial
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Filial
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  cnsFilialFRMcad

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta de Empresas (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Filial
  ${APPNAME}     Set Variable  cnsFilialFRMcad
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  2s
    Mudar Frame Aplicação "TB_iframeContent"
  END

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#FIELD
Preencher o campo Empresa "${EMPRESA}"
  Input Text  xpath=//*[@name="codiempr"][@type="text"]   ${EMPRESA}

Preencher o campo Código da Filial "${COD}"
  Input Text  xpath=//*[@name="codifili"][@type="text"]   ${COD}

Preencher o campo Nome Fantasia "${NOME}"
  Input Text  xpath=//*[@name="apelfili"][@type="text"]   ${NOME}

Preencher o campo Chave Externa "${CHAVE}"
  Input Text  xpath=//*[@name="external_key"][@type="text"]   ${CHAVE}


#VERIFY

Verificar a label Chave Externa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Chave Externa')]
	Element Should Contain  ${LABEL}   Chave Externa  

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Código da Filial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código da Filial')]
	Element Should Contain  ${LABEL}   Código da Filial

Verificar a label Razão Social
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Razão Social')]
	Element Should Contain  ${LABEL}   Razão Social

Verificar a label Nome Fantasia
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome Fantasia')]
	Element Should Contain  ${LABEL}   Nome Fantasia

Verificar a label Cidade
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Cidade')]
	Element Should Contain  ${LABEL}   Cidade

Verificar a label Estado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Estado')]
	Element Should Contain  ${LABEL}   Estado


#VERIFY

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//input[@name='codiempr']

	Element Should Contain             ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Código da Filial	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código da Filial')]
	${CAMPO}      Set Variable  xpath=//input[@name='codifili']

	Element Should Contain             ${LABEL}   Código da Filial	
 	Element Attribute Value Should Be  ${CAMPO}   name   codifili

Verificar o campo Nome Fantasia	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome Fantasia')]
	${CAMPO}      Set Variable  xpath=//input[@name='apelfili']

	Element Should Contain             ${LABEL}   Nome Fantasia	
 	Element Attribute Value Should Be  ${CAMPO}   name   apelfili

Verificar o campo Chave Externa		
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Chave Externa')]
	${CAMPO}      Set Variable  xpath=//input[@name='external_key']

	Element Should Contain             ${LABEL}   Chave Externa	
 	Element Attribute Value Should Be  ${CAMPO}   name   external_key