*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

# SCREEN
Acessar Tela Consulta Veículos Frota
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsveiculofrota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Veículos Frota
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Veículos Frota
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela: Veículos Frota (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsveiculofrota
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Veículos Frota
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Veículos Frota
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
Preencher o campo Código do Veículo "${COD}"
  Input Text  xpath=//*[@name="tbveicufrota_idveic"][@type="text"]  ${COD}

Preencher o campo X "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="tbveicufrota_datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="tbveicufrota_datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="tbveicufrota_datainic_ano"][@type="text"]  ${ANO}  

Preencher o campo X "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="tbveicufrota_datainic_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="tbveicufrota_datainic_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="tbveicufrota_datainic_input_2_ano"][@type="text"]  ${ANO} 

Preencher o campo Placa "${PLAC}"
  Input Text  xpath=//*[@name="tbveicu_placveic"][@type="text"]  ${PLAC}

#VERIFY

Verificar a label Código do Veículo
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Veículo')]
  ELSE 
    ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Código do Veículo

Verificar a label Placa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Placa')]
  ELSE 
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Placa

Verificar a label Data Inicial
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Inicial')]
  ELSE 
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
	END
  Element Should Contain  ${LABEL}   Data Inicial

#VERIFY CAMPOS

Verificar o campo: Código do Veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código do Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbveicufrota_idveic']
	Element Should Contain             ${LABEL}   Código do Veículo	
 	Element Attribute Value Should Be  ${CAMPO}   name  tbveicufrota_idveic

Verificar o campo: Data Inicial	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='tbveicufrota_datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='tbveicufrota_datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='tbveicufrota_datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='tbveicufrota_datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='tbveicufrota_datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='tbveicufrota_datainic_input_2_ano']
	Element Should Contain             ${LABEL}   Data Inicial	
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbveicufrota_datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   tbveicufrota_datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   tbveicufrota_datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   tbveicufrota_datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   tbveicufrota_datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   tbveicufrota_datainic_input_2_ano

Verificar o campo: Placa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Placa')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbveicu_placveic']
	Element Should Contain             ${LABEL}   Placa
 	Element Attribute Value Should Be  ${CAMPO}   name   tbveicu_placveic   