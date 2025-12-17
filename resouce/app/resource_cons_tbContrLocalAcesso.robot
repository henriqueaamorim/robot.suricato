*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Controle

# SCREEN
Acessar Tela Área de Risco - Painel de Controle
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cons_tbContrLocalAcesso
  ${SCREENNAME}  Set Variable  Área de Risco - Painel de Controle
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Área de Risco - Painel de Controle - Filtro
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cons_tbContrLocalAcesso
  ${SCREENNAME}  Set Variable   Área de Risco - Painel de Controle
  ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME} ')]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#VERIFY

Verificar o campo Área de Risco  
    ${LABEL}   Set Variable    xpath=(//td[contains(text(),'Área de Risco')])[2]
  	${CAMPO}   Set Variable    xpath=//input[@name='codilocaaces']
	  
    Element Should Contain             ${LABEL}    Área de Risco
	  Element Attribute Value Should Be  ${CAMPO}    name   codilocaaces

Verificar o campo Nome 
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Nome')]
  	${CAMPO}  Set Variable  xpath=//input[@name='apelcola']
	
  	Element Should Contain  ${LABEL}  Nome 
	  Element Attribute Value Should Be  ${CAMPO}  name   apelcola

Verificar o campo Matricula 
    ${LABEL}  Set Variable  xpath=//td[contains(text(),'Matricula')]
  	${CAMPO}  Set Variable  xpath=//input[@name='codimatr']
	
  	Element Should Contain             ${LABEL}   Matricula  
	  Element Attribute Value Should Be  ${CAMPO}   name   codimatr



#VERIFY

Verificar a label Matricula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matricula')]
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome

Verificar a label Área de Risco
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Área de Risco')]
	Element Should Contain  ${LABEL}   Área de Risco

Verificar a label Entrada
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Entrada')]
	Element Should Contain  ${LABEL}   Entrada

Verificar a label Saída
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Saída')]
	Element Should Contain  ${LABEL}   Saída

Verificar a label Status
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Status')]
	Element Should Contain  ${LABEL}   Status





























#BUTTON
#resource_btn.
