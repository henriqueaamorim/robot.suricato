*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Agendamento

# SCREEN
Acessar Tela: Agendamentos
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsAgendamentosVeiculos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${SCREENNAME}  Set Variable   Agendamentos
	 ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Agendamentos
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
  sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Agendamento de veículo - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamentos
  ${APPNAME}     Set Variable  cnsAgendamentosVeiculos
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
#BUTTON
#resource_btn.



#VERIFY LABEL

Verificar a label Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Veículo

Verificar a label: Id veículo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Id veículo')]
	Element Should Contain  ${LABEL}  	Id veículo

Verificar a label Data de Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Saída')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data de Saída

Verificar a label Hora de Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora de Saída')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora de Saída

Verificar o campo: Hora saída	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora de saída')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-SC_motiusoveic-container']
	Element Should Contain             ${LABEL}   Hora de saída	
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_motiusoveic-container 

Verificar a label: Motivo saída
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo saída')]
	Element Should Contain  ${LABEL}  	Motivo saída

Verificar a label Data de Retirada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data de Retirada')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data de Retirada

Verificar a label Hora de Retirada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora de Retirada')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora de Retirada

Verificar a label: Destino
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Destino')]
	Element Should Contain  ${LABEL}  Destino

Verificar a label Agendamento de Utilização do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Agendamento de Utilização do Veículo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Agendamento de Utilização do Veículo

Verificar a label Cód. Colaborador Solicitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Cód. Colaborador Solicitante')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Cód. Colaborador Solicitante

Verificar a label Cód Colaborador para Liberação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Cód Colaborador para Liberação')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Cód Colaborador para Liberação

Verificar a label Motivo de Uso
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo de Uso')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Motivo de Uso



#VERIFY CAMPOS

Verificar o campo: Veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name  idveic	
 	

Verificar o campo Data de Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Data de Saída')]
		${CAMPO1}   Set Variable  xpath=//input[@name='datasaidveic_dia']
		${CAMPO2}   Set Variable  xpath=//input[@name='datasaidveic_mes']
		${CAMPO3}   Set Variable  xpath=//input[@name='datasaidveic_ano']
		${CAMPO4}   Set Variable  xpath=//input[@name='datasaidveic_input_2_dia']
		${CAMPO5}   Set Variable  xpath=//input[@name='datasaidveic_input_2_mes']
		${CAMPO6}   Set Variable  xpath=//input[@name='datasaidveic_input_2_ano']
	Element Attribute Value Should Be  ${CAMPO1}   name   datasaidveic_dia
 	Element Attribute Value Should Be  ${CAMPO2}   name   datasaidveic_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   datasaidveic_ano	
	Element Attribute Value Should Be  ${CAMPO4}   name   datasaidveic_input_2_dia	
	Element Attribute Value Should Be  ${CAMPO5}   name   datasaidveic_input_2_mes	
	Element Attribute Value Should Be  ${CAMPO6}   name   datasaidveic_input_2_ano	
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input[2]
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input[3]
	Element Attribute Value Should Be  ${CAMPO1}   name   datasaidveic_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   datasaidveic_dia
	Element Attribute Value Should Be  ${CAMPO3}   name   datasaidveic_mes
 	Element Attribute Value Should Be  ${CAMPO4}   name   datasaidveic_ano
	END
	Element Should Contain  ${LABEL}   Data de Saída
	
 

Verificar o campo Hora de Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Hora de Saída')]
		${CAMPO1}   Set Variable  xpath=//input[@name='horasaidveic']
		${CAMPO2}   Set Variable  xpath=//input[@name='horasaidveic_input_2']
	Element Attribute Value Should Be  ${CAMPO1}  name   horasaidveic
	Element Attribute Value Should Be  ${CAMPO2}  name   horasaidveic_input_2
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/input
 	Element Attribute Value Should Be  ${CAMPO1}   name   horasaidveic_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   horasaidveic
	END
	Element Should Contain  ${LABEL}   Hora de Saída

Verificar o campo: Motivo saída	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Motivo saída')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-SC_motiusoveic-container']
	Element Should Contain             ${LABEL}   Motivo saída	
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_motiusoveic-container  	

Verificar o campo Data de Retirada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Data de Retirada')]
		${CAMPO1}   Set Variable  xpath=//input[@name='datareti_dia']
		${CAMPO2}   Set Variable  xpath=//input[@name='datareti_mes']
		${CAMPO3}   Set Variable  xpath=//input[@name='datareti_ano']
		${CAMPO4}   Set Variable  xpath=//input[@name='datareti_input_2_dia']
		${CAMPO5}   Set Variable  xpath=//input[@name='datareti_input_2_mes']
		${CAMPO6}   Set Variable  xpath=//input[@name='datareti_input_2_ano']
	Element Attribute Value Should Be  ${CAMPO1}   name   datareti_dia
 	Element Attribute Value Should Be  ${CAMPO2}   name   datareti_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   datareti_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   datareti_input_2_dia	
	Element Attribute Value Should Be  ${CAMPO5}   name   datareti_input_2_mes	
	Element Attribute Value Should Be  ${CAMPO6}   name   datareti_input_2_ano	
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input[2]
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input[3]
	Element Attribute Value Should Be  ${CAMPO1}   name   datareti_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   datareti_dia
	Element Attribute Value Should Be  ${CAMPO3}   name   datareti_mes
	Element Attribute Value Should Be  ${CAMPO4}   name   datareti_ano
	END
	Element Should Contain  ${LABEL}   Data de Retirada
 

