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
resource_report.Navegar no Relatório: Consulta de Beneficios Retirada

# SCREEN
Acessar Tela Consulta de Benefícios Consumidos - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Benefícios Consumidos
  ${APPNAME}     Set Variable  cnsbeneficiosretirada
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Consulta de Benefícios Consumidos
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Benefícios Consumidos
  ${APPNAME}     Set Variable  cnsbeneficiosretirada
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
  Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
  END
	Element Should Contain  ${LABEL}   Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar o campo Dt. Ret.
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
    ${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/span[1]/input
    ${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/span[2]/input
    ${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/span[3]/input
    ${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/span[1]/input
    ${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/span[2]/input
    ${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/span[3]/input
  ELSE
	  ${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	  ${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[1]
	  ${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[2]
    ${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[3]
    ${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[1]
    ${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[2]
    ${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[3]
  END
	Element Should Contain  ${LABEL}   Dt. Ret.
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataconsbene_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataconsbene_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataconsbene_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   dataconsbene_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   dataconsbene_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   dataconsbene_input_2_ano



#FIELD
Preencher o campo Colaborador "${COLABORADOR}"
	Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COLABORADOR}

Preencher o campo Data . Ret. inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataconsbene_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataconsbene_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataconsbene_ano"][@type="text"]  ${ANO}

Preencher o campo Data . Ret. final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataconsbene_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataconsbene_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataconsbene_input_2_ano"][@type="text"]  ${ANO}

