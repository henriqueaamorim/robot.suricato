*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Individual
#resource_mnu.Clicar No Menu Registro | Envio de Mensagem (246) (Aba: Colaboradores)

# SCREEN
Acessar Tela Consulta de Mensagem de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Mensagem de Acesso
  ${APPNAME}  Set Variable  consmensagemacessocolaborador
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
#Aba: Colaboradores (246)  
Acessar Tela: Mensagem de Acesso (Consulta) 
  ${OBJ}         Set Variable   SCN
  ${SCREENNAME}  Set Variable   Mensagem de Acesso
  ${APPNAME}     Set Variable   consmensagemacessocolaborador
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  Sleep  2s
  Mudar Frame Aplicação "nm_iframe_aba_consmensagemacessocolaborador_2"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela: Mensagem de Acesso (Filtro) 
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Mensagem de Acesso
  ${APPNAME}     Set Variable  consmensagemacessocolaborador
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.


#FIELD
Preencher o campo Empresa "${EMP}"
  Input Text  xpath=//*[@name="tbcolab_codiempr"][@type="text"]  ${EMP}
Preencher o campo Tipo de Colaborador "${TIPCOL}"
  Input Text  xpath=//*[@name="tbcolab_tipocola"][@type="text"]  ${TIPCOL}
Preencher o campo Matrícula "${MATRICULA}"
  Input Text  xpath=//*[@name="tbcolab_codimatr"][@type="text"]  ${MATRICULA}
Preencher o campo Data Inicial da Mensagem "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="tbmensacolab_datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="tbmensacolab_datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="tbmensacolab_datainic_ano"][@type="text"]  ${ANO}
Preencher o campo Hora Inicial da Mensagem "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="tbmensacolab_horainic_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="tbmensacolab_horainic_min"][@type="text"]  ${MIN}
Preencher o campo Mensagem "${MENSAGEM}"  
  Input Text  xpath=//*[@name="tbmensacolab_menscole"][@type="text"]  ${MENSAGEM}

#Abas

Clicar na Aba: Colaboradores
  ${AbaColab}   Set Variable   xpath=//a[contains(text(),'Colaboradores')]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${AbaColab}
  Click Element  ${AbaColab}


#LABELS CONSULTA (Aba: Colaboradores)

Verificar a label: Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}  Empresa

Verificar a label: Tipo de Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Colaborador')]
	Element Should Contain  ${LABEL}  Tipo de Colaborador

Verificar a label: Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	Element Should Contain  ${LABEL}  Matrícula

Verificar a label: Data Inic
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Inic')]
	Element Should Contain  ${LABEL}  Data Inic

Verificar a label: Hora Inicial da Mensagem
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Inicial da Mensagem')]
	Element Should Contain  ${LABEL}  Hora Inicial da Mensagem

Verificar a label: Mensagem
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Mensagem')]
	Element Should Contain  ${LABEL}  Mensagem

#LABELS CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_codimatr']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  tbcolab_codimatr

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]
	Element Should Contain             ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--single  

Verificar o campo: Tipo de Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Colaborador')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Element Should Contain             ${LABEL}   Tipo de Colaborador	
 	Element Attribute Value Should Be  ${CAMPO}    class  select2-selection select2-selection--single  

Verificar o campo: Data Inicial da Mensagem	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Inicial da Mensagem')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']

	Element Should Contain             ${LABEL}   Data Inicial da Mensagem	
 	Element Attribute Value Should Be  ${CAMPO1}   name    datainic_dia    
  Element Attribute Value Should Be  ${CAMPO2}   name    datainic_mes 
  Element Attribute Value Should Be  ${CAMPO3}   name    datainic_ano 
  Element Attribute Value Should Be  ${CAMPO4}   name    datainic_input_2_dia 
  Element Attribute Value Should Be  ${CAMPO5}   name    datainic_input_2_mes 
  Element Attribute Value Should Be  ${CAMPO6}   name    datainic_input_2_ano 
