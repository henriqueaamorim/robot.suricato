*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

# SCREEN
Acessar Tela Consulta de Histórico de Local
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Local
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Histórico de Local
  END
  ${APPNAME}  Set Variable    cnsHistoricoLocal
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Filtro de Histórico de Local
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de Local (Filtro)
  ${APPNAME}  Set Variable     cnsHistoricoLocal
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD

Selecionar uma opção no campo Tipo de Colaborador "${TIPCOL}"
  Select from list by label  xpath=//*[@name="tipocola"]  ${TIPCOL}

Preencher o campo Cadastro "${CAD}"
  Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${CAD}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]   ${NOME}

Preencher o campo Data de Alteração "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataalte_dia"][@type="text"] ${DIA}
  Input Text  xpath=//*[@name="dataalte_mes"][@type="text"] ${MES}
  Input Text  xpath=//*[@name="dataalte_ano"][@type="text"] ${ANO}    

Preencher o campo Data de Alteração "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataalte_input_2_dia"][@type="text"] ${DIA}
  Input Text  xpath=//*[@name="dataalte_input_2_mes"][@type="text"] ${MES}
  Input Text  xpath=//*[@name="dataalte_input_2_ano"][@type="text"] ${ANO}    


#VERIFY LABELS CONSULTA

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
  
  sleep  2s
	Element Should Contain  ${LABEL}  Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')]

	Element Should Contain  ${LABEL}  Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Matrícula')]

	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]

	Element Should Contain  ${LABEL}  Nome

Verificar a label Alteração
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Alteração')]

	Element Should Contain  ${LABEL}  Alteração

Verificar a label Organograma
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Organograma')]

	Element Should Contain  ${LABEL}  Organograma

Verificar a label Local
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Local')]

	Element Should Contain  ${LABEL}  Local


#VERIFY CAMPOS FILTRO

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

	Element Should Contain  ${LABEL}  Pesquisa

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[1]

	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single   

Verificar o campo Tipo do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=(//span[@class='select2-selection select2-selection--single'])[2]

	Element Should Contain             ${LABEL}   Tipo do Colaborador	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Matrícula
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Matrícula')]
	${CAMPO}      Set Variable  xpath=//input[@name='codimatr']

	Element Should Contain             ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   codimatr

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']

	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Alteração
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Alteração')]
	${CAMPO1}      Set Variable  xpath=//input[@name='dataalte_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='dataalte_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='dataalte_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='dataalte_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='dataalte_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='dataalte_input_2_ano']

	Element Should Contain             ${LABEL}   Alteração
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataalte_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataalte_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataalte_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   dataalte_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   dataalte_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   dataalte_input_2_ano

