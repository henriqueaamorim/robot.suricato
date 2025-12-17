*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Consulta de Programações

# SCREEN
Acessar Tela Consulta de Programações - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Programações
  ${APPNAME}     Set Variable  ctrprogramacoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Matrícula
  ${ELEMENT}  Set Variable  id=cap_idcolab

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#VERIFY (Filtro)

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Tipo de Empregado
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
	
	Element Should Contain  ${LABEL}   Tipo de Empregado
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola[]

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar o campo Data Inicial *
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}   Data Inicial *
 	Element Attribute Value Should Be  ${CAMPO}   name   datainic


#FIELD
Preencher o campo Empresa "${EMPRESA}"
	Input Text  xpath=//*[@name="codiempr"][@type="text"]  ${EMPRESA}
	
Selecionar uma opção no campo Tipo de Empregado "${TIPO}"
	Select From List By Label  xpath=//*[@name="tipocola[]"]  ${TIPO}

Preencher o campo Matrícula "${MATRICULA}"
	Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${MATRICULA}
	
Preencher o campo Data Inicial "${DATA}"
  Input Text    xpath=//*[@name="datainic"][@type="text"]     ${DATA}