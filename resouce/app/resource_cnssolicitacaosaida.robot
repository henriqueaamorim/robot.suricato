*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Solicitação de Saída

# SCREEN
Acessar Tela Consulta de Solicitação de Saída
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnssolicitacaosaida
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Solicitação de Saída
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Solicitação de Saída
  ${ELEMENT}  Set Variable    xpath=//font[contains(text(),'Consulta de Solicitação de Saída')]
  Mudar Frame Aplicação "nm_iframe_aba_frmSolicitacaoSaida_1"
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Consulta de Solicitação de Saída (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnssolicitacaosaida
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Solicitação de Saída
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Solicitação de Saída (Filtro) 
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
 
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#FIELD
Preencher o campo Situação do Veículo "${SIT}"
  Input Text  xpath=//*[@name="situveic"][@type="text"]  ${SIT}
  
Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="descsitu"][@type="text"]  ${DESC}

Selecionar uma opção no campo Bloqueia Movimentação "${SIM}/${NAO}"
  Select from list by label  xpath=//*[@name="bloqmoviveic"]  ${SIM}
  Select from list by label  xpath=//*[@name="bloqmoviveic"]  ${NAO}  

Selecionar uma opção no campo Tipo "${TIP}"
  Select from list by label  xpath=//*[@name="tipositu"]  ${TIP}


#VERIFY

Verificar a label Código
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}   Set Variable   xpath=//div[contains(text(),'Código')]
	ELSE	
		${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
	Element Should Contain   ${LABEL}   Código

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
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
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

#VERIFY

Verificar a label Pesquisa
		${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='tbautosmater_codisoliofic']
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
    END
		Element Should Contain  ${LABEL}   Código
 		Element Attribute Value Should Be  ${CAMPO}   name   tbautosmater_codisoliofic
	
Verificar o campo Data
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Data')]
		${CAMPO1}  	  Set Variable  xpath=//input[@name='tbautosmater_datasoli_dia']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='tbautosmater_datasoli_mes']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='tbautosmater_datasoli_ano']
		${CAMPO4}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_hor']
		${CAMPO5}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_min']
		${CAMPO6}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_seg']
        Element Attribute Value Should Be  ${CAMPO1}   name   tbautosmater_datasoli_dia
		Element Attribute Value Should Be  ${CAMPO2}   name   tbautosmater_datasoli_mes
		Element Attribute Value Should Be  ${CAMPO3}   name   tbautosmater_datasoli_ano
		Element Attribute Value Should Be  ${CAMPO4}   name   tbautosmater_horasoli_hor 
		Element Attribute Value Should Be  ${CAMPO5}   name   tbautosmater_horasoli_min 
		Element Attribute Value Should Be  ${CAMPO6}   name   tbautosmater_horasoli_seg 
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
		${CAMPO1}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_hor']
		${CAMPO2}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_min']
		${CAMPO3}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_seg']
		${CAMPO4}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_input_2_hor']
		${CAMPO5}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_input_2_min']
		${CAMPO6}  	  Set Variable  xpath=//input[@name='tbautosmater_horasoli_input_2_seg']
	Element Attribute Value Should Be  ${CAMPO1}   name   tbautosmater_horasoli_hor
	Element Attribute Value Should Be  ${CAMPO2}   name   tbautosmater_horasoli_min
	Element Attribute Value Should Be  ${CAMPO3}   name   tbautosmater_horasoli_seg
	Element Attribute Value Should Be  ${CAMPO4}   name   tbautosmater_horasoli_input_2_hor	
	Element Attribute Value Should Be  ${CAMPO5}   name   tbautosmater_horasoli_input_2_min	
	Element Attribute Value Should Be  ${CAMPO6}   name   tbautosmater_horasoli_input_2_seg	
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
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
		${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
		Element Should Contain  ${LABEL}   Empresa 
 		Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single
	

Verificar o campo Tipo 
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
		${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
 		Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[3]/table/tbody/tr/td/span/select
 		Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_tipocola
	END
	 Element Should Contain  ${LABEL}   Tipo 

Verificar o campo Matrícula
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='tbcolab_codimatr']
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
    END
		Element Should Contain  ${LABEL}   Matrícula
 		Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr
	
Verificar o campo Tipo Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo Documento')]
		${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
 		Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[8]/td[2]/table/tbody/tr/td/span/select	
 		Element Attribute Value Should Be  ${CAMPO}   name   tbvisit_tipodocuvisi
	END
	    Element Should Contain  ${LABEL}   Tipo Documento

Verificar o campo Número Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//td[contains(text(),'Número Documento')]
		${CAMPO}  	  Set Variable  xpath=//input[@name='tbvisit_numedocuvisi']
		Element Attribute Value Should Be  ${CAMPO}   name   tbvisit_numedocuvisi
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[1]
		${CAMPO1}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[2]/select
		${CAMPO2}  	  Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[9]/td[3]/table/tbody/tr/td/input	
 		Element Attribute Value Should Be  ${CAMPO1}   name   tbvisit_numedocuvisi_cond	
		Element Attribute Value Should Be  ${CAMPO2}   name   tbvisit_numedocuvisi	
	END
		Element Should Contain  ${LABEL}   Número Documento
		