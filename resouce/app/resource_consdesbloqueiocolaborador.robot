*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio

# SCREEN
Acessar Tela Consulta de Bloqueio de Colaborador
  ${OBJ}       Set Variable  SCN
  ${APPNAME}   Set Variable  consdesbloqueiocolaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Bloqueio de Colaborador
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Bloqueio de Colaborador 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Bloqueio de Colaborador (Filtro)
  ${OBJ}       Set Variable  SCN
  ${APPNAME}   Set Variable  consdesbloqueiocolaborador
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Bloqueio de Colaborador
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
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

#VERIFY LABELS

Verificar a label: Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label: Tipo de Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Colaborador')]
	Element Should Contain  ${LABEL}   Tipo de Colaborador

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
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple']
	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--multiple

Verificar o campo: Tipo de Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo de Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple']
	Element Should Contain             ${LABEL}   Tipo de Colaborador	
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--multiple

Verificar o campo: Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='tbcolab_codimatr']
	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  tbcolab_codimatr

Verificar o campo: Data do Bloqueio	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data do Bloqueio')]
	${CAMPO1}      Set Variable  xpath=//input[@name='tbhistobloqu_databloq_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='tbhistobloqu_databloq_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='tbhistobloqu_databloq_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='tbhistobloqu_databloq_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='tbhistobloqu_databloq_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='tbhistobloqu_databloq_input_2_ano']
	Element Should Contain             ${LABEL}    Data do Bloqueio	
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbhistobloqu_databloq_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   tbhistobloqu_databloq_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   tbhistobloqu_databloq_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   tbhistobloqu_databloq_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   tbhistobloqu_databloq_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   tbhistobloqu_databloq_input_2_ano

Verificar o campo: Hora do Bloqueio		
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora do Bloqueio')]
	${CAMPO1}      Set Variable  xpath=//input[@name='tbhistobloqu_horabloq_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='tbhistobloqu_horabloq_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='tbhistobloqu_horabloq_seg']
  ${CAMPO4}      Set Variable  xpath=//input[@name='tbhistobloqu_horabloq_input_2_hor']
  ${CAMPO5}      Set Variable  xpath=//input[@name='tbhistobloqu_horabloq_input_2_min']
  ${CAMPO6}      Set Variable  xpath=//input[@name='tbhistobloqu_horabloq_input_2_seg']
	Element Should Contain             ${LABEL}    Hora do Bloqueio	
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbhistobloqu_horabloq_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   tbhistobloqu_horabloq_min
  Element Attribute Value Should Be  ${CAMPO3}   name   tbhistobloqu_horabloq_seg
  Element Attribute Value Should Be  ${CAMPO4}   name   tbhistobloqu_horabloq_input_2_hor
  Element Attribute Value Should Be  ${CAMPO5}   name   tbhistobloqu_horabloq_input_2_min
  Element Attribute Value Should Be  ${CAMPO6}   name   tbhistobloqu_horabloq_input_2_seg  

Verificar o campo: Motivo do Bloqueio	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Motivo do Bloqueio')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple']
	Element Should Contain             ${LABEL}   Motivo do Bloqueio	
  Element Attribute Value Should Be  ${CAMPO}   class  select2-selection select2-selection--multiple

        