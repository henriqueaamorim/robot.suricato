*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Cadastro de Tipo de Refeição

# SCREEN
Acessar Tela Cadastro de Tipo de Refeição
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Tipo de Refeição
  ${APPNAME}  Set Variable  frmTipoRefeicao
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Cód. Empresa "${EMPRESA}"
  Input Text  xpath=//*[@name="codiempr"][@type="text"]  ${EMPRESA}
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[1]

Selecionar uma opção no campo Cód. Planta "${PLANTA}"
  Select from list by label  xpath=//*[@name="codiplan"]  ${PLANTA}

Preencher o campo Data Inicial "${DATA}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA}

Preencher o campo Data Final "${DATA}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}

Preencher o campo Horário Inicial "${HORARIO}"
  Input Text  xpath=//*[@name="horainic"][@type="text"]  ${HORARIO}

Preencher o campo Horário Final "${HORARIO}"
  Input Text  xpath=//*[@name="horafina"][@type="text"]  ${HORARIO}

Preencher o campo Função "${FUNCAO}"
  Input Text  xpath=//*[@name="funcconsu"][@type="text"]  ${FUNCAO}

Selecionar uma opção no campo Tipo de Refeição "${REFEICAO}"
  Select from list by label  xpath=//*[@name="desctiporefe"]  ${REFEICAO}

Preencher o campo Valor "${VALOR}"
  Input Text  xpath=//*[@name="valorefe"][@type="text"]  ${VALOR}

Selecionar uma opção no campo Subsidio "${SUBSIDIO}"
  Select from list by label  xpath=//*[@name="subsidio"]  ${SUBSIDIO}

Preencher o campo Turno "${TURNO}"
  Input Text  xpath=//*[@name="turno"][@type="text"]  ${TURNO}

Selecionar uma opção no campo Status "${STATUS}"
  Select from list by label  xpath=//*[@name="stahist"]  ${STATUS}



#VERIFY

Verificar o campo Cód. Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Cód. Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Cód. Planta *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Cód. Planta *
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan

Verificar o campo Data Inicial *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Inicial *
 	Element Attribute Value Should Be  ${CAMPO}   name   datainic

Verificar o campo Data Final
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Final
 	Element Attribute Value Should Be  ${CAMPO}   name   datafina

Verificar o campo Horário Inicial *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input
	
	Element Should Contain  ${LABEL}   Horário Inicial *
 	Element Attribute Value Should Be  ${CAMPO}   name   horainic

Verificar o campo Horário Final *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}   Horário Final *
 	Element Attribute Value Should Be  ${CAMPO}   name   horafina

Verificar o campo Função
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}   Função
 	Element Attribute Value Should Be  ${CAMPO}   name   funcconsu

Verificar o campo Tipo de Refeição *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo de Refeição *
 	Element Attribute Value Should Be  ${CAMPO}   name   desctiporefe

Verificar o campo Valor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input
	
	Element Should Contain  ${LABEL}   Valor
 	Element Attribute Value Should Be  ${CAMPO}   name   valorefe

Verificar o campo Subsidio *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[10]/td[2]/select
	
	Element Should Contain  ${LABEL}   Subsidio *
 	Element Attribute Value Should Be  ${CAMPO}   name   subsidio

Verificar o campo Turno
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Turno
 	Element Attribute Value Should Be  ${CAMPO}   name   turno

Verificar o campo Status *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[12]/td[2]/select
	
	Element Should Contain  ${LABEL}   Status *
 	Element Attribute Value Should Be  ${CAMPO}   name   stahist
