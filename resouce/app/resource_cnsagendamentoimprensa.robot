*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Agendamento

# SCREEN
Acessar Tela: Consulta de Agendamento de Candidato
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsagendamentoimprensa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Consulta de Agendamento de Candidato
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Agendamento de Candidato
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela: Consulta de Agendamento de Candidato (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsagendamentoimprensa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Consulta de Agendamento de Candidato
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Agendamento de Candidato
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
Preencher o campo Data do Agendamento "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="dataagencand_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="dataagencand_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="dataagencand_ano"][@type="text"]  ${ANO}

Preencher o campo Hora do Agendamento "${HORA}:${MIN}"
  Input Text  xpath=//*[@name="horaagencand_hor"][@type="text"]  ${HORA}
  Input Text  xpath=//*[@name="horaagencand_min"][@type="text"]  ${MIN}

Preencher o campo Código "${COD}"
  Input Text  xpath=//*[@name="idcand"][@type="text"]  ${COD}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

#VERIFY LABELS

Verificar a label: Data
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data')]
	Element Should Contain  ${LABEL}  Data

Verificar a label: Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}  Nome

Verificar a label: CPF
	${LABEL}   Set Variable  xpath=//div[contains(text(),'CPF')]
	Element Should Contain  ${LABEL}  CPF

Verificar a label: Carteira de Identidade
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Carteira de Identidade')]
	Element Should Contain  ${LABEL}   Carteira de Identidade

#VERIFY CAMPOS

Verificar o campo: Data
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data')]
	${CAMPO1}      Set Variable  xpath=//input[@name='dataagencand_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='dataagencand_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='dataagencand_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='dataagencand_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='dataagencand_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='dataagencand_input_2_ano']
	Element Should Contain             ${LABEL}    Data 
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataagencand_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataagencand_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataagencand_ano
  Element Attribute Value Should Be  ${CAMPO4}   name   dataagencand_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name   dataagencand_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name   dataagencand_input_2_ano

Verificar o campo: Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomepess']
	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo: CPF
	${LABEL}      Set Variable  xpath=//td[contains(text(),'CPF')]
	${CAMPO}      Set Variable  xpath=//input[@name='numecpf']
	Element Should Contain             ${LABEL}   CPF
 	Element Attribute Value Should Be  ${CAMPO}   name  numecpf 

Verificar o campo: Carteira de Identidade	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Carteira de Identidade')]
	${CAMPO}      Set Variable  xpath=//input[@name='numecartiden']
	Element Should Contain             ${LABEL}   Carteira de Identidade	
 	Element Attribute Value Should Be  ${CAMPO}   name  numecartiden   
