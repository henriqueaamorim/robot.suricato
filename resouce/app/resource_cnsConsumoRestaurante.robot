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
resource_report.Navegar no Relatório: Relatório de Consumo de Restaurante - Analítico

# SCREEN
Acessar Tela Relatório Refeitório Analítico - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório Refeitório Analítico
  ${APPNAME}     Set Variable  cnsConsumoRestaurante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Relatório Refeitório Analítico
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório Refeitório Analítico
  ${APPNAME}     Set Variable  cnsConsumoRestaurante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


Acessar Tela Relatório de Consumo de Refeitório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Consumo de Refeitório
  ${APPNAME}     Set Variable  cnsConsumoRestaurante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#FIELD
Selecionar uma opção no campo Codins ${CODIN}
  Select From List By Label  xpath=//*[@name="tipo"]  ${CODIN}
	Click Element  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/table/tbody/tr/td[2]/input[2]

Selecionar uma opção no campo Empresa ${EMPRESA}
  Select From List By Label  xpath=//*[@name="codiempr1"]  ${EMPRESA}

Selecionar uma opção no campo Tipo ${TIPO}
  Select From List By Label  xpath=//*[@name="tipo"]  ${EMPRESA}

Preencher o campo Doc/Matrícula "${MATRI}"
	Input Text  xpath=//*[@name="doc"][@type="text"]  ${MATRI}

Preencher o campo Data Inicio "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataaces_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataaces_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataaces_ano"][@type="text"]  ${ANO}

Preencher o campo Data Fim "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataaces_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataaces_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataaces_input_2_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Tipo Refeição ${TIPO}
  Select From List By Label  xpath=//*[@name="desctiporefe_orig"]  ${TIPO}
	Click Element  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/table/tbody/tr/td[2]/input[2]


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar o campo Codins
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[3]/table/tbody/tr/td/table/tbody/tr/td[1]/select
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[3]/table/tbody/tr/td/table/tbody/tr/td[3]/select
		Element Should Contain  ${LABEL}   Codins
		Element Attribute Value Should Be  ${CAMPO1}   name   idcodin_cond
		Element Attribute Value Should Be  ${CAMPO2}   name   idcodin_orig
		Element Attribute Value Should Be  ${CAMPO3}   name   idcodin_dest
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select

		Element Should Contain  ${LABEL}   Codins
		Element Attribute Value Should Be  ${CAMPO1}   name   idcodin_orig
		Element Attribute Value Should Be  ${CAMPO2}   name   idcodin_dest
	END
Verificar o campo Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	END
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr1

Verificar o campo Tipo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	END
	Element Should Contain  ${LABEL}   Tipo
 	Element Attribute Value Should Be  ${CAMPO}   name   tipo

Verificar o campo Doc/Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Doc/Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   doc

Verificar o campo Data
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[1]/input
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[2]/input
		${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[3]/input
		${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[4]/span[1]/input
		${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[4]/span[2]/input
		${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span[4]/span[3]/input
	ELSE	
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[1]
		${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[2]
		${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[3]
		${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[1]
		${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[2]
		${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[3]
	END
	Element Should Contain  ${LABEL}   Data
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataaces_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataaces_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataaces_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   dataaces_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   dataaces_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   dataaces_input_2_ano

Verificar o campo Tipo Refeição
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select
	ELSE
		${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
		${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/table/tbody/tr/td[3]/select
	END
	Element Should Contain  ${LABEL}   Tipo Refeição
 	Element Attribute Value Should Be  ${CAMPO1}   name   desctiporefe_orig
	Element Attribute Value Should Be  ${CAMPO2}   name   desctiporefe_dest


#VERIFY

E verificar o campo Codins
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
	
	Element Should Contain  ${LABEL}  Codins 
	Element Attribute Value Should Be  ${CAMPO}  name  idcodin_orig


E verificar o campo Empresa        
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}  name  codiempr1

E verificar o campo Tipo         
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}  Tipo
	Element Attribute Value Should Be  ${CAMPO}  name  tipo
        

E verificar o campo Doc/Matrícula   
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Doc/Matrícula
	Element Attribute Value Should Be  ${CAMPO}  name  doc
  

E verificar o campo Data         
 	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO1}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[3]

	Element Should Contain  ${LABEL}  Data
	Element Attribute Value Should Be  ${CAMPO1}  name  dataaces_dia
	Element Attribute Value Should Be  ${CAMPO2}  name  dataaces_mes
	Element Attribute Value Should Be  ${CAMPO3}  name  dataaces_ano
	Element Attribute Value Should Be  ${CAMPO4}  name  dataaces_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}  name  dataaces_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}  name  dataaces_input_2_ano
      

E verificar o campo Tipo Refeição  
	${LABEL}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/table/tbody/tr/td[1]/select
	
	Element Should Contain  ${LABEL}   Tipo Refeição
	Element Attribute Value Should Be  ${CAMPO}  name  desctiporefe_orig

