*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução

# SCREEN
Acessar Tela Devolução de Veículo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Devolução de Veículo
  ${APPNAME}     Set Variable  cnssaidasemretorno
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
	ELSE
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
    END 

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Devolução de Veículo (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Devolução de Veículo
  ${APPNAME}     Set Variable  cnssaidasemretorno
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
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

Verificar a label Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Veículo

Verificar a label Modelo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Modelo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Modelo

Verificar a label Data/Hora de Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora de Saída')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora de Saída

Verificar a label Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Colaborador')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Colaborador

Verificar a label Matricula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Matricula')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b
	END
	Element Should Contain  ${LABEL}   Matricula

Verificar a label Nome
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[9]/font/b
	END
	Element Should Contain  ${LABEL}   Nome

Verificar a label Portaria de Saída
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Portaria de Saída')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[10]/font/b
	END
	Element Should Contain  ${LABEL}   Portaria de Saída

Verificar a label Motivo do Uso
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo do Uso')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[11]/font/b
	END
	Element Should Contain  ${LABEL}   Motivo do Uso

Verificar a label Destino
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Destino')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[12]/font/b
	END
	Element Should Contain  ${LABEL}   Destino

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Veículo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name  idveic

Verificar o campo: Data de Saída	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data de Saída')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datasaid_dia']
	${CAMPO2}      Set Variable  xpath=//input[@name='datasaid_mes']
	${CAMPO3}      Set Variable  xpath=//input[@name='datasaid_ano']
	${CAMPO4}      Set Variable  xpath=//input[@name='datasaid_input_2_dia']
	${CAMPO5}      Set Variable  xpath=//input[@name='datasaid_input_2_mes']
	${CAMPO6}      Set Variable  xpath=//input[@name='datasaid_input_2_ano']
	Element Should Contain             ${LABEL}   Data de Saída	
 	Element Attribute Value Should Be  ${CAMPO1}   name  datasaid_dia
	Element Attribute Value Should Be  ${CAMPO2}   name  datasaid_mes
	Element Attribute Value Should Be  ${CAMPO3}   name  datasaid_ano
	Element Attribute Value Should Be  ${CAMPO4}   name  datasaid_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name  datasaid_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name  datasaid_input_2_ano

Verificar o campo: Hora de Saída	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora de Saída')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horasaid_hor']
	${CAMPO2}      Set Variable  xpath=//input[@name='horasaid_min']
	${CAMPO3}      Set Variable  xpath=//input[@name='horasaid_input_2_hor']
	${CAMPO4}      Set Variable  xpath=//input[@name='horasaid_input_2_min']
	Element Should Contain             ${LABEL}   Hora de Saída	
 	Element Attribute Value Should Be  ${CAMPO1}   name  horasaid_hor	
	Element Attribute Value Should Be  ${CAMPO2}   name  horasaid_min
	Element Attribute Value Should Be  ${CAMPO3}   name  horasaid_input_2_hor
	Element Attribute Value Should Be  ${CAMPO4}   name  horasaid_input_2_min
