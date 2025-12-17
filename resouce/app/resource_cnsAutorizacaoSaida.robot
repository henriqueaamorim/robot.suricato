*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Autorização

# SCREEN
Acessar Tela Consulta de Autorizações de Saída
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsAutorizacaoSaida
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Autorização de Saída
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Autorizações de Saída 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  
  Mudar Frame Aplicação "mnu_iframe"
	# Necessário selecionar o frame do modo tradicional
  Wait Until Element Is Visible  nmsc_iframe_cnsAutorizacaoSaida_1
  Select Frame  nmsc_iframe_cnsAutorizacaoSaida_1
  END

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta de Autorizações de Saída (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsAutorizacaoSaida
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Autorização de Saída (Filtro)
  ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Autorizações de Saída (Filtro) 
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
   Sleep  2s
   Mudar Frame Aplicação "mnu_iframe"
	# Necessário selecionar o frame do modo tradicional
  Wait Until Element Is Visible  nmsc_iframe_cnsAutorizacaoSaida_1
  Select Frame  nmsc_iframe_cnsAutorizacaoSaida_1
  END
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.



#VERIFY

Verificar a label Código 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Código 

Verificar a label Data
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Data')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Data

Verificar a label Hora
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Hora

Verificar a label Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[6]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[7]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Tipo Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo Documento')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[8]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Tipo Documento

Verificar a label Número Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//div[contains(text(),'Número Documento')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[9]/font/b/a/font
	END
	Element Should Contain  ${LABEL}   Número Documento



#VERIFY (Filtro)

Verificar a label Pesquisa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	ELSE
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='codisoliofic_autocomp']

		Element Attribute Value Should Be  ${CAMPO}   name   codisoliofic_autocomp
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
		
 		Element Attribute Value Should Be  ${CAMPO}   name   tbautosmater_codisoliofic
	END
		Element Should Contain  ${LABEL}   Código


Verificar o campo Data
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Data')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='datasoli_dia']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='datasoli_mes']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='datasoli_ano']
		${CAMPO4}  	  Set Variable  xpath=//input[@name='datasoli_input_2_dia']
		${CAMPO5}  	  Set Variable  xpath=//input[@name='datasoli_input_2_mes']
		${CAMPO6}  	  Set Variable  xpath=//input[@name='datasoli_input_2_ano']

	Element Attribute Value Should Be  ${CAMPO1}   name   datasoli_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   datasoli_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   datasoli_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   datasoli_input_2_dia	
	Element Attribute Value Should Be  ${CAMPO5}   name   datasoli_input_2_mes	
	Element Attribute Value Should Be  ${CAMPO6}   name   datasoli_input_2_ano
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/select
		${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[1]
		${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[2]
		
		${CAMPO4}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr[1]/td/input[3]
	Element Attribute Value Should Be  ${CAMPO1}   name   tbautosmater_datasoli_cond
	Element Attribute Value Should Be  ${CAMPO2}   name   tbautosmater_datasoli_dia
	Element Attribute Value Should Be  ${CAMPO3}   name   tbautosmater_datasoli_mes
	Element Attribute Value Should Be  ${CAMPO4}   name   tbautosmater_datasoli_ano
	END
	Element Should Contain  ${LABEL}   Data
 

Verificar o campo Hora
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='horasoli_hor']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='horasoli_min']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='horasoli_seg']
		${CAMPO4}  	  Set Variable  xpath=//input[@name='horasoli_input_2_hor']
		${CAMPO5}  	  Set Variable  xpath=//input[@name='horasoli_input_2_min']
		${CAMPO6}  	  Set Variable  xpath=//input[@name='horasoli_input_2_seg']

	Element Attribute Value Should Be  ${CAMPO1}   name   horasoli_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   horasoli_min
	Element Attribute Value Should Be  ${CAMPO3}   name   horasoli_seg
	Element Attribute Value Should Be  ${CAMPO4}   name   horasoli_input_2_hor
	Element Attribute Value Should Be  ${CAMPO5}   name   horasoli_input_2_min
	Element Attribute Value Should Be  ${CAMPO6}   name   horasoli_input_2_seg	
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/select
		${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr[1]/td/input[1]
		${CAMPO3}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr[1]/td/input[2]
		${CAMPO4}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr[1]/td/input[3]
	
	Element Attribute Value Should Be  ${CAMPO1}   name   tbautosmater_horasoli_cond
	Element Attribute Value Should Be  ${CAMPO2}   name   tbautosmater_horasoli_hor
	Element Attribute Value Should Be  ${CAMPO3}   name   tbautosmater_horasoli_min
	Element Attribute Value Should Be  ${CAMPO4}   name   tbautosmater_horasoli_seg
	END
	Element Should Contain  ${LABEL}   Hora
 	

Verificar o campo Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='nomeempresa_autocomp']

 	Element Attribute Value Should Be  ${CAMPO}   name   nomeempresa_autocomp
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
	
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codiempr
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar o campo Tipo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
		${CAMPO1}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
		${CAMPO2}  	  Set Variable  xpath=
	
 	Element Attribute Value Should Be  ${CAMPO1}   class   select2-selection select2-selection--single	
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr/td/span/select
	
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_tipocola
	END
	Element Should Contain  ${LABEL}   Tipo


