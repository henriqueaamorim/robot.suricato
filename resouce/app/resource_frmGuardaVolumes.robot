*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes

# SCREEN
Acessar Tela Cadastro de Guarda-Volumes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Guarda-Volume
  ${APPNAME}  Set Variable  frmGuardaVolumes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Guarda-Volumes (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Guarda-Volumes
  ${APPNAME}  Set Variable  frmGuardaVolumes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#FIELD
Preencher o campo Número do Guarda-Volumes "${NUMERO}"
  Input Text    xpath=//*[@name="codiguarvolu"][@type="text"]   ${NUMERO}

Preencher o campo Descrição do Guarda-Volume "${DESCRICAO}"
  Input Text    xpath=//*[@name="descguarvolu"][@type="text"]   ${DESCRICAO}

#VERIFY

E verificar o campo Número do Guarda-Volumes  
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	#${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Número do Guarda-Volumes
	#Element Attribute Value Should Be  ${CAMPO}  name  codiguarvolu

E verificar o campo Descrição do Guarda-Volumes 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Descrição do Guarda-Volumes
	Element Attribute Value Should Be  ${CAMPO}  name  descguarvolu