*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

# SCREEN
Acessar Tela: Crédito de Acesso (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsCreditosAcessoColaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Crédito de Acesso
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Créditos de Acesso
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Mudar frame aplicação "mnu_iframe"
  Sleep  2s
  Mudar frame aplicação "nm_iframe_aba_cnsCreditosAcessoColaborador_2"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela: Crédito de Acesso (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsCreditosAcessoColaborador
  ${SCREENNAME}  Set Variable  Crédito de Acesso
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
#resource_btn.

# Aba: Colaboradores
Clicar Na Aba Colaboradores
  ${AbaColab}   Set Variable   xpath=//a[contains(text(),'Colaboradores')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${AbaColab}
  Click Element  ${AbaColab}

#VERIFY LABELS

Verificar label: Código do Colaborador 
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código do Colaborador')]
	Sleep  2s
	Element Should Contain  ${LABEL}   Código do Colaborador

Verificar label: Nome
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Nome')]
  Element should contain  ${LABEL}  Nome

Verifica label: Empresa
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Empresa')]
  Element should contain  ${LABEL}  Empresa 

Verificar label: Tipo do Colaborador
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')] 
  Element should contain  ${LABEL}  Tipo do Colaborador

Verificar label: Matrícula
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Matrícula')] 
  Element should contain  ${LABEL}  Matrícula

Verificar label: Data Inicial
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Data Inicial')] 
  Element should contain  ${LABEL}  Data Inicial
  
Verificar label: Início da Faixa
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Início da Faixa')] 
  Element should contain  ${LABEL}  Início da Faixa

Verificar label: Data Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Final')]
	Element Should Contain  ${LABEL}  Data Final

Verificar label: Fim da Faixa
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Fim da Faixa')] 
  Element should contain  ${LABEL}  Fim da Faixa

#Verificar Campos  

Verificar label: Pesquisa
	 ${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
   Sleep  2s
	 Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Código do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código do Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Código do Colaborador	
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single  

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//input[@name='codiempr']
	Element Should Contain             ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name  codiempr

Verificar o campo: Tipo do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo do Colaborador	
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single  

Verificar o campo: Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  codimatr

Verificar o campo: Data Inicial	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Inicial')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']


	Element Should Contain             ${LABEL}   Data Inicial
 	Element Attribute Value Should Be  ${CAMPO1}   name    datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name    datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name    datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name    datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name    datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name    datainic_input_2_ano   


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Tipo do Colaborador "${TIPO_DO_COLABORADOR}"
	Select From List By Label  xpath=//*[@name="tipocola"]  ${TIPO_DO_COLABORADOR}

Preencher o campo Matrícula "${MATRÍCULA}"
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRÍCULA}

Preencher o campo Data Inicial "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}

Preencher o campo Data Inicial final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="datainic_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="datainic_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="datainic_input_2_ano"][@type="text"]  ${ANO}

