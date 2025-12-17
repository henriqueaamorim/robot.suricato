*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Autorização | Entrada

# SCREEN
Acessar Tela: Autorização de Entrada (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsentradaservidor
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Autorização de Entrada
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Autorização de Entrada
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Autorização de Entrada (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsentradaservidor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	    ${SCREENNAME}  Set Variable    Autorização de Entrada (Filtro)
		${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
	ELSE
	  ${SCREENNAME}  Set Variable  Consulta de Autorização de Entrada (Filtro)
	  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
	END
  Sleep  2s	
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List From Label  xpath=//*[@name="tbcolab_codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo do Colaborador "${TIPO}"
	Select From List From Label  xpath=//*[@name="tbcolab_tipocola"]  ${TIPO}

Preencher o campo Matrícula "${MATRICULA}"
  Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MATRICULA}

Preencher o campo Data de Entrada "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="tbentracolab_dataentr_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbentracolab_dataentr_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbentracolab_dataentr_ano"][@type="text"]  ${ANO}

Preencher o campo Hora de Entrada "${HORA}:${MIN}"
  Input Text  xpath=//*[@name="tbentracolab_horaentr_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="tbentracolab_horaentr_min"][@type="text"]  ${MIN}

#VERIFY

Verificar a label Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Data de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data de Entrada')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data de Entrada

Verificar a label Hora de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora de Entrada')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora de Entrada

Verificar a label Crachá
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b
	END
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Grupo de Acesso
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Grupo de Acesso')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b
	END
	Element Should Contain  ${LABEL}   Grupo de Acesso

Verificar a label Data de Validade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data de Validade')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[9]/font/b
	END
	Element Should Contain  ${LABEL}   Data de Validade

Verificar a label Observações
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Observações')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[10]/font/b
	END
	Element Should Contain  ${LABEL}   Observações



#VERIFY CAMPOS (Filtro)

Verificar a label Pesquisa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
		${CAMPO}  	  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/span/select
	    Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codiempr
    END
		Element Should Contain  ${LABEL}   Empresa

 		
	
Verificar o campo Tipo do Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
		${CAMPO}  	  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/span/select
        Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_tipocola
    END
		Element Should Contain  ${LABEL}   Tipo do Colaborador
 		
	
Verificar o campo Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='tbcolab_codimatr']
		Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/select
  	    ${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input
	    Element Attribute Value Should Be  ${CAMPO1}   name   tbcolab_codimatr_cond       	
		Element Should Contain  ${LABEL}   Matrícula
		Element Attribute Value Should Be  ${CAMPO2}   name   tbcolab_codimatr
		END

Verificar o campo Data de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Data de Entrada')]
		${CAMPO1}  	  Set Variable  xpath=//select[@name='tbentracolab_dataentr_cond']
  	    ${CAMPO2}  	  Set Variable  xpath=//input[@name='tbentracolab_dataentr_dia']
  	    ${CAMPO3}  	  Set Variable  xpath=//input[@name='tbentracolab_dataentr_mes']
  	    ${CAMPO4}  	  Set Variable  xpath=//input[@name='tbentracolab_dataentr_ano']
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/select
  	${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[3]/table/tbody/tr[1]/td/input[1]
  	${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[3]/table/tbody/tr[1]/td/input[2]
  	${CAMPO4}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[3]/table/tbody/tr[1]/td/input[3]
	END
	Element Should Contain  ${LABEL}   Data de Entrada
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbentracolab_dataentr_cond
    Element Attribute Value Should Be  ${CAMPO2}   name   tbentracolab_dataentr_dia
    Element Attribute Value Should Be  ${CAMPO3}   name   tbentracolab_dataentr_mes
    Element Attribute Value Should Be  ${CAMPO4}   name   tbentracolab_dataentr_ano

Verificar o campo Hora de Entrada
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora de Entrada')]
		${CAMPO1}  	  Set Variable  xpath=//select[@name='tbentracolab_horaentr_cond']
 	 	${CAMPO2}  	  Set Variable  xpath=//input[@name='tbentracolab_horaentr_hor']
  	    ${CAMPO3}  	  Set Variable  xpath=//input[@name='tbentracolab_horaentr_min']
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/select
 	 	${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr[1]/td/input[1]
  	    ${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr[1]/td/input[2]
	END
	Element Should Contain  ${LABEL}   Hora de Entrada
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbentracolab_horaentr_cond
    Element Attribute Value Should Be  ${CAMPO2}   name   tbentracolab_horaentr_hor
    Element Attribute Value Should Be  ${CAMPO3}   name   tbentracolab_horaentr_min
