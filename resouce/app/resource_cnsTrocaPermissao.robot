*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

# SCREEN
Acessar Tela: Programação - Troca de Grupo de Acesso (Consulta)
  ${OBJ}          Set Variable  SCN
  ${APPNAME}     Set Variable     cnsTrocaPermissao
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${SCREENNAME}  Set Variable   Programação - Troca de Grupo de Acesso
	  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
	  ${SCREENNAME}  Set Variable  Nome da tela 249
	  ${ELEMENT}    Set Variable     xpath=
  END

  sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela: Programação - Troca de Grupo de Acesso (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable     cnsTrocaPermissao
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Programação - Troca de Grupo de Acesso 
    ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
	  ${SCREENNAME}  Set Variable  Nome da tela 249
	  ${ELEMENT}    Set Variable     xpath=
  END
  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD

Selecionar uma opção no campo Empresa "${EMP}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMP}

Selecionar uma opção no campo Tipo do Colaborador "${TIPCOL}"
  Select from list by label  xpath=//*[@name="tipocola"]  ${TIPCOL}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]   ${NOME}

Preencher o campo Data Inicial 1 "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}  

Preencher o campo Data Inicial 2 "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_input_2_ano"][@type="text"]  ${ANO}    

Preencher o campo Hora Inicial 1 "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="horainic_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horainic_min"][@type="text"]  ${MIN}  

Preencher o campo Hora Inicial 2 "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="horainic_input_2_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horainic_input_2_min"][@type="text"]  ${MIN}    

Preencher o campo Matrícula "${MAT}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]   ${MAT}


#VERIFY LABELS CONSULTA 

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]


	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]

	Element Should Contain  ${LABEL}   Tipo

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]

	Element Should Contain  ${LABEL}   Nome

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]

	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Data Inicial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Inicial')]

	Element Should Contain  ${LABEL}   Data Inicial

Verificar a label Hora Inicial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Inicial')]

	Element Should Contain  ${LABEL}   Hora Inicial

Verificar a label Data de Término
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data de Término')]

	Element Should Contain  ${LABEL}   Data de Término

Verificar a label Hora de Término
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora de Término')]

	Element Should Contain  ${LABEL}     Hora de Término

Verificar a label Dia Útil
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Dia Útil')]

	Element Should Contain  ${LABEL}   Dia Útil

Verificar a label Sábado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Sábado')]

	Element Should Contain  ${LABEL}   Sábado

Verificar a label Domingo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Domingo')]

	Element Should Contain  ${LABEL}  Domingo 

Verificar a label Feriado
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Feriado')]

	Element Should Contain  ${LABEL}   Feriado


#VERIFY CAMPOS FILTRO  

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//input[@name='codiempr']
	Element Should Contain             ${LABEL}   Empresa
	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Tipo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	${CAMPO}      Set Variable  xpath=//input[@name='tipocola']
	Element Should Contain             ${LABEL}   Tipo
	Element Attribute Value Should Be  ${CAMPO}   name   tipocola
	
Verificar o campo Matrícula 
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']

	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  codimatr  

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']

	Element Should Contain             ${LABEL}   Nome 
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Data Inicial	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']


  Element Should Contain             ${LABEL}   Data Inicial	
  Element Attribute Value Should Be  ${CAMPO1}   name   datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datainic_input_2_ano

