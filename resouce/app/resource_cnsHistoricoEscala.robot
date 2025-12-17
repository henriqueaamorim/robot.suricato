*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Escala

# SCREEN
Acessar Tela Consulta de Histórico de Escalas
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable   cnsHistoricoEscala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Escala
    ${ELEMENT}  Set Variable   xpath=//td[contains(text(),'Histórico de Escala')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Histórico de Escalas
    ${ELEMENT}  Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Filtro de Histórico de Escalas
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Histórico de Escala (Filtro)
  ${APPNAME}     Set Variable   cnsHistoricoEscala
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]

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

Preencher o campo Matrícula "${MAT}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MAT}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Preencher o campo Data da Alteração "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataalte_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataalte_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataalte_ano"][@type="text"]  ${ANO}

Preencher o campo Data da Alteração fim "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataalte_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataalte_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataalte_input_2_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Código da Escala "${COD}"
  Select from list by label  xpath=//*[@name="codiesca"]  ${COD}

Preencher o campo Chave Externa "${CHAVE}" 
  Input Text  xpath=//*[@name="external_key"][@type="text"]  ${CHAVE}


#VERIFY LABELS CONSULTA


Verificar a label Chave Externa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Chave Externa')]

	Element Should Contain  ${LABEL}  Chave Externa

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]

	Element Should Contain  ${LABEL}  Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')]

	Element Should Contain  ${LABEL}  Tipo do Colaborador


Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]

	Element Should Contain  ${LABEL}  Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]

	Element Should Contain  ${LABEL}  Nome

Verificar a label Data da Alteração
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_dataalte_label']
  sleep  2s
	Element Should Contain  ${LABEL}  Data da  ${LABEL}  Alteração

Verificar a label Código da Escala
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_codiesca_label']
  sleep  2s
	Element Should Contain  ${LABEL}  Código da  ${LABEL}  Escala

Verificar a label Escala
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Escala')]

	Element Should Contain  ${LABEL}    Escala

#VERIFY CAMPOS FILTRO

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

	Element Should Contain  ${LABEL}    Pesquisa

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single   

Verificar o campo Tipo do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Should Contain             ${LABEL}   Tipo do Colaborador
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[3]
	Element Should Contain             ${LABEL}   Matrícula
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Data da Alteração
	${LABEL}      Set Variable  xpath=//td[@id='SC_dataalte_label']
	${CAMPO1}      Set Variable  xpath=//input[@id='SC_dataalte_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@id='SC_dataalte_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@id='SC_dataalte_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@id='SC_dataalte_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@id='SC_dataalte_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@id='SC_dataalte_input_2_ano']

	Element Should Contain             ${LABEL}    Data da  ${LABEL}  Alteração
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataalte_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataalte_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataalte_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   dataalte_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   dataalte_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   dataalte_input_2_ano

Verificar o campo Código da Escala
	${LABEL}      Set Variable  xpath=//td[@id='SC_codiesca_label']
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Código da  ${LABEL}  Escala
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Chave Externa	
	${LABEL}      Set Variable  xpath=//td[@id='SC_external_key_label']
	${CAMPO}      Set Variable  xpath=//input[@name='external_key']
  sleep   2s
	Element Should Contain             ${LABEL}   Chave  ${LABEL}   Externa	
  Element Attribute Value Should Be  ${CAMPO}   name  external_key

 	 




