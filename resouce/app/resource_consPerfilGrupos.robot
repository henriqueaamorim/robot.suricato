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
Acessar Tela Tipo de Biometria por Grupo de Usuário
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Tipo de Biometria por Grupo de Usuário
  ${APPNAME}     Set Variable   consPerfilGrupos
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Tipo de Biometria por Grupo de Usuário (Filtro)
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Tipo de Biometria por Grupo de Usuário
  ${APPNAME}     Set Variable   consPerfilGrupos
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label: Grupo de Usuários
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Grupo de Usuários')]
	Element Should Contain  ${LABEL}   Grupo de Usuários

Verificar a label: Tipo de Biometria
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Biometria')]
	Element Should Contain  ${LABEL}    Tipo de Biometria

#VERIFY CAMPOS

Verificar o campo: Grupo de Usuários	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Grupo de Usuários')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	Element Should Contain             ${LABEL}   Grupo de Usuários	
 	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Tipo de Biometria	 
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Biometria')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Should Contain             ${LABEL}   Tipo de Biometria	
 	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single     

#FIELD
Selecionar uma opção no campo Grupo de Usuários "${GRUPO}"
  Select from list by label  xpath=//*[@name="idgrupo"]  ${GRUPO}

Selecionar uma opção no campo Tipo de Biometria "${TIPBIO}"
  Select from list by label  xpath=//*[@name="tipobiom"]  ${TIPBIO}