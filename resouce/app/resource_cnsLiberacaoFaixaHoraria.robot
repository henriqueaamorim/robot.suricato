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
resource_report.Navegar no Relatório: Liberação de Faixa Horária

# SCREEN
Acessar Tela Relatório de Liberação de Faixa Horária - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Liberação de Faixa Horária
  ${APPNAME}     Set Variable  cnsLiberacaoFaixaHoraria
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
	ELSE
		${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END 

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Relatório de Liberação de Faixa Horária
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Liberação de Faixa Horária
  ${APPNAME}     Set Variable  cnsLiberacaoFaixaHoraria
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar o campo Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Tipo Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/select
	END
	Element Should Contain  ${LABEL}   Tipo Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocola

Verificar o campo Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Nome
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   icard

Verificar o campo Data Liberação
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span[1]/input
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span[2]/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span[3]/input
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span[4]/span[1]/input
		${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span[4]/span[2]/input
		${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span[4]/span[3]/input
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/input[1]
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/input[2]
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[1]/td/input[3]
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/input[1]
		${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/input[2]
		${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr[2]/td/input[3]
	END
	Element Should Contain  ${LABEL}   Data Liberação
 	Element Attribute Value Should Be  ${CAMPO1}   name   datalibe_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   datalibe_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   datalibe_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   datalibe_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   datalibe_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   datalibe_input_2_ano

Verificar o campo Hora Inicial
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/span[1]/input
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/span[2]/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/span[3]/span[1]/input
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/span[3]/span[2]/input
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[1]
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[1]/td/input[2]
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[1]
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr[2]/td/input[2]
	END
	Element Should Contain  ${LABEL}   Hora Inicial
 	Element Attribute Value Should Be  ${CAMPO1}   name   horainic_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   horainic_min
	Element Attribute Value Should Be  ${CAMPO3}   name   horainic_input_2_hor
	Element Attribute Value Should Be  ${CAMPO4}   name   horainic_input_2_min

Verificar o campo Hora Final
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span[1]/input
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span[2]/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span[3]/span[1]/input
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span[3]/span[2]/input
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/input[1]
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[1]/td/input[2]
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/input[1]
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr[2]/td/input[2]
	END
	Element Should Contain  ${LABEL}   Hora Final
 	Element Attribute Value Should Be  ${CAMPO1}   name   horafina_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   horafina_min
	Element Attribute Value Should Be  ${CAMPO3}   name   horafina_input_2_hor
	Element Attribute Value Should Be  ${CAMPO4}   name   horafina_input_2_min



#VERIFY

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b/a/font
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b/a/font
	Element Should Contain  ${LABEL}   Tipo Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b/a/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b/a/font
	Element Should Contain  ${LABEL}   Nome

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b/a/font
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Data de Liberação Inicial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b
	Element Should Contain  ${LABEL}   Data de Liberação Inicial

Verificar a label Data de Liberação Final
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b
	Element Should Contain  ${LABEL}   Data de Liberação Final

Verificar a label Hora Inicial
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font/b/a/font
	Element Should Contain  ${LABEL}   Hora Inicial

Verificar a label Hora Final
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font/b/a/font
	Element Should Contain  ${LABEL}   Hora Final

Verificar a label Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font/b
	Element Should Contain  ${LABEL}   Empresa Terceira
