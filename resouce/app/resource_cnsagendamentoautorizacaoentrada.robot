*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Autorização | Agendamento

# SCREEN
Acessar Tela: Agendamento da Autorização de Entrada do Colaborador (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsagendamentoautorizacaoentrada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Agendamento da Autorização de Entrada do Colaborador
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Agendamento da Autorização de Entrada do Colaborador 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela: Agendamento da Autorização do Colaborador (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsagendamentoautorizacaoentrada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Agendamento da Autorização do Colaborador(Filtro)
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Agendamento da Autorização do Colaborador(Filtro) 
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
Preencher o campo Data da Autorização "${DIA}/${MES}/${ANO}"
  Input Text   xpath=//*[@name="tbagendentra_dataprev_dia"][@type="text"]   ${DIA}
	Input Text   xpath=//*[@name="tbagendentra_dataprev_mes"][@type="text"]   ${MES}
	Input Text   xpath=//*[@name="tbagendentra_dataprev_ano"][@type="text"]   ${ANO}
		
Preencher o campo Hora da Autorização "${HORA}:${MIN}"
  Input Text   xpath=//*[@name="tbagendentra_horaprev_hor"][@type="text"]   ${HORA}
	Input Text   xpath=//*[@name="tbagendentra_horaprev_min"][@type="text"]   ${MIN}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="tbcolab_codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Empresa "${COLAB}"
	Select From List By Label  xpath=//*[@name="tbcolab_tipocola"]  ${COLAB}

Preencher o campo Matrícula "${MATRICULA}"
  Input Text   xpath=//*[@name="tbcolab_codimatr"][@type="text"]   ${MATRICULA}


#VERIFY LABELS (Consulta)

Verificar a label Data da Autorização
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data da Autorização')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b
	END
	Element Should Contain  ${LABEL}   Data da Autorização

Verificar a label Hora da Autorização
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora da Autorização')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b
	END
	Element Should Contain  ${LABEL}   Hora da Autorização

Verificar a label Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b
	END	
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b
	END
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Grupo de Acesso
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Grupo de Acesso')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b
	END	
	Element Should Contain  ${LABEL}   Grupo de Acesso

Verificar a label Data da Validade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data da Validade')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b
	END	
	Element Should Contain  ${LABEL}   Data da Validade

Verificar a label Hora da Validade
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora da Validade')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[9]/font/b
	END
	Element Should Contain  ${LABEL}   Hora da Validade



#VERIFY CAMPOS (Filtro)

Verificar a label Pesquisa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Data da Autorização
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Data da Autorização')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='tbagendentra_dataprev_dia']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='tbagendentra_dataprev_mes']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='tbagendentra_dataprev_ano']
		${CAMPO4}  	  Set Variable  xpath=//input[@name='tbagendentra_dataprev_input_2_dia']
		${CAMPO5}  	  Set Variable  xpath=//input[@name='tbagendentra_dataprev_input_2_mes']
		${CAMPO6}  	  Set Variable  xpath=//input[@name='tbagendentra_dataprev_input_2_ano']
	Element Should Contain  ${LABEL}   Data da Autorização
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbagendentra_dataprev_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   tbagendentra_dataprev_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   tbagendentra_dataprev_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   tbagendentra_dataprev_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   tbagendentra_dataprev_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   tbagendentra_dataprev_input_2_ano
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/select
		${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr[1]/td/input[1]
		${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr[1]/td/input[2]
		${CAMPO4}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr[1]/td/input[3]

	Element Should Contain  ${LABEL}   Data da Autorização
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbagendentra_dataprev_cond
	Element Attribute Value Should Be  ${CAMPO2}   name   tbagendentra_dataprev_dia
	Element Attribute Value Should Be  ${CAMPO3}   name   tbagendentra_dataprev_mes
	Element Attribute Value Should Be  ${CAMPO4}   name   tbagendentra_dataprev_ano
	END

Verificar o campo Hora da Autorização
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora da Autorização')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='tbagendentra_horaprev_hor']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='tbagendentra_horaprev_min']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='tbagendentra_horaprev_input_2_hor']
		${CAMPO4}  	  Set Variable  xpath=//input[@name='tbagendentra_horaprev_input_2_min']
	Element Should Contain  ${LABEL}   Hora da Autorização
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbagendentra_horaprev_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   tbagendentra_horaprev_min
	Element Attribute Value Should Be  ${CAMPO3}   name   tbagendentra_horaprev_input_2_hor	
	Element Attribute Value Should Be  ${CAMPO4}   name   tbagendentra_horaprev_input_2_min
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/select
		${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[1]
		${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[2]
	Element Should Contain  ${LABEL}   Hora da Autorização
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbagendentra_horaprev_cond
	Element Attribute Value Should Be  ${CAMPO2}   name   tbagendentra_horaprev_hor
	Element Attribute Value Should Be  ${CAMPO3}   name   tbagendentra_horaprev_min
	END

Verificar o campo Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
		${CAMPO}  	  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/span/select
		Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codiempr
	END	
		Element Should Contain  ${LABEL}   Empresa
 	

Verificar o campo Tipo do Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
		${CAMPO}  	  Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[3]/table/tbody/tr/td/span/select
	    Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_tipocola
    END
		Element Should Contain  ${LABEL}   Tipo do Colaborador
 		
	

Verificar o campo Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='tbcolab_codimatr']

	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/input
    END
		Element Should Contain  ${LABEL}   Matrícula
 		Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr
	