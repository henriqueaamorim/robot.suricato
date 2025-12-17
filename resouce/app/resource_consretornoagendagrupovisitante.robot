*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

# SCREEN
Acessar Tela Consulta de Agendamento de Grupo de Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Agendamento de Grupo de Visitante
  ${APPNAME}  Set Variable  consretornoagendagrupovisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Switch Window  locator=NEW
  Maximize Browser Window

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta de Agendamento de Grupo de Visitante (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Agendamento de Grupo de Visitante (Filtro)
  ${APPNAME}  Set Variable  consretornoagendagrupovisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.



#VERIFY

Verificar a label Grupo Visitante
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[1]/font/b
	Element Should Contain  ${LABEL}   Grupo Visitante

Verificar a label Nome Grupo Visitante
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b
	Element Should Contain  ${LABEL}   Nome Grupo Visitante

Verificar a label Data/Hora Prevista
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	Element Should Contain  ${LABEL}   Data/Hora Prevista





#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Data Agendamento
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input[1]
  ${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input[2]
  ${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input[3]

	Element Should Contain  ${LABEL}   Data Agendamento
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbagengvisit_dataprev_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   tbagengvisit_dataprev_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   tbagengvisit_dataprev_ano

Verificar o campo Hora Agendamento
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/input[1]
  ${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/input[2]
  ${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/input[3]

	Element Should Contain  ${LABEL}   Hora Agendamento
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbagengvisit_horaprev_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   tbagengvisit_horaprev_min
  Element Attribute Value Should Be  ${CAMPO3}   name   tbagengvisit_horaprev_seg

Verificar o campo Matricula Visitado
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Matricula Visitado
 	Element Attribute Value Should Be  ${CAMPO}   name   tbagengvisit_idcolab

Verificar o campo Grupo Visitante
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[3]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Grupo Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   tbagengvisit_grupvisi

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr/td/span/select

	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codiempr

Verificar o campo Tipo de Pessoa
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[3]/table/tbody/tr/td/span/select

	Element Should Contain  ${LABEL}   Tipo de Pessoa
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_tipocola

Verificar o campo Nome Grupo Visitante
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[3]/table/tbody/tr/td/input

	Element Should Contain  ${LABEL}   Nome Grupo Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   tbgrupovisit_nomegrupvisi



#FIELD
Preencher o campo Data Agendamento "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbagengvisit_dataprev_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbagengvisit_dataprev_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbagengvisit_dataprev_ano"][@type="text"]  ${ANO}

Preencher o campo Hora Agendamento "${HORA}:${MIN}:${SEG}"
	Input Text  xpath=//*[@name="tbagengvisit_horaprev_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="tbagengvisit_horaprev_min"][@type="text"]  ${MIN}
	Input Text  xpath=//*[@name="tbagengvisit_horaprev_seg"][@type="text"]  ${SEG}

Preencher o campo Matricula Visitado "${MATRICULA_VISITADO}"
	Input Text  xpath=//*[@name="tbagengvisit_idcolab"][@type="text"]  ${MATRICULA_VISITADO}

Preencher o campo Grupo Visitante "${GRUPO_VISITANTE}"
	Input Text  xpath=//*[@name="tbagengvisit_grupvisi"][@type="text"]  ${GRUPO_VISITANTE}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="tbcolab_codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo de Pessoa "${TIPO_DE_PESSOA}"
	Select From List By Label  xpath=//*[@name="tbcolab_tipocola"]  ${TIPO_DE_PESSOA}

Preencher o campo Nome Grupo Visitante "${NOME_GRUPO_VISITANTE}"
	Input Text  xpath=//*[@name="tbgrupovisit_nomegrupvisi"][@type="text"]  ${NOME_GRUPO_VISITANTE}

