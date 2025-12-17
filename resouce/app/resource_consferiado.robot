*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Feriado

# SCREEN
Acessar Tela Consulta de Feriados
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consferiado
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Feriado
    ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'Feriado')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Feriados
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  END

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta de Feriados (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Feriado 
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ${APPNAME}  Set Variable  consferiado
  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Data "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="tbdatasferia_dataferi_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="tbdatasferia_dataferi_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="tbdatasferia_dataferi_ano"][@type="text"]  ${ANO}

Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="tbferia_codiferi"][@type="text"]  ${COD}

Preencher o campo External Key "${EXT}"
  Input Text  xpath=//*[@name="idcoexternal_keylab"][@type="text"]  ${EXT}


#VERIFY LABELS

Verificar a label External Key
  ${LABEL}   Set Variable  xpath=//div[contains(text(),'External Key')]
  Element Should Contain  ${LABEL}   External Key 

Verificar a label Código
  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label Descrição
  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Feriado Nacional 
  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Feriado Nacional')]
	Element Should Contain  ${LABEL}   Feriado Nacional

Verificar a label Nome do Feriado
  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome do Feriado')]
	Element Should Contain  ${LABEL}   Nome do Feriado


#VERIFY CAMPOS 

Verificar a label Pesquisa
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Data 
  ${LABEL}       Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO1}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span[1]/input
  ${CAMPO2}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span[2]/input
  ${CAMPO3}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span[3]/input

	Element Should Contain             ${LABEL}    Data
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbdatasferia_dataferi_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   tbdatasferia_dataferi_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   tbdatasferia_dataferi_ano

Verificar o campo Código 
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Código 
 	Element Attribute Value Should Be  ${CAMPO}   name   tbferia_codiferi

Verificar o campo External Key (Filtro)
	${LABEL}      Set Variable  xpath=//td[contains(text(),'External Key')]
  ${CAMPO}      Set Variable  xpath=//td[@id='SC_external_key_label']

	Element Should Contain             ${LABEL}   External Key
  Element Attribute Value Should Be  ${CAMPO}   id   SC_external_key_label

Verificar o campo Código Descrição (Filtro)
  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomeferi_autocomp']
	
	Element Should Contain             ${LABEL}   Descrição 
  Element Attribute Value Should Be  ${CAMPO}   name   nomeferi_autocomp

Verificar o campo Feriado Nacional (Filtro)
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Feriado Nacional')]
  ${CAMPO}      Set Variable  xpath=//select[@name='nacional']

	Element Should Contain             ${LABEL}   Feriado Nacional
  Element Attribute Value Should Be  ${CAMPO}   name  nacional
