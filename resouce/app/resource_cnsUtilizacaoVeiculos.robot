*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Utilização

# SCREEN
Acessar Tela Utilização de Veículos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Utilização de Veículos
  ${APPNAME}     Set Variable  cnsUtilizacaoVeiculos
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'Utilização de Veículos')]
	ELSE
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    END 

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Pesquisa
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Pesquisa -
  ${APPNAME}     Set Variable  cnsUtilizacaoVeiculos
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}'])


   Mudar Frame Aplicação "TB_iframeContent"
  
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	Wait Until Element is Visible  ${ELEMENT}
  	Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
	ELSE
		Sleep  5s
	END

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.



#VERIFY

Verificar a label Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=(//div[contains(text(),'Veículo')])[1]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Veículo

Verificar a label Placa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Placa')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Placa

Verificar a label Modelo Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Modelo Veículo')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Modelo Veículo

Verificar a label Data Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Saída')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data Saída

Verificar a label Hora Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Saída')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora Saída

Verificar a label Cód. Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Cód. Empresa')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Cód. Empresa

Verificar a label Tipo Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo Colaborador')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Tipo Colaborador

Verificar a label Cód Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Cód Matrícula')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Cód Matrícula

Verificar a label Nome Pessoa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome Pessoa')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Nome Pessoa

Verificar a label Portaria de Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Portaria de Saída')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Portaria de Saída

Verificar a label Motivo Uso 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo Uso')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Motivo Uso 

Verificar a label Destino
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Destino')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[12]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Destino



#VERIFY (Filtro)

Verificar o campo Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//td[@id="SC_idveic_label"]
		${CAMPO}   Set Variable  xpath=//input[@id='SC_idveic']
    Sleep  3s
 	Element Attribute Value Should Be  ${CAMPO}   id    SC_idveic
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[3]/table/tbody/tr/td/input
		Element Attribute Value Should Be  ${CAMPO1}   name   idveic_cond
 		Element Attribute Value Should Be  ${CAMPO2}   name   idveic
	END	
	Element Should Contain  ${LABEL}   Veículo

Verificar o campo Placa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Placa')]
		${CAMPO}   Set Variable  xpath=//input[@name='placveic']
	Sleep  2s	
	Element Attribute Value Should Be  ${CAMPO}   name   placveic	
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input
	Element Attribute Value Should Be  ${CAMPO1}   name   placveic_cond
	Element Attribute Value Should Be  ${CAMPO2}   name   placveic
	END
	Element Should Contain  ${LABEL}   Placa
 	

Verificar o campo Modelo Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Modelo Veículo')]
		${CAMPO}   Set Variable  xpath=//input[@name='modeveic']
	Sleep  2s	
	Element Attribute Value Should Be  ${CAMPO}   name   modeveic	
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/input
	Element Attribute Value Should Be  ${CAMPO1}   name   modeveic_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   modeveic
	END
	Element Should Contain  ${LABEL}   Modelo Veículo


Verificar o campo Data Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Data Saída')]
		${CAMPO1}   Set Variable  xpath=//input[@name='datasaid_cond']
		${CAMPO2}   Set Variable  xpath=//input[@name='datasaid_dia']
		${CAMPO3}   Set Variable  xpath=//input[@name='datasaid_mes']
		${CAMPO4}   Set Variable  xpath=//input[@name='datasaid_ano']
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input[2]
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input[3]
	END
	Sleep  2s
	Element Should Contain  ${LABEL}   Data Saída
 	Element Attribute Value Should Be  ${CAMPO1}   name   datasaid_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   datasaid_dia
	Element Attribute Value Should Be  ${CAMPO3}   name   datasaid_mes
	Element Attribute Value Should Be  ${CAMPO4}   name   datasaid_ano

Verificar o campo Hora Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Hora Saída')]
		${CAMPO1}   Set Variable  xpath=//input[@name='horasaid_cond']
		${CAMPO2}   Set Variable  xpath=//input[@name='horasaid']
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[3]/table/tbody/tr/td/input
	END
	Sleep  2s
	Element Should Contain  ${LABEL}   Hora Saída
 	Element Attribute Value Should Be  ${CAMPO1}   name   horasaid_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   horasaid

Verificar o campo Cód. Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Cód. Empresa')]
		${CAMPO}   Set Variable  xpath=//input[@name='codiempr']
	Sleep  2s	
    Element Attribute Value Should Be  ${CAMPO2}   name   codiempr
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr/td/input
	Element Attribute Value Should Be  ${CAMPO1}   name   codiempr_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   codiempr
	END
	Element Should Contain  ${LABEL}   Cód. Empresa
 

Verificar o campo Tipo Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=//td[contains(text(),'Tipo Colaborador')]
		${CAMPO}   Set Variable  xpath=//input[@name='tipocola']
	Sleep  2s	
	Element Attribute Value Should Be  ${CAMPO2}   name   tipocola
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[3]/table/tbody/tr/td/input
	Element Attribute Value Should Be  ${CAMPO1}   name   tipocola_cond
 	Element Attribute Value Should Be  ${CAMPO2}   name   tipocola
	END
	Element Should Contain  ${LABEL}   Tipo Colaborador
 	
