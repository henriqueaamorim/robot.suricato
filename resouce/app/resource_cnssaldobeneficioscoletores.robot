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
resource_report.Navegar no Relatório: Consulta Saldo de Benefícios nos Coletores

# SCREEN
Acessar Tela Consulta de Saldos de Benefícios dos Coletores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Saldos de Benefícios dos Coletores
  ${APPNAME}     Set Variable  cnssaldobeneficioscoletores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY

Verificar a label Planta
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[1]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Planta

Verificar a label Codin
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[2]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Codin

Verificar a label Benefício
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[3]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Benefício

Verificar a label Qtde Entregue
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[4]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Qtde Entregue

Verificar a label Qtde Retirado
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[5]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Qtde Retirado

Verificar a label Qtde Pendente
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[6]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Qtde Pendente

Verificar a label Qtde Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[7]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Qtde Colaborador
