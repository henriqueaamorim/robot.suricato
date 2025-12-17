*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Cadastro de Tipo de Refeição

# SCREEN
Acessar Tela Consulta de Tipo de Refeição
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsTipoRefei
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Tipo de Refeição
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Tipo de Refeição
    ${ELEMENT}  Set Variable    xpath=//font[contains(text(),'${SCREENNAME}')]
  END
  

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tipo de Refeição - Filtro
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Tipo de Refeição
  ${APPNAME}     Set Variable   cnsTipoRefei
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#VERIFY LABELS

Verificar a label: Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label: Planta
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Planta')]
	Element Should Contain  ${LABEL}   Planta


Verificar a label: Data Inicial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Inicial')]
	Element Should Contain  ${LABEL}   Data Inicial

Verificar a label: Data Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Final')]
	Element Should Contain  ${LABEL}  Data Final

Verificar a label: Hora Inicial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Inicial')]
	Element Should Contain  ${LABEL}   Hora Inicial

Verificar a label: Hora Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Final')]
	Element Should Contain  ${LABEL}   Hora Final

Verificar a label: Função
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Função')]
	Element Should Contain  ${LABEL}   Função

Verificar a label: Refeição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Refeição')]
	Element Should Contain  ${LABEL}   Refeição

Verificar a label: Valor
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Valor')]
	Element Should Contain  ${LABEL}   Valor  

#VERIFY CAMPOS

Verificar o campo: Refeição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Refeição')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	Element Should Contain             ${LABEL}   Refeição
 	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Should Contain             ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   class    select2-selection select2-selection--single

Verificar o campo: Planta
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Planta')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[3]
	Element Should Contain             ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Subsidio
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Subsidio')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[4]
	Element Should Contain             ${LABEL}   Subsidio
 	Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Data Inicial	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']

	Element Should Contain             ${LABEL}   Data Inicial	
 	Element Attribute Value Should Be  ${CAMPO1}   name   datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datainic_ano



#FIELD
Selecionar uma opção no campo Refeição "${REF}"
  Select from list by label  xpath=//*[@name="desctiporefe"]  ${REF}

Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMPRESA}  

Selecionar uma opção no campo Planta "${PLT}"
  Select from list by label  xpath=//*[@name="codiplan"]  ${PLT}

Selecionar uma opção no campo Subsidio "${SUB}"
  Select from list by label  xpath=//*[@name="subsidio"]  ${SUB}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}  