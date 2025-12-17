*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

# SCREEN
Acessar Tela Aprovação de Agendamentos - Frota
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Aprovação de Agendamentos - Frota
  ${APPNAME}     Set Variable  cnsAprovacaoAgendamentoFrota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE	
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Aprovação de Agendamentos - Frota (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Aprovação de Agendamentos - Frota
  ${APPNAME}     Set Variable  cnsAprovacaoAgendamentoFrota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}' )]
  ELSE	
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.



#VERIFY

Verificar a label Previsão de Saída
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Previsão de Saída')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Previsão de Saída

Verificar a label Previsão de Retorno
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Previsão de Retorno')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   PRevisão de Retorno

Verificar a label Veículo
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Veículo

Verificar a label Solicitante
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Solicitante')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Solicitante

Verificar a label Destino
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Destino')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Destino

Verificar a label Motivo do Uso
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo do Uso')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b
	END
	Element Should Contain  ${LABEL}   Motivo do Uso

#VERIFY CAMPOS

Verificar o campo: Veículo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name idveic

Verificar o campo: Data de partida do veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data de partida do veículo')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datasaidveic_dia']
	${CAMPO2}      Set Variable  xpath=//input[@name='datasaidveic_mes']
	${CAMPO3}      Set Variable  xpath=//input[@name='datasaidveic_ano']
	${CAMPO4}      Set Variable  xpath=//input[@name='datasaidveic_input_2_dia']
	${CAMPO5}      Set Variable  xpath=//input[@name='datasaidveic_input_2_mes']
	${CAMPO6}      Set Variable  xpath=//input[@name='datasaidveic_input_2_ano']
	Element Should Contain             ${LABEL}   Data de partida do veículo	
 	Element Attribute Value Should Be  ${CAMPO1}   name   datasaidveic_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   datasaidveic_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   datasaidveic_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   datasaidveic_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   datasaidveic_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   datasaidveic_input_2_ano

Verificar o campo: Horário de partida do veículo	 
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Horário de partida do veículo')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horasaidveic_hor']
	${CAMPO2}      Set Variable  xpath=//input[@name='horasaidveic_min']

	Element Should Contain             ${LABEL}   Horário de partida do veículo	
 	Element Attribute Value Should Be  ${CAMPO1}   name 		horasaidveic_hor
	Element Attribute Value Should Be  ${CAMPO2}   name 		horasaidveic_min



#FIELD
Preencher o campo Veículo "${VEÍCULO}"
	Input Text  xpath=//*[@name="idveic"][@type="text"]  ${VEÍCULO}

Preencher o campo Data inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datasaidveic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datasaidveic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datasaidveic_ano"][@type="text"]  ${ANO}

Preencher o campo Data final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datasaidveic_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datasaidveic_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datasaidveic_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Hora inicial "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horasaidveic_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horasaidveic_min"][@type="text"]  ${MIN}

Preencher o campo Hora final "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horasaidveic_input_2_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horasaidveic_input_2_min"][@type="text"]  ${MIN}