Verificar o campo Hora de Retirada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Hora de Retirada')]
		${CAMPO1}   Set Variable  xpath=//input[@name='horaretiguar_IN']
	Element Attribute Value Should Be  ${CAMPO1}   name   horaretiguar_IN
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[3]/table/tbody/tr/td/input
	Element Attribute Value Should Be  ${CAMPO1}   name   horaretiguar_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   horaretiguar
	END
	Element Should Contain  ${LABEL}   Hora de Retirada
 	

Verificar o campo Agendamento de Utilização do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Agendamento de Utilização do Veículo')]
		${CAMPO}   Set Variable  xpath=//input[@name='veicagenutil']
	Element Attribute Value Should Be  ${CAMPO}   name   veicagenutil	
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr/td/input
	Element Attribute Value Should Be  ${CAMPO1}   name   veicagenutil_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   veicagenutil
	END
	Element Should Contain  ${LABEL}   Agendamento de Utilização do Veículo
 

Verificar o campo Cód. Colaborador Solicitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Cód. Colaborador Solicitante')]
		${CAMPO}   Set Variable  xpath=//input[@name='idcolabsol']
	Element Attribute Value Should Be  ${CAMPO}   name   idcolabsol
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[3]/table/tbody/tr/td/input
	Element Attribute Value Should Be  ${CAMPO1}   name   idcolabsol_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   idcolabsol
	END
	Element Should Contain  ${LABEL}   Cód. Colaborador Solicitante
 
Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa  


#FIELD



#FIELD
Selecionar uma opção no campo Veículo "${VEÍCULO}"
	Select From List By Label  xpath=//*[@name="idveic_cond"]  ${VEÍCULO}

Preencher o campo Veículo "${VEÍCULO}"
	Input Text  xpath=//*[@name="idveic"][@type="text"]  ${VEÍCULO}

Selecionar uma opção no campo Data de Saída "${DATA_DE_SAÍDA}"
	Select From List By Label  xpath=//*[@name="datasaidveic_cond"]  ${DATA_DE_SAÍDA}

Preencher o campo Data de Saída "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datasaidveic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datasaidveic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datasaidveic_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Hora de Saída "${HORA_DE_SAÍDA}"
	Select From List By Label  xpath=//*[@name="horasaidveic_cond"]  ${HORA_DE_SAÍDA}

Preencher o campo Hora de Saída "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horasaidveic"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horasaidveic"][@type="text"]  ${MIN}

Selecionar uma opção no campo Data de Retirada "${DATA_DE_RETIRADA}"
	Select From List By Label  xpath=//*[@name="datareti_cond"]  ${DATA_DE_RETIRADA}

Preencher o campo Data de Retirada "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datareti_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datareti_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datareti_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Hora de Retirada "${HORA_DE_RETIRADA}"
	Select From List By Label  xpath=//*[@name="horaretiguar_cond"]  ${HORA_DE_RETIRADA}

Preencher o campo Hora de Retirada "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaretiguar"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaretiguar"][@type="text"]  ${MIN}

Selecionar uma opção no campo Agendamento de Utilização do Veículo "${AGENDAMENTO_DE_UTILIZAÇÃO_DO_VEÍCULO}"
	Select From List By Label  xpath=//*[@name="veicagenutil_cond"]  ${AGENDAMENTO_DE_UTILIZAÇÃO_DO_VEÍCULO}

Preencher o campo Agendamento de Utilização do Veículo "${AGENDAMENTO_DE_UTILIZAÇÃO_DO_VEÍCULO}"
	Input Text  xpath=//*[@name="veicagenutil"][@type="text"]  ${AGENDAMENTO_DE_UTILIZAÇÃO_DO_VEÍCULO}

Selecionar uma opção no campo Cód. Colaborador Solicitante "${CÓD._COLABORADOR_SOLICITANTE}"
	Select From List By Label  xpath=//*[@name="idcolabsol_cond"]  ${CÓD._COLABORADOR_SOLICITANTE}

Preencher o campo Cód. Colaborador Solicitante "${CÓD._COLABORADOR_SOLICITANTE}"
	Input Text  xpath=//*[@name="idcolabsol"][@type="text"]  ${CÓD._COLABORADOR_SOLICITANTE}

