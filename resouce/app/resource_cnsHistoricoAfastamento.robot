*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

# SCREEN
Acessar Tela Consulta Histórico de Afastamento
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Afastamento
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Histórico de Afastamento
  END
  ${APPNAME}  Set Variable  cnsHistoricoAfastamento
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Filtro Histórico de Afastamento
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Afastamento
  ${APPNAME}  Set Variable  cnsHistoricoAfastamento
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON

Clicar No Botão Buscar Dados Externos Para Situação
  ${ELEMENT}  Set Variable  id=cap_situafas

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select From List By Label  xpath=//*[@name="codiempr[]"]  ${EMPRESA}

Selecionar uma opção no campo Tipo do Colaborador "${TIPO}"
  Select From List By Label  xpath=//*[@name="tipocola[]"]  ${TIPO}

Preencher o campo Matrícula "${MATRICULA}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]   ${MATRICULA} 

Preencher o campo Nome "${NOME}"
  Click Element  xpath=(//span[@class='select2-selection select2-selection--single'])[2]   
  Input Text     xpath=(//input[@class='select2-search__field'])[3]  ${NOME}

Preencher o campo Data do Afastamento Inicial "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataafas_dia"][@type="text"]   ${DIA}
  Input Text  xpath=//*[@name="dataafas_mes"][@type="text"]   ${MES}
  Input Text  xpath=//*[@name="dataafas_ano"][@type="text"]   ${ANO}

Preencher o campo Data do Afastamento Final "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataafas_input_2_dia"][@type="text"]   ${DIA}
  Input Text  xpath=//*[@name="dataafas_input_2_mes"][@type="text"]   ${MES}
  Input Text  xpath=//*[@name="dataafas_input_2_ano"][@type="text"]   ${ANO}

Preencher o campo Chave Externa "${CHAVE}"
  Input Text  xpath=//*[@name="external_key"][@type="text"]   ${CHAVE}


#VERIFY LABELS CONSULTA

Verificar a label Chave Externa
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_external_key_label']
  
  sleep  2s
	Element Should Contain  ${LABEL}   Chave Externa

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_codiempr_label']

	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_tipocola_label']

	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_codimatr_label']

	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_nomepess_label']

	Element Should Contain  ${LABEL}   Nome

Verificar a label Data do Afastamento
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_dataafas_label']

	Element Should Contain  ${LABEL}   Data do Afastamento

Verificar a label Hora do Afastamento
	${LABEL}   Set Variable  xpath=//td[@class='scGridLabelFont css_horaafas_label']

	Element Should Contain  ${LABEL}     Hora do Afastamento


#VERIFY CAMPOS FILTRO 

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[@class=('scFilterBlockFont css_blk_0')]

  sleep  2s
	Element Should Contain  ${LABEL}    Pesquisa

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--multiple'])[1]

	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--multiple

Verificar o campo Tipo do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--multiple'])[2]

	Element Should Contain             ${LABEL}   Tipo do Colaborador	  
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--multiple

Verificar o campo Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]

	Element Should Contain             ${LABEL}   Matrícula
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	Element Should Contain             ${LABEL}   Nome
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Data do Afastamento	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data do Afastamento')]
	${CAMPO1}      Set Variable  xpath=//input[@name='dataafas_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='dataafas_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='dataafas_ano']


	Element Should Contain             ${LABEL}   Data do Afastamento	
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataafas_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataafas_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataafas_ano


Verificar o campo Chave Externa		
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data do Afastamento')]
	${CAMPO1}      Set Variable  xpath=//input[@name='dataafas_input_2_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='dataafas_input_2_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='dataafas_input_2_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='external_key']


	Element Should Contain             ${LABEL}   Data do Afastamento	
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataafas_input_2_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataafas_input_2_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataafas_input_2_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   external_key


