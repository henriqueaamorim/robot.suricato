*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastros de Grupos

# SCREEN
Acessar Tela Cadastro de Grupos - Consulta
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastros de Grupos
  ${APPNAME}  Set Variable  frmGrupoCamera
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Cadastro de Grupos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastros de Grupos
  ${APPNAME}  Set Variable  frmGrupoCamera
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Grupo "${CODIGO}"
  Input Text  xpath=//*[@name="codigrupcame"][@type="text"]  ${CODIGO}

Preencher o campo Descrição do Grupo "${DESCRICAO}"
  Input Text  xpath=//*[@name="descgrupcame"][@type="text"]  ${DESCRICAO}

#VERIFY 

E verificar o campo Código do Grupo 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Código do Grupo 
	Element Attribute Value Should Be  ${CAMPO}  name  codigrupcame

E verificar o campo Descrição do Grupo 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição do Grupo
	Element Attribute Value Should Be  ${CAMPO}  name  descgrupcame