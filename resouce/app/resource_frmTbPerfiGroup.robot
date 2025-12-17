*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário

# SCREEN
Acessar Tela Tipo de Biometria por Grupo de Usuário - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Biometria por Grupo de Usuário
  ${APPNAME}  Set Variable  frmTbPerfiGroup
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Grupo de Usuários "${GRUPO}"
  Select from list by label  xpath=//*[@name="idgrupo"]  ${GRUPO}

Selecionar uma opção no campo Tipo de Biometria "${BIOMETRIA}"
  Select from list by label  xpath=//*[@name="tipobiom"]  ${BIOMETRIA}



#VERIFY

Verificar o campo Grupo de Usuários *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select
	
	Element Should Contain  ${LABEL}   Grupo de Usuários *
 	Element Attribute Value Should Be  ${CAMPO}   name   idgrupo

Verificar o campo Tipo de Biometria *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo de Biometria *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipobiom
