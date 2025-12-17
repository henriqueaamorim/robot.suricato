*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Hora Extra

# SCREEN
Acessar Tela Grupo de Hora Extra
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Hora Extra
  ${APPNAME}  Set Variable  cnsGrupoHoraExtra
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Grupo de Hora Extra - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Hora Extra
  ${APPNAME}  Set Variable  cnsGrupoHoraExtra
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.


#VERIFY LABELS

Verificar a label: ID Cadastro
	${LABEL}   Set Variable  xpath=//div[contains(text(),'ID Cadastro')]
	Element Should Contain  ${LABEL}   ID Cadastro

Verificar a label: Nome do Grupo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Grupo')]
	Element Should Contain  ${LABEL}   Nome do Grupo

Verificar a label: Horário 1
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Horário 1')]
	Element Should Contain  ${LABEL}   Horário 1

Verificar a label: Horário 2
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Horário 2')]
	Element Should Contain  ${LABEL}   Horário 2

#VERIFY CAMPOS

Verificar o campo: ID Cadastro	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'ID Cadastro')]
	${CAMPO}      Set Variable  xpath=//input[@name='idhoraextrgrup']
	Element Should Contain             ${LABEL}   ID Cadastro	
 	Element Attribute Value Should Be  ${CAMPO}   name   idhoraextrgrup

Verificar o campo: Nome do Grupo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Grupo')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomegrup']
	Element Should Contain             ${LABEL}   Nome do Grupo	
 	Element Attribute Value Should Be  ${CAMPO}   name     nomegrup

#FIELD
Preencher o campo ID Cadastro "${ID}"
  Input Text   xpath=//*[@name="idhoraextrgrup"][@type="text"]  ${ID}
  #Necessário clicar fora para validar a inserção do registro
  Click Element  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]

Preencher o campo Nome do Grupo "${NOME}"
  Input Text   xpath=//*[@name="nomegrup"][@type="text"]  ${NOME}