Verificar o campo Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='codimatr_autocomp']
	
 	Element Attribute Value Should Be  ${CAMPO1}   name   codimatr_autocomp
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input

 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr
	END
    Element Should Contain  ${LABEL}   Matrícula

Verificar o campo Tipo Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo Documento')]
		${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	
 	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[3]/table/tbody/tr/td/span/select

 	Element Attribute Value Should Be  ${CAMPO}   name   tbvisit_tipodocuvisi
	END
	Element Should Contain  ${LABEL}   Tipo Documento

Verificar o campo Número Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Número Documento')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='numedocuvisi_autocomp']

	Element Attribute Value Should Be  ${CAMPO}   name   numedocuvisi_autocomp	
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/select
		${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[3]/table/tbody/tr/td/input
	Element Attribute Value Should Be  ${CAMPO1}   name   tbvisit_numedocuvisi_cond
	Element Attribute Value Should Be  ${CAMPO2}   name   tbvisit_numedocuvisi
	END
	Element Should Contain  ${LABEL}   Número Documento




#FIELD
Preencher o campo Código "${CÓDIGO}"
	Input Text  xpath=//*[@name="tbautosmater_codisoliofic"][@type="text"]  ${CÓDIGO}

Selecionar uma opção no campo Data "${DATA}"
	Select From List By Label  xpath=//*[@name="tbautosmater_datasoli_cond"]  ${DATA}

Preencher o campo Data "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbautosmater_datasoli_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbautosmater_datasoli_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbautosmater_datasoli_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Hora "${HORA}"
	Select From List By Label  xpath=//*[@name="tbautosmater_horasoli_cond"]  ${HORA}

Preencher o campo Hora "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="tbautosmater_horasoli_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="tbautosmater_horasoli_min"][@type="text"]  ${MIN}

Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="tbcolab_codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo Alarme "${TIPO_ALARME}"
	Select From List By Label  xpath=//*[@name="tbcolab_tipocola"]  ${TIPO_ALARME}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MATRÍCULA}

Selecionar uma opção no campo Tipo Documento "${TIPO_DOCUMENTO}"
	Select From List By Label  xpath=//*[@name="tbvisit_tipodocuvisi"]  ${TIPO_DOCUMENTO}

Selecionar uma opção no campo Número Documento "${NÚMERO_DOCUMENTO}"
	Select From List By Label  xpath=//*[@name="tbvisit_numedocuvisi_cond"]  ${NÚMERO_DOCUMENTO}

Preencher o campo Número Documento "${NÚMERO_DOCUMENTO}"
	Input Text  xpath=//*[@name="tbvisit_numedocuvisi"][@type="text"]  ${NÚMERO_DOCUMENTO}

