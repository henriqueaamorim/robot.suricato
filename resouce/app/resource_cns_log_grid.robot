*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Log de Aplicação | Consulta
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

# REPORT
resource_report.Navegar no Relatório: Log de Aplicação - Cadastro

# SCREEN
Acessar Tela Log de Aplicação (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cns_log_grid
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${SCREENNAME}  Set Variable  Log de Aplicação
  		${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
	ELSE 
		${SCREENNAME}  Set Variable    Log de Eventos do Suriplayer
		${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
	END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Log de Aplicação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Aplicação
  ${APPNAME}  Set Variable  cns_log_grid
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


# Relatório
Acessar Tela Log de Aplicação - Consulta Impressa
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Aplicação
  ${APPNAME}  Set Variable  cns_log_grid
	
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
	ELSE  #248 e 249
  	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
	END
	
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V3.png"



Acessar Tela Log de Aplicação - Consulta Impressa - Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Log de Aplicação
  ${APPNAME}  Set Variable  cns_log_grid
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V4.png"


#BUTTON
#resource_btn.



#VERIFY (FILTRO)

Verificar o campo Data
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[1]/input
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[2]/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[3]/input
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[4]/span[1]/input
		${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[4]/span[2]/input
		${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[4]/span[3]/input
	ELSE  #248 e 249
		${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[1]
		${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[2]
		${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[3]
		${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[1]
		${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[2]
		${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[3]
	END

	Element Should Contain  ${LABEL}   Data
 	Element Attribute Value Should Be  ${CAMPO1}   name  data_dia
	Element Attribute Value Should Be  ${CAMPO2}   name  data_mes
	Element Attribute Value Should Be  ${CAMPO3}   name  data_ano
	Element Attribute Value Should Be  ${CAMPO4}   name  data_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name  data_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name  data_input_2_ano

Verificar o campo Usuário
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	ELSE  #248 e 249
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	END

	Element Should Contain  ${LABEL}   Usuário
 	Element Attribute Value Should Be  ${CAMPO}   name   idusuar

Verificar o campo Evento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/select
	ELSE  #248 e 249
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/select
	END

	Element Should Contain  ${LABEL}   Evento
 	Element Attribute Value Should Be  ${CAMPO}   name   operlog

Verificar o campo IP
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
	ELSE  #248 e 249
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   IP
 	Element Attribute Value Should Be  ${CAMPO}   name   ip

Verificar o campo Aplicação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	ELSE  #248 e 249
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[3]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[4]/table/tbody/tr/td/span/select
	END

	Element Should Contain  ${LABEL}   Aplicação
 	Element Attribute Value Should Be  ${CAMPO}   name   idaplic

Verificar o campo Campo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span/select
	ELSE  #248 e 249
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[4]/table/tbody/tr/td/span/select
	END

	Element Should Contain  ${LABEL}   Campo
 	Element Attribute Value Should Be  ${CAMPO}   name   idcampo

Verificar o campo Valor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
	ELSE  #248 e 249
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[4]/table/tbody/tr/td/input
	END

	Element Should Contain  ${LABEL}   Valor
 	Element Attribute Value Should Be  ${CAMPO}   name   valor

# VERIFY (PESQUISA)

Verificar a label Data
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]
	Element Should Contain  ${LABEL}   Data

Verificar a label Hora
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]
	Element Should Contain  ${LABEL}   Hora

Verificar a label Aplicação 
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Aplicação 

Verificar a label Opção Menu
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Opção Menu

Verificar a label Usuário
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]
	Element Should Contain  ${LABEL}   Usuário

Verificar a primeira label Evento
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]
	Element Should Contain  ${LABEL}   Evento

Verificar a label IP
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]
	Element Should Contain  ${LABEL}   IP

Verificar a label Campo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]
	Element Should Contain  ${LABEL}   Campo

Verificar a label Valor
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]
	Element Should Contain  ${LABEL}   Valor

Verificar a label Seq.
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]
	Element Should Contain  ${LABEL}   Seq

Verificar a segunda label Evento
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]
	Element Should Contain  ${LABEL}   Evento



#FIELD
Preencher o campo Data 1 "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="data_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="data_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="data_ano"][@type="text"]  ${ANO}

Preencher o campo Data 2 "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="data_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="data_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="data_input_2_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Usuário "${USUÁRIO}"
	Select From List By Label  xpath=//*[@name="idusuar"]  ${USUÁRIO}

Selecionar uma opção no campo Evento "${EVENTO}"
	Select From List By Label  xpath=//*[@name="operlog"]  ${EVENTO}

Preencher o campo IP "${IP}"
	Input Text  xpath=//*[@name="ip"][@type="text"]  ${IP}

Selecionar uma opção no campo Aplicação "${APLICAÇÃO}"
	Select From List By Label  xpath=//*[@name="idaplic"]  ${APLICAÇÃO}

Selecionar uma opção no campo Campo "${CAMPO}"
	Select From List By Label  xpath=//*[@name="idcampo"]  ${CAMPO}

Preencher o campo Valor "${VALOR}"
	Input Text  xpath=//*[@name="valor"][@type="text"]  ${VALOR}

