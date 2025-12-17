*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

# SCREEN
Acessar Tela Consulta Infrações
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsinfracoesfrota
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Infrações
		${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
	ELSE
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Infrações (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsinfracoesfrota
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Infrações
		${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
	ELSE
  	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
  Sleep  2s 
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Selecioar uma opção do campo Data Infrações "${DATAINF}"
  Select from list by label  xpath=//*[@name="datainfr_cond"]  ${DATAINF}

Preencher o campo Data Infrações "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainfr_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainfr_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainfr_ano"][@type="text"]  ${ANO} 

Selecioar uma opção do campo Hora Infrações "${HORAINF}"
  Select from list by label  xpath=//*[@name="horainfr_cond"]  ${HORAINF}

Preencher o campo Hora Infrações "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="horainfr_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horainfr_min"][@type="text"]  ${MIN}  

Preencher o campo Veículo "${VEIC}"
  Input Text  xpath=//*[@name="idveic"][@type="text"]  ${VEIC}

Preencher o campo Condutor "${COND}"
  Input Text  xpath=//*[@name="idcodicond"][@type="text"]  ${COND}


#VERIFY

Verificar a label Data Infrações
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Infrações')]
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Data Infrações

Verificar a label Hora Infrações
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Infrações')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Hora Infrações

Verificar a label Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Veículo

Verificar a label Condutor
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Veículo')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Condutor

#VERIFY CAMPOS

Verificar o campo: Data Infrações	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainfr_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainfr_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainfr_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainfr_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainfr_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainfr_input_2_ano']
	Element Should Contain             ${LABEL}   Data Infrações	
 	Element Attribute Value Should Be  ${CAMPO1}   name  datainfr_dia
  Element Attribute Value Should Be  ${CAMPO2}   name  datainfr_mes
  Element Attribute Value Should Be  ${CAMPO3}   name  datainfr_ano
  Element Attribute Value Should Be  ${CAMPO4}   name  datainfr_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name  datainfr_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name  datainfr_input_2_ano

Verificar o campo: Hora Infrações	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora Infrações')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horainfr_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horainfr_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='horainfr_input_2_hor']
  ${CAMPO4}      Set Variable  xpath=//input[@name='horainfr_input_2_min']
	Element Should Contain             ${LABEL}   Hora Infrações	
 	Element Attribute Value Should Be  ${CAMPO1}   name  horainfr_hor
  Element Attribute Value Should Be  ${CAMPO2}   name  horainfr_min
  Element Attribute Value Should Be  ${CAMPO3}   name  horainfr_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name  horainfr_input_2_min

Verificar o campo: Veículo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='idveic']
	Element Should Contain             ${LABEL}   Veículo
 	Element Attribute Value Should Be  ${CAMPO}   name  idveic

Verificar o campo: Condutor
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Condutor')]
	${CAMPO}      Set Variable  xpath=//input[@name='idcodicond']
	Element Should Contain             ${LABEL}   Condutor
 	Element Attribute Value Should Be  ${CAMPO}   name  idcodicond      