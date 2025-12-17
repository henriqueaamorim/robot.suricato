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
resource_report.Navegar no Relatório: Tipo de Alarme

# SCREEN
Acessar Tela Relatório de Tipos de Alarme - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Tipos de Alarme
  ${APPNAME}     Set Variable  consRelatorioAlarmesTransito
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Relatório de Tipos de Alarme
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Tipos de Alarme
  ${APPNAME}     Set Variable  consRelatorioAlarmesTransito
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
Preencher campo Data
#Primero campo
  Input Text    name=dataalartran_dia    02
  Input Text    name=dataalartran_mes    02
  Input Text    name=dataalartran_ano    2022

#Segundo campo
  Input Text    name=dataalartran_input_2_dia    02
  Input Text    name=dataalartran_input_2_mes    02
  Input Text    name=dataalartran_input_2_ano    2022

Preencher campo Hora do Alarme
  Input Text    name=horaalartran_hor       12
  Input Text    horaalartran_input_2_hor    12

Preencher campo Grupo de Camêras ${OPCAO}
  Select from List by Label  name=codigrupcame   ${OPCAO}

Preencher campo Status Alarme ${OPCAO}
  Select from List by Label  name=statalar       ${OPCAO}



#VERIFY (Filtro)

Verificar o campo Data do Alarme
	${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Data do Alarme
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataalartran_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataalartran_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataalartran_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   dataalartran_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   dataalartran_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   dataalartran_input_2_ano

Verificar o campo Hora do Alarme
	${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr[2]/td/input[2]
	
	Element Should Contain  ${LABEL}   Hora do Alarme
 	Element Attribute Value Should Be  ${CAMPO1}   name   horaalartran_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   horaalartran_min
	Element Attribute Value Should Be  ${CAMPO3}   name   horaalartran_input_2_hor
	Element Attribute Value Should Be  ${CAMPO4}   name   horaalartran_input_2_min

Verificar o campo Tipo do Alarme
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Tipo do Alarme
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoalar[]

Verificar o campo Grupo de Câmeras
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Grupo de Câmeras
 	Element Attribute Value Should Be  ${CAMPO}   name   codigrupcame

Verificar o campo Status Alarme
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Status Alarme
 	Element Attribute Value Should Be  ${CAMPO}   name   statalar
