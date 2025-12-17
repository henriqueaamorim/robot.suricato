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
resource_report.Navegar no Relatório: Pessoas por Ambiente

# SCREEN
Acessar Tela Consulta de Pessoas por Ambiente
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Pessoas por Ambiente
  ${APPNAME}     Set Variable  cnsPessoasAmbiente
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
 	 ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
	ELSE
 	 ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[4]
	END
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Pessoas por Ambiente - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Pessoas por Ambiente
  ${APPNAME}     Set Variable  cnsPessoasAmbiente
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Sleep  5s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.



#VERIFY

Verificar a label Ambiente
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font
	Element Should Contain  ${LABEL}   Ambiente

Verificar a label Total Geral
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font
	Element Should Contain  ${LABEL}   Total Geral

Verificar a label Pessoas
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font
	Element Should Contain  ${LABEL}   Pessoas

Verificar a label Resultado Total Geral
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/font
	Element Should Contain  ${LABEL}   0



#VERIFY (Filtro)

Verificar o campo Planta
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan

Verificar o campo Ambiente
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Ambiente
 	Element Attribute Value Should Be  ${CAMPO}   name   nivelestrutura
