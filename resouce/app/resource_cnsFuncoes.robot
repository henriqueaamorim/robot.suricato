*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Função

# SCREEN
Acessar Tela Consulta de Funções
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Função
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Funções
  END
  ${APPNAME}  Set Variable  cnsFuncoes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Função (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable   Função (Filtro)
  ${APPNAME}  Set Variable  cnsFuncoes
  ${ELEMENT}  Set Variable    xpath=(//td[contains(text(),'Função (Filtro)')])
  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible   ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Código da Função "${COD}"
  Input Text  xpath=//*[@name="codifunc"][@type="text"]   ${COD}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="descfunc"][@type="text"]   ${DESCRICAO}


#VERIFY LABELS

Verificar a label Código da Função
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código da Função')]
	Element Should Contain  ${LABEL}   Código da Função 

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}    Descrição

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

	Element Should Contain  ${LABEL}    Pesquisa

Verificar o campo Código da Função	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código da Função')]
	${CAMPO}      Set Variable  xpath=//input[@name='codifunc']

	Element Should Contain              ${LABEL}   Código da Função	
 	Element Attribute Value Should Be   ${CAMPO}   name   codifunc

Verificar o campo Descrição	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descfunc']

	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descfunc
