*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

# SCREEN
Acessar Tela Consulta de Histórico de Centro de Custo
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Centro de Custo  
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Histórico de Centro de Custo
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  cnsHistoricoCentroCusto
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Filtro de Histórico de Centro de Custo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Centro de Custo  
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ${APPNAME}  Set Variable    cnsHistoricoCentroCusto
  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON
#resource_btn.


#FIELD

E selecionar uma opção no campo Empresa "${EMP}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMP}

E selecionar uma opção no campo Tipo do Colaborador "${TIPCOL}"
  Select from list by label  xpath=//*[@name="tipocola"]  ${TIPCOL}

Preencher o campo Matrícula "${MATRICULA}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]   ${MATRICULA}

Preencher o campo Data da Alteração "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataalte_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataalte_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataalte_ano"][@type="text"]  ${ANO}    

Preencher o campo Data da Alteração fim "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataalte_input_2_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataalte_input_2_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataalte_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Centro de Custo "${CC}"
  Select from list by label  xpath=//*[@name="idcentcust[]"]  ${CC}

#VERIFY LABELS CONSULTA

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
  
  sleep  2s
	Element Should Contain  ${LABEL}  Empresa

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]

	Element Should Contain  ${LABEL}   Tipo

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]

	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]

	Element Should Contain  ${LABEL}   Nome

Verificar a label Alteração
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Alteração')]

	Element Should Contain  ${LABEL}   Alteração

Verificar a label Centro de Custo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Centro de Custo')]

	Element Should Contain  ${LABEL}   Centro de Custo

#VERFY CAMPOS FILTRO 

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

	Element Should Contain  ${LABEL}   Pesquisa
  
Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]

  sleep  2s
	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Tipo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	Element Should Contain             ${LABEL}   Tipo
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']

	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name  codimatr

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']

	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name    nomepess

Verificar o campo Alteração
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Alteração')]
	${CAMPO1}      Set Variable  xpath=//input[@name='dataalte_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='dataalte_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='dataalte_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='dataalte_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='dataalte_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='dataalte_input_2_ano']

	Element Should Contain             ${LABEL}   Alteração
 	Element Attribute Value Should Be  ${CAMPO1}   name  dataalte_dia
  Element Attribute Value Should Be  ${CAMPO2}   name  dataalte_mes 
  Element Attribute Value Should Be  ${CAMPO3}   name  dataalte_ano
  Element Attribute Value Should Be  ${CAMPO4}   name  dataalte_input_2_dia    
  Element Attribute Value Should Be  ${CAMPO5}   name  dataalte_input_2_mes    
  Element Attribute Value Should Be  ${CAMPO6}   name  dataalte_input_2_ano    
  
