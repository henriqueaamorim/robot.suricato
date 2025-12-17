*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo | Entrada

# SCREEN
Acessar Tela: Movimentação de Veículos Entrada (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnscargadescargaentrada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Movimentação de Veículos Entrada
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Movimentação de Veículos Entrada (Busca) 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Movimentação de Veículos Entrada (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnscargadescargaentrada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Movimentação de Veículos Entrada
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE		
  ${SCREENNAME}  Set Variable  Movimentação de Veículos Entrada (Filtro)  
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON


#FIELD
Preencher o campo Placa "${PLACA}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${PLACA}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]

Preencher o campo Data Chegada "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datachegveic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datachegveic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datachegveic_ano"][@type="text"]  ${ANO}

Preencher o campo Hora Chegada "${HORA}:${MIN}"
  Input Text  xpath=//*[@name="horachegveic_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horachegveic_min"][@type="text"]  ${MIN}

Preencher o campo Motorista "${MOTO}"
  Input Text  xpath=//*[@name="idvisi"][@type="text"]  ${MOTO}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]

#VERIFY

Verificar a label Placa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Placa')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Sleep  2s
	Element Should Contain  ${LABEL}   Placa

Verificar a label Data Chegada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Chegada')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data Chegada

Verificar a label Hora Chegada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Chegada')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora Chegada

Verificar a label Motorista
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Motorista')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Motorista



#VERIFY CAMPOS (Filtro)

Verificar a label Pesquisa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Placa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Placa')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='placaveiculo']
		${BUSCA}  	  Set Variable  xpath=(//a[@title='Buscar dados externos'])[1]
		Element Should Contain  ${LABEL}   Placa
 		Element Attribute Value Should Be  ${CAMPO1}   name   placaveiculo
		Element Attribute Value Should Be  ${BUSCA}   title   Buscar dados externos
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input[1]

		Element Should Contain  ${LABEL}   Placa
 		Element Attribute Value Should Be  ${CAMPO}   name   idveic
	END
Verificar o campo Data Chegada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Chegada')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='datachegveic_dia']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='datachegveic_mes']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='datachegveic_ano']
		${CAMPO4}  	  Set Variable  xpath=//input[@name='datachegveic_input_2_dia']
		${CAMPO5}  	  Set Variable  xpath=//input[@name='datachegveic_input_2_mes']
		${CAMPO6}  	  Set Variable  xpath=//input[@name='datachegveic_input_2_ano']
	Element Attribute Value Should Be  ${CAMPO1}   name   datachegveic_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   datachegveic_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   datachegveic_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   datachegveic_input_2_dia	
	Element Attribute Value Should Be  ${CAMPO5}   name   datachegveic_input_2_mes	
	Element Attribute Value Should Be  ${CAMPO6}   name   datachegveic_input_2_ano	
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
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora Chegada')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='horachegveic_hor']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='horachegveic_min']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='horachegveic_input_2_hor']
		${CAMPO4}  	  Set Variable  xpath=//input[@name='horachegveic_input_2_min']
	Element Attribute Value Should Be  ${CAMPO1}   name   horachegveic_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   horachegveic_min
	Element Attribute Value Should Be  ${CAMPO3}   name   horachegveic_input_2_hor	
	Element Attribute Value Should Be  ${CAMPO4}   name   horachegveic_input_2_min
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
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
	