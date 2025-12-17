*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Material por Pessoa


# SCREEN
Acessar Tela Cadastro de Materiais por Pessoa (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Materiais por Pessoa (Inclusão)
  ${APPNAME}     Set Variable  frmMateriaisColaborador
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Cadastro de Materiais por Pessoa (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Materiais por Pessoa (Atualização)
  ${APPNAME}     Set Variable  frmMateriaisColaborador
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
Preencher campo Material "${MATERIAL}"
  Input Text    xpath=//*[@name="codimate1"][@type="text"]    ${MATERIAL}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_field_label_codimate"]
  
Preencher campo Obrservações "${OBSERVACOES}"
  Input Text    xpath=//*[@name="obse1"][@type="text"]    ${OBSERVACOES}


#VERIFY

Verificar a label SEQ
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   SEQ

Verificar a label Material
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Material

Verificar o campo Observações
	${LABEL}      Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[4]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[5]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Observações
 	Element Attribute Value Should Be  ${CAMPO}   name   obse1


#VERIFY (Inclusão)
Verificar o campo Material
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[1]/td[3]
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table/tbody/tr/td/div/div/table/tbody/tr[2]/td[4]/table/tbody/tr/td[1]/span[2]/input
  
  Element Should Contain  ${LABEL}   Material
  Element Attribute Value Should Be  ${CAMPO}   name   codimate1