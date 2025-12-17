*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

# SCREEN
Acessar Tela Consulta de Histórico por Veiculos
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consHistoricoVeiculos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
 	  ${SCREENNAME}  Set Variable  Veículo de Colaborador
	  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
	 ${SCREENNAME}  Set Variable  Consulta de Histórico por Veiculos  
   	 ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela: Veículo de Colaborador (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consHistoricoVeiculos
  ${SCREENNAME}  Set Variable  Veículo de Colaborador
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
 
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#VERIFY LABELS

Verificar a label Cód. Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[2]/a/span
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Cód. Veículo

Verificar a label Placa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Placa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Placa

Verificar a label Marca
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Marca')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Marca

Verificar a label Modelo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Modelo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Modelo

Verificar a label Cor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Cor')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Cor

Verificar a label Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Data Início
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Início')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[9]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data Início

Verificar a label Hora Início
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Início')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[9]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora Início

Verificar a label Data Fim
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Fim')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[10]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data Fim

Verificar a label Hora Fim
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Fim')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[10]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora Fim

Verificar a label Grupo de Acesso
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[11]/a/span
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[11]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Grupo de Acesso

Verificar a label Grupo
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Grupo')]
	Element Should Contain  ${LABEL}   Grupo 

Verificar a label Status do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[12]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[12]/font/b
	END
	Element Should Contain  ${LABEL}   Status do Veículo


#VERIFY CAMPOS

Verificar a label: Pesquisa
	${LABEL}   Set Variable   xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain    ${LABEL}    Pesquisa

Verificar o campo: Código do Veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código do Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Código do Veículo	
 	Element Attribute Value Should Be  ${CAMPO}   name  idveic

Verificar o campo: Crachá
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Crachá')]
	${CAMPO}      Set Variable  xpath=//input[@name='icardv']
	Element Should Contain             ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name  icardv

Verificar o campo: Data Início
  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Início')]
  ${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']

  Element Should Contain             ${LABEL}    Data Início
  Element Attribute Value Should Be  ${CAMPO1}   name   datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datainic_input_2_ano

Verificar o campo: Data Fim
  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Fim')]
  ${CAMPO1}      Set Variable  xpath=//input[@name='datafim_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datafim_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datafim_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datafim_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datafim_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datafim_input_2_ano']

  Element Should Contain             ${LABEL}    Data Fim
  Element Attribute Value Should Be  ${CAMPO1}   name   datafim_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datafim_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datafim_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datafim_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datafim_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datafim_input_2_ano


Verificar o campo: Placa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Placa')]
	${CAMPO}      Set Variable  xpath=//input[@name='placveic']
	Element Should Contain             ${LABEL}   Placa
 	Element Attribute Value Should Be  ${CAMPO}   name  placveic

Verificar o campo: Marca
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Marca')]
	${CAMPO}      Set Variable  xpath=//input[@name='marcveic']
	Element Should Contain             ${LABEL}   Marca
 	Element Attribute Value Should Be  ${CAMPO}   name  marcveic

Verificar o campo: Modelo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Modelo')]
	${CAMPO}      Set Variable  xpath=//input[@name='modeveic']
	Element Should Contain             ${LABEL}   Modelo	
 	Element Attribute Value Should Be  ${CAMPO}   name	modeveic		

