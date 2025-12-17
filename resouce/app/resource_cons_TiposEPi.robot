*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

# SCREEN
Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual
   ${OBJ}          Set Variable   SCN
   ${APPNAME}      Set Variable   cons_TiposEPi
   ${SCREENNAME}   Set Variable   Cadastro Tipos Equipamento de Proteção Individual
   ${ELEMENT}      Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
   Sleep  2s
   Mudar Frame Aplicação "mnu_iframe"
   Wait Until Element is Visible  ${ELEMENT}
   Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
   Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
 
  

Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual - Filtro
   ${OBJ}         Set Variable  SCN
   ${APPNAME}  Set Variable  cons_TiposEPi
   ${SCREENNAME}  Set Variable  Cadastro Tipos Equipamento de Proteção Individual
   ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
   Sleep  2s
   Mudar Frame Aplicação "TB_iframeContent"
   Wait Until Element is Visible  ${ELEMENT}
   Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
   Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
 

#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label Cód. Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Cód. Tipo')]
	Element Should Contain  ${LABEL}   Cód. Tipo 


Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição 


#VERIFY CAMPOS

Verificar o campo Cód Tipo
	${LABEL}      Set Variable  xpath=//*[@id="SC_coditipoepi_label"]
	${CAMPO}      Set Variable  xpath=//input[@name='coditipoepi']
	Element Should Contain             ${LABEL}   Cód. Tipo
 	Element Attribute Value Should Be  ${CAMPO}   name   coditipoepi
 


Verificar o campo Descrição	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='desctipoepi']

	Element Should Contain             ${LABEL}   Descrição	
 	Element Attribute Value Should Be  ${CAMPO}   name   desctipoepi
