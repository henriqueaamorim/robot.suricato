*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Chave | Cadastro de Chave

# SCREEN
Acessar Tela Cadastro de Chave
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Chave
  ${APPNAME}  Set Variable  frmCadastroChave
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[5]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Cadastro de Chave (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Chave
  ${APPNAME}  Set Variable  frmCadastroChave
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.

#FIELD
Preencher o campo Número da Chave "${CHAVE}"
  Input Text  xpath=//*[@name="codichav"][@type="text"]  ${CHAVE}

Preencher o campo Descrição da Chave "${DESCRICAO}"
  Input Text  xpath=//*[@name="descchav"][@type="text"]  ${DESCRICAO}

Selecionar uma opção no campo Planta "${PLANTA}"
  Select from list by label  xpath=//*[@name="codiplan"]  ${PLANTA}


#VERIFY

E verificar o campo Número da Chave 
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	#${CAMPO}  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Número da Chave
	#Element Attribute Value Should Be  ${CAMPO}  name  codichav

E verificar o campo Descrição da Chave  
 	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}  Descrição da Chave
	Element Attribute Value Should Be  ${CAMPO}  name  descchav

E verificar o campo Planta
	${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}  Planta
	Element Attribute Value Should Be  ${CAMPO}  name  codiplan