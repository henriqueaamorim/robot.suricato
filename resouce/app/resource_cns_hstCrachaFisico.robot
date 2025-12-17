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
resource_report.Navegar no Relatório: Consulta Histórico de Crachá x Numero Fisico

# SCREEN
Acessar Tela Consulta Histórico de Crachá x Numero Fisico - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Histórico de Crachá x Numero Fisico
  ${APPNAME}     Set Variable  cns_hstCrachaFisico
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta Histórico de Crachá x Numero Fisico
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Histórico de Crachá x Número Físico
  ${APPNAME}     Set Variable  cns_hstCrachaFisico
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]


  Sleep  6s
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   a_codiempr

Verificar o campo Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo
 	Element Attribute Value Should Be  ${CAMPO}   name  a_tipocola

E verificar o campo Matrícula      
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Matrícula
	Element Attribute Value Should Be  ${CAMPO}  name  a_codimatr

E verificar o campo Nome 
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Nome
	Element Attribute Value Should Be  ${CAMPO}  name  b_nomepess

E verificar o campo Crachá Lógico   
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Crachá Lógico
	Element Attribute Value Should Be  ${CAMPO}  name  c_icard

E verificar o campo Data de Início      
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/select
	${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr[1]/td/input[1]
  ${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr[1]/td/input[2]
  ${CAMPO4}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr[1]/td/input[3]

	Element Should Contain  ${LABEL}   Data de Início
	Element Attribute Value Should Be  ${CAMPO1}  name  c_datainic_cond
  Element Attribute Value Should Be  ${CAMPO2}  name  c_datainic_dia
  Element Attribute Value Should Be  ${CAMPO3}  name  c_datainic_mes
  Element Attribute Value Should Be  ${CAMPO4}  name  c_datainic_ano

E verificar o campo Hora de Início      
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/select
  ${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[3]/table/tbody/tr[1]/td/input[1]
  ${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[3]/table/tbody/tr[1]/td/input[2]
	
	Element Should Contain  ${LABEL}  Hora de Início
	Element Attribute Value Should Be  ${CAMPO1}  name  c_horainic_cond
  Element Attribute Value Should Be  ${CAMPO2}  name  c_horainic_hor
  Element Attribute Value Should Be  ${CAMPO3}  name  c_horainic_min

E verificar o campo Crachá Físico   
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Crachá Físico
	Element Attribute Value Should Be  ${CAMPO}  name  d_numefisicrac


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="a_codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo "${TIPO}"
	Select From List By Label  xpath=//*[@name="a_tipocola"]  ${TIPO}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="a_codimatr"][@type="text"]  ${MATRÍCULA}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="b_nomepess"][@type="text"]  ${NOME}

Preencher o campo Crachá Lógico "${CRACHÁ_LÓGICO}"
	Input Text  xpath=//*[@name="c_icard"][@type="text"]  ${CRACHÁ_LÓGICO}

Selecionar uma opção no campo Data de Início "${DATA_DE_INÍCIO}"
	Select From List By Label  xpath=//*[@name="c_datainic_cond"]  ${DATA_DE_INÍCIO}

Preencher o campo Data de Início "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="c_datainic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="c_datainic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="c_datainic_ano"][@type="text"]  ${ANO}

Preencher o campo Data de Final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="c_datainic_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="c_datainic_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="c_datainic_input_2_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Hora de Início "${HORA_DE_INÍCIO}"
	Select From List By Label  xpath=//*[@name="c_horainic_cond"]  ${HORA_DE_INÍCIO}

Preencher o campo Hora de Início "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="c_horainic_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="c_horainic_min"][@type="text"]  ${MIN}

Preencher o campo Hora final "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="c_horainic_input_2_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="c_horainic_input_2_min"][@type="text"]  ${MIN}

Preencher o campo Crachá Físico "${CRACHÁ_FÍSICO}"
	Input Text  xpath=//*[@name="d_numefisicrac"][@type="text"]  ${CRACHÁ_FÍSICO}

