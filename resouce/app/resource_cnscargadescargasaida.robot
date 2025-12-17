*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo | Saída


Acessar Tela Movimentação de Veículos Saída (Consulta)
  ${OBJ}      Set Variable  SCN
  ${APPNAME}  Set Variable  cnscargadescargasaida
  ${SCREENNAME}  Set Variable   Movimentação de Veículos Saída
  ${ELEMENT}     Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



# SCREEN
Acessar Tela Movimentação de Veículos Saída (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnscargadescargasaida
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Movimentação de Veículos Saída
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Movimentação de Veículos Saída 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Movimentação de Veículos Saída - Filtro
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnscargadescargasaida
  ${SCREENNAME}  Set Variable  Movimentação de Veículos Saída 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

    
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.



#VERIFY  CAMPOS (Filtro)

Verificar a label Pesquisa
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Placa
	IF   "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Placa')]
	${CAMPO}  	  Set Variable  xpath=//input[@name='placaveiculo']
  ${BUSCA}      Set Variable  xpath=(//a[@title='Buscar dados externos'])[1]
  Sleep  2s
	Element Attribute Value Should Be  ${CAMPO}   name    placaveiculo
  Element Attribute Value Should Be  ${BUSCA}   title   Buscar dados externos
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input[1]
    Element Attribute Value Should Be  ${CAMPO}   name   idveic
	END
	Element Should Contain  ${LABEL}   Placa
 	

Verificar o campo Data Chegada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${LABEL}        Set Variable  xpath=//td[contains(text(),'Data Chegada')]
  ${CAMPO1}  	  Set Variable  xpath=//input[@name='datachegveic_dia']
  ${CAMPO2}  	  Set Variable  xpath=//input[@name='datachegveic_mes']
  ${CAMPO3}  	  Set Variable  xpath=//input[@name='datachegveic_ano']
  ${CAMPO4}  	  Set Variable  xpath=//input[@name='horachegveic_hor']
  ${CAMPO5}  	  Set Variable  xpath=//input[@name='horachegveic_min']
  Element Attribute Value Should Be  ${CAMPO1}   name   datachegveic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datachegveic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datachegveic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   horachegveic_hor
  Element Attribute Value Should Be  ${CAMPO5}   name   horachegveic_min
  ELSE
  ${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
  ${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/select
  ${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[1]
  ${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[2]
  ${CAMPO4}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[3]
  Element Attribute Value Should Be  ${CAMPO1}   name   datachegveic_cond
  Element Attribute Value Should Be  ${CAMPO2}   name   datachegveic_dia
  Element Attribute Value Should Be  ${CAMPO3}   name   datachegveic_mes
  Element Attribute Value Should Be  ${CAMPO4}   name   datachegveic_ano
  END
  Element Should Contain  ${LABEL}   Data Chegada

Verificar o campo Hora Chegada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${LABEL}        Set Variable  xpath=//td[contains(text(),'Hora Chegada')]
  ${CAMPO1}  	  Set Variable  xpath=//input[@name='horachegveic_input_2_hor']
  ${CAMPO2}  	  Set Variable  xpath=//input[@name='horachegveic_input_2_min']
  Element Attribute Value Should Be  ${CAMPO1}   name  horachegveic_input_2_hor
  Element Attribute Value Should Be  ${CAMPO2}   name  horachegveic_input_2_min
  ELSE
  ${LABEL}        Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
  ${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/select
  ${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr[1]/td/input[1]
  ${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr[1]/td/input[2]
  Element Attribute Value Should Be  ${CAMPO1}   name   horachegveic_cond
  Element Attribute Value Should Be  ${CAMPO2}   name   horachegveic_hor
  Element Attribute Value Should Be  ${CAMPO3}   name   horachegveic_min
  END
  Element Should Contain  ${LABEL}   Hora Chegada

Verificar o campo Motorista
    IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Motorista')]
	${CAMPO}  	  Set Variable  xpath=//input[@name='idvisi']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input[1]
    END
	Element Should Contain  ${LABEL}   Motorista
 	Element Attribute Value Should Be  ${CAMPO}   name   idvisi



#VERIFY LABELS

Verificar a label Placa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Placa')]
	ELSE
    ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
  END
  Sleep  2s
  Element Should Contain  ${LABEL}   Placa

Verificar a label Data Chegada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Chegada')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Data Chegada

Verificar a label Hora Chegada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Chegada')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Hora Chegada

Verificar a label Motorista
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Motorista')]
	ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Motorista


#FIELD
Preencher o campo Placa "${PLACA}"
	Input Text  xpath=//*[@name="idveic"][@type="text"]  ${PLACA}

Selecionar uma opção no campo Data Chegada "${DATA_CHEGADA}"
	Select From List By Label  xpath=//*[@name="datachegveic_cond"]  ${DATA_CHEGADA}

Preencher o campo Data Chegada "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datachegveic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datachegveic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datachegveic_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Hora Chegada "${HORA_CHEGADA}"
	Select From List By Label  xpath=//*[@name="horachegveic_cond"]  ${HORA_CHEGADA}

Preencher o campo Hora Chegada "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horachegveic_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horachegveic_min"][@type="text"]  ${MIN}

Preencher o campo Motorista "${MOTORISTA}"
	Input Text  xpath=//*[@name="idvisi"][@type="text"]  ${MOTORISTA}

