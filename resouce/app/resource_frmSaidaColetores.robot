*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin


# SCREEN
Acessar Tela Cadastro de Saída de Codins (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Saída de Codins (Inclusão)
  ${APPNAME}     Set Variable  frmSaidaColetores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher o campo Endereço de Saída "${ENDERECO}"
	Input Text  xpath=//*[@name="endesaidcole1"][@type="text"]  ${ENDERECO}

Preencher o campo Descrição de Saída "${DESCRICAO}"
	Input Text  xpath=//*[@name="descsaidcole1"][@type="text"]  ${DESCRICAO}

Selecionar uma opção no campo Tipo de Saída "${TIPO}"
	Select From List By Label  xpath=//*[@name="tiposaidcole1"]  ${TIPO}
