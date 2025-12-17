*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Cadastro

# SCREEN
Acessar Tela Materiais (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Material
  ${APPNAME}  Set Variable  frmMateriais
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Materiais (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Material
  ${APPNAME}  Set Variable  frmMateriais
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Material "${MATERIAL}"
  Input Text  xpath=//*[@name="codimate"][@type="text"]  ${MATERIAL}

Preencher o campo Descrição do Material "${DESCRICAO}"
  Input Text  xpath=//*[@name="descmate"][@type="text"]  ${DESCRICAO}

#VERIFY

Verificar o campo Código do Material *
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Código do Material
 	Element Attribute Value Should Be  ${CAMPO}   name   codimate

Verificar o campo Descrição do Material *
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Descrição do Material
 	Element Attribute Value Should Be  ${CAMPO}   name   descmate