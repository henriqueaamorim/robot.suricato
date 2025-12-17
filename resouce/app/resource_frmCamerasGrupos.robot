*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo

# SCREEN
Acessar Tela Cadastro de Cameras por Grupo - Consulta
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Cameras por Grupo
  ${APPNAME}  Set Variable  frmCamerasGrupos
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Cadastro de Cameras por Grupo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Cameras por Grupo
  ${APPNAME}  Set Variable  frmCamerasGrupos
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON



#FIELD
Selecionar uma opção no campo Código do Grupo "${CODIGO}"
  Select from list by label  xpath=//*[@name="codigrupcame"]  ${CODIGO}

Selecionar uma opção no campo Servidor CFTV "${SERVIDOR}"
  Select from list by label  xpath=//*[@name="codiservcftv"]  ${SERVIDOR}

Selecionar uma opção no campo Código da Câmera "${CODIGO}"
  Select from list by label  xpath=//*[@name="codicamegrup"]  ${CODIGO}


#VERIFY

E verificar o campo Código do Grupo 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select
	
	Element Should Contain  ${LABEL}  Código do Grupo 
	Element Attribute Value Should Be  ${CAMPO}  name  codigrupcame

E verificar o campo Servidor CFTV 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}  Servidor CFTV 
	Element Attribute Value Should Be  ${CAMPO}  name  codiservcftv
 
E verificar o campo Código da Câmera
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}  Código da Câmera 
	Element Attribute Value Should Be  ${CAMPO}  name  codicamegrup 
