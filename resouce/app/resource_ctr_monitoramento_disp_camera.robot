*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Status de Cameras

# SCREEN
Acessar Tela Monitoramento Câmeras
#(246)(249)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento Câmeras
  ${APPNAME}  Set Variable  ctr_monitoramento_disp_camera
  ${ELEMENT}  Set Variable    xpath=//div[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label: Tipo Servidor CFTV	
	${LABEL}   Set Variable   xpath=//th[contains(text(),'Tipo Servidor CFTV')]
	Sleep  2s
	Element Should Contain   ${LABEL}    Tipo Servidor CFTV	

Verificar a label: Nome Servidor CFTV	
	${LABEL}   Set Variable  xpath=//th[contains(text(),'Nome Servidor CFTV')]
	Element Should Contain  ${LABEL}   Nome Servidor CFTV	

Verificar a label: Endereço IP	
	${LABEL}   Set Variable  xpath=//th[contains(text(),'Endereço IP')]
	Element Should Contain  ${LABEL}  Endereço IP	

Verificar a label: Câmera
	${LABEL}   Set Variable  xpath=//th[contains(text(),'Câmera')]
	Element Should Contain  ${LABEL}   Câmera

Verificar a label: Ativa
	${LABEL}   Set Variable  xpath=//th[contains(text(),'Ativa')]
	Element Should Contain  ${LABEL}  Ativa

Verificar a label: Status
	${LABEL}   Set Variable  xpath=//th[contains(text(),'Status')]
	Element Should Contain  ${LABEL}  Status  


#VERIFY CAMPOS

Verificar o campo: Tipo Servidor CFTV	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo Servidor CFTV')]
	${CAMPO}      Set Variable  xpath=//select[@name='TIPOCFTV']
	Sleep  2s
	Element Should Contain             ${LABEL}   Tipo Servidor CFTV
 	Element Attribute Value Should Be  ${CAMPO}   name  TIPOCFTV

Verificar o campo: Servidor CFTV	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Servidor CFTV')]
	${CAMPO}      Set Variable  xpath=//select[@name='CODISERVCFTV']
	Element Should Contain             ${LABEL}   Servidor CFTV
 	Element Attribute Value Should Be  ${CAMPO}   name  CODISERVCFTV

Verificar o campo: Camera
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Camera')]
	${CAMPO}      Set Variable  xpath=//select[@name='CODICAMECFTV']
	Element Should Contain             ${LABEL}   Camera
 	Element Attribute Value Should Be  ${CAMPO}   name  CODICAMECFTV

Verificar o campo: Endereco IP	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Endereco IP')]
	${CAMPO}      Set Variable  xpath=//input[@name='ENDEIP']
	Element Should Contain             ${LABEL}   Endereco IP	
 	Element Attribute Value Should Be  ${CAMPO}   name   ENDEIP

Verificar o campo: Ativa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Ativa')]
	${CAMPO}      Set Variable  xpath=//select[@name='CAMEATIV']
	Element Should Contain             ${LABEL}   Ativa
 	Element Attribute Value Should Be  ${CAMPO}   name  CAMEATIV

Verificar o campo: Status
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Status')]
	${CAMPO}      Set Variable  xpath=//select[@name='CAMESTAT']
	Element Should Contain             ${LABEL}   Status
 	Element Attribute Value Should Be  ${CAMPO}   name  CAMESTAT