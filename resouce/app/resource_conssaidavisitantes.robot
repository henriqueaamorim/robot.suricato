*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Saída de Visitante

# SCREEN
Acessar Tela Consulta de Saída de Visitantes
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  conssaidavisitantes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}   Set Variable   Saída de Visitante
  ${ELEMENT}      Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Saída de Visitantes
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta de Saída de Visitantes (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  conssaidavisitantes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}   Set Variable    Saída de Visitante
  ${ELEMENT}      Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Saída de Visitantes (Filtro)
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

Verificar a label Sair
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Sair')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b
	END
	Element Should Contain  ${LABEL}   Sair

Verificar a label Data/Hora de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data/Hora de Entrada')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Data/Hora de Entrada

Verificar a label Código do Visitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Visitante')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Código do Visitante

Verificar a label Nome do Visitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Visitante')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	END
	Element Should Contain  ${LABEL}   Nome do Visitante

Verificar a label Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Crachá



#VERIFY (Filtro)

Verificar a label Pesquisa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Data de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Data de Entrada')]
	${CAMPO1}  	  Set Variable  xpath=//input[@name='dataentr_dia']
	${CAMPO2}  	  Set Variable  xpath=//input[@name='dataentr_mes']
	${CAMPO3}  	  Set Variable  xpath=//input[@name='dataentr_ano']
	${CAMPO4}  	  Set Variable  xpath=//input[@name='dataentr_input_2_dia']
	${CAMPO5}  	  Set Variable  xpath=//input[@name='dataentr_input_2_mes']
	${CAMPO6}  	  Set Variable  xpath=//input[@name='dataentr_input_2_ano']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/select
	${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr[1]/td/input[1]
	${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr[1]/td/input[2]
	${CAMPO4}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr[1]/td/input[3]
    END
	Element Should Contain  ${LABEL}   Data de Entrada
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataentr_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataentr_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataentr_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   dataentr_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   dataentr_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   dataentr_input_2_ano
	
Verificar o campo Hora de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora de Entrada')]
	${CAMPO1}  	  Set Variable  xpath=//input[@name='horaentr_hor']
	${CAMPO2}  	  Set Variable  xpath=//input[@name='horaentr_min']
	Element Attribute Value Should Be  ${CAMPO1}   name   horaentr_hor
 	Element Attribute Value Should Be  ${CAMPO2}   name   horaentr_min
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/select
	${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[1]
	${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[2]
	Element Attribute Value Should Be  ${CAMPO1}   name   horaentr_cond
	Element Attribute Value Should Be  ${CAMPO2}   name   horaentr_hor
 	Element Attribute Value Should Be  ${CAMPO3}   name   horaentr_min
	END
	Element Should Contain  ${LABEL}   Hora de Entrada
 	

Verificar o campo Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Crachá')]
	${CAMPO}  	  Set Variable  xpath=//input[@name='icard']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CAMPO}   name   icard

Verificar o campo Grupo de Visitantes
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Grupo de Visitantes')]
	${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
    Element Attribute Value Should Be  ${CAMPO}    class   select2-selection select2-selection--single
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
    Element Attribute Value Should Be  ${CAMPO}   name   grupvisi
	END
	Element Should Contain  ${LABEL}   Grupo de Visitantes
 	

Verificar o campo Nome do Visitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Visitante')]
	${CAMPO}  	  Set Variable  xpath=//input[@name='nomepess']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Nome do Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess



#FIELD
Preencher o campo Data de Entrada "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataentr_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataentr_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataentr_ano"][@type="text"]  ${ANO}

Preencher o campo Hora de Entrada "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaentr_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaentr_min"][@type="text"]  ${MIN}

Preencher o campo Crachá "${CRACHÁ}"
	Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHÁ}

Selecionar uma opção no campo Grupo de Visitantes "${GRUPO_DE_VISITANTES}"	
	Select From List By Label  xpath=//*[@name='grupvisi']  ${GRUPO_DE_VISITANTES}

Preencher o campo Nome do Visitante "${NOME_DO_VISITANTE}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME_DO_VISITANTE}

