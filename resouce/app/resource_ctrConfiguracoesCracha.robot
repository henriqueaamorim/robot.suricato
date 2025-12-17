*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Crachá

# SCREEN
Acessar Tela Configurações Crachá
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Configurações Crachá
  ${APPNAME}  Set Variable  ctrConfiguracoesCracha
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.



#VERIFY

Verificar a label Smart card
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Smart card

Verificar o campo Mapa do SmartCard
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Mapa do SmartCard
 	Element Attribute Value Should Be  ${CAMPO}   name   mapasmartcard

Verificar a label Matricula Automatica Cadastro de Crachá
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Matricula Automatica Cadastro de Crachá

Verificar o campo Gravação de crachá/hist. Automático
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Gravação de crachá/hist. Automático
 	Element Attribute Value Should Be  ${CAMPO}   name   autoinsccrach



#FIELD
Selecionar uma opção no campo Mapa do SmartCard "${MAPA_DO_SMARTCARD}"
	Select From List By Label  xpath=//*[@name="mapasmartcard"]  ${MAPA_DO_SMARTCARD}

Selecionar uma opção no campo Gravação de crachá/hist. Automático "${GRAVAÇÃO}"
	Select From List By Label  xpath=//*[@name="autoinsccrach"]  ${GRAVAÇÃO}

