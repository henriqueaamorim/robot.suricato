*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Comandos para Equipamentos

# SCREEN
Acessar Tela Comandos para Equipamentos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Comandos para Equipamentos
  ${APPNAME}  Set Variable  frmComandosEquipamentos
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Printar Tela Com Alteração de Linha
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Comandos para Equipamentos
  ${APPNAME}  Set Variable  frmComandosEquipamentos
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#VERIFY 

Verificar a label Cód Comando 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codicoma_']

	Element Should Contain  ${LABEL}   Cód. Comando 
	

Verificar a label Descrição do Comando 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_desccoma_']
 
  Element Should Contain  ${LABEL}   Descrição do Comando 
	 

Verificar a label Time Out Comando (Em Segundos)
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_timeoutcoma_']

	Element Should Contain  ${LABEL}  Time Out Comando (Em Segundos)  
	