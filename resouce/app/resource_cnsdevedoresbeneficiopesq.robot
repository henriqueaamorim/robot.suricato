*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Autorização de Devedores

# SCREEN
Acessar Tela: Devedores de Benefícios (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsdevedoresbeneficiopesq
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Devedores de Benefícios
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  
  ${ELEMENT}  Set Variable    xpath=
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta Devedores de Benefícios (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsdevedoresbeneficiopesq
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Devedores de Benefícios
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta Devedores de Benefícios (Filtro)
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
  Select From List By Label  xpath=//*[@name="tbcolab_codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo Colaborador "${TIPO}"
  Select From List By Label  xpath=//*[@name="tbcolab_tipocola"]  ${TIPO}

Preencher o campo Matrícula "${MATRICULA}"
  Input Text   xpath=//*[@name="tbcolab_codimatr"][@type="text"]   ${MATRICULA}
  
Preencher o campo Data "${DIA}/${MES}/${ANO}"
  Input Text   xpath=//*[@name="tbdevedbenef_datamarc_dia"][@type="text"]   ${DIA}
  Input Text   xpath=//*[@name="tbdevedbenef_datamarc_mes"][@type="text"]   ${MES}
  Input Text   xpath=//*[@name="tbdevedbenef_datamarc_ano"][@type="text"]   ${ANO}

Preencher o campo Hora "${HORA}:${MIN}"
  Input Text   xpath=//*[@name="tbdevedbenef_horamarc_hor"][@type="text"]   ${HORA}
  Input Text   xpath=//*[@name="tbdevedbenef_horamarc_min"][@type="text"]   ${MIN}

#VERIFY LABELS

Verificar a label: Id
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Id')]
	Element Should Contain  ${LABEL}   Id

Verificar a label: Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}  Empresa

Verificar a label: Tipo Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo Colaborador')]
	Element Should Contain  ${LABEL}  Tipo Colaborador

Verificar a label: Matricula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matricula')]
	Element Should Contain  ${LABEL}  Matricula

Verificar a label: Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}  Nome

Verificar a label: Data
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data')]
	Element Should Contain  ${LABEL}  Data

Verificar a label: Hora
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora')]
	Element Should Contain  ${LABEL}  Hora

Verificar a label: Crachá
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	Element Should Contain  ${LABEL}  Crachá

Verificar a label: Lista Benefícios
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Lista Benefícios')]
	Element Should Contain  ${LABEL}  Lista Benefícios

Verificar a label: Codin
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Codin')]
	Element Should Contain  ${LABEL}  Codin

Verificar a label: Status
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Status')]
	Element Should Contain  ${LABEL}  Status


#VERIFY CAMPOS

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Empresa

Verificar o campo: Tipo Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo Colaborador	 
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single

Verificar o campo: Matricula	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matricula')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_codimatr']
	Element Should Contain             ${LABEL}   Matricula	
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr

Verificar o campo: Data
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data')]
	${CAMPO1}      Set Variable  xpath=//input[@name='tbdevedbenef_datamarc_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='tbdevedbenef_datamarc_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='tbdevedbenef_datamarc_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='tbdevedbenef_datamarc_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='tbdevedbenef_datamarc_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='tbdevedbenef_datamarc_input_2_ano']
	Element Should Contain             ${LABEL}    Data	
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbdevedbenef_datamarc_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   tbdevedbenef_datamarc_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   tbdevedbenef_datamarc_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   tbdevedbenef_datamarc_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   tbdevedbenef_datamarc_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   tbdevedbenef_datamarc_input_2_ano

Verificar o campo: Hora
	${LABEL}       Set Variable  xpath=//td[contains(text(),'Hora')]
	${CAMPO1}      Set Variable  xpath=//input[@name='tbdevedbenef_horamarc_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='tbdevedbenef_horamarc_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='tbdevedbenef_horamarc_input_2_hor']
  ${CAMPO4}      Set Variable  xpath=//input[@name='tbdevedbenef_horamarc_input_2_min']
	Element Should Contain             ${LABEL}    Hora	
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbdevedbenef_horamarc_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   tbdevedbenef_horamarc_min
  Element Attribute Value Should Be  ${CAMPO3}   name   tbdevedbenef_horamarc_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name   tbdevedbenef_horamarc_input_2_min
    