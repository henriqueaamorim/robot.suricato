*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Processo Automático de Relatório

# SCREEN
Acessar Tela Registro de Email Enviado de Processo Automático de Relatório - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Registro de Email Enviado de Processo Automático de Relatório
  ${APPNAME}     Set Variable  cnsReportEmail
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
	ELSE
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  END 

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Registro de Email Enviado de Processo Automático de Relatório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Registro de Email Enviado de Processo Automático de Relatório
  ${APPNAME}     Set Variable  cnsReportEmail
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar o campo Enviado
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}     Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO1}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[1]/input
		${CAMPO2}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[2]/input
		${CAMPO3}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[3]/input
		${CAMPO4}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[4]/span[1]/input
		${CAMPO5}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[4]/span[2]/input
		${CAMPO6}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span[4]/span[3]/input
		
		Element Should Contain  ${LABEL}   Enviado
 		Element Attribute Value Should Be  ${CAMPO1}    name   created_dia
		Element Attribute Value Should Be  ${CAMPO2}    name   created_mes
		Element Attribute Value Should Be  ${CAMPO3}    name   created_ano
		Element Attribute Value Should Be  ${CAMPO4}    name   created_input_2_dia
		Element Attribute Value Should Be  ${CAMPO5}    name   created_input_2_mes
		Element Attribute Value Should Be  ${CAMPO6}    name   created_input_2_ano
	ELSE
		${LABEL}     Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO1}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[1]
		${CAMPO2}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[2]
		${CAMPO3}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[3]
		${CAMPO4}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[4]
		${CAMPO5}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[5]
		${CAMPO6}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/input[6]
		${CAMPO7}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[1]
		${CAMPO8}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[2]
		${CAMPO9}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[3]
		${CAMPO10}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[4]
		${CAMPO11}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[5]
		${CAMPO12}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/input[6]
		
		Element Should Contain  ${LABEL}   Enviado
 		Element Attribute Value Should Be  ${CAMPO1}    name   created_dia
		Element Attribute Value Should Be  ${CAMPO2}    name   created_mes
		Element Attribute Value Should Be  ${CAMPO3}    name   created_ano
		Element Attribute Value Should Be  ${CAMPO4}    name   created_hor
		Element Attribute Value Should Be  ${CAMPO5}    name   created_min
		Element Attribute Value Should Be  ${CAMPO6}    name   created_seg
		Element Attribute Value Should Be  ${CAMPO7}    name   created_input_2_dia
		Element Attribute Value Should Be  ${CAMPO8}    name   created_input_2_mes
		Element Attribute Value Should Be  ${CAMPO9}    name   created_input_2_ano
		Element Attribute Value Should Be  ${CAMPO10}   name   created_input_2_hor
		Element Attribute Value Should Be  ${CAMPO11}   name   created_input_2_min
		Element Attribute Value Should Be  ${CAMPO12}   name   created_input_2_seg
	END


Verificar o campo Código Processo Relatório
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Código Processo Relatório
 	Element Attribute Value Should Be  ${CAMPO}   name   codiprocauto

Verificar o campo Processo Relatório
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input[2]
		
		Element Should Contain  ${LABEL}   Processo Relatório
 		Element Attribute Value Should Be  ${CAMPO}   name   descproc_autocomp
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
		
		Element Should Contain  ${LABEL}   Processo Relatório
 		Element Attribute Value Should Be  ${CAMPO}   name   descproc
	END


Verificar o campo Código do Relatório
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Código do Relatório
 	Element Attribute Value Should Be  ${CAMPO}   name   reportname

Verificar o campo Relatório
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input[2]
		
		Element Should Contain  ${LABEL}   Relatório
 		Element Attribute Value Should Be  ${CAMPO}   name   reporttitle_autocomp
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
		
		Element Should Contain  ${LABEL}   Relatório
		Element Attribute Value Should Be  ${CAMPO}   name   reporttitle
	END


Verificar o campo Enviado Para
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input[2]
		
		Element Should Contain  ${LABEL}   Enviado Para
 		Element Attribute Value Should Be  ${CAMPO}   name   mailto_autocomp
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
	
		Element Should Contain  ${LABEL}   Enviado Para
 		Element Attribute Value Should Be  ${CAMPO}   name   mailto
	END


Verificar o campo Cópia Para
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input[2]
		
		Element Should Contain  ${LABEL}   Cópia Para
 		Element Attribute Value Should Be  ${CAMPO}   name   mailcc_autocomp
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
		
		Element Should Contain  ${LABEL}   Cópia Para
 		Element Attribute Value Should Be  ${CAMPO}   name   mailcc
	END

