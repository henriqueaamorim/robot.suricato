*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Benefício | Histórico


# SCREEN
Acessar Tela Histórico Benefício (Consulta)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico Benefício (Consulta)
  ${APPNAME}     Set Variable  cnshistoricobeneficio
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.







#FIELD

Preencher o campo Colaborador "${COLABORADOR}"
	Input Text  xpath=//*[@name="tbhistobenef_idcolab"][@type="text"]  ${COLABORADOR}

Selecionar uma opção no campo Data Inicio Benefício "${DATA_INICIO_BENEFÍCIO}"
	Select From List By Label  xpath=//*[@name="tbhistobenef_datainic_cond"]  ${DATA_INICIO_BENEFÍCIO}

Preencher o campo Data Inicio Benefício "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbhistobenef_datainic_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbhistobenef_datainic_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbhistobenef_datainic_ano"][@type="text"]  ${ANO}

Selecionar uma opção no campo Data Final Benefício "${DATA_FINAL_BENEFÍCIO}"
	Select From List By Label  xpath=//*[@name="tbhistobenef_datafina_cond"]  ${DATA_FINAL_BENEFÍCIO}

Preencher o campo Data Final Benefício "${DIA}/${MES}/${ANO}"
	Input Text  xpath=//*[@name="tbhistobenef_datafina_dia"][@type="text"]  ${DIA}
	Input Text  xpath=//*[@name="tbhistobenef_datafina_mes"][@type="text"]  ${MES}
	Input Text  xpath=//*[@name="tbhistobenef_datafina_ano"][@type="text"]  ${ANO}

