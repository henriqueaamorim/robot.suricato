
*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículo | Frota | Utilização Veículos | Agendamentos de Veículos - Frota 

# SCREEN
Acessar Tela: Agendamento de veículo
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsAgendamentosVeiculos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
     ${SCREENNAME}  Set Variable   Agendamento de veículo
	 ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Agendamentos
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Agendamento de veículo - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de veículo
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

Verificar a label: Id veículo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Id veículo')]
	Element Should Contain  ${LABEL}  	Id veículo

Verificar a label: Data saída
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data saída')]
	Element Should Contain  ${LABEL}  	Data saída

Verificar a label: Hora saída
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora saída')]
	Element Should Contain  ${LABEL}  	Hora saída

Verificar a label: Motivo saída
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo saída')]
	Element Should Contain  ${LABEL}  	Motivo saída

Verificar a label: Data retirada
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data retirada')]
	Element Should Contain  ${LABEL}  	Data retirada

Verificar a label: Hora retirada
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora retirada')]
	Element Should Contain  ${LABEL}  	Hora retirada	

Verificar a label: Destino
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Destino')]
	Element Should Contain  ${LABEL}  	Destino


#VERIFY CAMPOS

Verificar o campo: Id veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Id veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Id veículo	
 	Element Attribute Value Should Be  ${CAMPO}   name  idveic
	
Verificar o campo: Data saída	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data saída')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datasaidveic_dia']
	${CAMPO2}      Set Variable  xpath=//input[@name='datasaidveic_mes']
	${CAMPO3}      Set Variable  xpath=//input[@name='datasaidveic_ano']
	Element Should Contain             ${LABEL}   Data saída	
 	Element Attribute Value Should Be  ${CAMPO1}   name  datasaidveic_dia
	Element Attribute Value Should Be  ${CAMPO2}   name  datasaidveic_mes
	Element Attribute Value Should Be  ${CAMPO3}   name  datasaidveic_ano

Verificar o campo: Hora saída	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora saída')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horasaidveic_hor']
	${CAMPO2}      Set Variable  xpath=//input[@name='horasaidveic_min']
	${CAMPO3}      Set Variable  xpath=//input[@name='horasaidveic_seg']
	Element Should Contain             ${LABEL}   Hora saída	
 	Element Attribute Value Should Be  ${CAMPO1}   name  horasaidveic_hor
	Element Attribute Value Should Be  ${CAMPO2}   name  horasaidveic_min
	Element Attribute Value Should Be  ${CAMPO3}   name  horasaidveic_seg

Verificar o campo: Motivo saída	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Motivo saída')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-SC_motiusoveic-container']
	Element Should Contain             ${LABEL}   Motivo saída	
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_motiusoveic-container  


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

