*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Coletiva


# SCREEN
Acessar Tela Abrangência
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Abrangência
  ${APPNAME}     Set Variable  ctrabrangenciamensagem
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Empresa:
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Empresa:
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numemp[]

Verificar o campo Tipo de Colaborador:
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Tipo de Colaborador:
 	Element Attribute Value Should Be  ${CHECKBOX}   name   tipcol[]

Verificar o campo Colaborador:
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Colaborador:
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numcad

Verificar o campo Filial:
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Filial:
 	Element Attribute Value Should Be  ${CHECKBOX}   name   codfil[]

Verificar o campo Local:
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Local:
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numloc[]

Verificar o campo Cargo:
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Cargo:
 	Element Attribute Value Should Be  ${CHECKBOX}   name   codcar

Verificar o campo Escala:
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Escala:
 	Element Attribute Value Should Be  ${CHECKBOX}   name   codesc

Verificar o campo Empresa Terceira:
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]/span
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[2]/table/tbody/tr/td[1]/span[2]/span/select

	Element Should Contain  ${LABEL}   Empresa Terceira:
 	Element Attribute Value Should Be  ${CHECKBOX}   name   codoem[]



#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="numemp[]"]  ${EMPRESA}

Selecionar uma opção no campo Tipo de Colaborador "${TIPO_DE_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipcol[]"]  ${TIPO_DE_COLABORADOR}

Preencher o campo Colaborador "${COLABORADOR}"
	Input Text  xpath=//*[@name="numcad"][@type="text"]  ${COLABORADOR}

Selecionar uma opção no campo Filial "${FILIAL}"
	Select From List By Label  xpath=//*[@name="codfil[]"]  ${FILIAL}

Selecionar uma opção no campo Local "${LOCAL}"
	Select From List By Label  xpath=//*[@name="numloc[]"]  ${LOCAL}

Preencher o campo Cargo "${CARGO}"
	Input Text  xpath=//*[@name="codcar"][@type="text"]  ${CARGO}

Preencher o campo Escala "${ESCALA}"
	Input Text  xpath=//*[@name="codesc"][@type="text"]  ${ESCALA}

Selecionar uma opção no campo Empresa Terceira "${EMPRESA_TERCEIRA}"
	Select From List By Label  xpath=//*[@name="codoem[]"]  ${EMPRESA_TERCEIRA}

