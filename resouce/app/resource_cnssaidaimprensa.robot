*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Candidato | Saída

# SCREEN
Acessar Tela: Saída de Candidato (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnssaidaimprensa
  ${SCREENNAME}  Set Variable    Saída de Candidato
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Saída de Candidato (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnssaidaimprensa
  IF   "${SERVER}" == "172.16.14.247" or "${SERVER}" == "172.16.14.246"
    ${SCREENNAME}  Set Variable    Saída de Candidato 
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Crachás para Saída (Filtro) 
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END 
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.



#VERIFY

Verificar a label Crachá
	IF   "${SERVER}" == "172.16.14.247" or "${SERVER}" == "172.16.14.246"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b
	END
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Candidato
	IF   "${SERVER}" == "172.16.14.247" or "${SERVER}" == "172.16.14.246"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Candidato')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Candidato

Verificar a label Nome
	IF   "${SERVER}" == "172.16.14.247" or "${SERVER}" == "172.16.14.246"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Nome

Verificar a label Data/Hora de Entrada
	IF   "${SERVER}" == "172.16.14.247" or "${SERVER}" == "172.16.14.246"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora de Entrada')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora de Entrada

Verificar a label Data/Hora de Validade
	IF   "${SERVER}" == "172.16.14.247" or "${SERVER}" == "172.16.14.246"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora de Validade')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora de Validade

Verificar a label Data/Hora de Saída
	IF   "${SERVER}" == "172.16.14.247" or "${SERVER}" == "172.16.14.246"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora de Saída')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora de Saída



#VERIFY (Filtro)

Verificar a label Pesquisa
	IF   "${SERVER}" == "172.16.14.247" or "${SERVER}" == "172.16.14.246"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Data de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Data de Entrada')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='dataentr_dia']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='dataentr_mes']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='dataentr_ano']
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input[1]
		${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input[2]
		${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input[3]
	END
		Element Should Contain  ${LABEL}   Data de Entrada
 		Element Attribute Value Should Be  ${CAMPO1}   name   dataentr_dia
		Element Attribute Value Should Be  ${CAMPO2}   name   dataentr_mes
		Element Attribute Value Should Be  ${CAMPO3}   name   dataentr_ano
	

Verificar o campo Hora de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora de Entrada')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='horaentr_hor']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='horaentr_min']
		Element Should Contain  ${LABEL}   Hora de Entrada
		Element Attribute Value Should Be  ${CAMPO1}   name   horaentr_hor
		Element Attribute Value Should Be  ${CAMPO2}   name   horaentr_min
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input[1]
		${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input[2]
	END
		Element Should Contain  ${LABEL}   Hora de Entrada
 		Element Attribute Value Should Be  ${CAMPO1}   name   horaentr_hor
		Element Attribute Value Should Be  ${CAMPO2}   name   horaentr_min
	

Verificar o campo Candidato
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Candidato')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='idcand']
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	END
		Element Should Contain  ${LABEL}   Candidato
 		Element Attribute Value Should Be  ${CAMPO}   name   idcand
	

Verificar o campo Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Crachá')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='icard']
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	END	
		Element Should Contain  ${LABEL}   Crachá
 		Element Attribute Value Should Be  ${CAMPO}   name   icard
	