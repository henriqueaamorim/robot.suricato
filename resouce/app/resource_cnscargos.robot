*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo

# SCREEN
Acessar Tela Consulta de Cargos
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnscargos
 	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
       ${SCREENNAME}   Set Variable   Cargo
       ${ELEMENT}      Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Cargos
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Cargos (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnscargos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Cargo
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Cargos
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON


#FIELD
Preencher o campo Nome do Cargo "${NOME}"
  Input Text  xpath=//*[@name="titucarg"][@type="text"]   ${NOME}

Preencher o campo Código do Cargo "${COD}"
  Input Text  xpath=//*[@name="codicarg"][@type="text"]   ${COD}

Preencher o campo Cargo (abreviado) "${CARGO}"
  Input Text  xpath=//*[@name="titureducarg"][@type="text"]   ${CARGO}



#VERIFY LABELS

Verificar a label Grupo do Cargo
	${LABEL}   Set Variable   xpath=//div[contains(text(),'Grupo do Cargo')] | //td[@class='scGridLabelFont css_codiestrcarg_label']
	Element Should Contain   ${LABEL}   Grupo do Cargo

Verificar a label Código do Cargo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Cargo')] | //td[@class='scGridLabelFont css_codicarg_label']
	Element Should Contain  ${LABEL}   Código do Cargo

Verificar a label Cargo (abreviado)
	${LABEL}   Set Variable    xpath=//td[@class='scGridLabelFont css_titureducarg_label']
	Element Should Contain    ${LABEL}    Cargo (abreviado)

Verificar a label Nome do Cargo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Cargo')] | //td[@class='scGridLabelFont css_titucarg_label']
	Element Should Contain  ${LABEL}   Nome do Cargo



#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Grupo do Cargo
	${LABEL}      Set Variable  xpath=//td[@id='SC_codiestrcarg_label']
	${CAMPO}      Set Variable  xpath=//input[@id='SC_codiestrcarg']

	Element Should Contain             ${LABEL}   Grupo do Cargo
 	Element Attribute Value Should Be  ${CAMPO}   name  codiestrcarg 

Verificar o campo Código do Cargo
	${LABEL}      Set Variable  xpath=//td[@id='SC_codicarg_label']
	${CAMPO}      Set Variable  xpath=//input[@id='SC_codicarg']

	Element Should Contain             ${LABEL}   Código do Cargo
 	Element Attribute Value Should Be  ${CAMPO}   name   codicarg

Verificar o campo Cargo (abreviado)
	${LABEL}      Set Variable  xpath=//td[@id='SC_titureducarg_label']
	${CAMPO}      Set Variable  xpath=//input[@id='SC_titureducarg']

	Element Should Contain             ${LABEL}   Cargo (abreviado)
 	Element Attribute Value Should Be  ${CAMPO}   name   titureducarg

Verificar o campo Nome do Cargo
	${LABEL}      Set Variable  xpath=//td[@id='SC_titucarg_label']
	${CAMPO}      Set Variable  xpath=//input[@id='SC_titucarg']

	Element Should Contain             ${LABEL}   Nome do Cargo
 	Element Attribute Value Should Be  ${CAMPO}   name   titucarg
