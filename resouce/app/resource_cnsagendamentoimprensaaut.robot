*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

# SCREEN
Acessar Tela Consulta de Agendamento de Candidato
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Agendamento de Candidato
  ${APPNAME}  Set Variable  cnsagendamentoimprensaaut
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#FIELD
Preencher o campo Data do Agendamento inicio "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataagencand_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataagencand_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataagencand_ano"][@type="text"]  ${ANO}

Preencher o campo Data do Agendamento final "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="dataagencand_input_2_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="dataagencand_input_2_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="dataagencand_input_2_ano"][@type="text"]  ${ANO}

Preencher o campo Hora do Agendamento inicial "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaagencand_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaagencand_min"][@type="text"]  ${MIN}

Preencher o campo Hora do Agendamento final "${HORA}:${MIN}"
	Input Text  xpath=//*[@name="horaagencand_input_2_hor"][@type="text"]  ${HORA}
	Input Text  xpath=//*[@name="horaagencand_input_2_min"][@type="text"]  ${MIN}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

