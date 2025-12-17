*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

# SCREEN
Acessar Tela Consulta de Bloqueio de Colaborador
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consbloqueiocolaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Bloqueio de Colaborador
    ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Bloqueio de Colaborador
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Bloqueio de Colaborador (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consbloqueiocolaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Bloqueio de Colaborador
    ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Bloqueio de Colaborador
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
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

Selecionar uma opção no campo Data do Bloqueio "${DATABLOQ}"
  Select from list by label  xpath=//*[@name="databloq_cond"]  ${DATABLOQ}

Preencher o campo Data do Bloqueio "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="databloq_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="databloq_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="databloq_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Hora do Bloqueio "${HRBLOQ}"
  Select from list by label  xpath=//*[@name="horabloq_cond"]  ${HRBLOQ}

Preencher o campo Hora do Bloqueio "${HORA}/${MIN}"
  Input Text  xpath=//*[@name="horabloq_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horabloq_min"][@type="text"]  ${MIN}  

Selecionar uma opção no campo Motivo do Bloqueio "${MBLOQ}"
  Select from list by label  xpath=//*[@name="codimoti"]  ${MBLOQ} 

#VERIFY LABELS

Verificar a label: Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label: Tipo do Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')]
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label: Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label: Data do Bloqueio
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data do Bloqueio')]
	Element Should Contain  ${LABEL}   Data do Bloqueio

Verificar a label: Hora do Bloqueio
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora do Bloqueio')]
	Element Should Contain  ${LABEL}   Hora do Bloqueio

Verificar a label: Motivo do Bloqueio
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Motivo do Bloqueio')]
	Element Should Contain  ${LABEL}   Motivo do Bloqueio

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Empresa 
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Tipo do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo do Colaborador	 
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo: Data do Bloqueio	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data do Bloqueio')]
	${CAMPO1}      Set Variable  xpath=//input[@name='databloq_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='databloq_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='databloq_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='databloq_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='databloq_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='databloq_input_2_ano']
	Element Should Contain             ${LABEL}    Data do Bloqueio	
 	Element Attribute Value Should Be  ${CAMPO1}   name   databloq_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   databloq_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   databloq_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   databloq_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   databloq_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   databloq_input_2_ano        

Verificar o campo: Hora do Bloqueio	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora do Bloqueio')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horabloq_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horabloq_min']
	Element Should Contain             ${LABEL}   Hora do Bloqueio	
 	Element Attribute Value Should Be  ${CAMPO1}   name   horabloq_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   horabloq_min

Verificar o campo: Motivo do Bloqueio	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Motivo do Bloqueio')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Motivo do Bloqueio	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

