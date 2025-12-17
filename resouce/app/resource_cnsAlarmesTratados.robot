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
resource_report.Navegar no Relatório: Alarmes Tratados - Consulta

# SCREEN
Acessar Tela Consulta de Alarmes Tratados
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Alarmes Tratados
  ${APPNAME}     Set Variable  cnsAlarmesTratados
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Alarmes Tratados - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Alarmes Tratados (Filtro)
  ${APPNAME}     Set Variable  cnsAlarmesTratados
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.



#VERIFY

Verificar a label Data do Tratamento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[1]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data do Tratamento

Verificar a label Hora do Tratamento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[2]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora do Tratamento

Verificar a label Codin
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[3]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Codin

Verificar a label IP
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[4]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font
	END
	Element Should Contain  ${LABEL}   IP

Verificar a label Descrição
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[5]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Alarme
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[6]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Alarme

Verificar a label Descrição Alarme
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font
	Element Should Contain  ${LABEL}   Descrição Alarme

Verificar a label Data do Alarme
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[7]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data do Alarme

Verificar a label Hora do Alarme
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[8]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora do Alarme

Verificar a label Planta
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[9]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Planta

Verificar a label Usuário
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[10]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font
	END
	Element Should Contain  ${LABEL}   Usuário



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Planta
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   tbalarmtrata_codiplan[]

Verificar o campo Codin
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   tbalarmtrata_codicole[]

Verificar o campo IP
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   IP
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcodin_numeendecole

Verificar o campo Grupo
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Grupo
 	Element Attribute Value Should Be  ${CAMPO}   name   filgrupo[]

Verificar o campo Alarme
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Alarme
 	Element Attribute Value Should Be  ${CAMPO}   name   tbalarmtrata_codisind[]

Verificar o campo Data do Alarme
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Data do Alarme
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbalarmtrata_dataalar_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   tbalarmtrata_dataalar_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   tbalarmtrata_dataalar_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   tbalarmtrata_dataalar_input_2_dia  
	Element Attribute Value Should Be  ${CAMPO5}   name   tbalarmtrata_dataalar_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   tbalarmtrata_dataalar_input_2_ano

Verificar o campo Hora do Alarme
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Hora do Alarme
 	Element Attribute Value Should Be  ${CAMPO1}   name   filtro_hora_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   filtro_hora_min
	Element Attribute Value Should Be  ${CAMPO3}   name   filtro_hora_seg
	Element Attribute Value Should Be  ${CAMPO4}   name   filtro_hora_input_2_hor
	Element Attribute Value Should Be  ${CAMPO5}   name   filtro_hora_input_2_min
	Element Attribute Value Should Be  ${CAMPO6}   name   filtro_hora_input_2_seg


Verificar o campo Tipo Alarme
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo Alarme
 	Element Attribute Value Should Be  ${CAMPO}   name   tbalarmtrata_tipoalar


#FIELD
Selecionar uma opção no campo Planta "${PLANTA}"
	Select From List By Label  xpath=//*[@name="tbalarmtrata_codiplan[]"]  ${PLANTA}

Selecionar uma opção no campo Codin "${CODIN}"
	Select From List By Label  xpath=//*[@name="tbalarmtrata_codicole[]"]  ${CODIN}

Preencher o campo IP "${IP}"
	Input Text  xpath=//*[@name="tbcodin_numeendecole"][@type="text"]  ${IP}

Selecionar uma opção no campo Grupo "${GRUPO}"
	Select From List By Label  xpath=//*[@name="filgrupo[]"]  ${GRUPO}

Selecionar uma opção no campo Alarme "${ALARME}"
	Select From List By Label  xpath=//*[@name="tbalarmtrata_codisind[]"]  ${ALARME}

Preencher o campo Data do Alarme inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbalarmtrata_dataalar_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbalarmtrata_dataalar_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbalarmtrata_dataalar_ano"][@type="text"]  ${ANO}

Preencher o campo Data do Alarme final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbalarmtrata_dataalar_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbalarmtrata_dataalar_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbalarmtrata_dataalar_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Hora do Alarme inicial "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="filtro_hora_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="filtro_hora_min"][@type="text"]  ${MIN}

Preencher o campo Hora do Alarme final "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="filtro_hora_input_2_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="filtro_hora_input_2_min"][@type="text"]  ${MIN}

Selecionar uma opção no campo Tipo Alarme "${TIPO_ALARME}"
	Select From List By Label  xpath=//*[@name="tbalarmtrata_tipoalar"]  ${TIPO_ALARME}

