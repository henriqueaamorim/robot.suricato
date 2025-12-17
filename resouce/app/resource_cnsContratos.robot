*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

# SCREEN
Acessar Tela Consulta de Contratos
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Contrato
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable    Consulta de Contratos
    ${ELEMENT}     Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  cnsContratos


  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Consulta de Contratos (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Contrato
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${APPNAME}  Set Variable  cnsContratos

  Sleep  2s 
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Empresa Terceirizada "${EMPRESA}"
  Select From List By Label  xpath=//*[@name="codiemprcont"]  ${EMPRESA}

Preencher o campo Número do Contrato "${NUM}"
  Input Text  xpath=//*[@name="numecont"][@type="text"]  ${NUM}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="desccont"][@type="text"]  ${DESC}

Preencher o campo Data Início "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}


#VERIFY

Verificar a label Empresa Terceirizada 
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[2]
	Element Should Contain  ${LABEL}   Empresa Terceirizada 

Verificar a label Número do Contrato
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Número do Contrato

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Data Início
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[5]
	Element Should Contain  ${LABEL}   Data Início

Verificar a label Data Final
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[6]
	Element Should Contain  ${LABEL}   Data Final



#VERIFY (Filtro)

Verificar o campo Empresa Terceirizada
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa Terceirizada')]
	${CAMPO}      Set Variable  xpath=//span[@class="select2-selection select2-selection--single"]
	Element Should Contain             ${LABEL}   Empresa Terceirizada
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single

Verificar o campo Número do Contrato
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Número do Contrato')]
	${CAMPO}      Set Variable  xpath=//input[@id='SC_numecont'] 
	Element Should Contain             ${LABEL}   Número do Contrato
 	Element Attribute Value Should Be  ${CAMPO}   id   SC_numecont

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[@id='SC_desccont_label']
	${CAMPO}      Set Variable  xpath=//input[@id='SC_desccont']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   id   SC_desccont

Verificar o campo Data Início
	${LABEL}       Set Variable  xpath=//td[@id='SC_datainic_label']
	${CAMPO1}      Set Variable  xpath=//input[@id='SC_datainic_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@id='SC_datainic_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@id='SC_datainic_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@id='SC_datainic_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@id='SC_datainic_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@id='SC_datainic_input_2_ano']


	Element Should Contain             ${LABEL}   Data Início
 	Element Attribute Value Should Be  ${CAMPO1}   id   SC_datainic_dia
  Element Attribute Value Should Be  ${CAMPO2}   id   SC_datainic_mes
  Element Attribute Value Should Be  ${CAMPO3}   id   SC_datainic_ano
  Element Attribute Value Should Be  ${CAMPO4}   id   SC_datainic_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   id   SC_datainic_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   id   SC_datainic_input_2_ano