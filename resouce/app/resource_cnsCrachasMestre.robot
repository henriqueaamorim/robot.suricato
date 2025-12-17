*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Crachá | Mestre e Acesso Geral

# SCREEN
Acessar Tela Consulta de Crachás Mestre
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsCrachasMestre
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Crachá Mestre
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Crachás Mestre 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Crachá Mestre (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsCrachasMestre
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Crachá Mestre
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Crachás Mestre 
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
Selecionar uma opção no campo Tipo do Colaborador "${TIPO}"
  Select From List By Label   xpath=//*[@name="nomepess"]   ${TIPO}

Preencher o campo Nome do Colaborador "${NOME}"
  Input Text   xpath=//*[@name="nomepess"][@type="text"]   ${NOME}

Preencher o campo Data Início "${DIA}/${MES}/${ANO}"
  Input Text   xpath=//*[@name="datainic_dia"][@type="text"]   ${DIA}
  Input Text   xpath=//*[@name="datainic_mes"][@type="text"]   ${MES}
  Input Text   xpath=//*[@name="datainic_ano"][@type="text"]   ${ANO}

#VERIFY LABELS

Verificar a label: Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}    Empresa

Verificar a label: Tipo do Colaborador
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo do Colaborador')]
	Element Should Contain  ${LABEL}    Tipo do Colaborador

Verificar a label: Cadastro Responsável
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Cadastro Responsável')]
	Element Should Contain  ${LABEL}     Cadastro Responsável

Verificar a label: Data Início
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Início')]
	Element Should Contain  ${LABEL}     Data Início

Verificar a label: Hora Início
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Início')]
	Element Should Contain  ${LABEL}     Hora Início

Verificar a label: Crachá
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Crachá')]
	Element Should Contain  ${LABEL}     Crachá

Verificar a label: Data Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data Final')]
	Element Should Contain  ${LABEL}     Data Final

Verificar a label: Hora Final
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora Final')]
	Element Should Contain  ${LABEL}    Hora Final

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Tipo do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo do Colaborador')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo do Colaborador	
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo: Nome do Colaborador	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome do Colaborador')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome do Colaborador	
 	Element Attribute Value Should Be  ${CAMPO}   name    nomepess 

Verificar o campo Data Início	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data Início')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datainic_input_2_ano']
	Element Should Contain             ${LABEL}    Data Início	
 	Element Attribute Value Should Be  ${CAMPO1}   name   datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   datainic_input_2_ano   